(define (min x y) (if (< x y) x y))
(define (sum-of-biggers x y z)
        (- (+ x y z)
           (min (min x y)
                z
            )
        )
)
(sum-of-biggers 8 3 2)
