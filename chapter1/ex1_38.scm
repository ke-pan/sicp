(load "ex1_37.scm")
(define (e)
  (+ (cont-frac (lambda (i) 1.0)
                (lambda (i) (cond ((= i 1) 1)
                                  ((= i 2) 2)
                                  ((= (remainder (- i 2) 3) 0) (* (- i 2) 2))
                                  (else 1)))
                11)
      2))

(e)
