(in-package #:advent-of-code-2022.util)

(defun transpose (l)
  (apply #'mapcar #'list l))
