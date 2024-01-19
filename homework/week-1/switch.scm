#| Write a procedure switch that takes a sentence as its argument and returns a sentence
 in which every instance of the words I or me is replaced by you, while every instance of
 you is replaced by me except at the beginning of the sentence, where it’s replaced by I.
(Don’t worry about capitalization of letters.)
|# 

(define (switch-one w)
  (cond ((equal? w 'i) 'you)
        ((equal? w 'me) 'you)
        ((equal? w 'you) 'me)
        (else w)))


(define (switch-first w)
  (if (equal? w 'you)
    'i
    (switch-one w)))

(define (switch-rest sent)
  (if (empty? sent)
    '()
    (se (switch-one (first sent)) (switch-rest (bf sent)))))

(define (switch sent)
  (se (switch-first (first sent)) (switch-rest (bf sent))))
    
    
