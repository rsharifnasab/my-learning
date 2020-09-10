fibs = 1 : scanl (+) 1 fibs

fib20 = take 20 fibs

fibLT100 = takeWhile (<100) fibs



fact = scanl1 (*) [1..]
