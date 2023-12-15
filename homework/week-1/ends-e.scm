#|Write a procedure ends-e that takes a sentence as its argument and returns a sentence
  containing only those words of the argument whose last letter is E|#


(define (e-or-empty w)
  (if (equal? (last w) 'e)
    w
    '()))

(define (ends-e strs)
  (if (empty? strs)
    '()
    (sentence (e-or-empty (first strs)) (ends-e (bf strs)))))

