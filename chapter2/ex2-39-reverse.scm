(load "accumulate.scm")
(load "ex2-38-fold-left.scm")

(define (reverse sequence)
  (accumulate (lambda (x y) (append y (list x))) `() sequence))

(define (y-a-reverse sequence)
  (fold-left (lambda (x y) (cons y x)) `() sequence))

(reverse (list 1 2 3))
(y-a-reverse (list 1 2 3))
