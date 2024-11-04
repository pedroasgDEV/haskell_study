myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem a (x:xs) = (a == x) || myElem a xs