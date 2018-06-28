%Question 1:
power(X, N, V) :- 
	X == 0, N > 0, V is 0, !;
	X > 0, N == 0, V is 1, !;
	X > 0, N > 0, V is X ** N, !;
	false.

power2(X, N, V) :- 
	(X == 0, N == 0) -> false;
	(X == 0, N > 0) -> V is 0;
	(X > 0, N == 0) -> V is 1;
	V is X ** N.

%Question 2:
randseq(A, B) :- 
	length(B, A), 
	maplist(random(0, 100), B).

/*
------------------
Question 1 Output:
------------------
?- power(0, 0, V).
false.

?- power(0, 2, V).
V = 0.

?- power(2, 0, V).
V = 1.

?- power(3, 2, V).
V = 9.

?- power2(0, 0, V).
false.

?- power2(0, 2, V).
V = 0.

?- power2(2, 0, V).
V = 1.

?- power2(3, 2, V).
V = 9.

------------------
Question 2 Output:
------------------
?- randseq(10, L).
L = [24, 5, 6, 56, 98, 79, 17, 5, 81, 87].

?- randseq(10, L).
L = [76, 22, 3, 60, 71, 40, 16, 25, 57, 66].
*/