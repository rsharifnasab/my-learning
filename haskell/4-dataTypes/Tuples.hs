module Tuples where
t = (,) 1 2 -- > (a,b)
x = (,) 2 "google"
y = (t,x)

-- import Data.Tuple
-- swap x --  return swapped

z = fst x --  2
p = snd x --  "google"

fst' :: (a,b) -> a
fst' (a,b) = a
