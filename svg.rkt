#lang racket/base
(require pollen/template)

(provide (all-defined-out))

(define (simple-svg-doc . stuff)
  (string-append "<?xml version=\"1.0\"?>"
  (->html `(svg ((xmlns "http://www.w3.org/2000/svg")) ,@stuff))))