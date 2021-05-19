(define (calc)
  (display "calc: ")
  (flush)
  (print (calc-eval (read)))
  (calc)
  )
  
(define (calc-apply func arg)
  (cond ((eq? func '+) (acc + 0 arg))
        ((eq? func '-) 
        (cond ((null? arg) (error "No arguments to -"))
                           ((= (length arg) 1) (- (car arg)))
                           (else (- (car arg) (acc + 0 (cdr arg))))))
        ((eq? func '*) (acc * 1 arg))
        ((eq? func '/) (acc * 1 (cdr arg))
        (else (error "BAD OPERATOR!" func))))