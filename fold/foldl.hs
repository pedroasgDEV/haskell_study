myFoldl :: (b -> a -> b) -> b -> [a] -> b 
myFoldl _ v [] = v 
myFoldl f v (x : xs) = myFoldl f (f v x) xs -- Aplicando uma função a partir da ponta da calda com rultado default

myReverse :: [a] -> [a]
myReverse = myFoldl step []
    where
        step ac x = x : ac

