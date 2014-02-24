;; returns the nth element of lst
(define nth-element
		(lambda (lst n)
			(if (null? lst)
				(report-list-too-short n)
				(if (zero? n)
					(car lst)
					(nth-element (cdr lst) (- n 1)))))

(define report-list-too-short
	(lambda (n lst)
		(eopl:error ’n-th-element
			(quote lst “does not contain” n " elements”))))