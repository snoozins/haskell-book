module Symmetry where

myTestString = "sheryl wants fun"

myWords :: String -> [String]
myWords x = go x []
    where go string list 
            | length string < 1 = list
            | otherwise = (takeWhile (/= ' ') string) 
                : go (drop 1 ( dropWhile (/= ' ') string)) list