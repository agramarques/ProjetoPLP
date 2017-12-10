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
  table2 <- tableNew 7 3 True --equivalente ao Grid do GTK3
  bSin <- buttonNewWithLabel "sin"
  bCos <- buttonNewWithLabel "cos"
  bTan <- buttonNewWithLabel "tan"
  bASin <- buttonNewWithLabel "asin"
  bACos <- buttonNewWithLabel "acos"
  bATan <- buttonNewWithLabel "atan"
    
  --posiciona e relaciona os componentes
  set window [windowDefaultWidth := 200, windowDefaultHeight := 200,
              containerBorderWidth := 10, containerChild := box1]
  boxPackStart box1 box2 PackGrow 10
  boxPackStart box1 box3 PackGrow 10
  boxPackStart box2 box4 PackGrow 10
  boxPackStart box2 table2 PackGrow 10
  tableAttachDefaults table2 bSin 0 1 0 1
  tableAttachDefaults table2 bCos 1 2 0 1
  tableAttachDefaults table2 bTan 2 3 0 1
  tableAttachDefaults table2 bASin 0 1 1 2
  tableAttachDefaults table2 bACos 1 2 1 2
  tableAttachDefaults table2 bATan 2 3 1 2
  tableSetRowSpacings table2 5
  tableSetColSpacings table2 5
  
  --associa as funcoes aos eventos
  onDestroy window mainQuit
  
  
  widgetShowAll window
  mainGUI
