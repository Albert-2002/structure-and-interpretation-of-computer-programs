; [DEFAULT] All files always start with (newline) and end with (exit)

(newline)
(newline)

(define (count-change-rs amount)
  (cc amount 6)) ; We now have 6 types of currency

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)   ; Success: You hit exactly 0!
        ((or (< amount 0) (= kinds-of-coins 0)) 0) ; Failure: Overshot or no coins left.
        (else (+ (cc amount                     ; "Lose It": Don't use the biggest coin
                     (- kinds-of-coins 1))
                 (cc (- amount                  ; "Use It": Use one big coin and keep going
                        (first-denomination kinds-of-coins))
                     kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)   ; ₹1
        ((= kinds-of-coins 2) 2)   ; ₹2
        ((= kinds-of-coins 3) 5)   ; ₹5
        ((= kinds-of-coins 4) 10)  ; ₹10
        ((= kinds-of-coins 5) 20)  ; ₹20
        ((= kinds-of-coins 6) 50))) ; ₹50

(display "Count Change - Chapter 1")
(newline)
(display "Number of ways to make change for ₹10: ")
(display (count-change-rs 10))


(newline)
(newline)


(exit)