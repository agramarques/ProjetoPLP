module Lib
    (
    calc
    ) where

import System.Process
import Data.Char (toLower)

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
 
operWhole :: String -> Stack -> Stack
operWhole _ [] = []
operWhole c xs
	| c == "mean" = [mean xs]
	| c == "sum" = [sum xs]
	| c == "prod" = [product xs]
	| c == "geom" = [gMean xs]
	| c == "harm" = [hMean xs]	

mean :: Stack -> Double
mean xs = (sum xs)/(fromIntegral (length xs))	

hMean :: Stack -> Double	
hMean xs = fromIntegral (length xs) / (sum $ map (1/) xs)
	
gMean :: Stack -> Double
gMean xs = (product xs)**(1/(fromIntegral(length xs)))


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
  _   -> False

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
		\  cilindro     Volume de um cilindro dado o raio e altura. Requer dois números da pilha.\n\
		\  ln           Logaritmo natural. Requer um número da pilha.\n\
		\  exp          Exponenciação de Euler e^x. Requer um número da pilha.\n\
		\  sqrt         Raiz quadrada. Requer um número da pilha.\n\
		\  sin          Seno de um ângulo. Requer um número da pilha.\n\
		\  cos          Cosseno de um ângulo. Requer um número da pilha.\n\
		\  tan          Tangente de um ângulo. Requer um número da pilha.\n\
		\  esfera       Volume da esfera dado o raio. Requer um número da pilha.\n\
		\  !            Fatorial. Requer um número da pilha. \n\
        \  swap         Faz a troca de dois números da pilha. \n\
        \  clear        Limpa a pilha da calculadora. \n\
        \  help         Mostra os comandos disponiveis da calculadora. \n\
		\  sum          Somatório. Consome toda a pilha. \n\
		\  prod         Produtório. Consome toda a pilha. \n\
		\  mean         Média Aritmética. Consome toda a pilha. \n\n\
		\Quando quiser sair do guia de ajuda digite Enter."
	putStrLn(help)
	resposta <- getLine

	calc xs

unOps = ["ln", "exp", "sqrt", "sin", "cos", "tan", "!", "esfera"]
binOps = ["+","-","*","/","^", "root", "cilindro", "swap"]
wholeOps = ["mean", "sum", "prod", "geom", "harm"]
opList = unOps ++ binOps ++ wholeOps

{- opção para caso use uma caixa de entrada a parte para ir entrando com cada comando
recebe o comando como uma string, para decidir que operação realizar e a pilha, retornando
a pilha devidamente modificada -}
oper :: String -> Stack -> Stack
oper c x
 | isNumber c = (read c::Double) : x
 | c `elem` binOps = opBin c x
 | c `elem` unOps = opUn c x
 | c `elem` wholeOps = operWhole c x
 | otherwise = x

calc :: Stack -> IO()
calc xs = do
-- system "clear" >> mapM_ print (reverse xs) -- comando limpeza terminal OSX
 system "cls" >> mapM_ print (reverse xs) -- comando limpeza console Windows
 comando <- getLine
 let comm = map toLower comando in
  comm == "quit" ? return() $
  comm == "clear" ? calc [] $
  comm == "help" ? typeHelp (xs) $
  not (isNumber comm || comm `elem` opList) ? ((putStrLn "Operacao invalida, tente \"help\" para ver as funcoes disponiveis. Pressione Enter para continuar") >> getLine >> (calc (oper comm xs))) $
    calc (oper comm xs)

