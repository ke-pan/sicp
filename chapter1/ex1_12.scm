(define (pascal-triangle col row)
        (cond ((= row 1) 1)
              ((= row col) 1)
              (else (+ (pascal-triangle (- col 1) (- row 1)) (pascal-triangle (- col 1) row)))
        )
)

(pascal-triangle 1 1)
(pascal-triangle 2 1)
(pascal-triangle 2 2)
(pascal-triangle 3 2)
(pascal-triangle 5 2)
