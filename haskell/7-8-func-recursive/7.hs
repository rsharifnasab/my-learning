import Data.List (intersperse)

hundDigit :: Integral  a => a -> a 
hundDigit = snd . flip divMod 10 . fst . flip divMod  10

foldBool a b t
     | t = a 
     | otherwise = b



g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)



roundTrip :: (Show a, Read a) => a -> a
roundTrip = read . show 


id' :: (Show a, Read b) => a -> b
id' = read.show

main :: IO ()
main = do
    print (id' 4 :: Int)


incTimes :: (Eq t1, Num t1, Num t2) => t1 -> t2 -> t2 
incTimes 0 n =  n
incTimes times n =
    1 + incTimes (times - 1) n



applyTimes :: Integral i => i -> (b->b) -> b -> b 
applyTimes 0 f b = b
applyTimes n f b = f (applyTimes (n-1) f b)



mc91 :: (Integral a) => a -> a 
mc91 x
  | x > 100   = x - 10
  | otherwise = mc91.mc91 $ x+11
  | otherwise = 91



digits :: Int -> [Int]
digits 0 = [0]
digits n = reverse $ go n 
    where 
        go 0 = []
        go n = n `mod` 10 : go (n `div` 10)

digitToWord :: Int -> String
digitToWord n = case n of 
     0 -> "zero"
     1 -> "one"
     2 -> "two"
     3 -> "three"
     4 -> "four"
     5 -> "five"
     6 -> "six"
     7 -> "seven"
     8 -> "eight"
     9 -> "nine"
     _ -> error "out of bound"

wordNumber :: Int -> String
wordNumber n = concat $ intersperse "-" $ map digitToWord (digits n)

