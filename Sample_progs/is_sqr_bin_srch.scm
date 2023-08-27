(define (is-sqr x)
    (define (loop1 l r)
        (define mid (floor( / (+ l r) 2.0  )))
        (define mid_sqr  (* mid mid))
        (cond
            ((> l r) #f)
            ((= mid_sqr x) #t)
            ((> mid_sqr x) (loop1 l (- mid 1)))
            (else (loop1 (+ mid 1) r))
            )
        )
    (loop1 1 (floor( / x 2.0)))
    )


(display (is-sqr 16))
(display (is-sqr 17))