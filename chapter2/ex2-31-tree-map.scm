(define (square-tree tree) (tree-map square tree))

(define (tree-map f tree)
  (cond ((null? tree) '())
        ((pair? tree) (cons (square-tree (car tree)) (square-tree (cdr tree))))
        (else (f tree))))

(tree-map square (list (list 1 2) (list 3 4)))
