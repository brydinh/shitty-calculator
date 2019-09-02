#lang racket

;TODO: figure out how to parse input and pass those arguments instead of read-line

(define (calculatorLoop)
  (display "shitty calculator 3000 (+,-,*, /, exit)")
  (define command (read-line))
  (cond [(string-contains? command "+") (add)(calculatorLoop)]
        [(string-contains? command "-") (subtract)(calculatorLoop)]
        [(string-contains? command "*") (multiply)(calculatorLoop)]
        [(string-contains? command "/") (divide)(calculatorLoop)]
        [(string-contains? command "exit")  (displayln "Goodbye!")]        
        [else (displayln "UNKNOWN") (calculatorLoop)]
        )
 )

(define (add)
  (define numb1 (read-line))
  (define numb2 (read-line))
  (define printNumb (+ (string->number numb1) (string->number numb2)))
  (displayln(~v printNumb))
)

(define (subtract)
  (define numb1 (read-line))
  (define numb2 (read-line))
  (define printNumb (-(string->number numb1) (string->number numb2)))
  (displayln(~v printNumb))
)

(define (multiply)
  (define numb1 (read-line))
  (define numb2 (read-line))
  (define printNumb (* (string->number numb1) (string->number numb2)))
  (displayln(~v printNumb))
)

(define (divide)
  (define numb1 (read-line))
  (define numb2 (read-line))
  (define printNumb (/ (string->number numb1) (string->number numb2)))
  (displayln(~v printNumb))
)

(define (start)(calculatorLoop))

(start)
