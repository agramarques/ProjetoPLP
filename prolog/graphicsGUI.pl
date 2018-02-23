:- use_module(library('plot/plotter')).
:- use_module(library(autowin)).
:- [calc].

dialog(grafico,
       [ object        :=
	   Grafico,
	 parts         :=
	   [ Grafico                   :=
	       dialog('Gerar Grafico'),
	     FcSelected                :=
	       menu(fcSelected, cycle),
	     A                         :=
	       text_item('A'),
	     B                         :=
	       text_item('B'),
	     C                         :=
	       text_item('C'),
	     LimAB                     :=
	       text_item(limAB),
	     LimCD                     :=
	       text_item(limCD),
	     Dom_nio_da_Fun__o_        :=
	       label('Domínio da Função:', 'Domínio da Função:'),
	     Contra_Dom_nio_da_Fun__o_ :=
	       label('Contra Domínio da Função:', 'Contra Domínio da Função:'),
	     Plotar                    :=
	       button('Plotar')
	   ],
	 modifications :=
	   [ FcSelected :=
	       [ label     := 'Funções:',
		 reference := point(0, 16),
		 append    := [ menu_item('null',
					  @default,
					  'Selecione uma função.',
					  @off,
					  @nil,
					  '\\es'),
				menu_item('identidade',
					  @default,
					  'Y = A * x + B',
					  @off,
					  @nil,
					  '\\ey'),
				menu_item('quadratica',
					  @default,
					  'Y = A * x ^ 2 + B * x + C',
					  @off,
					  @nil,
					  '\\ea'),
				menu_item('euler',
					  @default,
					  'Y = A * ( e ^ (B * x + C))',
					  @off,
					  @nil,
					  '\\ee'),
				menu_item('logn',
					  @default,
					  'Y = A * ln(B* x + C)',
					  @off,
					  @nil,
					  '\\el'),
				menu_item('axb',
					  @default,
					  'Y = A / ( x + B)',
					  @off,
					  @nil,
					  '\\ex'),
				menu_item('cos',
					  @default,
					  'Y = A * cos(B * x + C)',
					  @off,
					  @nil,
					  '\\ec'),
				menu_item('sen',
					  @default,
					  'Y = A * sin(B*x + C)',
					  @off,
					  @nil,
					  '\\eb'),
        menu_item('xa',
            @default,
            'Y = x ^ A',
            @off,
            @nil,
            '\\ed'),
        menu_item('ax',
            @default,
            'Y = A ^ x',
            @off,
            @nil,
            '\\ek')
			      ]
	       ],
	     A          :=
	       [ length := 15
	       ],
	     B          :=
	       [ length := 16
	       ],
	     C          :=
	       [ length := 16
	       ],
	     LimAB      :=
	       [ label  := 'Intervalo [a,b]:',
		 length := 26
	       ],
	     LimCD      :=
	       [ label  := 'Intervalo [c,d]:',
		 length := 26
	       ]
	   ],
	 layout        :=
	   [ area(FcSelected,
		  area(15, 37, 217, 24)),
	     area(A,
		  area(45, 81, 116, 24)),
	     area(B,
		  area(44, 108, 118, 24)),
	     area(C,
		  area(45, 138, 118, 24)),
	     area(LimAB,
		  area(19, 219, 246, 24)),
	     area(LimCD,
		  area(19, 279, 246, 24)),
	     area(Dom_nio_da_Fun__o_,
		  area(13, 194, 158, 18)),
	     area(Contra_Dom_nio_da_Fun__o_,
		  area(6, 253, 159, 18)),
	     area(Plotar,
		  area(126, 344, 50, 22))
	   ],
	 behaviour     :=
	   [ Plotar := [ message := message(@prolog,
					    submit,
              FcSelected?selection,
					    A?selection,
					    B?selection,
					    C?selection,
					    LimAB?selection,
					    LimCD?selection)
		       ]
	   ]
       ]).
submit(Template, TermA, TermB, TermC, LimAB, LimCD) :-
   string_to_atom(Template, Function),
   string_to_atom(TermA, Term1),
   string_to_atom(TermB, Term2),
   string_to_atom(TermC, Term3),
   split_string(LimAB, ' ', '', L1),
   maplist(number_string, ListAB, L1),
   split_string(LimCD, ' ', '', L2),
   maplist(number_string, ListCD, L2),
   (Function \= null),
   processGraphic(Function, Term1, Term2, Term3, ListAB, ListCD).

processGraphic(identidade, Term1, Term2, _, [LimA|[LimB|[]]], [LimC|[LimD|[]]]) :-
     atom_number(Term1, A),
     atom_number(Term2, B),
     writeln('chamou esse'),
     plot_function(identidade, A, B, 0, LimA, LimB, LimC, LimD).

processGraphic(xa, Term1, _, _, [LimA|[LimB|[]]], [LimC|[LimD|[]]]) :-
  atom_number(Term1, A),
  plot_function(xa, A, 0, 0, LimA, LimB, LimC, LimD).

processGraphic(ax, Term1, _, _, [LimA|[LimB|[]]], [LimC|[LimD|[]]]) :-
  atom_number(Term1, A),
  plot_function(ax, A, 0, 0, LimA, LimB, LimC, LimD).

processGraphic(axb, Term1, Term2, _, [LimA|[LimB|[]]], [LimC|[LimD|[]]]) :-
    atom_number(Term1, A),
    atom_number(Term2, B),
    plot_function(axb, A, B, 0, LimA, LimB, LimC, LimD).

processGraphic(Function, Term1, Term2, Term3, [LimA|[LimB|[]]], [LimC|[LimD|[]]]) :-
        (Function = 'cos' ; Function = 'sen') -> (
                                                  atom_number(Term1, A),
                                                  atom_number(Term2, B),
                                                  atom_number(Term3, C),
                                                  NewLimA is pi * LimA,
                                                  NewLimB is pi * LimB,
                                                  plot_function(Function, A, B, C, NewLimA, NewLimB, LimC, LimD));
                                                  atom_number(Term1, A),
                                                  atom_number(Term2, B),
                                                  atom_number(Term3, C),
                                                  plot_function(Function, A, B, C, LimA, LimB, LimC, LimD).

plot_function(Function, A, B, C, From, To, BOTTOM, TOP) :-
        PlotStep is To/1000,
        new(W, auto_sized_picture('Grafico')),
        send(W, display, new(P, plotter)),
        send(P, axis, new(X, plot_axis(x, From, To, @default, 300))),
        send(P, axis, plot_axis(y, BOTTOM, TOP, @default, 200)),
        send(X, format, '%.0f'),
        send(P, graph, new(G, plot_graph)),
        plot_function(From, To, TOP, BOTTOM, PlotStep, Function, G, A, B, C),
        send(W, open).

plot_function(X, To, _, _, _, _, _, _, _, _) :- (X >= To),!.
plot_function(X, To, TOP, BOTTOM, Step, Function, G, A, B, C) :-
        graphic_option(Function, X, A, B, C, Resposta),
        (Resposta =< TOP, Resposta >= BOTTOM) -> (Y is Resposta,
                            send(G, append, X, Y),
                            NewX is X + Step,
                            plot_function(NewX, To, TOP, BOTTOM, Step, Function, G, A, B, C));
                            NewX is X + Step,
                            plot_function(NewX, To, TOP, BOTTOM, Step, Function, G, A, B, C).




grafico :-
    make_dialog(K, grafico),
    send(K, open).
