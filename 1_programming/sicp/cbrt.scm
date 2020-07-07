; SICP cbrt (1.1.8)

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x)
                   x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

; mapping to 'sqrt'
(define (sqrt x)
  (sqrt-iter 1.0 x))

; define square again
(define (square x)
  (* x x))

; create cbrt logic
(define (y x)
  (square x))

(define (cbrt x)
  (/ (+ (/ x (square y)) (* 2 y)) 3))
