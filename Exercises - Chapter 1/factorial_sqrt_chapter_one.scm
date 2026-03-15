; [DEFAULT] All files always start with (newline) and end with (exit)

(newline)
(newline)

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (* guess guess) x)) 0.001))
  
  (define (improve guess)
    (/ (+ guess (/ x guess)) 2))
  
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  
  (sqrt-iter 1.0))

(define (r-factorial x)
  (if (= x 0)
      1
      (* x (r-factorial (- x 1)))))

(define (factorial x)
  (define (iter product counter max-count)
    (if (> counter max-count)
        product
        (iter (* product counter) (+ counter 1) max-count)))
  
  (iter 1 1 x))


(display "Square root of 9 is approximately: ")
(display (sqrt 9))
(newline)
(newline)
(display "Factorial of 5 is: ")
(display (factorial 5))
(newline)
(newline)

(exit)