( define (ascii a)
  (cond
      ((= a 5) 1)
      ((= a 6) 2)
      ((= a 7) 3)
      (else 5)
      )
  )

(display (ascii 9))