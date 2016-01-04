(load "ex2-7-interval.scm")

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

(sub-interval (make-interval 5 6) (make-interval 1.2 1.8))
