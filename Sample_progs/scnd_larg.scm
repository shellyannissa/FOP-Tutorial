;Max-tup function returns a tuple of two elements- the largest and second largest number
;if (m1, m2) is the two largest numbers returned from the list so far (m1 > m2)
;for a new number num being added to the list there are three cases
;Case I(num > m2 & num > m1 )
;    return (num, m1)
;Case II(num < m1 & num > m2)
;    return (m1, num)
;Case III(num < m1 & num < m2)
;    return (m1, m2)



(define (max-tup lst)
    (cond
        ;base case
        ((null? (cdr lst)) (list (car lst) 0)) 

        ;Case I
        ( (< (car (max-tup (cdr lst))) (car lst) )  (list (car lst) (car (max-tup (cdr lst)))))

        ;Case II
        ( (< (cadr (max-tup (cdr lst)) )  (car lst))  (list (car (max-tup (cdr lst))) (car lst)))

        ;Case III
        (else (max-tup (cdr lst)))
        )
    )


(define (first-func lst)
    (cadr (max-tup lst))
    )


(display (first-func '( 2 5 3 13 4 9)))