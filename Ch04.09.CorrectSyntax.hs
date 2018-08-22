module CorrectSyntax where

stringPlusOne :: String -> Int
stringPlusOne x = 
    length x + 1

x = (+)
f xs = 
    x w 1
    where w = length xs

f3 (a,b) = a