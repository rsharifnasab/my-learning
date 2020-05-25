module Tamrin where

a :: String -> String
a x= x ++ "!"

b1 :: String -> Char
b1 x = x !! 4

b2 :: String -> String
b2 x = x !! 4 : ""

b3 :: String -> String
b3 x = drop 4 $ take 5 x


c :: String -> String
c x = drop 9 x

getIndex ::  String -> Int -> Char
getIndex x i = x!!i

se1 :: String -> Char
se1 x = getIndex x 3

se2 :: Int -> Char
se2 i = getIndex "roozbeh is awesome" i

addSpace :: String -> String
addSpace x = x ++ " "

addSpaceArr :: [String] -> [String]
addSpaceArr x = [ " " ++ c | c <- x ]

chahar :: String -> String
chahar x = tail . concat . addSpaceArr . reverse . words $ x


main :: IO ()
main = print $ chahar "salam be roozbeh"
