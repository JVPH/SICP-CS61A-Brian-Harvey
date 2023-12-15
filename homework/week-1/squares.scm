; Write a procedure squares that takes a sentence of numbers as its argument and
; returns a sentence of the squares of the numbers

(define (square n)
  (* n n))

(define (squares numbers)
  (if (empty? numbers)
      '()
      (sentence (square (first numbers))
          (squares (butfirst numbers)))))
