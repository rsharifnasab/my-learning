fact :: Int -> Int
fact 1 = 1
fact 0 = 1
fact n = n * fact (n-1)


fib :: Int -> Int
fib n | n == 0 = 0
      | n == 1 = 1
      | n > 1  = fib (n-1) + fib (n-2)


getInte = do
    line <- getLine
    return ( (read line) :: Int )


jam :: Int -> IO Int
jam 0 = return 0
jam n = do
    x1 <- getInte
    x2 <- jam(n-1)
    if mod x1 2 == 0 then
        return (x1+x2)
    else
        return x2



main :: IO ()
main = do
    n <- getInte
    --ans <- (summer n)
    ans <- jam n
    putStr "ans is "
    print ( ans )
