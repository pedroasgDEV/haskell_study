-- As guardas (|) sõa tipo um if

fib n | n == 0 = 0 --IF
      | n == 1 = 1 --ELSE IF
      | otherwise = fib(n - 1) + fib(n -2) --ELSE