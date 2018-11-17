module StandardFunctions where

myAnd :: [Bool] -> Bool 
myAnd [] = True
myAnd (x : xs) = 
    if x == False
    then False 
    else myAnd xs

myAnd' :: [Bool] -> Bool
myAnd' (x : xs) = x && myAnd' xs

myOr :: [Bool] -> Bool 
myOr [] = False
myOr (x : xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny fs (x : xs) = fs x || myAny fs xs

myElem :: Eq a => a -> [a] -> Bool 
myElem _ [] = False
myElem a (x : xs) = a == x || myElem a xs

myElem' :: Eq a => a -> [a] -> Bool
myElem' _ [] = False
myElem' a xs = myAny (==a) xs

