module Parametricity where

f1 :: a -> a
f1 a = a 

f2 :: a -> a -> a
--f2 x y = x
f2 x y = y

f3 :: a -> b -> b
f3 x y = y