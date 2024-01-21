; Suppose we define the procedure
;(define (f g) (g 2))
;Then we have
;(f square)
;4
;(f (lambda (z) (* z (+ z 1))))
;6
;What happens if we (perversely) ask the interpreter to evaluate the combination (f f)? Explain.

First it will substitute the formal parameter g with the argument f

(f 2)

Then we substitute again

(2 2)

Since 2 is not a procedure it will throw an error:

 application: not a procedure;
 expected a procedure that can be applied to arguments
