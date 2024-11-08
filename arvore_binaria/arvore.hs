import Text.XHtml (height)
data Tree a = Leaf | Node a (Tree a) (Tree a) 
    deriving (Eq, Ord, Show)

memberTree :: Ord a => a -> Tree a -> Maybe a
memberTree _ Leaf = Nothing
memberTree x (Node y l r) = 
    case compare x y of
        LT -> memberTree x l
        GT -> memberTree x r
        _ -> Just x

insertTree :: Ord a => a -> Tree a -> Tree a
insertTree x Leaf = Node x Leaf Leaf
insertTree x (Node y l r) = 
    case compare x y of
        LT -> Node y (insertTree x l) r
        GT -> Node y l (insertTree x r)
        _ -> Node y l r

toList :: Tree a -> [a]
toList t = toList' t []
    where
        toList' Leaf xs = xs
        toList' (Node x l r) xs = toList' l (x : toList' r xs)

fromList :: Ord a => [a] -> Tree a
fromList = foldr insertTree Leaf

treeSort :: Ord a => [a] -> [a]
treeSort = toList .  fromList

removeMin :: Ord a => Tree a -> Maybe (a, Tree a)
removeMin Leaf = Nothing
removeMin (Node x Leaf r) = Just (x, r) 
removeMin (Node x l r) =
    case removeMin l of
        Nothing -> Nothing
        Just (y, l') -> Just (y, Node x l' r)

removeEq :: Ord a => Tree a -> Tree a -> Tree a
removeEq Leaf r = r
removeEq l Leaf = l
removeEq l r = 
    case removeMin l of
        Nothing -> error "Impossible!"
        Just (x, l') -> Node x l' r

remove :: Ord a => a -> Tree a -> Tree a
remove _ Leaf = Leaf
remove v (Node x l r) =
    case compare v x of
        EQ -> removeEq l r
        LT -> Node x (remove v l) r
        GT -> Node x l (remove v r)

mapTree :: (a -> b) -> Tree a -> Tree b
mapTree _ Leaf = Leaf
mapTree f (Node x l r) = Node (f x) (mapTree f l) (mapTree f l)

foldTree :: (a -> b -> b -> b) -> b -> Tree a -> b
foldTree _ v Leaf = v
foldTree f v (Node x l r) = f x (foldTree f v l) (foldTree f v r)

height :: Tree a -> Int
height = foldTree (\ _ acl acr -> 1 + max acl acr) 0