-- As guardas (|) sõa tipo um if

fat n | n == 0 = 1 -- IF
      | otherwise = fat(n - 1) * n --Else

