(define (line x1 y1 x2 y2)
  (define start (cons x1 y1))
  (define end (cons x2 y2))
  (cons start end))
(define (start l) (car l))
(define (end l) (cdr l))
(define (xc p) (car p))
(define (yc p) (cdr p))

(define (print-point p)
  (newline)
  (display "(")
  (display (xc p))
  (display ",") 
  (display (yc p))
  (display ")")
  0)
(define (mid l)
  (define (avrg a b) (/ (+ a b) 2))
  (cons (avrg (xc (start l)) (xc (end l)))
    (avrg (yc (start l)) (yc (end l)))))	
