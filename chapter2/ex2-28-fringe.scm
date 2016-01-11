(define (fringe items)
  (cond ((null? items) '())
        ((pair? items) (append (fringe (car items)) (fringe (cdr items))))
        (else (list items))))

(define x (list (list 1 2) (list 3 4)))
(fringe x)
(fringe (list x x))

