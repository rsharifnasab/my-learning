pack :: String -> [String]
pack [] = []
pack (x:xs) = let samePart  = takeWhile (==x) (x:xs) 
                  otherPart = dropWhile (==x) xs 
              in samePart : pack otherPart


main :: IO ()
main = undefined
