(define (reverse items)
  (define (helper l result)
    (if (null? l)
      result
      (helper (cdr l) (cons (car l) result))))
  (helper items '()))

(reverse (list 1 4 9 16 25))
(reverse (list 1 2))
