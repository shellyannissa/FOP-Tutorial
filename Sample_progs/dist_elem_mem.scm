(define (remove-duplicates lst)
    (cond
        ((null? lst) '())
        ((member (car lst) (cdr lst))
                 (remove-duplicates (cdr lst))
                 )
        (else 
              (cons (car lst) (remove-duplicates (cdr lst)))
              )
        )
    )

(display (remove-duplicates '( 3 3 5 6 7 5 6 5 7)))