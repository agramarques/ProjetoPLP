import System.Process
import Data.Char (toLower)

type Stack = [Double]

opBin :: String -> Stack -> Stack
opBin _ [] = []			--talvez lançar um erro, se for na GUI ver como dar um aviso
opBin _ (x:[]) = x:[]	--nao opera sobre apenas um operando
opBin c (x:y:xs)
	| c == "+" = (y+x):xs
	| c == "-" = (y-x):xs
	| c == "*" = (y*x):xs
	| c == "/" = (y/x):xs
	
opUn ::	String -> Stack ->Stack
opUn _ [] = []
opUn c (x:xs)
	| c == "ln" = (log x):xs
	| c == "exp" = (exp x):xs
	| c == "sqrt" = (sqrt x):xs
	| c == "sin" = (sin x):xs
	| c == "cos" = (cos x):xs
	| c == "tan" = (tan x):xs

isNumber :: String -> Bool
isNumber str =
	case (reads str) :: [(Double, String)] of
		[(_,"")] -> True
		_		 -> False	


{- opção para caso use uma caixa de entrada a parte para ir entrando com cada comando
recebe o comando como uma string, para decidir que operação realizar e a pilha, retornando
a pilha devidamente modificada -}
oper :: String -> Stack -> Stack
oper c x
	| isNumber c = ((read c::Double):x)
	| c `elem` ["+","-","*","/"] = opBin c x
	| c `elem` ["ln", "exp", "sqrt", "sin", "cos", "tan"] = opUn c x
	
calc :: Stack -> IO()
calc xs = do
	system "cls" >> print xs
	comando <- getLine
	let comm = (map toLower comando) in
		if comm == "quit"
			then return ()
			else calc (oper comm xs) -- calc retorna uma stack modificada, então dá pra chamar calc de novo em cima da nova stack
	
main :: IO()
main = do
	calc []
	return ()
	
