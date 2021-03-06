(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (real-time-clock)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (real-time-clock) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (prime? n)
  (= (smallest-divisor n) n))

(define (smallest-divisor n)
  (define (iter i n)
          (cond ((> (square i) n) n)
                ((= (remainder n i) 0) i)
                (else (iter (+ i 1) n))
          )
  )
  (iter 2 n)
)

(define (search-for-primes n count)
  (newline)
  (display "start to search prime from ")
  (display n)
  (display ". target is to find ")
  (display count)
  (display " primes")
  (if (even? n)
      (search-from (+ n 1) count 0 (real-time-clock))
      (search-from n count 0 (real-time-clock)))
)

(define (search-from n count c start-time)
  (newline)
  (display "testing ")
  (display n)
  (cond ((= c count) (report-prime (- (real-time-clock) start-time)))
        ((prime? n) (search-from (+ n 2) count (+ c 1) start-time))
        (else (search-from (+ n 2) count c start-time))))

(define (report n elapsed-time)
  (newline)
  (display "get prime ")
  (display n)
  (display " *** ")
  (display elapsed-time))

(search-for-primes 1000 3)
(search-for-primes 10000 3)
(search-for-primes 100000 3)
(search-for-primes 1000000 3)
