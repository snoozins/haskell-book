module UnderstandingFolds where

one = foldr (*) 1 [1..5] == foldl (*) 1 [1..5]

two = foldl  (flip (*)) 1 [1..3]
{- 
f = flip *
(((1 `f` 1) `f` 2) `f` 3)
((1 `f` 2) `f` 3)
2 `f` 3
6
-}

{-
three 
One difference between foldr and foldl is: 
c). foldr but not foldl associates to the right 

both foldr and foldl traverse the spine the same way
-}