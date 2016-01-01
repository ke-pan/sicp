(load "ex1_42.scm")
(define (repeated f n)
  (define (iter i g)
    (if (= i n)
        g
        (iter (+ i 1) (compose f f))))
  (iter 1 f))
((repeated square 2) 5)
