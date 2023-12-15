#| Write a procedure switch that takes a sentence as its argument and returns a sentence
 in which every instance of the words I or me is replaced by you, while every instance of
 you is replaced by me except at the beginning of the sentence, where it’s replaced by I.
(Don’t worry about capitalization of letters.)
|# 

(define (swap w)
  (cond ((equal? w 'i) 'you)
        ((equal? w 'me) 'you)
        ((equal? w 'you) 'me)
        (else w)))

(define (swap-initial-you w)
  (cond ((equal? w 'you) 'i)
        (else w)))

(define (switch-iterator strs)
  (if (empty? strs)
    '()
    (sentence (swap (first strs)) (switch-iterator (bf strs)))))

(define (switch strs)
  (if (empty? strs)
    '()
    (sentence (swap-initial-you (first strs)) (switch-iterator (bf strs)))))

