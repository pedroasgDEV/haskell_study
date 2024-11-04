roots :: Float -> Float -> Float -> (Float, Float)
roots a b c = (r1, r2)
    where
        delta = b^2 - 4*a*c
        r1 = (-b + sqrt delta) / ( 2 * a )
        r2 = (-b - sqrt delta) / ( 2 * a )