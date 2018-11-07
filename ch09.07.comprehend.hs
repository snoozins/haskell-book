module Comprehend where

mySqr = [x^2 | x <- [1..10]]
-- mySqr = [1,4,9,16,25,36,49,64,81,100]

a = [x | x <- mySqr, rem x 2 == 0]
-- a = [4, 16, 36, 84, 100]

b = [(x, y) | x <- mySqr,
              y <- mySqr,
              x < 50, y < 50]
-- b = [(1, 1), (1, 4), (1, 9), (1, 16), (1, 25), (1, 36), (1, 49),
--      ( 4, 1), (4, 4)..........]

c = take 5 [ (x, y) | x <- mySqr,
                      y <- mySqr,
                      x < 50, y > 50 ]
-- c = [(1, 64), (1, 81), (1, 100), (4, 64), (4, 81)]

d = [x | x <- "Three Letter Acronym", elem x ['A'..'Z']]

acro :: String -> String
acro xs = [x | x <- xs, elem x ['A'..'Z']]