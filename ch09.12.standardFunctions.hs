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

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x : xs) = (myReverse xs) ++ x : []

squish :: [[a]] -> [a]
squish [] = []
squish (x : xs) =  x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x : xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain [] = []
squishAgain (x : xs) = x ++ squishMap id xs


myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f xs = go f xs (head xs)
    where go f xs max
            | length xs == 0 = max 
            | f (head xs) max == GT = go f (tail xs) (head xs)
            | otherwise = go f (tail xs) max

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f (x : xs) = go x xs x
    where go a (x : xs) max
            | length xs == 0 = getSmallest x max
            | otherwise = go x xs (getSmallest a max)
          getSmallest a b
            | f a b == LT = a
            | otherwise = b 


myMaximum :: (Ord a) => [a] -> a
myMaximum xs = myMaximumBy compare xs

myMinimum :: (Ord a) => [a] -> a
myMinimum xs = myMinimumBy compare xs