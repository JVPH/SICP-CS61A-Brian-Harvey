(define (product term a next b)
  (if (> a b)
    1
    (* (term a) (product term (next a) next b))))

(define (factorial n)
  (product (lambda (x) x) 2 (lambda (x) (+ x 1)) n))

(define (1+ x)
  (+ x 1))

(define (pi terms) (* 4 (product
			 (lambda (x) (/ (* 2 (1+ (floor (/ x 2))))
					(1+ (* 2 (ceiling (/ x 2))))))
			 1 1+ terms)))
