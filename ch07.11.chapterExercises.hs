module ChapterExercises where 

{-
1. A Polymorphic function 
d). may resolve to values of different types, depending on in- puts

2. Two functions named f and g have types Char -> String and String -> [String] respectively. 
The composed function g . f has the type
 b). char -> [String]

3. A function f has the type Ord a => a -> a -> Bool and we apply
it to one numeric value. What is the type now?
d). (Ord a, Num a) => a -> Bool

4. A function with the type (a -> b) -> c
b) is a higher-order function

5. Given the following definition of f, what is the type of f True?
f :: a -> a
f x = x
a) f True :: Bool
-}

tensDigit :: Integral a => a -> a 
tensDigit x = d
    where   xLast = x `div` 10
            d = xLast `mod` 10

tensDigit' :: Integral a => a -> a
tensDigit' x = fst (divMod x 10)

hunsD :: Integral a => a -> a
hunsD' :: Integral a => a -> a
hunsD x = fst (divMod x 100)
hunsD' x = undefined
