(define (filtered-accumulate combiner null-value term a next b pred)
    (cond ((< a b) null-value)
          ((pred a) (combiner (term a) (filtered-accumulate combiner null-value term (next a) next b pred)))
          (else (filtered-accumulate combiner null-value term (next-a) next b pred))))

;Assuming prime? exists
(define (sum-squares-of-primes a b)
    (filtered-accumulate +
			 0
		         (lambda (x) (* x x))
			 a
			 (lambda (x) (+ x 1))
			 b
			 prime?))

(define (prod-of-some-numbers n)
    (filtered-accumulate *
		       1
		       (lambda (x) x)
		       1
		       (lambda (x) (+ x 1))
		       n
		       (lambda (x) (= 1 (gcd x n)))))
