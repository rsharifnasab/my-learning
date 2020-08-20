data TisAnInteger = TisAn Integer
instance Eq TisAnInteger where
    (==) (TisAn a) (TisAn b) = a == b


data TwoIntegers = Two Integer Integer
instance Eq TwoIntegers where
    (==) (Two a1 a2) (Two b1 b2) = a1 == b1 && a2 == b2 
    

data StringOrInt = TisAnInt Int | TisAnString String
instance Eq StringOrInt where 
    (TisAnInt a) == (TisAnInt b) = a==b
    (TisAnString a) == (TisAnString b) = a==b
    (TisAnInt i) == (TisAnString s) = show i == s
    _ == _ = False


data EitherOr a b = Hello a | Goodbye b
instance (Eq a) =>  Eq (EitherOr a b) where
    (Hello a1) == (Hello a2) = a1==a2
    (Goodbye a) == (Goodbye b) = True
    _ == _ = False

data DayOfWeek = Mon | Tue | Weds | Thu | Fri | Sat | Sun
    deriving (Eq, Show)

instance Ord DayOfWeek where
    compare Fri Fri = LT
    compare Fri _ = GT
    compare _ Fri = LT
    compare _ _ = EQ

main :: IO ()
main = undefined
