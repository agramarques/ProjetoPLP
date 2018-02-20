:- [calc].
:- [graphicsGUI].
:- initialization main.


helper :-
    writeln('Comandos disponíveis:'),
    writeln('+ - * /      Soma, subtração, multiplicação e divisão. Requer dois números da pilha.'),
    writeln('^            Exponenciação x^y. Requer dois números da pilha.'),
    writeln('!            Fatorial. Requer um número da pilha.'),
    writeln('root         Exponenciação x^(1/y). Requer dois números da pilha.'),
    writeln('polares      Converte coordenadas cartesianas para polares. Requer dois números da pilha.'),
    writeln('cartesianas  Converte coordenadas polares para cartesianas. Requer dois números da pilha.'),
    writeln('cilindro     Volume de um cilindro dado o raio e altura. Requer dois números da pilha.'),
    writeln('comb         Número de combinações simples. Requer dois números da pilha.'),
    writeln('arr          Número de arranjos simples. Requer dois números da pilha.'),
    writeln('raizes       Calcula as raizes reais de uma equação quadrática. Requer três números da pilha.'),
    writeln('heron        Calcula a área de um triângulo. Requer três números da pilha.'),
    writeln('ln           Logaritmo natural. Requer um número da pilha.'),
    writeln('log          Logaritmo base 10. Requer um número da pilha.'),
    writeln('log2         Logaritmo base 2. Requer um número da pilha.'),
    writeln('exp          Exponenciação de Euler e^x. Requer um número da pilha.'),
    writeln('exp10        Potência de 10 (10^x). Requer um número da pilha.'),
    writeln('exp2         Potência de 2 (2^x). Requer um número da pilha.'),
    writeln('sqrt         Raiz quadrada. Requer um número da pilha.'),
    writeln('square       Eleva ao quadrado. Requer um número da pilha.'),
    writeln('inv          Inverso multiplicativo (1/x). Requer um número da pilha.'),
    writeln('sin          Seno de um ângulo. Requer um número da pilha.'),
    writeln('asin         Arco-seno de um ângulo. Requer um número da pilha.'),
    writeln('cos          Cosseno de um ângulo. Requer um número da pilha.'),
    writeln('acos         Arco-cosseno de um ângulo. Requer um número da pilha.'),
    writeln('tan          Tangente de um ângulo. Requer um número da pilha.'),
    writeln('atan         Arco-tangente de um ângulo. Requer um número da pilha.'),
    writeln('esfera       Volume da esfera dado o raio. Requer um número da pilha.'),
    writeln('swap         Faz a troca dos dois últimos números da pilha.'),
    writeln('sum          Somatório. Consome toda a pilha.'),
    writeln('prod         Produtório. Consome toda a pilha.'),
    writeln('mean         Média Aritmética. Consome toda a pilha.'),
    writeln('geom         Média Geométrica. Consome toda a pilha.'),
    writeln('harm         Média Harmônica. Consome toda a pilha.'),
    writeln('moda         Moda da amostra. Consome toda a pilha.'),
    writeln('mediana      Mediana da amostra. Consome toda a pilha.'),
    writeln('var          Variância amostral. Consome toda a pilha.'),
    writeln('dev          Desvio padrão amostral. Consome toda a pilha.'),
    writeln('mdc          Máximo Divisor Comum. Consome toda a pilha.'),
    writeln('mmc          Minimo Múltiplo Comum. Consome toda a pilha.'),
    writeln('graficos     Abre uma interface gráfica para gerar gráficos de funções.'),
    writeln('-------'),
    writeln('clear        Limpa a pilha da calculadora.'),
    writeln('stack        Mostra a pilha da calculadora.'),
    writeln('quit         Sai da calculadora.'),
    writeln('help         Mostra os comandos disponiveis da calculadora.').

main :-
    main([]).

main(Stack) :-
    read_line_to_codes(user_input, Input),
    string_to_atom(Input, I),

    ((I \= clear) ; main([])),
    ((I \= stack) ; writeln(Stack), main(Stack)),
    ((I \= quit) ; halt(0)),
    ((I \= graficos) ; grafico, main(Stack)),
    ((I \= help) ; (helper, main(Stack))),

    (  atom_number(I, N)
    -> main([N|Stack])
    ;  oper(I, Stack, [R|Rs]), writeln(R), main([R|Rs])).
