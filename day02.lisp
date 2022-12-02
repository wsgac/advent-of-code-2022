(in-package #:advent-of-code-2022)

(defparameter *day-02-input-01*
  "C X
B Y
C Z
C Z
B X
C Z
C Z
C Z
B X
B Y
B Z
B Z
B Z
C X
C Y
B Y
C Z
C Y
C X
B Y
C Y
C Z
A Y
B Y
C X
C X
C Y
B Y
B X
C Z
B Y
B Z
C Y
A X
B Y
B X
B Y
B X
C Z
B Y
C Y
A Z
B Y
C Z
A Z
B Y
B Y
B Y
C Y
B Y
A X
C Z
C X
C Z
A Y
C X
C Z
C Y
C Y
A Y
C Z
B Y
B Z
A X
C Z
B Y
C X
B X
C Z
C Z
B Y
C Z
A Z
C X
C Y
B X
C X
C Z
B Z
B Z
B Z
B Y
A X
B Y
C Y
B Z
B Y
C Y
C X
B Z
C X
B Y
A Y
B X
C Z
A Z
C Y
C Y
A Z
B Z
B Z
C Z
B X
B X
C Y
C Z
B X
B X
A Z
C X
C Z
A Y
B Z
B Y
B Y
C Z
C X
B Z
A X
B Y
B Z
B Z
A Z
A Y
B X
B Y
A X
C Y
B Y
B Y
B Y
B Y
B X
C Z
C Z
C Z
C Z
B Z
C Z
A X
C Z
C X
B Z
C X
A Z
A Y
B Z
A Y
A X
B Y
A Z
C Z
C Z
B X
C Z
A Y
C Z
B Y
C Z
C X
A Z
B Y
B Y
C X
A Z
C Z
B X
B Y
C X
B X
B X
B Z
B Y
A Z
C Z
B X
B Y
B Z
B Z
C Z
C Z
C Y
A Z
A Z
C Y
B Y
B Y
B Y
B Y
B Z
C X
B Y
A Y
C X
A Z
A Z
A Z
C X
B Y
B Z
B Z
C Z
B Z
C X
A X
A Z
B Z
C X
C Z
C Y
C Z
B Y
B X
C Z
A Y
B X
A X
B Z
C Y
B Y
B Y
B Y
B X
B Y
C X
C Z
B Y
C X
C Z
C X
C Z
B Z
B Z
B Z
A X
B Y
C Z
C Z
B Y
C X
A X
A Z
B Z
B X
C X
A X
B Y
B Y
C Y
B Z
B X
A Z
C Y
B Y
C X
B Y
C X
B Z
A X
A Y
C X
A X
C Y
B Y
B Y
A Y
C Z
B Y
C X
B Y
C X
C Z
C X
C Z
C Y
B Z
B Z
A Z
C X
B X
C Z
C Y
B Y
B Z
B Z
B Y
C Z
B Z
B X
C Z
C Z
C Z
B Y
C X
C Y
B Z
B Y
A Y
C X
B Z
A Z
B Y
B Y
C X
C Y
C Z
C X
C X
C X
C Z
A Z
A Z
C X
C Z
C Y
C Y
C Z
C Z
C Z
C X
B X
B Y
B X
C Y
C Y
B Y
C Z
C X
B Y
C X
B Z
B Y
B Z
B X
B X
C X
C Z
C X
C X
C Z
C Z
B Y
C X
B Y
C Y
C Z
B Z
B Y
C X
C X
A X
C Z
C Y
B Z
B Z
B Y
C Z
C Z
B Y
B Z
A Y
C X
A Z
C Y
C X
B Y
A X
A Z
C X
C Z
B Y
B Y
A Y
A Z
A Y
C Z
A Z
A Z
C Z
B Y
C X
C X
B Y
C X
B Z
B Y
C Y
B Y
B Y
B Y
A Y
C Z
B Y
C X
C Z
C X
B Y
B Y
C Z
B Y
C Z
C Z
B Y
B Y
C X
C Z
C X
A Y
A Y
B Z
C Z
B Y
C X
B Y
C X
C Y
C X
A Y
C Y
B Y
B Z
C Z
A Z
B X
C Z
B Z
B X
A Y
C Z
A Y
B Y
A Z
B Y
C X
B X
C Z
B Z
C Z
B Y
C X
B Z
B Y
A Z
B Y
C Z
C X
C Z
A Y
A Z
B X
A Z
B Y
B Y
B Y
C Z
C X
B Z
C Z
A X
C Z
C X
B X
A Z
C Y
A Z
B Y
C Y
A Y
C X
A Z
C Z
A Z
B Z
C Z
A Y
C Z
C Y
B Y
B Y
B Y
C X
B Z
B Y
C X
C Y
C Z
C Z
B X
C X
B Y
A Y
B Y
C Z
B X
A Z
B Z
C Z
C X
C Z
B X
B Y
C Y
B Z
B Y
C Z
C Z
B X
C Z
A Y
B Z
B Y
B Y
B Z
B Z
B Y
B Y
B X
B Y
A Z
B Y
C X
B Z
A Y
B Z
C Z
C Z
B Y
B Z
B Y
C X
C Y
C Y
C Y
C Z
C X
C X
C Z
A Z
C Z
B Y
B Y
A Z
C Z
B Y
B Y
C X
C Y
B Y
A Y
C Z
C X
C Z
B Y
C Z
C X
B X
B X
C X
C X
C X
B Z
A Z
B Y
C Z
B Y
B Z
B Y
C Y
A Z
B Z
B Y
C Y
C X
B Y
C Y
C Z
C Y
B Y
C Z
C Z
B Z
C X
C Y
C X
C X
C Z
C X
C Z
C Y
A Y
A Z
C Z
C X
B Y
B Y
C X
C Z
A Y
B Z
B Y
C Z
C X
B X
B Y
B Z
B Z
B Y
A Y
C X
C Z
C X
A Z
A Y
C X
A X
C Y
A X
B Y
C Z
A Y
C X
C Z
B Y
B Y
B Z
B Y
B X
B X
C X
A Z
B Z
A Z
A Z
A X
B Y
C X
C Z
C Z
B Y
C X
C X
A X
A Z
B X
C Z
C Z
B Y
C X
B Z
B Z
A Y
B Y
C X
B Y
B Y
B X
C Z
A Y
C X
B Y
C Z
B X
A Z
A Z
B X
B Y
C X
B Z
A Y
C Z
C Z
B Y
B X
A Z
B Z
B Y
A Y
A Z
B Y
B X
B Z
B Z
A Z
A X
A Y
A Y
B X
C X
C Y
B X
A X
B Z
B Y
C Z
B Y
C Z
C Y
C X
A Y
B Z
A Z
B X
B X
B Y
C X
B X
A Y
C X
C Y
B Y
B Z
C Z
A Y
A X
C Z
C Z
C X
A Z
C X
A Y
B Z
B Y
C X
B X
A Y
B Z
C X
B Y
C X
B X
A Z
B Y
C Y
C X
C X
C Z
A Z
C Y
B Y
C Z
C Z
B Y
C Z
C Y
B Y
C X
C X
B Y
B X
A Y
C Z
B Y
A Z
C X
C Y
B Y
B Y
B Y
A Z
A Y
B X
B Y
B Y
B Z
B X
C Z
B Y
C X
C Z
C X
C Y
B Y
C Y
A Z
B Y
C Y
B Y
B Y
A Y
C Z
C Y
C Y
A X
C Z
C Z
C Z
A Y
B Y
C Z
B Z
A Z
B Z
C X
C Z
C Z
A X
C Y
C Z
C Y
C Y
C X
C Y
C X
A Z
C X
C X
B X
C Z
B Y
C Z
B Y
B X
C Z
B Y
C Y
C Z
C X
A X
C Z
A Y
C Y
B Y
B Z
B Z
B Z
B Y
B X
B Y
C Z
B X
B X
B Y
C Y
C Z
A Z
C Y
B Y
B Z
C X
C X
B Z
B Y
C X
C Z
C Z
C X
C Y
B Y
C Y
C Z
C Z
B Z
C Z
B X
B Z
A Z
A Z
C Z
C Y
C Z
C X
B Y
B Y
C Z
B Y
B Y
A Z
A Y
B Z
C Z
C X
B Y
C X
C Z
B Z
C X
C Y
B X
C Z
C Y
A Z
C Z
C Z
C Z
C Z
C Z
A Z
B Y
A Z
A Z
A Z
C X
B Z
B Z
B Y
A Y
C Z
C X
B Z
A Y
B Y
C X
C Z
B Z
C Y
A Y
C Z
B Z
B Z
B Z
C Z
C Z
C Z
C Y
A Y
A Z
A Y
C X
C Y
C Z
C X
B Y
B Z
C Z
B Y
C X
A X
C X
B Y
B Y
B Y
C Z
C Z
A X
B Y
B Y
B Z
B X
C Z
B Y
C X
B X
C Z
C Z
B Y
C Z
C Y
C Z
C Y
C Y
A Z
C Z
B Y
A Y
A Y
B Y
C Y
B X
A Y
C X
C Y
B X
C X
C X
C Z
C X
C Z
B Y
C X
B X
C Y
C Z
C Z
B Z
C X
B Y
A Z
C Y
B X
B Y
B Y
B Y
C Z
C Y
A Z
C X
B Z
C Y
C Y
C X
C Z
A Z
B X
A Z
C Z
B Z
B Y
A Z
C Z
B Z
A X
B Y
B Y
C Z
C Y
C Z
C X
B Y
C X
B Y
A X
B X
C Y
B Y
A Y
B Y
C Z
C X
B Y
C Z
C Y
C X
C X
B X
B Y
C X
A X
B X
B Z
A Z
B Z
C Y
B Z
B Y
C Z
C Y
B Y
B Y
C X
B Y
C Z
B Y
C X
B X
C Z
C Z
B Y
C Z
B Y
B Y
A Y
B Y
B Y
C Z
B Z
C X
B X
C X
B Y
B Y
C Z
C Z
C Z
C X
C Z
A Z
C X
B Y
B X
B Y
B Z
C X
A Y
A Y
C Z
C X
C Y
C X
C X
C Z
A Y
C X
B Y
C Z
C X
B Y
A Z
B X
C Z
A Z
C X
B X
A Y
A Y
B Y
B X
B X
B X
C Y
A X
A Z
B Y
B Z
B Z
C Y
C X
A Z
C Z
B Z
C X
C Y
A Z
C Z
C X
C X
B Y
B Y
C Z
A Y
C Z
B Y
B Y
C Z
C Z
C Z
C Z
C Z
B Y
A Z
C X
B Y
C Z
B X
B Z
C Y
C Z
C Z
A X
C Z
A X
C X
C Z
A X
C Z
C Z
A Z
C X
C X
C Y
C Z
A X
C X
B Y
A Z
A Z
C X
B Y
A X
C Z
B Y
A Y
A Z
C X
B Y
B Z
C Y
B Y
B X
B X
B Y
B X
A X
B Y
C X
B Y
C Z
B X
C Y
B Z
B X
B Y
C X
B Z
B X
A X
C X
B Y
B Y
C Y
B Y
C X
C Z
C X
C X
B Z
C Z
C Y
A Z
C Z
C Y
C X
A Z
B Y
B Y
B Z
B X
A Y
B Y
C Z
B Y
B Z
A X
C X
C X
B X
A Z
B Z
B X
B Y
C Z
B Y
B Z
B Y
C Y
A Y
C Y
C Z
B Z
A Y
B Y
C Z
B Z
A Z
C X
C Z
B Y
C Z
A Z
C Z
C Y
C Z
A X
B Y
B Y
B Y
A Z
A Y
B Z
C Z
A Z
B Y
B Y
B Y
C X
A Z
A Z
A Z
C X
C Z
A Z
C Y
B Y
C Z
C X
B Y
A Y
C Z
C Z
C Z
A Z
A X
B Y
B X
C Y
B X
B Z
C X
A Z
B Z
B Y
A X
A Z
A Y
C X
C Z
C X
C Z
A Z
B Z
B Z
B Z
C Z
C Y
A Z
A Z
A Y
B Y
C Z
B Z
A Z
C Z
A X
B Y
B Y
C X
C Z
B Z
B Y
B X
C Z
B Z
A X
B Z
C Z
B Y
A X
C Y
C X
C X
B Y
C Z
B X
A Z
B Y
C Z
B Y
C Z
A Y
B Z
C X
C X
B Y
C Y
B X
C Z
C Z
B Y
B Y
A Z
A Y
C Y
A Z
C Z
A Y
A Z
C X
C Y
B Z
C X
B X
C X
C X
B X
B X
B Z
C X
C X
B Y
A Z
C X
B Y
B Y
C Y
B Y
C Z
C Y
A Z
A X
C Z
C X
B Z
B X
B Y
A X
C Y
B Y
B Z
B Y
C Z
C Z
A Y
C Y
C X
A X
C Y
C Z
B Z
B Y
C Z
C X
C Y
B Z
B Z
C X
C Z
C X
B Y
A Z
B Y
B Y
C Z
B X
C X
C Y
A Z
C Z
B Y
C Y
B Y
C Y
A X
C X
B X
C X
C Y
C Z
B Y
B X
B Y
C Z
C Y
B Z
C X
B Y
B Y
C Z
C Z
C Z
C X
B Y
C X
C Z
C X
C X
C Y
B Y
C Z
C Z
B Y
B Y
B Y
B Z
C Y
A Z
C X
C Z
A Y
C X
C Z
C Y
B Y
A X
C Z
B Y
B X
B Z
A Y
A Z
C X
C Z
C Y
B X
C Z
A Y
B X
A Z
B Y
A Z
C Z
B Y
C X
A Z
B Y
C Z
C Z
C Y
B Z
C X
C X
B Y
B Y
C Z
C Z
B X
C Z
A Y
B Y
C Z
B X
A Z
C Z
B X
C X
B X
C Y
C Y
A Z
B Y
C X
C Z
A Z
C Z
B X
B Z
C X
C Y
C Z
A Y
C Y
B Z
C X
B Z
C X
B Z
B Y
B Z
A Y
B Y
A Y
B Y
A Z
C Y
C Z
C Z
A X
C Z
B X
A Z
B Y
C Z
A Y
C Z
B Y
B X
C Z
C Z
B Y
C X
B X
A Z
C Y
C Z
B Y
B Y
C X
B Y
B Y
B Z
A Y
C X
B X
B Y
B Y
A Z
C X
C Y
A Y
B Y
C Z
B Y
C Z
B Y
C X
B Z
B Z
A X
A Z
B Y
B X
A X
B Y
B Y
C X
C Z
B Y
C X
C Y
C Z
B Y
A Z
B Y
A Z
B Z
C X
A Z
B Y
B Y
C Z
A Z
A Z
B Y
B Z
C Z
B X
C Z
C Z
B X
B Z
C X
B Z
C X
B Y
B Y
A Y
C Z
B Y
C Z
C Z
C Y
C X
A Z
B Y
C Z
C Z
B X
C X
C Z
B Z
A Z
C X
C Z
A Z
B Y
B Y
C Z
A X
A Z
C Z
C Z
B Y
C X
B Y
B Y
C Y
A Y
C Z
A Z
B Z
A Z
B Y
C X
C Z
B Y
C Z
B Y
C Z
C Z
B Z
B X
A Z
B Z
B Z
C X
C X
A Z
B X
B Z
B Y
C Z
C X
B Z
B Z
C Z
B Y
B Y
C X
B X
C X
C Z
B Y
A Z
B Z
B Y
B Z
B X
C Z
C Y
C Z
A X
C Z
A Y
C Y
A Z
C Z
B X
A X
B Y
A Z
A Y
B Z
B Y
B X
C Y
C Y
B Z
A X
C X
B Y
C Z
B Y
B Y
B X
A X
C Z
B Y
B Y
B Z
C X
C X
B Y
C Z
C X
C Z
C Y
B Y
A Z
C Y
A Y
C Z
C X
C Z
C Z
B Y
B Y
B Z
B X
A Z
B X
A Z
C Z
C Y
B X
B Y
C Z
A Y
B Y
B Z
A Y
B Z
B Z
A Y
A X
B Y
A Z
B Z
A Z
B Z
C X
C Y
B Y
B X
B Y
C Y
C Y
B X
B X
A Z
A Y
A X
A Z
B Y
B Y
C X
C Z
C X
C X
B Z
A Y
C Z
C X
A Y
A X
A Z
C Y
B X
A X
A Z
C Z
B Y
C X
C Z
B Z
B Y
C X
C X
C Z
A Y
C X
B Y
A X
A Y
C X
C X
A Z
C Y
B Y
A Y
C Y
A Z
B Y
B X
C Z
C X
B Y
A Y
C X
B Y
B X
C X
B Y
A Z
B Y
C X
C Z
A Y
C X
A X
C Y
C Z
C Z
C Z
B Z
B X
C Z
B Y
B Z
C Z
A X
C Z
B Y
B Y
C Y
A Z
A X
C X
B Z
C Z
A Y
C X
C Z
B X
A Z
C Y
A Y
C Z
A Z
B X
C X
C Z
C X
B Z
B Y
C X
B Y
C X
B Y
C X
B X
A Z
B Z
C Z
C X
C Y
A Z
C X
A Z
B Z
B Z
B X
B Y
B Z
C Z
C Y
C Z
B Z
B Y
C X
C Z
C Y
C Z
A Y
A Y
C Y
A Y
B Y
C Z
A Y
C X
B Z
A Y
B Y
C X
C X
B Y
C X
B Y
C Z
C X
A Y
C Z
A Z
B Y
B Z
C Z
C Z
C Y
B Y
C Y
C Z
B Y
C Z
B X
A Z
A X
B X
C Z
B Y
B Y
B Y
C Y
C Z
A Y
A Z
B Y
C Y
C Z
C Z
C X
C Z
C X
C Z
C Z
C Y
C X
B Z
C Z
C Z
C Z
C X
B Y
C Z
A Y
C Z
C X
C Y
C X
C Y
B Y
C Z
B X
A Z
C Y
C Z
B X
C Z
A X
B Y
A Y
C Z
B Y
C Z
C Z
B Z
C X
B Y
C Z
A Y
B Z
B X
C X
A Z
C Z
B Y
C Z
C Z
B X
B Y
C Y
C X
C Z
A X
B Z
C Y
C Y
B Y
B Y
B X
B Y
B Z
B Y
C Z
B Y
A Z
B X
B Z
B Y
B X
A X
C Z
B Z
A Z
A Z
A Z
A Z
B Y
C Y
C Y
A Y
C Z
B Y
B Y
B Y
C Z
C Z
C Y
C X
B Z
C Y
C X
C Z
B X
A Z
C X
A X
C X
C X
A X
C Z
B Y
C X
C Y
B X
B Y
C Z
C X
B Y
B Z
B Z
B Y
C X
C X
B Y
B X
C Z
A Z
C Z
B Z
B Y
B X
C Z
C Z
B X
B Y
C Z
B Y
B Y
A Y
C X
C Y
B Y
C Z
B X
B Y
C Z
C Y
C Y
B Y
B Y
A X
A Z
A Z
B Y
B Y
B Y
C X
B X
C Z
C Z
B Z
B Y
C Y
C Z
C X
C Z
C Y
A X
C Z
B Y
B Y
B Y
B X
C Z
B Y
B Y
A Y
C Z
A Z
B Y
B Y
A Z
A Z
A Y
C Z
A X
B X
B Z
C X
A Y
A Z
B Y
B Y
A Y
A Z
C Z
B Y
B Y
C Z
A X
A Z
A Z
C X
B Y
C X
B Z
B Y
C Y
B Y
C Z
B Y
C Z
B Y
C Y
C Z
A Y
A X
A X
C X
B Y
A X
C X
C Y
C Z
C Y
C Z
A Z
B Y
C X
C X
C Y
C Z
B Y
C Z
C Y
B Y
B Y
A X
C X
C X
B Z
A Z
C X
B Y
C X
A X
C Z
B Y
C Y
C Z
C X
A X
B Z
A Y
C Z
C Y
B X
B Y
C Z
B Z
C Z
C X
B Y
C X
B Z
B Y
A Z
A Y
C X
A Y
C Z
C Z
A Z
C Y
C X
A Z
B Y
C X
A Y
A Z
B Y
C Z
A Y
C X
C X
C Z
C Z
C Z
B Z
B Y
A Y
B Y
C Z
C X
B X
A Z
C Z
C Z
C Z
C X
A Y
A Z
A Z
B Z
B X
C X
B Y
C X
C Y
C Z
A Z
C X
C Y
B Y
B X
C X
B Y
C Y
B Y
B Y
C Z
C Y
C Y
B Y
A Y
B X
A Y
B X
C Z
B X
C Z
C Y
B Y
A Z
C X
B Z
C X
C X
C X
C Z
A Z
A Z
B Y
A Z
C Z
C Y
B Z
A X
A Z
C X
B Y
C X
C Z
C Z
A Z
C Z
C Y
B Z
B Z
C Y
B Y
C X
B Y
B Z
C Z
B X
C Z
B Z
B Y
B Y
C Y
C Z
C X
B Y
C X
C X
B Z
B X
C X
B X
C Z
C Z
B Y
A Y
C X
B Z
C X
C Y
C Z
C X
A Z
C X
B Y
B Y
A Y
C Z
B Z
B Y
C Y
C Y
A Y
B Y
B Y
B Y
C Z
C Z
A Z
B Y
C X
C Y
B Y
B Z
B Y
B Y
C X
C Z
C Z
A X
B Y
C Z
C Z
C Z
B Y
C Y
B Z
C Z
C X
C X
C Y
B X
C Z
B Y
C Y
B Z
A Y
B Y
B Z
A Z
C Z
C X
C Z
B Y
C Y
B Y
B Y
A Z
B Y
B Y
B Y
C X
C X
B Y
C Z
C Z
B Y
C X
C Z
C X
A Y
C Z
C Z
B Y
A X
C X
B X
A Y
C X
A X
B Y
A Z
C Y
C Y
C Z
C X
B Y
C X
C Z
B Y
C Z
C X
C Z
C Z
A Z
A Z
C Z
A X
C Z
C Z
B X
C Z
B Y
C X
A Z
C Z
C X
B Z
C Z
B Y
A Z
C Y
B X
B Z
A Y
B Y
C X
C Y
C Z
C Y
A X
C Z
C Z
C X
B Y
C Z
B Z
B Y
C X
C Z
C Y
B Y
C Y
B Y
A Y
B X
C Z
C Z
C Z
C X
B Z
C X
A Z
C Y
C Z
C X
C Z
A Z
A Y
B X
C X
C Z
B Z
B X
C Y
B Y
B Z
C X
C Z
C X
B Y
B Y
C X
B X
C X
C X
B Y
B Y
A Y
B Z
C Z
A Z
B Z
A Z
B Y
C Z
C Z
A Z
B Y
B Y
B X
C X
A Z
C Y
C Z
A Y
C Z
C Z
B Z
B Z
A X
A X
C Y
B X")

(defparameter *day-02-input-01-test*
  "A Y
B X
C Z")

(defun letter-to-shape (letter)
  (trivia:ematch letter
    ((or "A" "X") :rock)
    ((or "B" "Y") :paper)
    ((or "C" "Z") :scissors)))

(defun letter-to-outcome (letter)
  (trivia:ematch letter
    ("X" 0)
    ("Y" 3)
    ("Z" 6)))

(defun theirs-and-outcome-to-yours (theirs outcome)
  (trivia:ematch `(,theirs ,outcome)
    ('(:rock 0) :scissors)
    ('(:rock 3) :rock)
    ('(:rock 6) :paper)
    ('(:paper 0) :rock)
    ('(:paper 3) :paper)
    ('(:paper 6) :scissors)
    ('(:scissors 0) :paper)
    ('(:scissors 3) :scissors)
    ('(:scissors 6) :rock)))

(defun shape-to-score (shape)
  (trivia:match shape
    (:rock 1)
    (:paper 2)
    (:scissors 3)))

(defun pair-to-outcome (theirs yours)
  (if (eql theirs yours)
      3
      (trivia:match `(,theirs ,yours)
	((or '(:rock :paper)
	     '(:paper :scissors)
	     '(:scissors :rock))
	 6)
	(_ 0))))

(defun letter-pair-to-score (theirs yours)
  (let ((theirs (letter-to-shape theirs))
	(yours (letter-to-shape yours)))
    (+ (pair-to-outcome theirs yours)
       (shape-to-score yours))))

(defun day-02-process-input (input)
  (loop
    for (theirs yours) on (cl-ppcre:split "[\\n\\s]" input) by #'cddr
    collect (list theirs yours)))

(defun day-02-puzzle-01 (&key (input *day-02-input-01*))
  (loop
    for (theirs yours) in (day-02-process-input input)
    sum (letter-pair-to-score theirs yours)))

(defun day-02-puzzle-02 (&key (input *day-02-input-01*))
  (loop
    for (th y) in (day-02-process-input input)
    for theirs = (letter-to-shape th)
    for outcome = (letter-to-outcome y)
    for yours = (theirs-and-outcome-to-yours theirs outcome)
    sum (+ outcome (shape-to-score yours))))