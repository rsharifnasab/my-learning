data Void -- same as (->) 

f :: Eq a =>  a -> a -> Bool
f a b = a == b

one :: Int
one = 1

isOne ::  Int -> Bool
isOne a = f a one
