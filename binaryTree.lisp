(define (leaf? tree) (integer? tree))

(define lson
    (lambda(node)
        (cond
            ((null? (car node)) '())
            (contents-of (cadr node))
            )))

(define rson
    (lambda(node)
        (cond
            ((null? (cdr node)) '())
            (contents-of (cddr node))
            )))
            
(define contents-of
    (lambda(node)
        (cond
            ((null? node) '())
            ((leaf? node) (car node))
            ((cons (lson node) (rson node))))))

(contents-of '(baz (bar 1 (foo 1 2)) (biz 4 5)))