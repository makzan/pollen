#lang racket/base
(require sugar txexpr)


(define+provide/contract (unicode x)
  (string? . -> . string?)
  (format "~a" (integer->char (string->number (format "#x~a" x)))))

(define+provide/contract (sg x y g)
  (integer? integer? string? . -> . txexpr?)
  `(text ((x ,(format "~a" x))(y ,(format "~a" y))) ,g))
