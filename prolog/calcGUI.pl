:- [lib/calc].
:- dynamic dialog/2.
:- [lib/graphicsGUI].
:- initialization main.


dialog(calcGUI,
       [ object        :=
	   CalcGUI,
	 parts         :=
	   [ CalcGUI         :=
	       dialog('CalcGUI'),
	     Editor          :=
	       editor(@default, 15, 9),
	     Vol_Cilindro    :=
	       button('  Vol Cilindro   '),
	     Raizes_2_Grau   :=
	       button(raizes_2_Grau),
	     Hipotenusa      :=
	       button('  Hipotenusa  '),
	     Coord_Polares   :=
	       button(coord_Polares),
	     Area_Circulo    :=
	       button('  Area Circulo  '),
	     Area_Triangulo  :=
	       button(area_Triangulo),
	     Vol_Esfera      :=
	       button('   Vol Esfera   '),
	     Coord_Cartes    :=
	       button(' Coord Cartes '),
       Grafico    :=
         button(' Graficos '),
	     Swap            :=
	       button(swap),
	     Clear           :=
	       button(clear),
	     Sin             :=
	       button(sin),
	     Cos             :=
	       button(cos),
	     Tan             :=
	       button(tan),
	     Asin            :=
	       button(asin),
	     Acos            :=
	       button(acos),
	     Atan            :=
	       button(atan),
	     Sqrt            :=
	       button(sqrt),
	     Xe2             :=
	       button('x^2'),
	     Xfat            :=
	       button('x!'),
	     YpX             :=
	       button('y^X'),
	     YrX         :=
	       button('y^(1/X)'),
	     Inv             :=
	       button('1/X'),
	     Ln              :=
	       button(ln),
	     Log             :=
	       button(log),
	     Log2            :=
	       button(log2),
	     Exp             :=
	       button(exp),
	     Exp10           :=
	       button('10^X'),
	     Exp2            :=
	       button('2^X'),
	     Comb            :=
	       button(comb),
	     Arr             :=
	       button(arr),
             E               :=
               button(e),
             MMC             :=
               button(mmc),
             MDC             :=
               button(mdc),
             B1              :=
	       button('1'),
	     B2              :=
	       button('2'),
	     B3              :=
	       button('3'),
	     Add             :=
	       button('+'),
	     B4              :=
	       button('4'),
	     B5              :=
	       button('5'),
	     B6              :=
	       button('6'),
	     Diff            :=
	       button('-'),
	     B7              :=
	       button('7'),
	     B8              :=
	       button('8'),
	     B9              :=
	       button('9'),
	     Multi           :=
	       button('*'),
	     Pi              :=
	       button(pi),
	     B0              :=
	       button('0'),
	     Dot             :=
	       button('.'),
	     Div             :=
	       button('/'),
	     Somatorio       :=
	       button(somatorio),
	     Produtorio      :=
	       button(produtorio),
	     Name            :=
	       label(name, 'Saida estatistica'),
	     Stat_output     :=
	       text_item(''),
	     Media           :=
	       button(media),
	     Media_Geom      :=
	       button('media Geom'),
	     Media_Harm      :=
	       button('media Harm'),
	     Moda            :=
	       button(moda),
	     Enviar_p__pilha :=
	       button('enviar p/ pilha'),
	     Variancia       :=
	       button(variancia),
	     Desvio_padrao   :=
	       button('desvio padrao'),
	     Mediana         :=
	       button(mediana)
	   ],
	 modifications :=
	   [ Stat_output     :=
	       [ label := ''
	       ]
	   ],
	 layout        :=
	   [ area(Editor,
		  area(15, 8, 200, 163)),
	     area(Vol_Cilindro,
		  area(250, 115, 80, 25)),
	     area(Raizes_2_Grau,
		  area(250, 80, 120, 25)),
	     area(Hipotenusa,
		  area(250, 45, 120, 25)),
	     area(Coord_Polares,
		  area(250, 10, 120, 25)),
	     area(Area_Circulo,
		  area(360, 80, 120, 25)),
	     area(Area_Triangulo,
		  area(360, 45, 120, 25)),
	     area(Vol_Esfera,
		  area(360, 115, 120, 25)),
	     area(Coord_Cartes,
		  area(360, 10, 120, 25)),
      area(Grafico,
     area(490, 50, 120, 25)),
	     area(Swap,
		  area(15, 211, 50, 25)),
	     area(Clear,
		  area(100, 211, 50, 25)),
	     area(Sin,
		  area(15, 243, 50, 25)),
	     area(Cos,
		  area(100, 243, 50, 25)),
	     area(Tan,
		  area(185, 243, 50, 25)),
	     area(Asin,
		  area(15, 276, 50, 25)),
	     area(Acos,
		  area(100, 276, 50, 25)),
	     area(Atan,
		  area(185, 276, 50, 25)),
	     area(Sqrt,
		  area(15, 309, 50, 25)),
	     area(Xe2,
		  area(100, 309, 50, 25)),
	     area(Xfat,
		  area(185, 309, 50, 25)),
	     area(YpX,
		  area(15, 342, 50, 25)),
	     area(YrX,
		  area(100, 342, 50, 25)),
	     area(Exp2,
		  area(185, 342, 50, 25)),
	     area(Ln,
		  area(15, 375, 50, 25)),
	     area(Log,
		  area(100, 375, 50, 25)),
	     area(Log2,
		  area(185, 375, 50, 25)),
	     area(Exp,
		  area(15, 408, 50, 25)),
	     area(Exp10,
		  area(100, 408, 50, 25)),
	     area(Inv,
		  area(185, 408, 50, 25)),
	     area(Comb,
		  area(15, 441, 50, 25)),
	     area(Arr,
		  area(100, 441, 50, 25)),
             area(E,
                  area(185, 441, 50, 25)),
             area(MMC,
                  area(15, 474, 50, 25)),
             area(MDC,
                  area(100, 474, 50, 25)),
	     area(B0,
		  area(360, 280, 50, 25)),
	     area(B9,
		  area(450, 245, 50, 25)),
	     area(B8,
		  area(360, 245, 50, 25)),
	     area(Div,
		  area(540, 280, 50, 25)),
	     area(B7,
		  area(270, 245, 50, 25)),
	     area(B6,
		  area(450, 210, 50, 25)),
	     area(B5,
		  area(360, 210, 50, 25)),
	     area(Dot,
		  area(450, 280, 80, 25)),
	     area(B4,
		  area(270, 210, 50, 25)),
	     area(B3,
		  area(450, 175, 50, 25)),
	     area(B2,
		  area(360, 175, 50, 25)),
	     area(Multi,
		  area(540, 245, 80, 25)),
	     area(Pi,
		  area(270, 280, 50, 25)),
	     area(B1,
		  area(270, 175, 50, 25)),
	     area(Diff,
		  area(540, 210, 80, 25)),
	     area(Add,
		  area(540, 175, 80, 25)),
	     area(Somatorio,
		  area(280, 335, 80, 25)),
	     area(Produtorio,
		  area(280, 370, 67, 25)),
	     area(Name,
		  area(380, 340, 158, 18)),
	     area(Stat_output,
		  area(370, 370, 190, 25)),
	     area(Media,
		  area(280, 405, 50, 25)),
	     area(Media_Geom,
		  area(280, 440, 84, 25)),
	     area(Media_Harm,
		  area(280, 475, 84, 25)),
	     area(Moda,
		  area(280, 510, 80, 25)),
	     area(Enviar_p__pilha,
		  area(380, 405, 91, 25)),
	     area(Variancia,
		  area(380, 440, 63, 25)),
	     area(Desvio_padrao,
		  area(380, 475, 90, 25)),
	     area(Mediana,
		  area(380, 510, 80, 25))
	   ],
	 behaviour     :=
	   [ Vol_Cilindro    :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'cilindro')
	       ],
	     Raizes_2_Grau   :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'raizes')
	       ],
	     Hipotenusa      :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'hipotenusa')
	       ],
	     Coord_Polares   :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'polares')
	       ],
	     Area_Circulo    :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'circulo')
	       ],
	     Area_Triangulo  :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'heron')
	       ],
	     Vol_Esfera      :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'esfera')
	       ],
	     Coord_Cartes    :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'cartesianas')
	       ],
	     Swap            :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'swap')
	       ],
	     Clear           :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'clear')
	       ],
	     Sin             :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'sin')
	       ],
	     Cos             :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'cos')
	       ],
	     Tan             :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'tan')
	       ],
	     Asin            :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'asin')
	       ],
	     Acos            :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'acos')
	       ],
	     Atan            :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'atan')
	       ],
	     Sqrt            :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'sqrt')
	       ],
	     Xe2             :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'square')
	       ],
	     Xfat              :=
	       [ message := message(@prolog, op, Editor?text_buffer, '!')
	       ],
	     YpX             :=
	       [ message := message(@prolog, op, Editor?text_buffer, '^')
	       ],
	     YrX         :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'root')
	       ],
	     Exp2            :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'exp2')
	       ],
	     Ln              :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'ln')
	       ],
	     Log             :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'log')
	       ],
	     Log2            :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'log2')
	       ],
	     Exp             :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'exp')
	       ],
	     Exp10            :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'exp10')
	       ],
	     Inv            :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'inv')
	       ],
	     Comb            :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'comb')
	       ],
	     Arr             :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'arr')
	       ],
	     E              :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'e')
	       ],
	     MMC              :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'mmc')
	       ],
	     MDC              :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'mdc')
	       ],
	     B0             :=
	       [ message := message(@prolog, insert, Editor?text_buffer, '0')
	       ],
	     B9              :=
	       [ message := message(@prolog, insert, Editor?text_buffer, '9')
	       ],
	     B8              :=
	       [ message := message(@prolog, insert, Editor?text_buffer, '8')
	       ],
	     Div             :=
	       [ message := message(@prolog, op, Editor?text_buffer, '/')
	       ],
	     B7              :=
	       [ message := message(@prolog, insert, Editor?text_buffer, '7')
	       ],
	     B6              :=
               [ message := message(@prolog, insert, Editor?text_buffer, '6')
	       ],
	     B5              :=
	       [ message := message(@prolog, insert, Editor?text_buffer, '5')
	       ],
	     Dot             :=
               [ message := message(@prolog, insert, Editor?text_buffer, '.')
	       ],
	     B4              :=
	       [ message := message(@prolog, insert, Editor?text_buffer, '4')
	       ],
	     B3              :=
	       [ message := message(@prolog, insert, Editor?text_buffer, '3')
	       ],
	     B2              :=
	       [ message := message(@prolog, insert, Editor?text_buffer, '2')
	       ],
	     Multi             :=
	       [ message := message(@prolog, op, Editor?text_buffer, '*')
	       ],
	     Pi              :=
	       [ message := message(@prolog, op, Editor?text_buffer, 'pi')
	       ],
	     B1              :=
	       [ message := message(@prolog, insert, Editor?text_buffer, '1')
	       ],
	     Diff             :=
	       [ message := message(@prolog, op, Editor?text_buffer, '-')
	       ],
	     Add             :=
	       [ message := message(@prolog, op, Editor?text_buffer, '+')
	       ],
	     Somatorio       :=
	       [ message := message(@prolog,
				    stat,
				    Editor?text_buffer,
				    Stat_output, 'sum')
	       ],
	     Produtorio      :=
	       [ message := message(@prolog,
				    stat,
				    Editor?text_buffer,
				    Stat_output, 'prod')
	       ],
	     Media           :=
	       [ message := message(@prolog,
				    stat,
				    Editor?text_buffer,
				    Stat_output, 'mean')
	       ],
	     Media_Geom      :=
	       [ message := message(@prolog,
				    stat,
				    Editor?text_buffer,
				    Stat_output, 'geom')
	       ],
	     Media_Harm      :=
	       [ message := message(@prolog,
				    stat,
				    Editor?text_buffer,
				    Stat_output, 'harm')
	       ],
	     Moda            :=
	       [ message := message(@prolog,
				    stat,
				    Editor?text_buffer,
				    Stat_output, 'moda')
	       ],
	     Enviar_p__pilha :=
	       [ message := message(@prolog,
				    sendToStack,
				    Editor?text_buffer,
				    Stat_output?selection)
	       ],
	     Variancia       :=
	       [ message := message(@prolog,
				    stat,
				    Editor?text_buffer,
				    Stat_output, 'var')
	       ],
	     Desvio_padrao   :=
	       [ message := message(@prolog,
				    stat,
				    Editor?text_buffer,
				    Stat_output, 'dev')
	       ],
       Grafico :=
          [ message := message(@prolog,
             grafico)
          ],
	     Mediana         :=
	       [ message := message(@prolog,
				    stat,
				    Editor?text_buffer,
				    Stat_output, 'mediana')
	       ]
	   ]
       ]).

treatInput(Source, Treated) :-
    get(Source, contents, Raw),
    get(Raw, value, Data),
    split_string(Data, "\n", "", NumsAsStrings),
    maplist(number_string, P, NumsAsStrings),
    reverse(P, Treated).

processOutput(Data, Target) :-
    reverse(Data, P),
    atomics_to_string(P, '\n', Out),
    send(Target, contents, Out).

processStat(Data, Target) :-
    atomics_to_string(Data, '', Out),
    send(Target, selection, Out).

insert(Stack, NewItem) :-
    get(Stack, contents, Raw),
    get(Raw, value, Data),
    string_concat(Data, NewItem, Out),
    send(Stack, contents, Out).

stat(Stack, Stat, Com) :-
    treatInput(Stack, Nums),
    oper(Com, Nums, R),
    processStat(R, Stat).

sendToStack(Stack, StatOut) :-
    get(Stack, contents, Raw),
    get(Raw, value, Data),
    atomics_to_string([Data, StatOut], '\n', Out),
    send(Stack, contents, Out).

op(Stack, Com) :-
    (   treatInput(Stack, Nums) ->
    oper(Com, Nums, R); oper(Com, [], R)),
    processOutput(R, Stack).

main() :-
    make_dialog(D, calcGUI),
    send(D, open).
