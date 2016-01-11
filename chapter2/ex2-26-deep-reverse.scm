(define (deep-reverse items)
  (define (helper l result)
    (if (null? l)
      result
      (if (pair? (car l))
        (helper (cdr l) (cons (deep-reverse (car l)) result))
        (helper (cdr l) (cons (car l) result)))))
  (helper items '()))

(deep-reverse (list 1 2))
(deep-reverse (list (list 1 2) (list 3 4)))
