; [DEFAULT] All files always start with (newline) and end with (exit)

(newline)
(newline)

(display "Newton's Square Root - Chapter 1")
(newline)

(define (square x)
    (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(display "Square root of 9 is approximately: ")
(display (sqrt 9))
(newline)
(display "Square root of 2 is approximately: ")
(display (sqrt 2))
(newline)

(exit)