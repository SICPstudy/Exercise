#lang planet neil/sicp

(define (cqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ (+ (/ x (* guess guess)) (* 2 guess) ) 3)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.001))

(define (cqrt x)
  (cqrt-iter 1.0 x))


  
