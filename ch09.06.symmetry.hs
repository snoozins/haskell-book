module Symmetry where

myTestString = "sheryl wants fun"

myWords :: String -> [String]
myWords x = go x []

go :: String -> [String] -> [String]
go string list 
    | length string < 1 = list
    | otherwise = (takeWord string) : go (dropWord string) list

takeWord :: String -> String
takeWord input = takeWhile (/= ' ') input

dropWord :: String -> String
dropWord input = conditionalDropLeadingSpace ( dropWhile (/= ' ') input)
    
conditionalDropLeadingSpace :: String -> String
conditionalDropLeadingSpace input
    | (take 1 input) == " " = tail input
    | otherwise = input