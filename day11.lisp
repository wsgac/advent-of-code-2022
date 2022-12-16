(in-package #:advent-of-code-2022.day11)

(defparameter *input*
  "Monkey 0:
  Starting items: 91, 66
  Operation: new = old * 13
  Test: divisible by 19
    If true: throw to monkey 6
    If false: throw to monkey 2

Monkey 1:
  Starting items: 78, 97, 59
  Operation: new = old + 7
  Test: divisible by 5
    If true: throw to monkey 0
    If false: throw to monkey 3

Monkey 2:
  Starting items: 57, 59, 97, 84, 72, 83, 56, 76
  Operation: new = old + 6
  Test: divisible by 11
    If true: throw to monkey 5
    If false: throw to monkey 7

Monkey 3:
  Starting items: 81, 78, 70, 58, 84
  Operation: new = old + 5
  Test: divisible by 17
    If true: throw to monkey 6
    If false: throw to monkey 0

Monkey 4:
  Starting items: 60
  Operation: new = old + 8
  Test: divisible by 7
    If true: throw to monkey 1
    If false: throw to monkey 3

Monkey 5:
  Starting items: 57, 69, 63, 75, 62, 77, 72
  Operation: new = old * 5
  Test: divisible by 13
    If true: throw to monkey 7
    If false: throw to monkey 4

Monkey 6:
  Starting items: 73, 66, 86, 79, 98, 87
  Operation: new = old * old
  Test: divisible by 3
    If true: throw to monkey 5
    If false: throw to monkey 2

Monkey 7:
  Starting items: 95, 89, 63, 67
  Operation: new = old + 2
  Test: divisible by 2
    If true: throw to monkey 1
    If false: throw to monkey 4")

(defparameter *input-test*
  "Monkey 0:
  Starting items: 79, 98
  Operation: new = old * 19
  Test: divisible by 23
    If true: throw to monkey 2
    If false: throw to monkey 3

Monkey 1:
  Starting items: 54, 65, 75, 74
  Operation: new = old + 6
  Test: divisible by 19
    If true: throw to monkey 2
    If false: throw to monkey 0

Monkey 2:
  Starting items: 79, 60, 97
  Operation: new = old * old
  Test: divisible by 13
    If true: throw to monkey 1
    If false: throw to monkey 3

Monkey 3:
  Starting items: 74
  Operation: new = old + 3
  Test: divisible by 17
    If true: throw to monkey 0
    If false: throw to monkey 1")

(defun process-input (input)
  (let (plist
	(monkeys (cl-ppcre:split "\\n\\n" input)))
    (dolist (monkey monkeys (reverse plist))
      (cl-ppcre:register-groups-bind (m items op o div m-true m-false)
	     ("Monkey (\\d):\\s+Starting items: ([0-9, ]+)\\s+Operation: new = old ([+*]) (\\S+)\\s+Test: divisible by (\\d+)\\s+If true: throw to monkey (\\d+)\\s+If false: throw to monkey (\\d+)" monkey)
	(push `(:monkey ,(parse-integer m)
		:items ,(mapcar #'parse-integer (cl-ppcre:split ", " items))
		:operation ,(symbol-function (read-from-string op))
		:operand ,(or (parse-integer o :junk-allowed t) :old)
		:divisor ,(parse-integer div)
		:monkey-true ,(parse-integer m-true)
		:monkey-false ,(parse-integer m-false))
	      plist)))))

(defun op-operand-to-fn (op operand)
  (if (eql operand :old)
      #'(lambda (old) (funcall op old old))
      #'(lambda (old) (funcall op old operand))))

(defun puzzle-01 (&key (input *input*))
  (let* ((state (process-input input))
	 (inspections (make-hash-table)))
    (loop
      repeat 20
      do (loop
	   for m in state
	   for monkey = (getf m :monkey)
	   for items = (getf m :items)
	   for fn = (op-operand-to-fn (getf m :operation) (getf m :operand))
	   for divisor = (getf m :divisor)
	   for true-monkey = (getf m :monkey-true)
	   for false-monkey = (getf m :monkey-false)
	   do (loop
		for item in items
		do (incf (gethash monkey inspections 0))
		do (setf item (funcall fn item))
		do (setf item (truncate item 3))
		if (zerop (mod item divisor))
		  do (setf (getf (elt state true-monkey) :items)
				 (append (getf (elt state true-monkey) :items) (list item)))
		else
		  do (setf (getf (elt state false-monkey) :items)
				 (append (getf (elt state false-monkey) :items) (list item)))
		finally (setf (getf (elt state monkey) :items) nil))))
    (loop
      for insp being the hash-value of inspections
      collect insp into insps
      finally (return (apply #'* (subseq (sort insps #'>) 0 2))))))

(defun puzzle-02 (&key (input *input*))
  (let* ((state (process-input input))
	 (inspections (make-hash-table))
	 (common-multiple (reduce #'(lambda (xx x) (* xx (getf x :divisor))) state :initial-value 1)))
    (print common-multiple)
    (loop
      repeat 10000
      do (loop
	   for m in state
	   for monkey = (getf m :monkey)
	   for items = (getf m :items)
	   for fn = (op-operand-to-fn (getf m :operation) (getf m :operand))
	   for divisor = (getf m :divisor)
	   for true-monkey = (getf m :monkey-true)
	   for false-monkey = (getf m :monkey-false)
	   do (loop
		for item in items
		do (incf (gethash monkey inspections 0))
		do (setf item (funcall fn item))
		do (setf item (mod item common-multiple))
		if (zerop (mod item divisor))
		  do (setf (getf (elt state true-monkey) :items)
				 (append (getf (elt state true-monkey) :items) (list item)))
		else
		  do (setf (getf (elt state false-monkey) :items)
				 (append (getf (elt state false-monkey) :items) (list item)))
		finally (setf (getf (elt state monkey) :items) nil))))
    (loop
      for insp being the hash-value of inspections
      collect insp into insps
      finally (return (apply #'* (subseq (sort insps #'>) 0 2))))))
