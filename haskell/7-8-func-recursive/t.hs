dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10

oneIsOne :: Num a => a -> a
oneIsOne = dodgy 1

oneIsTwo :: Num a => a -> a
oneIsTwo = (flip dodgy) 2



bloodNa :: Integer -> String
bloodNa x 
    | x < 135     = "too low"
    | x > 145     = "too high" 
    | otherwise   = "just right"


main :: IO ()
main = undefined

