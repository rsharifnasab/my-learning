

stops = "pbtdkg"
vowels = "aeiou"

threeTuple =
    [ (a,b,c) | 
        a <- stops,
        b <- vowels,
        c <- stops ]

startWithP = 
    [ ('p',b,c) | 
        b <- vowels,
        c <- stops ]


seekritFunc :: String -> Int
seekritFunc x =
    div (sum (map length (words x)))
        (length (words x))


wordsAvgLen :: String -> Double
wordsAvgLen s =
        let wordss = words s
            len = fromIntegral.length
            wordsCount = len wordss
            lengthWords = map len wordss
        in sum lengthWords / wordsCount


myOr :: [Bool] -> Bool
myOr = foldl (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr (\x -> (f x ||)) False


myElem :: Eq a => a -> [a] -> Bool
myElem x = any (==x)


myElem' :: Eq a => a -> [a] -> Bool
myElem' x = foldr (\a -> ((a==x) ||)) False


myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr (\x -> (f x :)) []

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr 
                (\x acc->
                   if f x 
                   then x:acc
                   else acc
                ) 
            []

squish :: [[a]] -> [a]
squish = foldr (++) []

squishMap f = squish . map f


myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f = foldr1 (maxBy f)
            where 
            maxBy  f a b =
                if f a b == GT 
                    then a 
                    else b

ans = myMaximumBy 
        (\x y -> compare (length x) (length y))  ["xoooooooo","salam","a","zoro"]


main = undefined
