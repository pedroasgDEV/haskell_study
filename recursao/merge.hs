merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort ys) (msort zs)
    where
        n = length xs `div` 2 -- Div retorna um resultador Int de uma vivisão
        ys = take n xs -- Take retorna os n primeiros elementos de uma lista
        zs = drop n xs -- Drop remove os n pirmeiros elementos de uma lista