; with compose from 1.42
(define (repeated f n)
  (if (< n 2)
    f
    (repeated (compose f f) (- n 1))))


; without it

(define (repeated f n)
  (if (< n 2)
    f
    (repeated (lambda (x) (f (f x))) (- n 1))))

