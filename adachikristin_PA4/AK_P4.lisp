
(defun COUNTER (lst) 
	(cond ((null lst) 0)
		  ((not (listp lst)) 1)
		  (t (+ (if (atom (first lst)) 
		  		1 (COUNTER (first lst)))
		  		(COUNTER (rest x))))))

(defun palindrome (lst) 
	(do ((lst x (cdr x)) 
		(y x (cddr y)) 
		(z () (cons (car x) z)))
		((null (cdr y)) 
		(equal z (if y (cdr x) x)))))

;;(print (palindrome '(a b c b a)))
;;(print (palindrome '(a b c a)))