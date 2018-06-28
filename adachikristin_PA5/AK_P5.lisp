;;Implementation of op-some schema
(defun op-some (condition operation arg)
	(map 'list (lambda (x)
		(cond ((funcall condition x) (funcall operation x))
			(t x)))
	arg))

;;Takes a number and returns its square
(defun sq (x)
	(* x x))

;;Takes a number and determines if it's prime
(defun isPrime (n)
  (loop
     for d = 2 then (+ d add)
     for add = 1 then 2
     thereis (> (* d d) n)
     until (= (mod n d) 0))) 

;;Takes a number and returns its double
(defun double(x)
	(* x 2))

;;Test cases
(print (op-some #'oddp #'sq nil))
(print (op-some #'oddp #'sq '(2)))
(print (op-some #'oddp #'sq '(3)))
(print (op-some #'oddp #'sq '(3 6 4 5 2)))
(terpri)
(print (op-some #'isPrime #'double '(2)))
(print (op-some #'isPrime #'double '(3)))
(print (op-some #'isPrime #'double '(3 6 4 5 2)))

#|
NIL
(2)
(9)
(9 6 4 25 2)

(4)
(6)
(6 6 4 10 4)
|#