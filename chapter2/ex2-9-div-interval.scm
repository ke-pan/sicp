(load "ex2-7-interval.scm")
(define (div-interval x y)
  (if (< (* (upper-bound y) (lower-bound y)) 0)
      (display "something wrong")
      (mul-interval x
                    (make-interval (/ 1.0 (upper-bound y))
                                   (/ 1.0 (lower-bound y))))))

(div-interval (make-interval 5 6) (make-interval 1.2 1.8))
(div-interval (make-interval 5 6) (make-interval -1.2 1.8))
