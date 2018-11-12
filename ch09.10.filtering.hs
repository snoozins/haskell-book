module FilteringExercises where

multipleOfThree :: (Eq a, Num a, Integral a) => [a] -> [a]
multipleOfThree xs = filter (\x -> (rem x 3) == 0) xs

numberOfMultiplesOfThree ::  (Eq a, Num a, Integral a) => [a] -> Int
numberOfMultiplesOfThree xs = length . multipleOfThree $ xs

article = ["the", "a", "an"]
myFilter :: String -> [String]
myFilter xs = filter (\x -> not (elem x article)) (words xs)