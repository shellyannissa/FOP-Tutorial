(define (append lst1 lst2)
    (if (null? lst1)
        lst2
        (cons (car lst1) (append (cdr lst1) lst2))
        )
    )

(display ( append '(1 3 5) '(7 2 1)))