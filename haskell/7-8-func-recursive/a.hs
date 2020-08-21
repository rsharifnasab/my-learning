


fC x y = case x>y of
    True -> x
    _ -> y


com2num cmp = case cmp of
    LT -> -1
    GT ->  1
    EQ ->  0

nums x = com2num $ compare x 0

main :: IO ()
main = undefined
