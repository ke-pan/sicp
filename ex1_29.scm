(load "cube.scm")

(define (sum term a next b)
  (cond ((> a b) 0)
        ((or (= a 0) (= a b)) (+ (term a) (sum term (next a) next b)))
        ((even? a) (+ (* (term a) 2) (sum term (next a) next b)))
        (else (+ (* (term a) 4) (sum term (next a) next b)))))

(define (simpson-integral f a b n)
  (define (h) (/ (/ (- b a) n) 3.0))
  (define (next a) (+ a (h)))
  (* (h) (sum f a next b)))

(simpson-integral cube 0 1 100)
(simpson-integral cube 0 1 1000)
