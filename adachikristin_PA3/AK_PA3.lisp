;;Initializes a random state so that the list is not always the same random numbers
(setf *random-state* (make-random-state t))

;;Creates a random list of values in a given range
(defun RAND-LIST (A B)
	(loop for i from 1 to 20
		collect (+ A (random (- B A)))))

;;Converts a given list into polynomial form
(defun WRITE-POLY (lst) 
	(setf poly "")
	(cond ( (= (list-length lst) 0)
		(setf poly "0")) )
	(loop for i in lst
		do (setf poly (format nil "~A~A" poly (WRITE-X i))))
	(format t "~A~%" poly))

;;Converts a single item into polynomial form
(defun WRITE-X (i)
	(setf sign "")
	(cond ( (> (car i) 0) (setf sign "+")))
	(cond ( (= (car (cdr i)) 1) (format nil "~A~Ax" sign (car i)))
		  ( (= (car (cdr i)) 0) (format nil "~A~A" sign (car i)))
		  ( T (format nil "~A~Ax^~A" sign (car i) (car (cdr i))))))

;;Test cases
(print "-----------")
(print "Question #1")
(print "-----------")
(print (RAND-LIST 0 101))
(print (RAND-LIST 10.0 80.1))

(terpri)
(print "-----------")
(print "Question #2")
(print "-----------")
(terpri)
(WRITE-POLY nil)
(WRITE-POLY (list (list 2 1) (list 1 0)))
(WRITE-POLY (list (list 3 2) (list -1 0)))
(WRITE-POLY (list (list 5 2) (list -4 1) (list 1 0)))
(WRITE-POLY (list (list 7 14) (list 11 13) (list -3 2) (list 7 1) (list -5 0)))
(WRITE-POLY (list (list 1 0) (list 2 1) (list -5 3) (list -3 1) (list 7 0)))

#|
"-----------"
"Question #1"
"-----------"
(28 81 63 69 70 37 79 87 43 34 28 33 70 42 98 15 59 17 40 96)
(59.294594 77.05264 42.688457 31.562723 36.966713 14.293423 20.262558 52.889523 42.618988 22.880434 35.846733 30.557734 69.03
 38.374847 39.91459 13.610553 68.45494 42.38994 14.806749 61.031487)

"-----------"
"Question #2"
"-----------"
0
+2x+1
+3x^2-1
+5x^2-4x+1
+7x^14+11x^13-3x^2+7x-5
+1+2x-5x^3-3x+7
|#