module Exercises where
import Data.Bool

one = take 1 $ map (+1) [undefined, 2, 3]
-- one = ⊥

two = take 1 $ map (+1) [1, undefined, 3]
-- two = [2]

three = take 2 $ map (+1) [1, undefined, 3]
-- three = ⊥

itIsMystery :: String -> [Bool]
itIsMystery xs = 
    map (\x -> elem x "aeiou") xs
-- It is a vowel checker
-- "Hello" -> [False, True, False, False, True]

fiveA = map (^2) [1..10]
-- fiveA = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

fiveB = map minimum [[1..10], [10..20], [20..30]]
-- fiveB = [1, 10, 20]

fiveC = map sum [[1..5], [1..5], [1..5]]
-- fiveC = [15, 15, 15]

six = map (\x -> bool x (-x) (x==3)) [1..10]
-- six = [1,2,-3,4,5,6,7,8,9,10]