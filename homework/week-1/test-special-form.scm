; Both 'and' and 'or' are special forms, and we know because both of these functions would run an infinite loop otherwise




(define (test-and-sf x y z)
    (if (and (= x 1) (= y 0) (= z (test-and-sf x y z)))
        #t
        #f))

(define (test-or-sf x y z)
    (if (or (= x 1) (= y 0) (= z (test-or-sf x y z)))
        #t
        #f))
