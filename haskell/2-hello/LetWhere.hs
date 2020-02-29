module LetWhere where
sayHello :: String -> IO ()
sayHello x =
    putStrLn("hello " ++ x ++ "!")

x = 5 where g = 6 -- haha

mult1 = x*y
    where
        x=5
        y=6

mult2 = let
    x = 2
    y = 3
    in x*y
