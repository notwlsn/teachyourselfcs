; SICP Exercise 1.5 Solution

; (p) as a function is infinately recursive
(define (p) (p))

(define (test x y)
    (if (= x 0) 0 y))

(test 0 (p))

; applicative-order evaluation
; (test 0 (p)) -> (p) called, program hangs

; normal-order evaluation
; (test (x=0) (y=p))
; (if (0=0))
; returns 0
