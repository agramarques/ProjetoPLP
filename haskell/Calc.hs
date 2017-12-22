module Calc
    ( oper
    , (?)
    ) where

import Lib


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
    | c == "cilindro" = (pi)*x*(y**2) : xs
    | c == "swap" = y:x:xs
    | c == "comb" = (comb y x):xs
    | c == "arr" = (arr y x):xs
    | c == "polares" = (polares x y) ++ xs
    | c == "cartesianas" = (cartesianas x y) ++ xs
    | c == "hipotenusa" = [(polares x y)!!1]++xs


opUn :: String -> Stack -> Stack
opUn _ [] = []
opUn c (x:xs)
    | c == "ln" = log x : xs
    | c == "log" = (logBase 10 x) : xs
    | c == "log2" = (logBase 2 x) : xs
    | c == "exp" = exp x : xs
    | c == "exp2" = (2**x) : xs
    | c == "exp10" = (10**x) : xs
    | c == "sqrt" = sqrt x : xs
    | c == "square" = (x**2) : xs
    | c == "inv" = (1/x) : xs
    | c == "sin" = sin x : xs
    | c == "cos" = cos x : xs
    | c == "tan" = tan x : xs
    | c == "asin" = asin x : xs
    | c == "acos" = acos x : xs
    | c == "atan" = atan x : xs
    | c == "esfera" = ((pi)*4*(x**3))/3 : xs
    | c == "circulo" = ((pi)*(x**2)) : xs
    | c == "!" = fatAux x : xs


operConst :: String -> Stack -> Stack
operConst "pi" xs = (pi):xs
operConst "e" xs = (exp 1):xs


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
    | c == "moda" = [moda xs]
    | c == "mediana" = [mediana xs]
    | c == "mmc" = [intAux xs mmc]
    | c == "mdc" = [intAux xs mdc]
    | c == "clear" = []


infixl 1 ?
(?) :: Bool -> a -> a -> a
(?) True x _ = x
(?) False _ y = y


zeroOps = ["pi", "e"]
unOps = ["ln", "log", "log2", "exp", "exp2", "exp10", "sqrt", "square", "inv", "sin", "cos", "tan", "asin", "acos", "atan", "!", "esfera", "circulo"]
binOps = ["+","-","*","/","^", "root", "cilindro", "swap", "comb", "arr", "polares", "cartesianas", "hipotenusa"]
wholeOps = ["mean", "sum", "prod", "geom", "harm", "var", "dev", "moda", "mediana", "mmc", "mdc", "clear"]
terOps = ["raizes", "heron"]


oper :: String -> Stack -> Stack
oper c x
    | isNumber c = (read c::Double) : x
    | c `elem` binOps = opBin c x
    | c `elem` unOps = opUn c x
    | c `elem` terOps = opTer c x
    | c `elem` wholeOps = operWhole c x
    | c `elem` zeroOps = operConst c x
    | otherwise = x
