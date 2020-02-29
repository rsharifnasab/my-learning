module GreetIfCool2 where

greetIfCool :: String -> IO()
greetIfCool "ok" = putStrLn "ba bah"
greetIfCool _ = putStrLn "hmmm"
