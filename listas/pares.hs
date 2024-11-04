pares :: [Int] -> Bool
pares [] = True
pares (x:xs) | even x = pares xs
             | otherwise = False