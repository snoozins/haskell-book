module ZippingExercises where

myZip :: [a] -> [b] -> [(a, b)]
myZip _ [] = []
myZip [] _ = []
myZip xs ys = go xs ys []
    where go xs ys out
            | length xs == 0 = reverse out
            | length ys == 0 = reverse out
            | otherwise = go (tail xs) (tail ys) ((head xs, head ys) : out)

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith _ _ [] = []
myZipWith _ [] _ = []
myZipWith f xs ys = go xs ys []
    where go xs ys out
            | length xs == 0 = reverse out
            | length ys == 0 = reverse out
            | otherwise = go (tail xs) (tail ys) ((f (head xs) (head ys)) : out)

myZip' :: [a] -> [b] -> [(a, b)]
myZip' xs ys = myZipWith (\x y -> (x, y)) xs ys