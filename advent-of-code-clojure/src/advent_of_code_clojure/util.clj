(ns advent-of-code-clojure.util)

(defn factorial
  [n]
  (loop [n n
         acc 1]
    (if (zero? n)
      acc
      (recur (dec n) (* acc n)))))
