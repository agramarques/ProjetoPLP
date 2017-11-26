import Lib

import System.Process
import System.Info (os)
import Data.Char (toLower)


opBin :: String -> Stack -> Stack
opBin _ [] = [] --talvez lançar um erro, se for na GUI ver como dar um aviso
opBin _ [x] = [x] --nao opera sobre apenas um operando
opBin c (x:y:xs)
    | c == "+" = (y+x):xs
    | c == "-" = (y-x):xs
    | c == "*" = (y*x):xs
    | c == "/" = (y/x):xs
    | c == "^" = (y**x) : xs
    | c == "root" = y**(1/x) : xs
    | c == "cilindro" = 3.14*x*(y**2) : xs
    | c == "swap" = y:x:xs
    | c == "comb" = (comb y x):xs
    | c == "arr" = (arr y x):xs
    | c == "polares" = (polares x y) ++ xs
    | c == "cartesianas" = (cartesianas x y) ++ xs


opUn :: String -> Stack -> Stack
opUn _ [] = []
opUn c (x:xs)
    | c == "ln" = log x : xs
    | c == "exp" = exp x : xs
    | c == "sqrt" = sqrt x : xs
    | c == "sin" = sin x : xs
    | c == "cos" = cos x : xs
    | c == "tan" = tan x : xs
    | c == "esfera" = (3.14*4*(x**3))/3: xs
    | c == "!" = fatAux x : xs


opTer :: String -> Stack -> Stack
opTer _ [] = []
opTer _ [x] = [x]
opTer _ (x:y:[]) = (x:y:[])
opTer c (x:y:z:xs)
    | c == "raizes" = (raizes z y x) ++ xs
    | c == "heron" = (heron x y z) ++ xs


operWhole :: String -> Stack -> Stack
operWhole _ [] = []
operWhole c xs
    | c == "mean" = [mean xs]
    | c == "sum" = [sum xs]
    | c == "prod" = [product xs]
    | c == "geom" = [gMean xs]
    | c == "harm" = [hMean xs]
    | c == "var" = [variance xs]
    | c == "dev" = [stDev xs]


infixl 1 ?
(?) :: Bool -> a -> a -> a
(?) True x _ = x
(?) False _ y = y


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
            \  exp          Exponenciação de Euler e^x. Requer um número da pilha.\n\
            \  sqrt         Raiz quadrada. Requer um número da pilha.\n\
            \  sin          Seno de um ângulo. Requer um número da pilha.\n\
            \  cos          Cosseno de um ângulo. Requer um número da pilha.\n\
            \  tan          Tangente de um ângulo. Requer um número da pilha.\n\
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
            \  var          Variância amostral. Consome toda a pilha. \n\
            \  dev          Desvio padrão amostral. Consome toda a pilha. \n\n\
            \Quando quiser sair do guia de ajuda digite Enter."
    putStrLn(help)
    resposta <- getLine
    calc xs


unOps = ["ln", "exp", "sqrt", "sin", "cos", "tan", "!", "esfera"]
binOps = ["+","-","*","/","^", "root", "cilindro", "swap", "comb", "arr", "polares", "cartesianas"]
wholeOps = ["mean", "sum", "prod", "geom", "harm", "var", "dev"]
terOps = ["raizes", "heron"]

operInv = "Operacao invalida, tente \"help\" para ver as funcoes disponiveis. Pressione Enter para continuar"


{- opção para caso use uma caixa de entrada a parte para ir entrando com cada comando
recebe o comando como uma string, para decidir que operação realizar e a pilha, retornando
a pilha devidamente modificada -}
oper :: String -> Stack -> Stack
oper c x
    | isNumber c = (read c::Double) : x
    | c `elem` binOps = opBin c x
    | c `elem` unOps = opUn c x
    | c `elem` terOps = opTer c x
    | c `elem` wholeOps = operWhole c x
    | otherwise = x


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
            y == xs ? ((putStrLn operInv) >> getLine >> (calc y)) $
            calc y --quando o comando nao e reconhecido, oper retorna a lista inalterada, aqui checa isso para oferecer a ajuda


main :: IO ()
main = calc []
