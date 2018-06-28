%Warmup Question
my_write([]).
my_write([X|R]) :- write(X), nl, my_write(R).

%Question 1:
inc([], []).
inc([XHead|XTail], [YHead|YTail]) :-
	YHead is XHead + 1, 
	inc(XTail, YTail).

%Question 2:
sode([], []).

sode([XHead|XTail], L) :-
	(XHead mod 2 =:= 0
		->  sode(XTail, L);
			L = [H|T], 
			H is XHead * XHead, 
			sode(XTail, T)).
/*
---------------
Warm-Up Output:
---------------
a
b
c
true.

------------------
Question 1 Output:
------------------
?- inc([1,7,5],[2,8,6]).
true.

?- inc([1,7,5],X).
X = [2, 8, 6].

?- inc([1,7,4,2,8,12],Y).
Y = [2, 8, 5, 3, 9, 13].

?- inc([],X).
X = [].

?- inc([1,7,5],[2,8,5]).
false.

?- inc([1,7],[2,8,5]).
false.

?- inc([1,7,5],[2]).
false.

------------------
Question 2 Output:
------------------
?- sode([],L).
L = [].

?- sode([1,2,3,4],L).
L = [1, 9].

?- sode([3,1,4,1,5,9],L).
L = [9, 1, 1, 25, 81].
*/