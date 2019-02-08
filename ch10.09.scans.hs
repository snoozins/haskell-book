module Scans where
{-
scanr (+) 0 [1..3]
[1 + (2 + (3 + 0)), 2 + (3 + 0), 3 + 0, 0]
[6, 5, 3, 0]

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

facts = 1 : scanl (*) 1 facts
