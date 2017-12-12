import Graphics.UI.Gtk
import CalcUI

--funcoes de cada botao
processStack :: (TextViewClass t) => String -> t -> IO()
processStack op stack = do
  buf <- textViewGetBuffer stack
  bounds <- textBufferGetBounds buf
  raw <- textBufferGetText buf (fst bounds) (snd bounds) False :: IO String
  let parsed = map read (lines raw)::[Double]
  let result = oper op (reverse parsed)
  let toShow = unlines (reverse $ map show result)
  textBufferSetText buf toShow
  widgetGrabFocus stack

statistical :: (TextViewClass t, EntryClass e) => String -> t -> e -> IO()
statistical op stack out = do  
  buf <- textViewGetBuffer stack
  bounds <- textBufferGetBounds buf
  raw <- textBufferGetText buf (fst bounds) (snd bounds) False :: IO String
  let parsed = map read (lines raw)::[Double]
  let result = head $ oper op (reverse parsed)
  let toShow = show result
  entrySetText out toShow
  widgetGrabFocus stack
  
main :: IO ()
main = do
  initGUI
  
  --cria componentes
  window <- windowNew
  box1 <- hBoxNew True 10
  box2 <- vBoxNew True 10
  box3 <- vBoxNew True 10
  table5 <- tableNew 6 2 True
  scroll <- scrolledWindowNew Nothing Nothing
  stack <- textViewNew
  labelErros <- labelNew (Just "-") --é pra ser "", mas fica ruim de ver enquanto faz o design
  bSwap <- buttonNewWithLabel "swap"
  bClear <- buttonNewWithLabel "clear"
  table2 <- tableNew 7 3 True --equivalente ao Grid do GTK3
  bSin <- buttonNewWithLabel "sin"
  bCos <- buttonNewWithLabel "cos"
  bTan <- buttonNewWithLabel "tan"
  bASin <- buttonNewWithLabel "asin"
  bACos <- buttonNewWithLabel "acos"
  bATan <- buttonNewWithLabel "atan"
  bSqrt <- buttonNewWithLabel "sqrt"
  bP2 <- buttonNewWithLabel "x²"
  bFat <- buttonNewWithLabel "x!"
  bPow <- buttonNewWithLabel "y^x"
  bRoot <- buttonNewWithLabel "y^(1/x)"
  bInv <- buttonNewWithLabel "1/x"
  bLn <- buttonNewWithLabel "ln"
  bLog10 <- buttonNewWithLabel "log10"
  bLog2 <- buttonNewWithLabel "log2"
  bExp <- buttonNewWithLabel "exp"
  bE10 <- buttonNewWithLabel "10^x"
  bE2 <- buttonNewWithLabel "2^x"
  bComb <- buttonNewWithLabel "yCx"
  bArr <- buttonNewWithLabel "yAx"
  table3 <- tableNew 4 2 True
  bPol <- buttonNewWithLabel "Coord Polares"
  bCart <- buttonNewWithLabel "Coord Cartes"
  bHip <- buttonNewWithLabel "Hipotenusa"
  bHeron <- buttonNewWithLabel "Area triang"
  bRaizes <- buttonNewWithLabel "Raizes 2 grau"
  bCirc <- buttonNewWithLabel "Area circulo"
  bCil <- buttonNewWithLabel "Vol cilindro"
  bEsf <- buttonNewWithLabel "Vol esfera"
  table1 <- tableNew 4 4 True
  b1 <- buttonNewWithLabel "1"
  b2 <- buttonNewWithLabel "2"
  b3 <- buttonNewWithLabel "3"
  b4 <- buttonNewWithLabel "4"
  b5 <- buttonNewWithLabel "5"
  b6 <- buttonNewWithLabel "6"
  b7 <- buttonNewWithLabel "7"
  b8 <- buttonNewWithLabel "8"
  b9 <- buttonNewWithLabel "9"
  b0 <- buttonNewWithLabel "0"
  bPi <- buttonNewWithLabel "pi"
  bDot <- buttonNewWithLabel "."
  bMais <- buttonNewWithLabel "+"
  bMenos <- buttonNewWithLabel "-"
  bVezes <- buttonNewWithLabel "*"
  bDiv <- buttonNewWithLabel "/"
  table4 <- tableNew 6 2 True
  bSum <- buttonNewWithLabel "Somatório"
  bProd <- buttonNewWithLabel "Produtório"
  bMedia <- buttonNewWithLabel "Média"
  bGeom <- buttonNewWithLabel "Média Geom"
  bHarm <- buttonNewWithLabel "Média Harm"
  bVar <- buttonNewWithLabel "Variância"
  bDev <- buttonNewWithLabel "Desvio padrão"
  bModa <- buttonNewWithLabel "Moda"
  bMedi <- buttonNewWithLabel "Mediana"
  bSend <- buttonNewWithLabel "Enviar p/ pilha"
  lStat <- labelNew (Just "Saída Estatística")
  outStat <- entryNew
    
  --posiciona e relaciona os componentes
  set window [windowTitle := "Calc",
              windowDefaultWidth := 200, windowDefaultHeight := 200,
              containerBorderWidth := 10, containerChild := box1]
  boxPackStart box1 box2 PackGrow 10
  boxPackStart box1 box3 PackGrow 10
  
  boxPackStart box2 table5 PackGrow 10
  scrolledWindowSetPolicy scroll PolicyNever PolicyAutomatic
  set stack [textViewJustification := JustifyRight, textViewRightMargin := 1]
  containerAdd scroll stack
  tableAttachDefaults table5 scroll 0 2 0 4
  tableAttachDefaults table5 labelErros 0 2 4 5
  tableAttachDefaults table5 bSwap 0 1 5 6
  tableAttachDefaults table5 bClear 1 2 5 6
  
  boxPackStart box2 table2 PackGrow 10
  tableAttachDefaults table2 bSin 0 1 0 1
  tableAttachDefaults table2 bCos 1 2 0 1
  tableAttachDefaults table2 bTan 2 3 0 1
  tableAttachDefaults table2 bASin 0 1 1 2
  tableAttachDefaults table2 bACos 1 2 1 2
  tableAttachDefaults table2 bATan 2 3 1 2
  tableAttachDefaults table2 bSqrt 0 1 2 3
  tableAttachDefaults table2 bP2 1 2 2 3
  tableAttachDefaults table2 bFat 2 3 2 3
  tableAttachDefaults table2 bPow 0 1 3 4
  tableAttachDefaults table2 bRoot 1 2 3 4
  tableAttachDefaults table2 bInv 2 3 3 4
  tableAttachDefaults table2 bLn 0 1 4 5
  tableAttachDefaults table2 bLog10 1 2 4 5
  tableAttachDefaults table2 bLog2 2 3 4 5
  tableAttachDefaults table2 bExp 0 1 5 6
  tableAttachDefaults table2 bE10 1 2 5 6
  tableAttachDefaults table2 bE2 2 3 5 6
  tableAttachDefaults table2 bComb 0 1 6 7
  tableAttachDefaults table2 bArr 1 2 6 7
  tableSetRowSpacings table2 5
  tableSetColSpacings table2 5

  boxPackStart box3 table3 PackGrow 10
  tableAttachDefaults table3 bPol 0 1 0 1
  tableAttachDefaults table3 bCart 1 2 0 1
  tableAttachDefaults table3 bHip 0 1 1 2
  tableAttachDefaults table3 bHeron 1 2 1 2
  tableAttachDefaults table3 bRaizes 0 1 2 3
  tableAttachDefaults table3 bCirc 1 2 2 3
  tableAttachDefaults table3 bCil 0 1 3 4
  tableAttachDefaults table3 bEsf 1 2 3 4
  tableSetRowSpacings table3 5
  tableSetColSpacings table3 5

  boxPackStart box3 table1 PackGrow 10
  tableAttachDefaults table1 b1 0 1 0 1
  tableAttachDefaults table1 b2 1 2 0 1
  tableAttachDefaults table1 b3 2 3 0 1
  tableAttachDefaults table1 bMais 3 4 0 1
  tableAttachDefaults table1 b4 0 1 1 2
  tableAttachDefaults table1 b5 1 2 1 2
  tableAttachDefaults table1 b6 2 3 1 2
  tableAttachDefaults table1 bMenos 3 4 1 2
  tableAttachDefaults table1 b7 0 1 2 3
  tableAttachDefaults table1 b8 1 2 2 3
  tableAttachDefaults table1 b9 2 3 2 3
  tableAttachDefaults table1 bVezes 3 4 2 3
  tableAttachDefaults table1 bPi 0 1 3 4
  tableAttachDefaults table1 b0 1 2 3 4
  tableAttachDefaults table1 bDot 2 3 3 4
  tableAttachDefaults table1 bDiv 3 4 3 4

  boxPackStart box3 table4 PackGrow 10
  tableAttachDefaults table4 bSum 0 1 0 1
  tableAttachDefaults table4 lStat 1 2 0 1
  tableAttachDefaults table4 bProd 0 1 1 2
  tableAttachDefaults table4 outStat 1 2 1 2
  tableAttachDefaults table4 bMedia 0 1 2 3
  tableAttachDefaults table4 bSend 1 2 2 3
  tableAttachDefaults table4 bGeom 0 1 3 4
  tableAttachDefaults table4 bVar 1 2 3 4
  tableAttachDefaults table4 bHarm 0 1 4 5
  tableAttachDefaults table4 bDev 1 2 4 5
  tableAttachDefaults table4 bModa 0 1 5 6
  tableAttachDefaults table4 bMedi 1 2 5 6
    
  --associa as funcoes aos eventos
  onClicked bMais (processStack "+" stack)
  onClicked bMenos (processStack "-" stack)
  onClicked bVezes (processStack "*" stack)
  onClicked bDiv (processStack "/" stack)
  onClicked bSwap (processStack "swap" stack)
  onClicked bClear (processStack "clear" stack)
  onClicked bSin (processStack "sin" stack)
  onClicked bCos (processStack "cos" stack)
  onClicked bTan (processStack "tan" stack)
  onClicked bASin (processStack "asin" stack)
  onClicked bACos (processStack "acos" stack)
  onClicked bATan (processStack "atan" stack)
  onClicked bSqrt (processStack "sqrt" stack)
  onClicked bP2 (processStack "square" stack)
  onClicked bFat (processStack "!" stack)
  onClicked bPow (processStack "^" stack)
  onClicked bRoot (processStack "root" stack)
  onClicked bInv (processStack "inv" stack)
  onClicked bLn (processStack "ln" stack)
  onClicked bLog10 (processStack "log" stack)
  onClicked bLog2 (processStack "log2" stack)
  onClicked bExp (processStack "exp" stack)
  onClicked bE2 (processStack "exp2" stack)
  onClicked bE10 (processStack "exp10" stack)
  onClicked bComb (processStack "comb" stack)
  onClicked bPol (processStack "polares" stack)
  onClicked bCart (processStack "cartesianas" stack)
  onClicked bHip (processStack "hipotenusa" stack)
  onClicked bHeron (processStack "heron" stack)
  onClicked bRaizes (processStack "raizes" stack)
  onClicked bCirc (processStack "circulo" stack)
  onClicked bCil (processStack "cilindro" stack)
  onClicked bEsf (processStack "esfera" stack)
  onClicked bSum (statistical "sum" stack outStat)
  onClicked bProd (statistical "prod" stack outStat)
  onClicked bMedia (statistical "mean" stack outStat)
  onClicked bGeom (statistical "geom" stack outStat)
  onClicked bHarm (statistical "harm" stack outStat)
  onClicked bVar (statistical "var" stack outStat)
  onClicked bDev (statistical "dev" stack outStat)
  onClicked bModa (statistical "moda" stack outStat)
  onClicked bMedi (statistical "mediana" stack outStat)
  onDestroy window mainQuit
  
  
  widgetShowAll window
  mainGUI
