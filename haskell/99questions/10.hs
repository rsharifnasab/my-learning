pack :: String -> [String]
pack [] = []
pack (x:xs) = let samePart  = takeWhile (==x) (x:xs) 
                  otherPart = dropWhile (==x) xs 
              in samePart : pack otherPart

encode :: String -> [(Int, Char)]
encode = map (\x -> (length x, head x)).  pack 


main :: IO ()
main = undefined
