;Every perfect square could be represented as a sum of n consecutive odd numbers
;Therefore repeatedly subtract odd numbers from the given number num
;Return true if num equals 0 at some point, false otherwise

(define (is_sqr x)
    (define (loop1 x odd)
        (cond
            ((zero? (- x odd)) #t)
            ((negative? (- x odd)) #f)
            (else (loop1 (- x odd) (+ odd 2)))
            )
    )
    (loop1 x 1)
)

(display (is_sqr 26))