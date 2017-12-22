module Lib
    ( Stack
    , polares
    , cartesianas
    , variance
    , stDev
    , ehTriangulo
    , heron
    , raizes
    , mean
    , hMean
    , gMean
    , moda
    , mediana
    , comb
    , arr
    , fatAux
    , fatorial
    , isNumber
    , intAux
    , mmc
    , mdc
    ) where

import Data.List
import Data.Function (on)
import Data.List.Split.Internals

type Stack = [Double]


polares :: Double -> Double -> [Double]
polares x y = [(atan2 x y), sqrt(x**2+y**2)]


cartesianas :: Double -> Double -> [Double]
cartesianas y x = [x*(sin y), x*(cos y)]


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

moda :: Stack -> Double
--moda xs = head $ last $ sortBy (compare `on` length) (group (sort xs))
moda xs = head $ last $ sortOn length (group (sort xs))

mediana :: Stack -> Double
mediana xs
    | even len = (sorted !! (middle) + sorted !!(middle - 1))/2
    | otherwise = sorted !! (middle)
    where
        len = length xs
        sorted = sort xs
        middle = len `div` 2

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


intAux :: Stack -> ([Integer] -> Integer) -> Double
intAux x func = fromInteger $ func [(truncate xs::Integer) | xs <- x]

mmc :: [Integer] -> Integer
mmc a = foldl lcm 1 a

mdc :: [Integer] -> Integer
mdc a = foldl gcd (maximum a) a

isNumber :: String -> Bool
isNumber str =
    case reads str :: [(Double, String)] of
     [(_,"")] -> True
     _ -> False
