(define (sqrt-iter guess x) 
	(if (good-enough? guess x)
			(sqrt-iter (improve guess x) x) ))

(define (improve guess x) (average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))


(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (newton-sqrt x)
  	(sqrt-iter 0.1 x))