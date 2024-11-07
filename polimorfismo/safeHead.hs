-- data Maybe  a = Just a | Nothing
mySafeHead :: [a] -> Maybe a
mySafeHead [] = Nothing
mySafeHead (x : _) = Just x
