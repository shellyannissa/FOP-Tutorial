(define (fact n)
    (define (loop1 prod counter)
        (if (> counter n) 
            prod
            (loop1 (* counter prod) (+ counter 1))
            )
        )
    (loop1 1 1)
    )

(display (fact 4))