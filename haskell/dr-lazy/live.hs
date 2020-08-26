{-# LANGUAGE TypeApplications #-}

data Person = Hadi | DrLazy | JediMahdi | DanglingPointer
    deriving (Show)

memptyIfFalse :: Monoid a => a -> Bool -> a
memptyIfFalse a avail = if avail then a else mempty

optionalPeople :: Bool -> [Person]
optionalPeople = memptyIfFalse [Hadi]

defaultPeople :: [Person]
defaultPeople = [DrLazy, JediMahdi, DanglingPointer]

main :: IO ()
main = do
    putStrLn "is Hadi available?"
    isHadiAvailable <- readLn @Bool 
    print $ optionalPeople isHadiAvailable <> defaultPeople
