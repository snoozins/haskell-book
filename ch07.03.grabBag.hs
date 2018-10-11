module GrabBag where 

--The following are equivalent
mTh x y z = x * y * z
mTh' x y = \z -> x * y * z
mTh'' x = \y -> \z -> x * y * z
mTh''' = \x -> \y -> \z -> x * y * z

--Type will be 
mTh3 :: Num a => a -> a -> a
mTh3 = mTh 3

addOneIfOdd :: Integral a => a -> a
addOneIfOdd n = case odd n of 
    True -> f n 
    False -> n 
    where f n = n + 1

addOneIfOdd' :: Integral a => a -> a
addOneIfOdd' n = case odd n of 
    True -> (\x -> x + 1) n
    False -> n

addFive x y = (if x > y then y else x) + 5

--addFive' :: (Ord a, Num a) => a -> a    
--addFive' x = \y -> if x > y then y + 5 else x + 5
--addFive' :: (Ord t, Num (t -> t)) => t -> t -> t
--addFive' x = ((\y -> if x > y then y else x)) + 5
addFive' = \x -> \y -> if x > y then y + 5 else x + 5
--addFive'' :: (Integer -> Integer) -> Integer -> Integer
--addFive'' = (\x -> \y -> if x > y then y else x) (+ 5)

addFive'' = \x y -> ( if x > y then y else x) + 5

mFlip f x y = f y x