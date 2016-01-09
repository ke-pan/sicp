(define (for-each proc items)
  (define (helper a l)
    (proc a)
    (for-each proc l))
  (if (null? items)
      #t
      (helper (car items) (cdr items))))
