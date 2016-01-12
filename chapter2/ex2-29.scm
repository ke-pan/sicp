(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (car (cdr branch)))

(define (weight branch)
  (structure-weight (branch-structure branch)))

(define (structure-weight structure)
  (if (pair? structure)
    (total-weight structure)
    structure))

(define (total-weight mobile)
  (+ (weight left-branch mobile)
     (weight right-branch mobile)))

(define (balance? mobile)
  (let ((right (right-branch mobile))
        (left (left-branch mobile)))
    (and (= (* (branch-length right) (weight right))
            (* (branch-length left) (weight left)))
         (balance-branch? right)
         (balance-branch? left))))

(define (balance-branch? branch)
  (if (pair? (branch-structure branch))
    (balance? (branch-structure branch))
    #t))

