module EqInstances where

data TisAnInteger = 
 TisAn Integer

--instance Eq TisAnInteger where 
-- (==)   (TisAnInteger TisAn) 
--        (TisAnInteger TisAn') = 
--    TisAn == TisAn'

-- instance Eq TisAnInteger where
-- (==) (TisAn integer) (TisAn integer') = integer == integer'

instance Eq TisAnInteger where
 (==) (TisAn integer) 
    (TisAn integer') = 
    integer == integer'