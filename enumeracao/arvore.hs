data Tree = Leaf | Node Int Tree Tree

buscaTree :: Int -> Tree -> Bool
buscaTree _ Leaf = False
buscaTree x (Node i l r) | x < i = buscaTree x l
                         | x > i = buscaTree x r
                         | otherwise = True