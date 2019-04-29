module Scans where
{-
scanr :: (a -> b -> b) -> b -> [a] -> [b]
scanr (+) 0 [1..3]
[1 + (2 + (3 + 0)), 2 + (3 + 0), 3 + 0, 0]
[6, 5, 3, 0]

foldr :: (a -> b -> b) -> b -> [a] -> b
foldr (+) 0 [1..3]
1 + (2 + (3 + 0))
6

scanl (+) 0 [1..3]
[0, 0 + 1, 0 + 1 + 2, 0 + 1 + 2 + 3]
[0, 1, 3, 6]

foldl (+) 0 [1..3]
((0 + 1) + 2) + 3
-}

fibs = 1 : scanl (+) 1 fibs
fibsN x = fibs !! x 
fibs20 = take 20 fibs
fibsUnder100 = takeWhile (<100) fibs

{-
[1, 1 * (1+1), 1 * 2 * (2+1), 1 * 2 * 3 * (3+1)] 
[1, 2, 6, 24]
-}

factIt :: Int -> Int -> Int 
factIt x y = x * (y+1)
facts = scanl (*) 1 [1..]

factorialN n = facts !! n
take2Facts = take 2 facts
take3Facts = take 3 facts
take5Facts = take 5 facts