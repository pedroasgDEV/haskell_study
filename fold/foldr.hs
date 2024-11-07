myFoldr :: (a -> b -> b) -> b -> [a] -> b 
myFoldr _ v [] = v 
myFoldr f v (x : xs) = x `f` myFoldr f v xs -- Aplicando uma função a partir da cabeça com rultado default

mySum = myFoldr (+) 0 

{- A função foldr segue a estrutura de listas, onde a lista vazia é substituída
pelo valor padrão e o operador (:) é substituído pela função passada como parâmetro -}