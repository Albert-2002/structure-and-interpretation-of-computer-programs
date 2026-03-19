; [DEFAULT] All files always start with (newline) and end with (exit)

(newline)
(newline)

(define (tree-fibonacci n) 
    (cond ((= n 0) 0) 
          ((= n 1) 1) 
          (else (+ (tree-fibonacci (- n 1)) (tree-fibonacci (- n 2))))))

(display "Tree Fibonacci - Chapter 1")
(newline)
(newline)
(display "Fibonacci of 6 is: ")
(newline)
(display (tree-fibonacci 6))
(newline)
(display "Tree Recursive Fibonacci is inefficient for large n due to repeated calculations.")
(newline)
(newline)
(newline)

(define (iterative-fibonacci n)
    (define (fib-iter a b count)
        (if (= count 0)
            a
            (fib-iter b (+ a b) (- count 1))))
    (fib-iter 0 1 n))

(display "Iterative Fibonacci - Chapter 1")
(newline)
(newline)
(display "Fibonacci of 6 is: ")
(newline)
(display (iterative-fibonacci 6))
(newline)
(display "Iterative Fibonacci is efficient with linear time complexity.")
(newline)
(newline)


(exit)