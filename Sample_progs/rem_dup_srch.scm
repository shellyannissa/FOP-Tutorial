(define (search a b)
    (cond
        ( (null? b) #f)
        ( ( = (car b) a) #t)
        (else (search a (cdr b)))
        )
    )

(define (rem-dup lst)
    (cond 
          ((null? lst)'())
          ((search (car lst) (cdr lst)) (rem-dup (cdr lst)))
          (else (cons (car lst) (rem-dup (cdr lst))))
          )
    )

(display (rem-dup '(3 5 2 3 2 5 6 6)))