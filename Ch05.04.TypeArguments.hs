module TypeArguments where

f1 :: a -> a -> a -> a
f1 = undefined
x1 :: Char
x1 = undefined

f2 :: a -> b -> c -> b
f2 = undefined

f3 :: (Num a, Num b) => a -> b -> b
f3 = undefined

jackal :: (Ord a, Eq b) => a -> b -> a
jackal = undefined

kessel :: (Ord a, Num b) => a -> b -> a
kessel = undefined