(defun quadratic(A B C)
  (cond ((= A 0) (princ "Not quadratic."))
    (t
    (let ((D (- (* B B) (* 4 A C))))
      (cond ((= D 0) (setf x(/ (+ (- B) (sqrt D)) (* 2 A))) (format t "x = ~F~%" x))
        (t
        (setf x1(/ (+ (- B) (sqrt D)) (* 2 A)))
        (setf x2(/ (- (- B) (sqrt D)) (* 2 A)))
        (format t "x1 = ~F" x1)
        (format t " // x2 = ~F~%" x2)))))))

;;test cases
(quadratic 2 -1 -1)
(quadratic 1 4 4)
(quadratic 3 11 0)
(quadratic 4 0 8)
(quadratic 0 4 4)

#|
x1 = 1.0 // x2 = -0.5
x = -2.0
x1 = 0.0 // x2 = -3.6666667
x1 = #C(0 1.4142135) // x2 = #C(0 -1.4142135)
Not a quadratic equation.
|#