(load "cube.scm")
(define (sum term a next b)
  (define (iter s a)
    (if (> a b)
        s
        (iter (+ s (term a)) (next a))))
  (iter 0 a))

(define (next a) (+ a 1))
(sum cube 1 next 3)
