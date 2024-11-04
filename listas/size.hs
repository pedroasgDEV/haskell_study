{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
sizeList :: [Int] -> Int
sizeList [] = 0
sizeList (x:xs) = 1 + sizeList xs