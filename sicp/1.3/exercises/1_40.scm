;(newtons-method (cubic a b c) 1)
;to approximate zeros of the cubic x 3 + ax 2 + bx + c.

(define (cubic a b c) 
  (lambda (x) (+ (* x x x) (* x x a) (* x b) c)))

