
dupli :: [a] -> [a]
dupli = concatMap (\x -> [x,x])
