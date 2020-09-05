
dropEvery :: [a] -> Int -> [a]
dropEvery xs e = map snd . filter (\x -> fst x `rem` e /= 0 ). zip [1..] $ xs
