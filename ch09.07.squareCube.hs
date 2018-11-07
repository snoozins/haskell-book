module SquareCube where

mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

mySqrCube = [(x,y) | x <- mySqr, 
                     y <- myCube]

mySqrCubeBelow50 = [(x,y) | x <- mySqr, 
                     y <- myCube,
                     x < 50,
                     y < 50]

takeSomeMySqCubeBelow50 x = take x mySqrCubeBelow50
lengthOfmySqrCubeBelow50 = length mySqrCubeBelow50