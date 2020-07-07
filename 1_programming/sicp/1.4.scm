; SICP Exercise 1.4 Solution

(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

; if b > 0, return a + b
; if b < 0, return a - b
