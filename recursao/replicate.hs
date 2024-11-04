myReplicate :: Int -> a -> [a]
myReplicate n x | n <= 0 = []
              | otherwise = x : myReplicate (n - 1) x