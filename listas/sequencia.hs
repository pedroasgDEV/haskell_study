sequencia :: Int -> [Int]
sequencia 0 = [0]
sequencia x = sequencia (x - 1) ++ [x]