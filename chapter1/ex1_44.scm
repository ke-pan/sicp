(load "ex1_43.scm")
(define dx 0.00001)
(define (smooth f n)
  (repeated (lambda x (/ (+ (f x) (f (+ x dx)) (f (- x dx))) 3)) n))
