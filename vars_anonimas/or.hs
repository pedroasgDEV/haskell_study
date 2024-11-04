ors :: Bool -> Bool -> Bool
ors True _ = True
ors _ True = True
ors False False = False