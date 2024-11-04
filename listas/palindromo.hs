inverte :: [Char] -> [Char]
inverte [] = []
inverte (x:xs) = inverte xs ++ [x]

compList :: [Char] -> [Char] -> Bool
compList [] [] = True
compList [] _  = False
compList _  [] = False
compList (x:xs) (y:ys) | x == y    = compList xs ys
                       | otherwise = False

palindromo :: [Char] -> Bool
palindromo [] = True
palindromo wrd = compList wrd (inverte wrd)
