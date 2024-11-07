{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use even" #-}
{-# HLINT ignore "Eta reduce" #-}
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter f (x : xs)
    | f x = x : myFilter f xs
    | otherwise = myFilter f xs

myEven :: [Int] -> [Int]
myEven xs = myFilter ( \x -> x `mod` 2 == 0) xs