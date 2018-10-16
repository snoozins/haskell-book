module Arith2 where

add :: Int -> Int -> Int
add x y = x + y 

addPF :: Int -> Int -> Int
addPF = (+)

addOne :: Int -> Int
addOne = \x -> x + 1

addOnePF :: Int -> Int
addOnePF = (+1)

main :: IO () 
main = do 
    print (0 :: Int) -- Print 0 (which is an Int)
    print (add 1 0) -- Applies 1 and 0 to Add which returnrs 1 as an Int which is printed
    print (addOne 0) -- Applies 0 to addOne which adds 1 and returns 1 as an Int which is printed
    -- print (0 + 1) -> print 1
    print (addOnePF 0) 
    -- print ((+1) 0) -> print 1
    print ((addOne . addOne) 0)
    -- print (addOne (addOne 0)) -> print (addOne 1) -> print 2
    print ((addOnePF . addOne) 0)
    -- print (addOnePF (addOne 0)) -> print ((+1) 1) -> 2 
    print ((addOne . addOnePF) 0)
    -- print (addOne ((+1) 0)) -> print (addOne 1) -> 2
    print ((addOnePF . addOnePF) 0)
    -- print ((+1) ((+1) 0)) -> print ((+1) 1) -> 2
    print (negate (addOne 0))
    -- print (negate 1) -> -1
    print ((negate . addOne) 0)
    -- print (negate (addOne 0)) -> print (negate 1) -> -1
    print ((addOne . addOne . addOne . negate . addOne) 0)
    {-
    print (addOne (addOne (addOne (negate (addOne 0)))))
->  print (addOne (addOne (addOne (negate 1))))
->  print (addOne (addOne (addOne -1)))
->  print (addOne (addOne 0))
->  print (addOne 1)
->  print 2
    -}
    