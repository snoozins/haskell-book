module Oragami where

u = undefined

v = foldr (+) 0 [1,2,3,4,u]
-- v won't evaluate

xs = take 4 [1,2,3,4,u]
w = foldr (+) 0 xs
-- w will evaluate

xs1 = [1,2,3,4] ++ u
x = foldr (+) 0 xs1
-- x won't evaluate

xs2 = take 4 ([1,2,3,4] ++ u)
y = foldr (+) 0 xs2
-- y will evaluate