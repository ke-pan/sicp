(define (factorial-iter n m)
  (if (= n 0)
      m
      (factorial-iter (- n 1) (* n m))
  )
)

(factorial-iter 5 1)
