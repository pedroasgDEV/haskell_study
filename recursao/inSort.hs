{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}

insert :: Ord a => a -> [a] -> [a]
insert a [] = [a]
insert a (x:xs) | a <= x = a : (x:xs)
                | otherwise = x : insert a xs

inSort :: Ord a => [a] -> [a]
inSort [] = []
inSort (x:xs) = insert x (inSort xs)