module If where


greetIfCool :: String -> IO ()
greetIfCool status =
    if ok
        then putStrLn "alllie"
        else putStrLn "mohem nist, ishala dafe ba\'d"
    where
        ok = status == "khubam"

greetIfCool2 :: String -> IO ()
greetIfCool2 "khubam" = putStrLn "aaallli"
greetIfCool2 _ = putStrLn "be darak"

greetIfCool3 :: String -> IO ()
greetIfCool3 status =
    if isOk status
        then putStrLn "alllie"
        else putStrLn "mohem nist, ishala dafe ba\'d"
    where
        isOk t = t == "khubamz"
