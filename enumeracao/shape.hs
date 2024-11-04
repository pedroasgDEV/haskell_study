type Aresta = Float
type Raio = Float

data Point = Point Float Float
data Shape = Rectangle Point Aresta Aresta
           | Circle Point Raio
           | Triangle Point Point Point

distPoint :: (Point, Point) -> Float
distPoint (Point x1 y1, Point x2 y2) = sqrt (x^2 + y^2)
  where 
    x = x1 - x2
    y = y1 - y2 

perimeter :: Shape -> Float
perimeter (Rectangle _ w h) = 2*w + 2*h
perimeter (Circle _ r) = 2 * pi * r
perimeter (Triangle a b c) = distPoint (a, b) + distPoint (b, c) + distPoint (c, a)