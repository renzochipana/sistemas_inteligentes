%hechos
%mis padres
padre(carlos, renzo).
padre(carlos, luz).
padre(carlos, humberto).
padre(felipe, carlos).

madre(felicidad, renzo).
madre(felicidad, luz).
madre(felicidad, humberto).
madre(maria, felicidad).

padre(toribio, felicidad).
madre(margarita, carlos).

% mis hermanos
hermano(humberto, renzo).
hermano(humberto, luz).
hermana(luz, renzo).
hermana(luz, humberto).


%mis primos
primo(jose, renzo).
primo(gustavo, renzo).
primo(antony, renzo).
prima(evelyn, renzo).
primo(jaime, renzo).

% tios paternos
tio_paterno(eusebio, renzo).
tio_paterno(felix, renzo).
tio_paterno(andres, renzo).

tia_paterna(gloria, renzo).
tia_paterna(eva, renzo).
tia_paterna(esperanza, renzo).

% tios maternos
tio_materno(eusebio, renzo).
tia_materna(gloria, renzo).


%10 Reglas

abuelo(X, Y) :- padre(X, Z), (padre(Z, Y) ; madre(Z, Y)).
abuela(X, Y) :- madre(X, Z), (padre(Z, Y) ; madre(Z, Y)).

es_padre(X, Y) :- padre(X, Y).
es_madre(X, Y) :- madre(X, Y).

es_hermano(X, Y) :- hermano(X, Y) ; hermana(Y, X).
es_hermana(X, Y) :- hermana(X, Y).

es_tio_paterno(X, Y) :- tio_paterno(X, Y).
es_tia_paterna(X, Y) :- tia_paterna(X, Y).
es_tio_materno(X, Y) :- tio_materno(X, Y).
es_tia_materna(X, Y) :- tia_materna(X, Y).

es_tio(X, Y) :- es_tio_paterno(X, Y) ; es_tio_materno(X, Y).
es_tia(X, Y) :- es_tia_paterna(X, Y) ; es_tia_materna(X, Y).

% es_primo(X, Y) :- (primo(X, Z) ; prima(X, Z)), (padre(Z, Y) ; madre(Z,
% Y)).
% es_prima(X, Y) :- (prima(X, Z) ; primo(X, Z)), (padre(Z, Y) ; madre(Z,
% Y)).
