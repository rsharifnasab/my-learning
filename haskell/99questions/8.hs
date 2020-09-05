compress :: String -> String
compress [] = []
compress [a] = [a]
compress (x:x':xs) = if x==x' then compress $ x':xs 
                              else x: (compress $ x':xs)


main :: IO ()
main = undefined
