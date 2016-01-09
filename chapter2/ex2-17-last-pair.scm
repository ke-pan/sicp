(define (last-pair items)
  (define (iter l result)
    (if (null? l)
        result
        (iter (cdr l) (car l))))
  (iter items 0))

(last-pair (list 23 72 149 34))
