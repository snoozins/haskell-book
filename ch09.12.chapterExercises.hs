module ChapterExercises where

import Data.Char

filterUpper :: String -> String
filterUpper [] = []
filterUpper xs = filter isUpper xs 

two = filterUpper "HbEfLrLxO,"

capitalise :: String -> String
capitalise [] = []
capitalise xs = (toUpper (head xs)) : tail xs

yell :: String -> String
yell [] = []
yell xs = (toUpper (head xs)) : (yell (tail xs))

firstCapital :: String -> Char
firstCapital xs = toUpper . head $ xs