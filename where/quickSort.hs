qSort :: [Int] -> [Int]
qSort [] = []
qSort (x:xs) = smaller ++ [x] ++ greater
    where
        smaller = qSort [y | y <- xs, y <= x]
        greater = qSort [z | z <- xs, z > x]