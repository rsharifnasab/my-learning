
getInte = do
    line <- getLine
    return ( (read line) :: Int )

isPrime :: Int -> Bool
isPrime 1 = False
isPrime 2 = True
isPrime n | (length [x | x <- [2 .. n-1], mod n x == 0]) > 0 = False
   | otherwise = True

primesFrom from to = filter isPrime [from..to]

main :: IO ()
main = do
    from <- getInte
    to <- getInte
    p <- primesFrom from to
    
