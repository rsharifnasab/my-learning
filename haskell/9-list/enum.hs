eftBool :: Bool -> Bool -> [Bool]
eftBool from to
    | from == to = [from]
    | from > to  = []
    | otherwise  = from : eftBool (succ from) to

eft :: (Enum a,Eq a, Ord a) => a ->  a -> [a]
eft from to 
    | from == to = [from]
    | from > to  = []
    | otherwise  = from : eft (succ from) to


splitAt' :: Int -> [a] -> ([a], [a])
splitAt' i xs = ( take' i xs, drop' j xs)
    where j = length xs - i


take' 0 _ = []
take' i (x:xs) = x:take' (i-1) xs

drop' 0 xs = xs
drop' i (x:xs) = drop (i-1) xs

dropWhile' [] _ = []
dropWhile' (x:xs) cond = if cond x 
                            then dropWhile' xs cond 
                            else x:xs 

takeWhile' [] _ = []
takeWhile' (x:xs) cond = if cond x
                            then x: takeWhile' xs cond
                            else []

split :: String -> Char -> [String]
split [] _ = []
split [a] b = if a == b then [] else [[a]]
split list spliter = takeWhile' list (/= spliter) : if null rest  then [] else split (tail rest)  spliter
    where 
       rest = dropWhile' list (/= spliter)

main :: IO ()
main = undefined

