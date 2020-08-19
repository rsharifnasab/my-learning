{-# LANGUAGE NoMonomorphismRestriction #-}

-- determine type 


module DetermineTheType where
-- simple example
example = 1

{-
x = 5
y = x + 5
w = y * 10

x = 5
y = x + 5
z y = y * 10

x = 5
y = x + 5
f = 4 / y

-}

f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h = g.f


data A
data B
data C


q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e = w.q



data X
data Y
data Z
xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x,y) = (xz x, yz y)





munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xTy yTwz = fst . yTwz . xTy 
