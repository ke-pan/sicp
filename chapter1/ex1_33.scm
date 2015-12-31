(load "filtered-accumulate.scm")
(define (prime-sum a b)
  (define (term a) a)
  (define (next a) (+ a 1))
  (filtered-accumulate + 0 prime? term a next b)
)

(define (prime? n)
  (= (smallest-divisor n) n))

(define (smallest-divisor n)
  (define (iter i n)
          (cond ((> (square i) n) n)
                ((= (remainder n i) 0) i)
                (else (iter (+ i 1) n))
          )
  )
  (iter 2 n)
)

(prime-sum 2 10)

(load "gcd")
(define (prime-product n)
  (define (term a) a)
  (define (next a) (+ a 1))
  (define (filter a) (= 1 (gcd n a)))
  (filtered-accumulate * 1 filter term 2 next (- n 1))
)
(prime-product 6)