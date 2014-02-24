;; simple function that reverses a list
(define reverse
   (lambda(lst)
       (cond
           ((null? lst) '())
           ((not (pair?  (car lst)))   (append (reverse (cdr lst)) (list (car lst))))
           ((pair?     (car lst))   (append (reverse (cdr lst)) (list (reverse (car lst)))))
       )
   )
)