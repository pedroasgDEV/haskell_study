-- As guardas (|) sõa tipo um if

soma n | n == 0 = 0 --IF
       | otherwise = soma(n - 1) + n --Else