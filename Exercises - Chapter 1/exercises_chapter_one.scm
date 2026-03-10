; [DEFAULT] All files always start with (newline) and end with (exit)

(newline)
(newline)

(display "Exercises - Chapter 1")
(newline)
; Exercise 1.1
(display "Evaluate basic expressions!")
(newline)

(display (+ 1 2 3))
(newline)

(define x 2)
(display "(* x x x)=")
(display (* x x x))

(newline)
(define a (+ (* 2 2) (* 3 3)))
(display a)

(newline)
(define denominator (* 3 (- 6 2) (- 2 7)))
(define numerator (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5)))))))
(display "numerator=")
(display numerator)
(newline)
(display "denominator=")
(display denominator)
(newline)
(display "numerator/denominator=")
(display (exact->inexact (/ numerator denominator)))
(newline)
(define (square x) (* x x))
(display "square of 5 = ")
(display (square 5))

(newline)
(newline)
(exit)