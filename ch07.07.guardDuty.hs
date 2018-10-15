module GuardDuty where 

avgGrade :: (Fractional a, Ord a) 
    => a -> Char
{- 
avgGrade x 
--    | otherwise = 'F'
    | y>=0.9 ='A' 
    | y>=0.8 ='B' 
    | y>=0.7 ='C' 
    | y >= 0.59 = 'D' 
    | y< 0.59='F' 
    where y = x / 100

-}

avgGrade x 
    | y>=0.8 ='B' 
    | y >= 0.59 = 'D' 
    | y>=0.9 ='A' 
    | y>=0.7 ='C' 
    | y< 0.59='F' 
    where y = x / 100

pal :: Eq a => [a] -> Bool
pal xs 
    | xs == reverse xs = True
    | otherwise        = False

-- Function returns b). True when xs is a palindrome
-- pal can take a list of objects, where the objects implement equality

--numbers :: Integer -> Integer
--numbers :: Integral a => a -> a
--numbers :: Real a => a -> a
--numbers :: Num a => a -> a
numbers :: Real a => a -> Integer
numbers x
    | x < 0     = -1
    | x == 0    = 0
    | x > 0     = 1

-- Function returns c). an indication of whether its argument is a positive or nega- tive number or zero
-- x can be any Real as Real implements Ord which implements Eq which we need

