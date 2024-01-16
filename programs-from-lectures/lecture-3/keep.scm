 (define (keep pred sent)
    (cond ((empty? sent) '())
          ((pred (first sent))(se (first sent) (keep pred (bf sent))))
          (else (keep pred (bf sent)))))
