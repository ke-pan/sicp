(load "sum.scm")
(load "cube.scm")
(define (inc a) (+ a 1))
(define (sum-cubes a b) (sum cube a inc b))

(sum-cubes 1 3)
