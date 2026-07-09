; [DEFAULT] All files always start with (newline) and end with (exit)

(newline)
(newline)

(display "Exponentiation - Linear Recursion - Time Complexity: O(n) - Space Complexity: O(n):")
(newline)
(newline)
(define (exp-lr b n)
  (if (= n 0) 1 (* b (exp-lr b (- n 1)))))
(display (exp-lr 2 5))
(newline)
(newline)

(display "Exponentiation - Linear Iteration - Time Complexity: O(n) - Space Complexity: O(1):")
(newline)
(newline)
(define (exp-li b n) (iter-exp-li b n 1))
(define (iter-exp-li b counter product) (if (= counter 0) product (iter-exp-li b (- counter 1) (* b product))))
(display (exp-li 2 5))
(newline)
(newline)

(display "Exponentiation - Exponentiation by Squaring - Time Complexity: O(log n) - Space Complexity: O(log n):")
(newline)
(newline)
(define (even? n) (= (remainder n 2) 0))
(define (square x) (* x x))
(define (exp-es b n) 
  (cond ((= n 0) 1)
        ((even? n) (square (exp-es b (/ n 2))))
        (else (* b (exp-es b (- n 1))))))
(display (exp-es 2 5)) ; Output: 32
(newline)
(newline)

(display "Try 500000 iterations with each method and compare the time taken")

(exit)
