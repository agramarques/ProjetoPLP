:- [calc].
:- initialization main.


help() :-
    write('help'),
    nl.

main :-
    read_line_to_codes(user_input, Input),
    string_to_atom(Input, I),

    (\+(I = 'help'; I = 'ajuda') ; help()),
    (\+(I = 'exit'; I = 'quit'; I = 'sair') ; halt(0)),

    main().
