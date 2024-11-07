myMaxAvarege :: [[Float]] -> Float -- Passa uma lista de listas e retorna uma media
{-
    - filter (not . null) garante que não haja listas vazias
    - avarage retorna a media da lista
    - maximum . map é o valor maximo das medias
-}
myMaxAvarege = maximum . map average . filter (not . null) -- f1 . f2 é uma composição de duas funções, a saida de f2 vai para f1
    where
        {-
            - sum é a soma de valores de uma lista
            - fromIntegral transforma o valor Int para Num generico
            - length pega o tamanho da lista
        -}
        average xs = sum xs / fromIntegral (length xs)

