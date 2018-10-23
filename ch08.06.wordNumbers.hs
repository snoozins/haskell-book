module WordNumbers where 

import Data.List (intersperse)

digitToWord :: Int -> String 
digitToWord 0 = "zero"
digitToWord 1 = "one"
digitToWord 2 = "two"
digitToWord 3 = "three"
digitToWord 4 = "four"
digitToWord 5 = "five" 
digitToWord 6 = "six" 
digitToWord 7 = "seven"
digitToWord 8 = "eight"
digitToWord 9 = "nine"
digitToWord _ = "done fucked up"

digits :: Int -> [Int]
digits n = go n []
    where go input output 
            | input < 1 = output
            | otherwise = go (div input 10) ([mod input 10] ++ output)

wordNumber :: Int -> String 
wordNumber n = concat (intersperse "-" (map digitToWord . digits $ n))