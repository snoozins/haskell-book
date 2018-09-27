module Operations where

--add :: a -> a -> a
add :: Num a => a -> a -> a
add x y = x + y

--addWeird :: Num a => a -> a -> a
addWeird :: (Ord a, Num a) => a -> a -> a
addWeird x y = 
 if x > 1 
 then x + y
 else x

addAgain :: Int -> Int -> Int
addAgain x y = x + y 

addWeirdAgain :: Int -> Int -> Int
addWeirdAgain x y = 
 if x > 1
 then x + y 
 else x

check' :: Int -> Int -> Bool
check' a a' = a == a'