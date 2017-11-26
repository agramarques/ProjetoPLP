module Lib
    (
        calc
    ) where

import System.Process
import Data.Char (toLower)
import Data.List (sort)

type Stack = [Double]

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

polares :: Double -> Double -> [Double]
polares x y = [(atan2 x y), sqrt(x**2+y**2)]

cartesianas :: Double -> Double -> [Double]
cartesianas y x = [x*(sin y), x*(cos y)]
{-
atan2 :: Double -> Double -> Double
atan2 x y
    | (x == 0) && (y == 0) = 0
    | (x > 0) = atan (y/x)
    | (x < 0) && (y >= 0) = atan (y/x) + pi
    | (x < 0) && (y < 0) = atan (y/x) - pi
    | (x == 0) && (y > 0) = pi/2
    | (x == 0) && (y < 0) = (-pi)/2
	-}
variance :: Stack -> Double
variance xs = (sum (map (\x -> (x - u)**2) xs))/(fromIntegral ((length xs)-1))
    where u = (mean xs)

stDev :: Stack -> Double
stDev xs = sqrt (variance xs)

ehTriangulo :: Double -> Double -> Double -> Bool
ehTriangulo x y z
    | c - (a - b) <= 0 = False
    | otherwise = True
    where [c, b, a] = sort [x, y, z]

heron :: Double -> Double -> Double -> [Double]
heron a b c
    | (ehTriangulo a b c) = [sqrt (s*(s-a)*(s-b)*(s-c))]
    | otherwise = [a, b, c]
    where s = (a+b+c)/2

raizes :: Double -> Double -> Double -> [Double]
raizes a b c
    | delta < 0 = [c,b,a] --aqui optei por deixar a pilha inalterada se nao houver raizes reais, dessa forma cai no aviso de operacao invalida
    | delta == 0 = [(-b)/(2*a)]
    | otherwise = [((-b)+(sqrt delta))/(2*a) , ((-b)-(sqrt delta))/(2*a)]
    where delta = (b**2 - 4*a*c)

mean :: Stack -> Double
mean xs = (sum xs)/(fromIntegral (length xs))

hMean :: Stack -> Double
hMean xs = fromIntegral (length xs) / (sum $ map (1/) xs)

gMean :: Stack -> Double
gMean xs = (product xs)**(1/(fromIntegral(length xs)))

comb :: Double -> Double -> Double
comb a b = (fatAux a)/((fatAux b)*(fatAux (a-b)))

arr :: Double -> Double -> Double
arr a b = (fatAux a)/(fatAux (a-b))

fatAux :: Double -> Double
fatAux x = fromInteger $ fatorial (truncate x::Integer)

fatorial :: Integer -> Integer
fatorial x
    | x == 0 = 1
    | x < 0 = x*fatorial(x+1)
    | otherwise = x*fatorial(x-1)

isNumber :: String -> Bool
isNumber str =
    case reads str :: [(Double, String)] of
     [(_,"")] -> True
     _ -> False

if' :: Bool -> a -> a -> a
if' True  x _ = x
if' False _ y = y

infixl 1 ?
(?) :: Bool -> a -> a -> a
(?) = if'

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
    system "clear" >> mapM_ print (reverse xs) -- comando limpeza terminal OSX
    -- system "cls" >> mapM_ print (reverse xs) -- comando limpeza console Windows
    comando <- getLine
    let comm = map toLower comando in
        comm == "quit" ? return() $
        comm == "clear" ? calc [] $
        comm == "help" ? typeHelp (xs) $
        let y = (oper comm xs) in
            y == xs ? ((putStrLn operInv) >> getLine >> (calc y)) $
            calc y --quando o comando nao e reconhecido, oper retorna a lista inalterada, aqui checa isso para oferecer a ajuda
