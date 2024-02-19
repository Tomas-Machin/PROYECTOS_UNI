
% CODIGO PROLOG

numeros(X, Y, Z, W):-
    \+ X > 10,     % numero jugador 1
    \+ X < 5,
    \+ Y > 10,     % numero jugador 2
    \+ Y < 5,
    \+ Z > 5,      % dedos jugador 1
    \+ W > 5,      % dedos jugador 2
    T is Z + W,
    diferencia(X, Y, T).

% comprobar si ha ocurrido un empate
diferencia(X, Y, _T):-
    X =:= Y,
    %\+ (X =:= T),
    write('Ha habido un empate'), !.

% comprobar el caso de derrota o victoria en base a diferentes casos
diferencia(X, Y, T):-
    X < T, Y < T, Y > X,
    write('Has perdido...'), !.

diferencia(X, Y, T):-
    Y < X, Y > T,
    write('Has perdido...'), !.

diferencia(X, Y, T):-
    T < X, Y > X,
    write('¡¡¡HAS GANADOO!!!'), !.

diferencia(X, _Y, T):-
    T =:= X,
    write('¡¡¡HAS GANADOO!!!'), !.

diferencia(X, Y, T):-
    T < X, Y < T,
    write('¡¡¡HAS GANADOO!!!'), !.

diferencia(X, Y, T):-
    X < T, Y < T,
    X > Y,
    write('¡¡¡HAS GANADOO!!!'), !.

% Por defecto, se asume la derrota

diferencia(_X, _Y, _T) :- write('Has perdido...').















