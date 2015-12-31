(load "product-iter.scm")
(define (factorial n)
  (define (term a) a)
  (define (next a) (+ a 1))
  (product term 1 next n))

(factorial 3)

(define (pi-over-four n)
  (define (term k) (* (/ (- k 1) k) (/ (+ k 1) k)))
  (define (next k) (+ k 2))
  (product term 3.0 next n))

(pi-over-four 5)
(pi-over-four 50)
(pi-over-four 500)
(pi-over-four 5000)
(pi-over-four 50000)
(pi-over-four 500000)
