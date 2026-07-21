; [DEFAULT] All files always start with (newline) and end with (exit)

(newline)
(newline)

(display "Greatest Common Divisor: ")
(newline)
(newline)
(define (gcd a b)
  (if (= b 0)   a
      (gcd b (remainder a b))))
(display (gcd 48 18)) ; Output: 6
(newline)

(exit)
