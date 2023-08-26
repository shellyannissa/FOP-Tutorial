(define (all_num n)
    (display n)
    (display " ")
    (if (= n 0) 
        0
        (all_num (- n 1))
    )
)

(all_num 5)