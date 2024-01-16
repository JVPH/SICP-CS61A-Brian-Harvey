(define (first-two wd)
  (word (first wd) (first (bf wd))))

(define (letter-pair wd)
  (if (<= (count wd) 1)
    '()
    (sentence (first-two wd) (letter-pair (bf wd)))))
