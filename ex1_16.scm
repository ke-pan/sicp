(define (fast-expt b n)
  (define (iter b n product)
          (cond ((= n 0) 1)
                ((= n 1) (* b product))
                ((even? n) (iter (square b) (/ n 2) product))
                (else (iter b (- n 1) (* b product)))
          )
  )
  (iter b n 1)
)

(fast-expt 2 10)
