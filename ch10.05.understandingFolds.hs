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

four
Catamophisms means to reduce structure
-}


fiveA = foldr (++) "" ["woot", "WOOT", "woot"]
fiveB = foldr max [] ["fear", "is", "the", "little", "death"]
fiveC = foldr (&&) True [False, True]
fiveD = foldr (||) True [False, True] == True
fiveD' = foldr (||) False [False, False] == False
fiveD'' = foldr (||) False [False, True] == True
fiveE = foldr ((++) . show) "" [1..5]
fiveE' = foldl (flip ((++) . show)) "" [1..5]
fiveF = foldl const 'a' [1..5]
fiveF' = foldr (flip const) 'a' [1..5]
fiveG = foldl const 0 "tacos"
fiveH = foldl const 0 "burritos"
fiveI = foldr (flip const) 'z' [1..5]