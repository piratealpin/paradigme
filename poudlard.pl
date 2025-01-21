


suspect(neville).
suspect(ginny).
suspect(drago).


declaration(drago, guilty(drago) -> innocent(neville)).
declaration(neville, guilty(drago) -> innocent(ginny)).
declaration(ginny, guilty(ginny) -> (innocent(drago), innocent(neville))).


innocent(X) :- \+ guilty(X).


unique_guilty([X, Y, Z]) :-
    guilty(X), innocent(Y), innocent(Z);
    innocent(X), guilty(Y), innocent(Z);
    innocent(X), innocent(Y), guilty(Z).

coupable(X) :-
    suspect(X),
    unique_guilty([drago, neville, ginny]),
    declaration(drago, guilty(drago) -> innocent(neville)),
    declaration(neville, guilty(drago) -> innocent(ginny)),
    declaration(ginny, guilty(ginny) -> (innocent(drago), innocent(neville))),
    call(guilty(X)).

% Recherche du coupable
trouver_coupable :-
    coupable(X),
    write('Le coupable est : '), write(X), nl.

% Faits pour les suspects
% guilty(drago).
% innocent(neville).
% innocent(ginny).

