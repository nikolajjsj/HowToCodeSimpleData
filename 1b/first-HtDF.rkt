;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname first-HtDF) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; String -> String                        ; signature
;; Pluralizes the String                   ; Purpose
(check-expect (plur "word") "words")       ; examples/tests
(check-expect (plur "way") "ways")         ; ---||---

;(define (plur s) "")                      ; this is the stub

;(define (plur s)                          ; Template
;  (... s))

(define (plur s)                           ; function body
  (string-append s "s"))