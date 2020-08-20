import Data.List (sort)


i :: Num a => a
i = 1

f :: Num a => a
f = 1


freud :: Ord a => a -> a
freud x = x 

freud' :: Int -> Int
freud' x = x


myX = 1 :: Int 


sigmund :: Int -> Int
sigmund x = myX



sigmund' :: a -> Int
sigmund' x = myX


getX :: Int
getX = myX
{- why not? getX :: Num a => a -}


jung :: [Int] -> Int
--jung :: Ord a => [a] -> a
jung xs = head.sort $  xs

 --young :: [Char] -> Char
young :: Ord a => [a] -> a
young xs = head.sort $ xs




chk :: Eq b => (a -> b) -> a -> b -> Bool
chk a2b a b = a2b a == b


{-
 -- QUESTIONS -- 
t :: Int 
t  =  2 
test :: (Num a) => a
test = t 

arith :: Num b => (a -> b) -> Integer -> a -> b
arith               a2b       someInt    a = (a2b a) - someInt
-}


main :: IO ()
main = undefined
