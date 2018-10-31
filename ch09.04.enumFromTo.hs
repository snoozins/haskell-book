module EnumFromTo where

eftBool :: Bool -> Bool -> [Bool]
eftBool = undefined

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd = undefined

eftInt :: Int -> Int -> [Int]
eftInt x y = eft3 x y []

eftChar :: Char -> Char -> [Char]
eftChar x y = eft3 x y []
            
eft2 start end list
    | start > end = reverse list
    | otherwise = eft2 (succ start) end (start : list)

eft3 start end list 
    | start > end = list
    | otherwise = start : eft3 (succ start) end list 

{-
Previous workings
eftBool :: Bool -> Bool -> [Bool]
eftBool x y = inc [x] y
    where inc list end 
            | lastItem list == end = list
            | otherwise = list ++ [succ . lastItem $ list]
            where lastItem list = head . reverse $ list

eftInt :: Int -> Int -> [Int]
eftInt x y = eft [x] y
    where eft list end 
            | lastItem list == end = list
            | otherwise = eft (list ++ [succ . lastItem $ list]) end
            where lastItem list = head . reverse $ list

eftChar :: Char -> Char -> [Char]
eftChar x y = eft x y []
    where eft start end list
            | start > end = reverse list
            | otherwise = eft (succ start) end (start : list)
-}