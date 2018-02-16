:- [calc].
:- initialization main.


help() :-
    write('help'),
    nl.

main :-
    main([]).

main(Stack) :-
    read_line_to_codes(user_input, Input),
    string_to_atom(Input, I),

    (\+(I = 'help'; I = 'ajuda') ; help(), main(Stack)),
    (\+(I = 'exit'; I = 'quit'; I = 'sair') ; halt(0)),

    (  atom_number(I, N) 
    -> main([N|Stack])
    ;  oper(I, Stack, [R|Rs]), write(R), nl, main([R|Rs])).
