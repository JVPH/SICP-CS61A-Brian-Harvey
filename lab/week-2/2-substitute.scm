(define (substitute s old new)
    (if (empty? s)
        '()
        (se ((lambda (w old new)
               (if (equal? w old)
                    new
                    w)) (first s) old new)
            (substitute (bf s) old new))))


; alternative (suggested solution):
(define (substitute sent old new)
    (cond ((empty? sent) '())
          ((equal? (first sent) old) (se new (substitute (bf sent) old new)))
          (else (se (first sent) (substitute (bf sent) old new)))))
