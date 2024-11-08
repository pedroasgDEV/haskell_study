import Data.Char (ord, chr, isLower, isUpper, toLower, toUpper)

char2Int :: Char -> Int
char2Int c = ord  c - ord 'a'

int2char :: Int -> Char
int2char n = chr (ord 'a' + n)

shift :: Int -> Char -> Char
shift n c
    | isLower c = int2char ((char2Int c + n) `mod` 26)
    | isUpper c = toUpper (int2char ((char2Int (toLower c) + n) `mod` 26))
    | otherwise = c

cesar :: [Char] -> Int -> [Char]
cesar xs n = map (shift n) xs

rasec :: [Char] -> Int -> [Char]
rasec xs n = cesar xs (-n)