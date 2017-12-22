# Calculadora RPN

A idéia do projeto é desenvolver uma calculadora científica com Interface Gráfica
com o modo de entrada de dados RPN (Reverse Polish Notation), que faz uso do conceito
de stack para otimizar a interação do usuário, reduzindo a quantidade de teclas
necessárias para realizar uma operação e tornando a priorização de operações
(normalmente feita por meio de parênteses em uma calculadora comum) mais intuitiva.
Esse modelo se tornou famoso com as calculadoras da HP e há estudos comprovando sua
menor taxa de erros de usuário.
Além das operações básicas e científicas, pretendemos incluir também alguns métodos
comumente usados em matemática, como por exemplo, dados os lados de um triângulo,
calcular sua hipotenusa, ou dados os coeficientes de uma eq. do 2º grau, calcular
suas raízes reais, converter coordenadas cartesianas para polares, operações de
contagem, como Combinações e Permutações, etc. Alguns desses métodos têm múltiplas
entradas e/ou múltiplas saídas, o que requer um tratamento lógico por parte da interface
para decidir quantos valores tomar da entrada e quantos devolver para a tela como saída;
Por requererem mais de uma entrada, raramente se vê essas operações em calculadoras
comuns, pois necessitariam de entrada com parênteses. Enquanto na abordagem RPN,
o usuário lança todos os dados relevantes e prime o botão do método desejado,
e o resultado é devolvido à pilha, similar à forma como programas de console que
executam esses métodos interagem com o usuário.

https://docs.google.com/document/d/1BpQoLl6QUk_35GjJR5GlTgWyN4yZTI3HCxRIyV5QwX0/edit
