position :: Eq a => a -> [a] -> Maybe Int
position x xs = pos x xs 0
    where 
        pos _ [] _ = Nothing
        pos x (y : ys) ac
            | x == y = Just ac
            | otherwise = pos x ys (ac + 1)
