(load "ex2-36-accumulate-n.scm")

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (i) (dot-product i v)) m))

(matrix-*-vector (list (list 1 2 3) (list 4 5 6)) (list 1 2 3))

(define (transepose m)
  (accumulate-n cons `() m))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n))
        (map (lambda (col-of-m)
               (map (lambda (col-of-cols)
                      (dot-product col-of-m
                                   col-of-cols)) 
                    cols))
             m))))
