(load "accumulate.scm")

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (term a) a)
(define (next a) (+ a 1))
(product term 1 next 4)
(sum term 1 next 4)
