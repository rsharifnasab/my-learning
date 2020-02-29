module Print3 where

myGreeting :: String
myGreeting = "hello " ++ "world!"

hello :: String
hello = "Hello!!!"

world :: String
world = "World!!!"


myGreeting2 :: String
myGreeting2 = hello ++ world

myGreeting3 :: String
myGreeting3 = concat [hello," ",world]


main :: IO ()
main = do
    putStrLn myGreeting

    putStrLn " and then : "
    putStrLn myGreeting2

    putStrLn " and finally: "
    putStrLn myGreeting3
