%Question 1a:
bmi(W, H, B) :- 
	( H > 0 
		-> B is W / (H * H) * 703
		; B is 0 ).

%Question 1b:
pair(A, B, X, Y) :-
	( A >= B
		-> X is A - B, Y is A * B
		; X is A + B, Y is A / B ).

%Question 2a:
has(jack, apples).
has(ann, plums).
has(dan, money).

fruit(apples).
fruit(plums).

%Question 2b:
happy(bill).
happy(mary).
happy(john).
happy(alex).

sad(bill).

likes(john, corvettes).
likes(john, wine).
likes(john, book).
likes(mary, book).
likes(mary, corvettes).
likes(alex, corvettes).

smart(X) :- likes(X, book).
valuable(X) :- likes(mary, X).

/*
-------------------
Question 1a Output:
-------------------
?- bmi(0,0,B).
B = 0.

?- bmi(100,60,B).
B = 19.527777777777775.

?- bmi(150,72,B).
B = 20.341435185185187.

?- bmi(215,68,X).
X = 32.68706747404844.

-------------------
Question 1b Output:
-------------------
?- pair(5,3,X,Y).
X = 2,
Y = 15.

?- pair(3,5,X,Y).
X = 8,
Y = 0.6.

-------------------
Question 2a Output:
-------------------
?- has(jack,X).
X = apples.

?- has(X,apples), has(Y,plums).
X = jack,
Y = ann.

?- has(dan,X), fruit(X).
false.

?- has(X, Y), not( fruit(Y) ).
X = dan,
Y = money.

-------------------
Question 2b Output:
-------------------
?- happy(X).
X = bill ;
X = mary ;
X = john ;
X = alex.

?- likes(X, book).
X = john ;
X = mary ;
false.

?- smart(X).
X = john ;
X = mary ;
false.

?- valuable(X).
X = book ;
X = corvettes.

?- happy(X), sad(X).
X = bill ;
false.

?- happy(X), likes(X, book).
X = mary ;
X = john ;
false.
*/