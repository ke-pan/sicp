(load "newtons-method.scm")
(define (cubic a b c)
  (lambda (x)
    (+ (* x x x)
       (* a x x)
       (* b x)
       c)))

(newtons-method (cubic 1 1 1) 1.0)
