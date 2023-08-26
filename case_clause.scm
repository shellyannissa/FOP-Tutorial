(define ( func a b)
    (case (+ a b)
        ((7) 'seven)
        ((2) 'two)
        (else 'nothing)
    )
)

(display (func 3 4))