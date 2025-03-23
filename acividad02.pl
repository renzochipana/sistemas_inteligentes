horoscopo(aries, 21, 3, 21, 4).
horoscopo(tauro, 22, 4, 21, 5).
horoscopo(geminis, 22, 5, 21, 6).
horoscopo(cancer, 22, 6, 22, 7).
horoscopo(leo, 23, 7, 22, 8).
horoscopo(virgo, 23, 8, 22, 9).
horoscopo(libra, 23, 9, 22, 10).
horoscopo(escorpio, 23, 10, 22, 11).
horoscopo(sagitario, 23, 11, 21, 12).
horoscopo(capricornio, 22, 12, 20, 1).
horoscopo(acuario, 21, 1, 19, 2).
horoscopo(piscis, 20, 2, 20, 3).

%reglas
signo(Dia, Mes, aries) :-
    (Mes == 3, Dia >= 21) ;
    (Mes == 4, Dia =< 21).

signo(Dia, Mes, tauro) :-
    (Mes == 4, Dia >= 22) ;
    (Mes == 5, Dia =< 21).

signo(Dia, Mes, geminis) :-
    (Mes == 5, Dia >= 22) ;
    (Mes == 6, Dia =< 21).

signo(Dia, Mes, cancer) :-
    (Mes == 6, Dia >= 22) ;
    (Mes == 7, Dia =< 22).

signo(Dia, Mes, leo) :-
    (Mes == 7, Dia >= 23) ;
    (Mes == 8, Dia =< 22).

signo(Dia, Mes, virgo) :-
    (Mes == 8, Dia >= 23) ;
    (Mes == 9, Dia =< 22).

% Regla 7: Libra
signo(Dia, Mes, libra) :-
    (Mes == 9, Dia >= 23) ;
    (Mes == 10, Dia =< 22).

% Regla 8: Escorpio
signo(Dia, Mes, escorpio) :-
    (Mes == 10, Dia >= 23) ;
    (Mes == 11, Dia =< 22).

signo(Dia, Mes, sagitario) :-
    (Mes == 11, Dia >= 23) ;
    (Mes == 12, Dia =< 21).

signo(Dia, Mes, capricornio) :-
    (Mes == 12, Dia >= 22) ;
    (Mes == 1, Dia =< 20).
