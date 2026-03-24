; [DEFAULT] All files always start with (newline) and end with (exit)

(newline)
(newline)

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1))
         (* 2 (f-rec (- n 2)))
         (* 3 (f-rec (- n 3))))))

(define (f-iter n)
  (define (iter a b c count)
  (display "iter: a=") (display a) (display ", b=") (display b) (display ", c=") (display c) (display ", count=") (display count) (newline)
    (if (< count 3)
        a
        (iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  (iter 0 1 2 n))

(display "Tree Function - Chapter 1")
(newline)
(display "Tree Function of 4 is: ")
(display (f-rec 4))
(newline)
(newline)
(display "Iterative Function - Chapter 1")
(newline)
(display "Iterative Function of 4 is: ")
(display (f-iter 4))

(newline)
(newline)


(exit)