module RecursivePatterns where

sum' :: [Integer] -> Integer
sum' [] = 0
sum' (x:xs) = x + sum xs

length' :: [a] -> Integer
length' [] = 0
length' (_:xs) = 1 + length' xs

product' :: [Integer] -> Integer
product' [] = 1
product' (x:xs) = x * product xs

concat' :: [[a]] -> [a]
concat' [] = []
concat' (x:xs) = x ++ concat' xs