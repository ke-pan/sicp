(load "fixed-point.scm")
(define (golden-ratio) (fixed-point (lambda (x) (+ (/ 1 x) 1)) 1.0))
(golden-ratio)
