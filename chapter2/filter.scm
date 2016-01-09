(define (filter items proc)
    (cond ((null? items) '())
          ((proc (car items)) (cons (car items) (filter (cdr items) proc)))
          (else (filter (cdr items) proc))))
