homme(pierre).
homme(paul).
homme(jacques).
homme(marc).
femme(marie).
femme(sophie).
femme(claire).
parent(pierre, paul).
parent(marie, paul).
parent(pierre, claire).
parent(marie, claire).
parent(paul, sophie).
parent(claire, jacques).
parent(jacques, marc).

pere(X, Y) :- homme(X), parent(X, Y).
mere(X, Y) :- femme(X), parent(X, Y).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
frere_ou_soeur(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
oncle(X, Y) :- homme(X), parent(Z, Y), frere_ou_soeur(X, Z).
tante(X, Y) :- femme(X), parent(Z, Y), frere_ou_soeur(X, Z).
cousin(X, Y) :- parent(Z, X), parent(W, Y), frere_ou_soeur(Z, W).

liste_vide([]).
tete_queue([T|Q], T, Q).
longueur([], 0).
longueur([_|Q], N) :- longueur(Q, M), N is M + 1.
present(X, [X|_]).
present(X, [_|Q]) :- present(X, Q).
