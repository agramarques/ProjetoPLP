import Calc
import Lib

import System.Process
import System.Info (os)
import Data.Char (toLower)


typeHelp :: Stack -> IO()
typeHelp xs = do
    let help = "Comandos disponíveis: \n\n\
            \  + - * /      Soma, subtração, multiplicação e divisão. Requer dois números da pilha.\n\
            \  ^            Exponenciação x^y. Requer dois números da pilha. \n\
            \  root         Exponenciação x^(1/y). Requer dois números da pilha.\n\
            \  polares      Converte coordenadas cartesianas para polares. Requer dois números da pilha.\n\
            \  cartesianas  Converte coordenadas polares para cartesianas. Requer dois números da pilha.\n\
            \  cilindro     Volume de um cilindro dado o raio e altura. Requer dois números da pilha.\n\
            \  comb         Número de combinações simples. Requer dois números da pilha.\n\
            \  arr          Número de arranjos simples. Requer dois números da pilha.\n\
            \  raizes       Calcula as raizes reais de uma equação quadrática. Requer três números da pilha. \n\
            \  heron        Calcula a área de um triângulo. Requer três números da pilha. \n\
            \  ln           Logaritmo natural. Requer um número da pilha.\n\
            \  log          Logaritmo base 10. Requer um número da pilha.\n\
            \  log2         Logaritmo base 2. Requer um número da pilha.\n\
            \  exp          Exponenciação de Euler e^x. Requer um número da pilha.\n\
            \  exp10        Potência de 10 (10^x). Requer um número da pilha.\n\
            \  exp2         Potência de 2 (2^x). Requer um número da pilha.\n\
            \  sqrt         Raiz quadrada. Requer um número da pilha.\n\
            \  square       Eleva ao quadrado. Requer um número da pilha.\n\
            \  inv          Inverso multiplicativo (1/x). Requer um número da pilha.\n\
            \  sin          Seno de um ângulo. Requer um número da pilha.\n\
            \  asin         Arco-seno de um ângulo. Requer um número da pilha.\n\
            \  cos          Cosseno de um ângulo. Requer um número da pilha.\n\
            \  acos         Arco-cosseno de um ângulo. Requer um número da pilha.\n\
            \  tan          Tangente de um ângulo. Requer um número da pilha.\n\
            \  atan         Arco-tangente de um ângulo. Requer um número da pilha.\n\
            \  esfera       Volume da esfera dado o raio. Requer um número da pilha.\n\
            \  !            Fatorial. Requer um número da pilha. \n\
            \  swap         Faz a troca dos dois últimos números da pilha. \n\
            \  clear        Limpa a pilha da calculadora. \n\
            \  help         Mostra os comandos disponiveis da calculadora. \n\
            \  sum          Somatório. Consome toda a pilha. \n\
            \  prod         Produtório. Consome toda a pilha. \n\
            \  mean         Média Aritmética. Consome toda a pilha. \n\
            \  geom         Média Geométrica. Consome toda a pilha. \n\
            \  harm         Média Harmônica. Consome toda a pilha. \n\
            \  moda         Moda da amostra. Consome toda a pilha. \n\
            \  mediana      Mediana da amostra. Consome toda a pilha. \n\
            \  var          Variância amostral. Consome toda a pilha. \n\
            \  dev          Desvio padrão amostral. Consome toda a pilha. \n\
            \  mdc          Máximo Divisor Comum. Consome toda a pilha.\n\
            \  mmc          Minimo Múltiplo Comum. Consome toda a pilha.\n\n\
            \Quando quiser sair do guia de ajuda digite Enter."
    putStrLn(help)
    resposta <- getLine
    calc xs


operInv = "Operacao invalida, tente \"help\" para ver as funcoes disponiveis. Pressione Enter para continuar"


offerHelp :: Stack -> IO()
offerHelp xs = do
    putStrLn operInv
    c <- getLine
    if c == "help"
        then typeHelp xs
        else calc xs


calc :: Stack -> IO()
calc xs = do
    -- limpa a tela do console (seja o OS um windows ou um unix)
    if os == "mingw32" then system "cls" >> mapM_ print (reverse xs)
    else system "clear" >> mapM_ print (reverse xs)

    comando <- getLine
    let comm = map toLower comando in
        comm == "quit" ? return() $
        comm == "clear" ? calc [] $
        comm == "help" ? typeHelp (xs) $
        let y = (oper comm xs) in
            if y == xs
                then offerHelp xs
                else calc y


main :: IO ()
main = calc []
