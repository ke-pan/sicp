(define (double a) (+ a a))
(define (halve a) (/ a 2))
(define (mul a b)
  (define (iter a b c)
          (cond ((= b 0) 0)
                ((= b 1) (+ a c))
                ((even? b) (iter (double a) (halve b) c))
                (else (iter a (- b 1) (+ a c)))
          )
  )
  (iter a b 0)
)

(mul 4 4)
(mul 6 4)
(mul 6 5)
