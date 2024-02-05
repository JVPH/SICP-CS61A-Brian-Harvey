(define (product term a next b)
  (if (> a b)
    1
    (* (term a) (product term (next a) next b))))

(define (factorial n)
  (product (lambda (x) x) 2 (lambda (x) (+ x 1)) n))

    
