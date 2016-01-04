(define (make-interval a b) (cons a b))
(define (upper-bound interval) (cdr interval))
(define (lower-bound interval) (car interval))

(define (add-interval x y)
  (make-interval (+ (lower-interval x) (lower-interval y))
                 (+ (upper-interval x) (upper-interval y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p1 (* (lower-bound x) (upper-bound y)))
        (p1 (* (upper-bound x) (lower-bound y)))
        (p1 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y)))))
