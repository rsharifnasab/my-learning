module Boool where

and2 :: Bool -> Bool -> Bool
and2 x y = (&&) x y

andT :: Bool -> Bool
andT x = x

andF :: Bool -> Bool
andF x = False


mand :: Bool -> Bool -> Bool
mand x y =
    if x
        then andT y
        else andF y
