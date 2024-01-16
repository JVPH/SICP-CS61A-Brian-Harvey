(define (explode wd)
    (if (empty? wd)
        '()
        (sentence (first wd) (explode (bf wd)))))
