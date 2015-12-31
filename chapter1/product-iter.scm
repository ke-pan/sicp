(define (product term a next b)
  (define (iter p a)
    (if (> a b)
        p
        (iter (* p (term a)) (next a))))
  (iter 1 a))
