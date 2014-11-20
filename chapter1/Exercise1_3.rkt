#lang planet neil/sicp
(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (ans x y z) (cond ((and (< x y) (< x z)) (sum-of-squares y z)) ;xが最小
          ((and (< y x) (< y z)) (sum-of-squares x z)) ;yが最小
          (else (sum-of-squares x y)) ))