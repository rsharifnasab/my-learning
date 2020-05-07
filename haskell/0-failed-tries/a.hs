#!/usr/bin/env runhaskell

{- 
 - very unefficient power 2 checker! 
 - a good way can be using log 2 
 - or maybe and
-}
power2s = filter isPower2 myRange 
    where
        myRange = [1..]
        isPower2 1 = True
        isPower2 x = (x `mod` 2 == 0) && (isPower2 $ x `div` 2)



zojHa = filter zojF myRange
  where
    myRange = [1..]
    zojF i = (i `mod` 2) == 0 


main :: IO ()
main = let 
    littleZojs = takeWhile ( < 100 ) power2s
    len = length littleZojs
    las = last littleZojs
    taghsim = las `div` len 
  in
    print $ takeWhile (<1000) power2s -- print powers of 2 less than 1000
    --print $ show len ++ " " ++ show las ++ " " ++ show taghsim



