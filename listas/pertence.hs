pertence :: Int -> [Int] -> Bool
pertence _ [] = False
pertence a (x:xs) | a == x = True
                  | otherwise = pertence a xs