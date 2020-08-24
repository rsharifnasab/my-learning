import Data.List 

powerset :: [a] -> [[a]]
powerset [] = [[]]
powerset (x:xs) = [x:ps | ps <- powerset xs] ++ powerset xs

allPossibleSums :: [Int] -> [Int]
allPossibleSums = sort . map sum . powerset

solve' :: [Int] -> Int
solve' xs = head $ filter notInAps [1..]  
    where 
        aps = allPossibleSums xs
        notInAps x =  x `notElem` aps


solve :: [Int] -> Int
solve = head . (\x -> filter (`notElem` x)  [1..]) . nub . sort . map sum . subsequences

main :: IO ()
main = undefined
