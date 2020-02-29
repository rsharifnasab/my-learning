module TopOrLocal where
y=2
topLevelFunction :: Integer -> Integer
topLevelFunction x =
    x + woot + topLevelValue -- x + 10 + 5
    where woot :: Integer
          woot = 10


topLevelValue :: Integer
topLevelValue = 5
