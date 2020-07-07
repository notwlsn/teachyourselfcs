; SICP Exercise 1.3 Solution

; function for squaring numbers
(define (square a)
    (* a a))

; function for comparing two numbers
(define (big x y)
   (if (> x y) x y)) 

; function for adding the squares of the larger two
(define (sq-of-two a b c)
    (cond ((> a b) (+ (square a) (square (big a c))))
        (else (+ (square b) (square (big c a))))))
