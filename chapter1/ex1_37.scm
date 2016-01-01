(define (cont-frac n d k)
  (define (re i)
    (if (> i k)
        0
        (/ (n i) (+ (d i) (iter (+ i 1))))))

  (define (iter i sum)
    (if (= i 0)
        sum
        (iter (- i 1) (/ (n i) (+ (d i) sum)))))
  (iter k 0))



(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           11)
