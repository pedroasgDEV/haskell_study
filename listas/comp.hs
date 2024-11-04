compList :: [Char] -> [Char] -> Bool
compList [] [] = True
compList [] _  = False
compList _  [] = False
compList (x:xs) (y:ys) | x == y    = compList xs ys
                       | otherwise = False
