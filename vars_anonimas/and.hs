ands :: Bool -> Bool -> Bool
ands False _ = False
ands _ False = False
ands True True = True