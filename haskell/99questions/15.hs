
repli :: [a] -> Int -> [a]
repli xs i = concatMap (replicate i) xs
