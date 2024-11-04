myZip :: [a] -> [b] -> [(a, b)]
myZip a b = [(x, y)| x <- a, y <- b] 