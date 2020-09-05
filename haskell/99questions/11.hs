pack :: String -> [String]
pack [] = []
pack (x:xs) = let samePart  = takeWhile (==x) (x:xs) 
                  otherPart = dropWhile (==x) xs 
              in samePart : pack otherPart

encode :: String -> [(Int, Char)]
encode = map (\x -> (length x, head x)).pack 


data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeModified = map enc.encode
    where 
       enc (1,x) = Single x
       enc (n,x) = Multiple n x 


main :: IO ()
main = undefined
