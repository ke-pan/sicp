(load "accumulate.scm")
(define (map p sequence)
  (accumulate (lambda (x y) (cond (p x) y)) `() sequence))

(map square (list 1 2 3))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(append (list 1 2 3) (list 4 5 6))

(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

(length (list 2 3 4))
