{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}
module NewTypes where

class TooMany a where 
    tooMany :: a -> Bool 

instance TooMany Int where 
    tooMany n = n > 42

instance TooMany (Int, String) where 
    tooMany (i, s) = i > 42

newtype Goats = Goats Int deriving (Eq, Show, TooMany)

-- instance TooMany Goats where
--     tooMany (Goats n) = n > 43

-- instance TooMany Goats where
--     tooMany (Goats n) = tooMany n

-- instance TooMany (Int, Int) where
--     tooMany (i1, i2) = (i1 + i2) > 43

type TwoFields = (Goats, Goats) 

instance TooMany TwoFields where 
    tooMany ((Goats f1), (Goats f2)) = (f1+f2) > 43