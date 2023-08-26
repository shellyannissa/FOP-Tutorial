(define (construct n)
    (if (= n 0)
        '()
        (cons n (construct (- n 1)))
        )
    )

(display (construct 5))