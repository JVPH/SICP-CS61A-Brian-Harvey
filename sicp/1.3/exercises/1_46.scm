(define (iterative-improve good-enough? improve)
  (define (iterative guess)
    (if (good-enough? guess)
      guess
      (iterative (improve guess))))
  iterative)

(define (sqrt x)
  ((iterative-improve 
     (lambda (guess) (< (abs (- (square guess) x)) 0.001)) 
     (lambda (guess)(average guess (/ x guess)))) 1.0))

(define (fixed-point f first-guess)
  ((iterative-improve (lambda (guess) (< (abs (- guess (f guess))) 0.00001)) f) first-guess))


