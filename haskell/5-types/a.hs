data Void -- same as (->) 

f :: Eq a =>  a -> a -> Bool
f a b = a == b

one :: Int
one = 1

isOne ::  Int -> Bool
isOne a = f a one


id' :: a -> Int 
id' a = 1

twd :: a -> b -> b
twd a b = b


len :: (Num b) => [a] -> b

len [] = 0
len (x:xs) = 1 + len xs  

nimLen :: (Fractional b) => b -> b
nimLen b = b/2


two :: (Num a) => a
two = 1 + 1

taghsim :: (Fractional f) => f -> f
taghsim f = f/2

main :: IO ()
main = print $ taghsim two 


--print $ nimLen $ len [1..5]
