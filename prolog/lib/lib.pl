lines(X) :- reverse(X, R), atomics_to_string(R, '\n', OutS), write(OutS), write('\n').

fatorial(N, R) :- fatorial(N, 1, R).
fatorial(N, R, R) :- N<1, !.
fatorial(N, Acc, R) :-
    NewN is N - 1,
    NewAcc is Acc * N,
    fatorial(NewN, NewAcc, R).

comb(A,B,R) :- fatorial(A,FA),fatorial(B,FB),fatorial(A-B, FAB), R is FA/(FB*FAB).

arr(A,B,R) :- fatorial(A,FA),fatorial(A-B, FAB), R is FA/FAB.

hyp(A,B,R) :- R is sqrt(A^2 + B^2).

pol(A,B,R,T) :- R is sqrt(A^2 + B^2), T is atan2(A,B).

cart(A,B,R,T) :- R is A*sin(B), T is A*cos(B).

raizes(A,B,C,R) :- Delta is (B^2 - 4*A*C),
                   (Delta < 0, R = [A,B,C], !;
                   Delta == 0, X is -B/2/A, R = [X], !;
                   Delta > 0, X1 is ((-B)+sqrt(Delta))/(2*A), X2 is ((-B)+sqrt(Delta                   ))/(2*A), R = [X1,X2], !).

valid_triangle(Side1, Side2, Side3) :-
    Add23 is Side2 + Side3,
    Add12 is Side1 + Side2,
    Add13 is Side1 + Side3,
    not(Side1 > Add23),
    not(Side2 > Add13),
    not(Side3 > Add12),
    Side1 \== 0,
    Side2 \== 0,
    Side3 \== 0.

heron(A,B,C,R) :-
    valid_triangle(A,B,C) ->
    (S is (A+B+C)/2,
    P is sqrt(S*(S-A)*(S-B)*(S-C)),
    R = [P], !);
    (R = [A,B,C], !).

mean(X, R) :-
    sumlist(X, S),
    length(X, L),
    L > 0 -> (P is S/L, R = [P]); R = [].

mult(X,Y,R) :- R is X*Y.
prod(X,R) :- foldl(mult, X, 1, P), R = [P].

gMean(X,R) :-
    length(X,L),
    (L > 0) -> (prod(X,[P|_]), S is 1/L, Q is P^S, R = [Q], !);
    R = [], !.

inv(X,R) :- R is 1/X.

hMean(X,R) :-
    length(X,L),
    (L > 0) -> (maplist(inv,X,I), sumlist(I,P), Q is L/P, R = [Q], !);
    R = [], !.

dist(X,U,R) :- R is (X-U)^2.

build(X, N, List)  :-
    findall(X, between(1, N, _), List).

variance(X,R) :-
    length(X,L),
    (L > 1) -> (mean(X,M), nth0(0,M,U), build(U,L,Us), maplist(dist, X, Us, D), sumlist(D,Q), P is Q/(L-1), R = [P], !);
    R = X, !.

stDev(X,R) :- variance(X,S), maplist(sqrt, S, R).

lcm(X,Y,Z) :- Z is abs(X*Y)/gcd(X,Y).

gcd(X,Y,Z) :- Z is gcd(X,Y).

mmc([],R) :- R = [], ! .
mmc(X,R) :- foldl(lcm, X, 1, P), R = [P].

mdc([],R) :- R = [], ! .
mdc(X,R) :- max_list(X,M), foldl(gcd, X, M, P), R = [P].

even(X) :- X mod 2 =:= 0.

median([],[]) :- !.
median(X, R) :-
    msort(X,S),
    length(X,L),
    M is div(L,2),
    (even(L) -> (nth0(M, S, M1), N is M-1, nth0(N, S, M2), P is (M1+M2)/2, R = [P], !);
    nth0(M, S, P), R = [P]).

group([],[]) :- !.
group([X|Xs],[Z|Zs]) :- transfer(X,Xs,Ys,Z), group(Ys,Zs),!.

transfer(X,[],[],[X]).
transfer(X,[Y|Ys],[Y|Ys],[X]) :- X \= Y.
transfer(X,[X|Xs],Ys,[X|Zs]) :- transfer(X,Xs,Ys,Zs).

onLength(Delta, E1, E2) :- length(E1, L1), length(E2, L2), compare(Delta, L1, L2).

sortOnLength(List, Sorted) :- predsort(onLength, List, Sorted).

mode([],[]) :- !.
mode(X, R) :-
    msort(X, S),
    group(S, G),
    sortOnLength(G, F),
    last(F, [T|_]),
    R = [T].


% Lógica necessária para construção de gráficos.

identidade(X, A, B, Resposta) :- Resposta is (A * X) + B.

quadratica(X, A, B, C, Resposta) :- Resposta is (A * (X ^ 2)) + (B*X) + C.

cosseno(X, A, B, C, Resposta) :- Angulo is B * X + C, Resposta is A * cos(Angulo).

seno(X, A, B, C, Resposta) :- Angulo is B * X + C, Resposta is A * sin(Angulo).

logn(X, A, B, C, Resposta) :- Term is (B * X) + C, writeln(Term), Resposta is A * log(Term).

euler(X, A, B, C, Resposta) :- Term is (B * X) + C, Resposta is A * exp(Term).

exponenciacao_xa(X, A, Resposta) :- Resposta is X ^ A.

a_sobre_xb(X, A, B, Resposta) :- Resposta is A / (X + B).

exponenciacao_ax(X, A, Resposta) :- Resposta is A ^ X.
