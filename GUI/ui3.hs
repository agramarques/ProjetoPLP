import Graphics.UI.Gtk

--funcoes de cada botao

main :: IO ()
main = do
  initGUI
  
  --cria componentes
  window <- windowNew
  box1 <- hBoxNew True 10
  box2 <- vBoxNew True 10
  box3 <- vBoxNew True 10
  box4 <- vBoxNew True 10
  stack <- textViewNew
  labelErros <- labelNew (Just "-") --é pra ser "", mas fica ruim de ver enquanto faz o design
  box5 <- hBoxNew True 5
  bSwap <- buttonNewWithLabel "swap"
  bClear <- buttonNewWithLabel "clear"
  table2 <- tableNew 7 3 True --equivalente ao Grid do GTK3
  bSin <- buttonNewWithLabel "sin"
  bCos <- buttonNewWithLabel "cos"
  bTan <- buttonNewWithLabel "tan"
  bASin <- buttonNewWithLabel "asin"
  bACos <- buttonNewWithLabel "acos"
  bATan <- buttonNewWithLabel "atan"
  table3 <- tableNew 4 2 True
  bPol <- buttonNewWithLabel "Coord Polares"
  bCart <- buttonNewWithLabel "Coord Cartes"
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
  lStat <- labelNew (Just "Saída Estatística")
  outStat <- entryNew
    
  --posiciona e relaciona os componentes
  set window [windowTitle := "Calc",
              windowDefaultWidth := 200, windowDefaultHeight := 200,
              containerBorderWidth := 10, containerChild := box1]
  boxPackStart box1 box2 PackGrow 10
  boxPackStart box1 box3 PackGrow 10
  boxPackStart box2 box4 PackGrow 10
  boxPackStart box2 table2 PackGrow 10
  boxPackStart box4 stack PackGrow 10
  boxPackStart box4 labelErros PackGrow 10
  boxPackStart box4 box5 PackGrow 10
  boxPackStart box5 bSwap PackGrow 5
  boxPackStart box5 bClear PackGrow 5
  tableAttachDefaults table2 bSin 0 1 0 1
  tableAttachDefaults table2 bCos 1 2 0 1
  tableAttachDefaults table2 bTan 2 3 0 1
  tableAttachDefaults table2 bASin 0 1 1 2
  tableAttachDefaults table2 bACos 1 2 1 2
  tableAttachDefaults table2 bATan 2 3 1 2
  tableSetRowSpacings table2 5
  tableSetColSpacings table2 5
  boxPackStart box3 table3 PackGrow 10
  tableAttachDefaults table3 bPol 0 1 0 1
  tableAttachDefaults table3 bCart 1 2 0 1
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
    
  --associa as funcoes aos eventos
  onDestroy window mainQuit
  
  
  widgetShowAll window
  mainGUI
