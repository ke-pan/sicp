(define (fermat-test n)

  (define (try-it a)
    (= (expmod a n n) a))

  (define (iter i)
    (cond ((= i n) #t )
          ((try-it i) (iter (+ i 1)))
          (else #f)))
  (iter 2)
)


(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
        (else (remainder (* (expmod base (- exp 1) m) base) m))))

(fermat-test 199)
(fermat-test 1999)
(fermat-test 19999)
(fermat-test 561)
(fermat-test 1105)
(fermat-test 1729)
