;; simple function that removes all instances of s from los
(define remove
	(lambda (s los)
		‘()
		(if (eqv? (car los) s)
			(remove s (cdr los))
			(cons (car los) (remove s (cdr los))))))