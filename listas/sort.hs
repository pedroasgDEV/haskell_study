getMenor :: [Int] -> Int
getMenor [x] = x
getMenor (x:xs) | x < getMenor xs = x
                | otherwise = getMenor xs

popMenor :: [Int] -> [Int]
popMenor [] = []
popMenor (x:xs) | x == getMenor (x:xs) = xs
                | otherwise = x : popMenor xs

aux :: [Int] -> [Int] -> [Int]
aux [] sortedList = sortedList
aux list sortedList = aux (popMenor list) (sortedList ++ [getMenor list])

sort :: [Int] -> [Int]
sort [] = []
sort list = aux list []
