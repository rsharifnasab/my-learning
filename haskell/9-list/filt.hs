
removeJunk :: String -> String
removeJunk = tail . concatMap (" " ++) 
    . filter (`notElem` ["a", "the", "an"]) 
    . words


main :: IO ()
main = undefined
