#lang racket

(require racket/runtime-path)

(define-runtime-path here
  ".")

(define (get file)
  (file->value (build-path here file)))

(writeln (list (get "a.rktd")
               (get "b.rktd")))

