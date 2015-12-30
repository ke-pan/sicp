(define (prime? n)
  (= (smallest-divisor n) n))

(define (smallest-divisor n)
  (define (iter i n)
          (cond ((> (square i) n) n)
                ((= (remainder n i) 0) i)
                (else (iter (next i) n))
          )
  )
  (iter 2 n)
)

(define (next i)
  (if (= i 2)
      (+ i 1)
      (+ i 2)))