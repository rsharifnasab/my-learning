
zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x1:xs1) (x2:xs2) = (x1, x2) : zip' xs1 xs2 

zipWith' :: [a] -> [b] -> (a->b->c) -> [c]
zipWith' xs1 xs2 f = map (uncurry f) (zip xs1 xs2)

main :: IO ()
main = undefined
