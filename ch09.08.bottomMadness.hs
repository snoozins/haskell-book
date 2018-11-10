module BottomMadness where

one = [x^y | x <- [1..5], y <- [2, undefined]]
-- won't evaluate

two = take 1 $ [x^y | x <- [1..5], y <- [2, undefined]]
-- two = [1]

three = sum [1, undefined, 3]
-- won't evaluate

four = length [1, 2, undefined]
-- four = 3

five = length $ [1, 2, 3] ++ undefined
-- won't evaluate

six = take 1 $ filter even [1, 2, 3, undefined]
-- six = [2]

seven = take 1 $ filter even [1, 3, undefined]
-- won't evaluate

eight = take 1 $ filter odd [1, 3, undefined]
-- eight = [1]

nine = take 2 $ filter odd [1, 3, undefined]
-- nine = [1,3]

ten = take 3 $ filter odd [1, 3, undefined]
-- won't evaluate