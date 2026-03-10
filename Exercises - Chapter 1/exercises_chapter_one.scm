; [DEFAULT] All files always start with (newline) and end with (exit)

(newline)
(newline)

; ============================================================
; Exercises - Chapter 1
; ============================================================

(display "Exercises - Chapter 1")
(newline)
(newline)

; Exercise 1.1: Evaluate basic expressions
(display "Evaluate basic expressions!") (newline)
(display (+ 1 2 3)) (newline)
(newline)

; Variable definitions and calculations
(define x 2)
(display "(* x x x) = ") (display (* x x x)) (newline)
(newline)

(define a (+ (* 2 2) (* 3 3)))
(display "a = ") (display a) (newline)
(newline)

; Numerator and denominator calculations
(define denominator (* 3 (- 6 2) (- 2 7)))
(define numerator (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5)))))))

(display "numerator = ") (display numerator) (newline)
(display "denominator = ") (display denominator) (newline)
(display "numerator/denominator = ") (display (exact->inexact (/ numerator denominator))) (newline)
(newline)

; Square function
(define (square x) 
  (* x x))

(display "square of 5 = ") (display (square 5)) (newline)

(newline)
(exit)