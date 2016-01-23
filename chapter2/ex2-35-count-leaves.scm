(load "accumulate.scm")
(define (count-leaves t)
  (accumulate + 0 (map (lambda (x) (if (pair? x) (count-leaves x) 1)) t)))

(count-leaves (cons (list 1 2) (list 3 4)))
(count-leaves (list 1 2))
