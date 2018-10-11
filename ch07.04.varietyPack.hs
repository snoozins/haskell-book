module VarietyPack where

k :: (a, b) -> a
k (x , y) = x
k1 = k ((4-1), 10)
k2 = k ("three", (1 + 2))
k3 = k (3, True)

{-
a) k is a function 
b) k2 is a string 
c) k1 & k3 will return 3 as a number
-}

f :: (a, b, c)
  -> (d, e, f)
  -> ((a, d), (c, f))
f (i, j, k) (x, y, z) = ((i, x), (k, z))

{- 
Test with 
 f (1, 2, 3) ('a', 'b', 'c') 
 should come out as ((1, 'a'), (3, 'c')
-}