;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname larger-image) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; 2 Images -> Boolean
;; Given 2 images produce true if the first is largest
(check-expect (larger-img? (rectangle 2 3 "solid" "red") (rectangle 1 3 "solid" "red")) true)
(check-expect (larger-img? (rectangle 2 3 "solid" "red") (rectangle 3 3 "solid" "red")) false)
(check-expect (larger-img? (rectangle 2 3 "solid" "red") (rectangle 2 3 "solid" "red")) false)
 
; (define (larger-img? img1 img2) false)                   ; stub

; (define (larger-img? img1 img2)                          ; template
;   (... img1 img2))
 
(define (larger-img? img1 img2)
  (> (* (image-height img1) (image-width img1))
     (* (image-height img2) (image-width img2))))