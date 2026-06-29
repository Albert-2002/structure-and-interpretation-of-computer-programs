; [DEFAULT] All files always start with (newline) and end with (exit)

(newline)
(newline)

(display "Exponentiation:")
(newline)
(newline)

(define (exp b n)
  (if (= n 0) 1 (* b (exp b (- n 1)))))

(display (exp 2 5))

(newline)
(newline)

(exit)
