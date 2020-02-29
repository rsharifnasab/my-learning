module GreetIfCool1 where

greetIfCool :: String -> IO()
greetIfCool coolness =
      if cool
            then putStrLn "khube"
      else
            putStrLn "khub bash khob"
      where cool = coolness == "ok"
