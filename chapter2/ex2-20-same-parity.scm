(load "filter.scm")
(define (same-parity i . items)
  (cons i (filter items (lambda (x) (if (even? i) (even? x) (odd? x))))))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
