:- [lib].

opBin( _ , [], []).
opBin( _ , [X], [X]).
opBin('+', [X,Y|Xs],R) :- P is (Y + X), R = [P|Xs].
opBin('-', [X,Y|Xs],R) :- P is (Y - X), R = [P|Xs].
opBin('*', [X,Y|Xs],R) :- P is (Y * X), R = [P|Xs].
opBin('/', [X,Y|Xs],R) :- P is (Y / X), R = [P|Xs].
opBin('^', [X,Y|Xs],R) :- P is (Y ^ X), R = [P|Xs].
opBin('root', [X,Y|Xs],R) :- P is (Y ^ (1/X)), R = [P|Xs].
opBin('cilindro', [X,Y|Xs],R) :- P is (pi*X*(Y^2)), R = [P|Xs].
opBin('swap', [X,Y|Xs], [Y,X|Xs]).
opBin('comb', [X,Y|Xs], [X,Y|Xs]) :- Y < X, !.
opBin('comb', [X,Y|Xs],R) :- comb(Y,X,P), R = [P|Xs], !.
opBin('arr', [X,Y|Xs], [X,Y|Xs]) :- Y < X, !.
opBin('arr', [X,Y|Xs],R) :- arr(Y,X,P), R = [P|Xs], !.
opBin('hipotenusa', [X,Y|Xs],R) :- hyp(X,Y,P), R = [P|Xs].
opBin('polares', [X,Y|Xs],R) :- pol(X,Y,P,Q), R = [P,Q|Xs].
opBin('cartesianas', [X,Y|Xs],R) :- cart(X,Y,P,Q), R = [P,Q|Xs].

opUn( _ , [], []).
opUn('ln', [X|Xs], [R|Xs]) :- R is log(X).
opUn('log2', [X|Xs], [R|Xs]) :- R is log(X)/log(2).
opUn('log', [X|Xs], [R|Xs]) :- R is log10(X).
opUn('exp', [X|Xs], [R|Xs]) :- R is exp(X).
opUn('exp2', [X|Xs], [R|Xs]) :- R is (2^X).
opUn('exp10', [X|Xs], [R|Xs]) :- R is (10^X).
opUn('sqrt', [X|Xs], [R|Xs]) :- R is sqrt(X).
opUn('square', [X|Xs], [R|Xs]) :- R is (X^2).
opUn('inv', [X|Xs], [R|Xs]) :- R is (1/X).
opUn('sin', [X|Xs], [R|Xs]) :- R is sin(X).
opUn('cos', [X|Xs], [R|Xs]) :- R is cos(X).
opUn('tan', [X|Xs], [R|Xs]) :- R is tan(X).
opUn('asin', [X|Xs], [R|Xs]) :- R is asin(X).
opUn('acos', [X|Xs], [R|Xs]) :- R is acos(X).
opUn('atan', [X|Xs], [R|Xs]) :- R is atan(X).
opUn('esfera', [X|Xs], [R|Xs]) :- R is ((4/3)*pi*(X^3)).
opUn('circulo', [X|Xs], [R|Xs]) :- R is (pi*(X^2)).
opUn('!', [X|Xs], [R|Xs]) :- fatorial(X,R).

opConst('pi', X, [R|X]) :- R is pi.
opConst('e', X, [R|X]) :- R is e.

opTer( _ , [], []).
opTer( _ , [X], [X]).
opTer( _ , [X,Y|[]], [X,Y|[]]).
opTer('raizes', [X,Y,Z|Xs], R) :- raizes(X,Y,Z,Q), append(Q,Xs,R).
opTer('heron', [X,Y,Z|Xs], R) :- heron(X,Y,Z,Q), append(Q,Xs,R).

opWhole( _ , [], []).
opWhole('sum', X, R) :- sum_list(X,P), R = [P].
opWhole('prod', X, R) :- prod(X,R).
opWhole('mean', X, R) :- mean(X,R).
opWhole('geom', X, R) :- gMean(X,R).
opWhole('harm', X, R) :- hMean(X,R).
opWhole('clear', _, R) :- R = [].
opWhole('var', X, R) :- variance(X,R).
opWhole('dev', X, R) :- stDev(X,R).
opWhole('mmc', X, R) :- mmc(X,R).
opWhole('mdc', X, R) :- mdc(X,R).
opWhole('moda', X, R) :- mode(X,R).
opWhole('mediana', X, R) :- median(X,R).

isConst(C) :- member(C, ['pi','e']).
isUn(C) :- member(C, ['ln','log','log2','exp','exp2','exp10','sqrt','square','inv','sin', 'cos', 'tan','asin','acos','atan','!','esfera','circulo']).
isBin(C) :- member(C, ['+','-','*','/','^','root','cilindro','swap','comb','arr','hipotenusa','polares','cartesianas']).
isTer(C) :- member(C, ['raizes','heron']).
isWhole(C) :- member(C, ['sum', 'prod', 'mean', 'geom', 'harm', 'clear', 'var', 'dev', 'moda', 'mediana', 'mmc', 'mdc']).

oper(C, X, R) :- isConst(C), opConst(C, X, R), !.
oper(C, X, R) :- isUn(C), opUn(C, X, R), !.
oper(C, X, R) :- isBin(C), opBin(C, X, R), !.
oper(C, X, R) :- isTer(C), opTer(C, X, R), !.
oper(C, X, R) :- isWhole(C), opWhole(C, X, R), !.


graphic_option(OPTION, X, A, B, C, R) :-
                                      ((OPTION = 'identidade', identidade(X, A, B, R1));
                                      (OPTION = 'quadratica', quadratica(X, A, B, C, R1));
                                      (OPTION = 'cos', cosseno(X, A, B, C, R1));
                                      (OPTION = 'sen', seno(X, A, B, C, R1));
                                      (OPTION = 'logn', logn(X, A, B, C, R1));
                                      (OPTION = 'euler', euler(X, A, B, C, R1));
                                      (OPTION = 'xa', exponenciacao_xa(X, A, R1));
                                      (OPTION = 'axb', a_sobre_xb(X, A, B, R1));
                                      (OPTION = 'ax', exponenciacao_ax(X, A, R1))) , R is R1.
