;;;; advent-of-code-2022.asd

(asdf:defsystem #:advent-of-code-2022
  :description "Describe advent-of-code-2022 here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (:cl-ppcre :trivia)
  :components ((:file "package")
	       (:file "util")
	       (:file "day01")))
