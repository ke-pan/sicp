(define (filtered-accumulate combiner null-value filter term a next b)
  (if (> a b)
      null-value
      (combiner (if (filter a) (term a) null-value )
         (filtered-accumulate combiner null-value  filter term (next a) next b))))
