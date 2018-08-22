module Absolute where

myAbs :: Integer -> Integer
myAbs x = 
    if x < 0
        then x * (-1)
    else 
        x

myAbs2 :: Integer -> Integer
myAbs2 x = 
    if x < 0 then negate x else x
