estan_casados(paco, maria).
estan_casados(X, Y) :- estan_casados(Y, X), X \= Y, !.

es_madre_de(maria, pepe).
es_madre_de(maria, susana).

es_padre_de(paco, pepe).
es_padre_de(paco, susana).

varon(paco).
varon(pepe).

mujer(maria).
mujer(susana).

es_hijo_de(X, Y) :- varon(X),(es_padre_de(Y, X) ; es_madre_de(Y, X)).

es_hija_de(X, Y) :- mujer(X),(es_padre_de(Y, X) ; es_madre_de(Y, X)).

es_hermano_de(X, Y) :-
    varon(X),
    es_padre_de(Z, X),
    es_padre_de(Z, Y),
    X \= Y,
    write(X),
    write(' es hermano de '),
    write(Y),
    write(' por parte de padre'),
    nl.

es_hermano_de(X, Y) :-
    varon(X),
    es_madre_de(Z, X),
    es_madre_de(Z, Y),
    X \= Y,
    write(X),
    write(' es hermano de '),
    write(Y),
    write(' por parte de madre'),
    nl.

es_hermana_de(X, Y) :-
    mujer(X),
    es_padre_de(Z, X),
    es_padre_de(Z, Y),
    X \= Y,
    write(X),
    write(' es hermana de '),
    write(Y),
    write(' por parte de padre'),
    nl.

es_hermana_de(X, Y) :-
    mujer(X),
    es_madre_de(Z, X),
    es_madre_de(Z, Y),
    X \= Y,
    write(X),
    write(' es hermana de '),
    write(Y),
    write(' por parte de madre'),
    nl.
