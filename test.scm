(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

(define (abs n)
	(cond ((>= n 0 ) n)
	      ((< n 0 ) (- n) )))

(define (sqr-sum x y)
  			(+ (* x x) (* y y)))  

(define (max-square-sum a b c)
  (cond (( and (>= a b) (>= a c) ) (if (>= b c) (sqr-sum a b) (sqr-sum a c)))
        (( and (>= b a) (>= b c) ) (if (>= a c) (sqr-sum b a) (sqr-sum b c)))
        (( and (>= c a) (>= c b) ) (if (>= a b) (sqr-sum c a) (sqr-sum c b)))))

