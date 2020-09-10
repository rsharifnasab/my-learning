import Data.Time 

data DatabaseItem = DbString String 
                  | DbNumber Integer 
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)


theDataBase :: [DatabaseItem]
theDataBase =
  [ DbDate (UTCTime
             (fromGregorian 1911 5 1)
             (secondsToDiffTime 34123))
  , DbNumber 9001
  , DbNumber 1
  , DbString "Hello, world!"
  , DbDate (UTCTime
            (fromGregorian 1921 5 1)
            (secondsToDiffTime 34123))
    ]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr f [] 
  where f (DbDate t) = (t:)
        f _ =  ([]++)

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr f []
  where f (DbNumber i) = (i:)
        f _ = ([]++)


mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = maximum.filterDbDate

sumDb :: [DatabaseItem] -> Integer
sumDb = sum.filterDbNumber
avgDb :: [DatabaseItem] -> Double
avgDb xs = let xs' =  map fromIntegral.filterDbNumber $ xs
           in sum xs' / (fromIntegral.length $ xs')
