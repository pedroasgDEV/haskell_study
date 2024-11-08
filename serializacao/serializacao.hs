{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use concatMap" #-}

import Data.Char (ord, chr) 
import Data.Binary (decode)

type Bit = Int
type Byte = [Bit]

bit2Int :: [Bit] -> Int
bit2Int bs = sum [w * b | (w,b) <- zip weights bs]
    where
        weights = iterate (*2) 1

int2Bit :: Int -> [Bit]
int2Bit 0 = [0]
int2Bit n = n `mod` 2 : int2Bit (n `div` 2)

bit2Byte :: [Bit] -> Byte
bit2Byte xs = take 8 (xs ++ repeat 0)

chop8 :: Byte -> [Byte]
chop8 [] = []
chop8 xs = take 8 xs : chop8 (drop 8 xs)

encode :: [Char] -> Byte
encode = concat . map (bit2Byte . int2Bit . ord)

decode :: Byte -> [Char]
decode = map (chr . bit2Int) . chop8
