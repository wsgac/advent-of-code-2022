(in-package #:advent-of-code-2022.day10)

(defparameter *input*
  "noop
noop
noop
addx 4
addx 1
addx 5
addx 1
addx 5
noop
addx -1
addx -6
addx 11
noop
noop
noop
noop
addx 6
addx 5
noop
noop
noop
addx -30
addx 34
addx 2
addx -39
noop
addx 5
addx 2
addx 19
addx -18
addx 2
addx 5
addx 2
addx 3
noop
addx 2
addx 3
noop
addx 2
addx 3
noop
addx 2
addx 3
noop
addx 2
addx -15
addx -22
noop
noop
addx 5
addx 2
noop
noop
addx 14
addx -11
addx 5
addx 2
addx 3
noop
addx 2
addx -16
addx 17
addx 2
addx 5
addx 2
addx -6
addx -25
addx 35
addx 1
addx -36
addx 1
addx 22
addx -19
addx 5
addx 2
noop
noop
addx 5
noop
noop
noop
addx 1
addx 4
noop
noop
noop
addx 5
noop
addx 1
addx 2
addx 3
addx 4
addx -34
addx 21
addx -24
addx 2
addx 5
addx 7
addx -6
addx 2
addx 30
addx -23
addx 10
addx -9
addx 2
addx 2
addx 5
addx -12
addx 13
addx 2
addx 5
addx 2
addx -12
addx -24
addx -1
noop
addx 3
addx 3
addx 1
addx 5
addx 21
addx -16
noop
addx 19
addx -18
addx 2
addx 5
addx 2
addx 3
noop
addx 3
addx -1
addx 1
addx 2
addx -18
addx 1
noop")

(defparameter *input-test*
  "addx 15
addx -11
addx 6
addx -3
addx 5
addx -1
addx -8
addx 13
addx 4
noop
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx -35
addx 1
addx 24
addx -19
addx 1
addx 16
addx -11
noop
noop
addx 21
addx -15
noop
noop
addx -3
addx 9
addx 1
addx -3
addx 8
addx 1
addx 5
noop
noop
noop
noop
noop
addx -36
noop
addx 1
addx 7
noop
noop
noop
addx 2
addx 6
noop
noop
noop
noop
noop
addx 1
noop
noop
addx 7
addx 1
noop
addx -13
addx 13
addx 7
noop
addx 1
addx -33
noop
noop
noop
addx 2
noop
noop
noop
addx 8
noop
addx -1
addx 2
addx 1
noop
addx 17
addx -9
addx 1
addx 1
addx -3
addx 11
noop
noop
addx 1
noop
addx 1
noop
noop
addx -13
addx -19
addx 1
addx 3
addx 26
addx -30
addx 12
addx -1
addx 3
addx 1
noop
noop
noop
addx -9
addx 18
addx 1
addx 2
noop
noop
addx 9
noop
noop
noop
addx -1
addx 2
addx -37
addx 1
addx 3
noop
addx 15
addx -21
addx 22
addx -6
addx 1
noop
addx 2
addx 1
noop
addx -10
noop
noop
addx 20
addx 1
addx 2
addx 2
addx -6
addx -11
noop
noop
noop")

(defun process-input (input)
  (loop
    for line in (cl-ppcre:split "\\n" input)
    for (instr arg) = (cl-ppcre:split "\\s+" line)
    collect (cons (alexandria:make-keyword instr) (when arg (parse-integer arg)))))

(defun puzzle-01 (&key (input *input*))
  (loop
    with x = 1
    with cycles = nil
    with cycle = 0
    for (instr . arg) in (process-input input)
    do (ecase instr
	 (:|noop|
	  (push (cons (incf cycle) x) cycles))
	 (:|addx|
	  (push (cons (+ cycle 1) x) cycles)
	  (push (cons (+ cycle 2) x) cycles)
	  (incf cycle 2)
	  (incf x arg)))
    finally (return (sum-signal-strengths (reverse cycles)))))

(defun sum-signal-strengths (cycles)
  (let ((vec (apply #'vector (mapcar #'cdr cycles))))
    (loop
      for i = 19 then (+ i 40)
      while (< i (length vec))
      sum (* (1+ i) (aref vec i)))))

(defun puzzle-02 (&key (input *input*))
  (loop
    with x = 1
    with cycles = nil
    with cycle = 0
    for (instr . arg) in (process-input input)
    do (ecase instr
	 (:|noop|
	  (push (cons (incf cycle) x) cycles))
	 (:|addx|
	  (push (cons (+ cycle 1) x) cycles)
	  (push (cons (+ cycle 2) x) cycles)
	  (incf cycle 2)
	  (incf x arg)))
    finally (return (render-pixels (reverse cycles)))))

(defun render-pixels (cycles)
  (with-output-to-string (s)
    (loop
      for (cycle . x) in cycles
      for cyclex = (mod cycle 40)
      ;; do (format t "Cycle: ~a X: ~a~%" cycle x)
      if (zerop (1- cyclex))
	do (write-char #\newline s)
      if (<= (1- x) (1- cyclex) (1+ x))
	do (write-char #\# s)
      else
	do (write-char #\. s))
    s))
