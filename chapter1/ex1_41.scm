(define (double f)
  (lambda (x) (f (f x))))

(define inc (lambda (x) (+ x 1)))
(((double double) inc) 5)
(((double (double double)) inc) 5)
