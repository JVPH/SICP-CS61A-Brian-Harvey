( (lambda (f n) 
   (if (= n 0) 
     1 
     (* n (f f (- n 1)))))
 (lambda (f n) (if (= n 0) 
                 1 
                 (* n (f f (- n 1)))))
 3)
; or 
(((lambda (f) (lambda (n) (f f n)))
  (lambda (fun x)
   (if (< x 2)
     1
     (* x (fun fun (- x 1)))))) 3)

