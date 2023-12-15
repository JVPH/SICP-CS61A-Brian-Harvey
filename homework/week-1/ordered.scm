#|Write a predicate ordered? that takes a sentence of numbers as its argument and
  returns a true value if the numbers are in ascending order, or a false value otherwise.|#

(define (ordered? nums)
  (cond ((empty? (bf nums)) #t)
        ((> (first (bf nums)) (first nums)) (ordered? (bf nums)))
        (else #f)))
