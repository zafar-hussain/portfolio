;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname ex933) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;#lang racket
;(require test-engine/racket-tests)

;;; Exercise 9.3.3 Develop the function contains?, which consumes a symbol and a list of symbols
;;; and determines whether or not the symbol occurs in the list

;; contains? symbol los -> boolean
;; returns true if the given symbol sxists in the list oof symbols
(check-expect (contains? 'aSymbol  empty)                    false) ; basecase
(check-expect (contains? 'aSymbol  (cons 'aSymbol empty ))   true)
(check-expect (contains? 'aSymbol  (list 'a 'aSymbol 'b))    true)
(check-expect (contains? 'aSymbol  (list 'a 'b 'c))          false)

;(define (contains? s los) false) ; stub
(define (contains? s los) 
  (cond
    [(empty? los) false]
    [else
     (or
      (symbol=? (first los) s)
      (contains? s (rest los)))
     ]

    ))

;(test)

