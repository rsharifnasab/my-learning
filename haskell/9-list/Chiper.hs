module Cipher where
import Data.Char

cipher :: String -> Int -> String
cipher text key = map chiperChar text
    where
        shifter c base = ord base + (ord c - ord base + key) `mod` 26
        chiperChar c
            | 'a' <= c && c <= 'z' = chr $ shifter c 'a'
            | 'A' <= c && c <= 'Z' = chr $ shifter c 'A'
            | otherwise = c
