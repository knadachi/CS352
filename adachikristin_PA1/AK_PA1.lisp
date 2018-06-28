(write-line "Question 1:")
;;(write( max ))  ;produces error
;;(terpri)
(write(max 3)) 
(terpri)
(write(max 5 2 8)) 
(terpri)
(write(max 2 4 8 1 6))
(terpri)

(write-line "Question 2:")
(setq list '())
(setq list(cons 'e list))
(setq list(cons 'd list))
(setq list(cons 'c list))
(setq list(cons 'b list))
(write(setq list(cons 'a list)))
(terpri)

(write-line "Question 3:")
(setq list '())
(setq list(cons '(c 3) list))
(setq list(cons '(b 2) list))
(write(setq list(cons '(a 1) list)))

#|
*** - EVAL: too few arguments given to MAX: (MAX)

Question 1:
3
8
8
Question 2:
(A B C D E)
Question 3:
((A 1) (B 2) (C 3))
|#