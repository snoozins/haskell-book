module ChapterExercise where

{-
1. Whatisthetypeof[[True, False], [True, True], [False, True]]?
d). [[Bool]]

2. Which of the following has the same type as [[True, False], [True, True], [False, True]]?
a) [(True, False), (True, True), (False, True)]

3. For the following function
func :: [a] -> [a] -> [a] 
func x y = x ++ y
which of the following is true?
d) all of the above
- x and y must be of the same type 
-  x and y must both be lists
- if x is a String then y must be a String

4. For the func code above, which is a valid application of func to both of its arguments?
b) func "Hello" "World"
-}


cattyConny :: String -> String -> String 
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

apedCatty :: String -> String
apedCatty = cattyConny "woops"

frappe :: String -> String 
frappe = flippy "haha"

{-
appedCatty "wooohoo!" = "woops mrow wooohooo!"
frappe "1" = "1 mrow haha"
frappe (apedCatty "2") = frappe "woops mrow 2"
    = woops mrow 2 mrow haha
apedCatty (frappe "blue") = woops mrow blue mrow haha
cattyConny  (frappe "pink")
            (cattyConny "green" (appedCatty "blue"))
    = cattyConny "pink mrow haha"
                 "green mrow woops mrow blue"
    = pink mrow haha mrow green mrow woops mrow blue
cattyConny (flippy "Pugs" "are") "awesome"
    = are mrow Pugs mrow awesome

dividedBy 15 2
= 15 - 2 13 1
     - 2 11 2
     - 2 9 3
     - 2 7 4
     - 2 5 5
     - 2 3 6
     - 2 1 7
 = (7, 1)
-}

sumAll :: (Eq a, Num a) => a -> a
sumAll 0 = 0 
sumAll x = sumAll (x-1) + x

multiplyTwoNumbers :: (Integral a) => a -> a -> a
multiplyTwoNumbers 0 _ = 0
multiplyTwoNumbers x y = (multiplyTwoNumbers (x-1) y) + y

dividedBy :: Integral a => a -> a -> (a, a) 
dividedBy num denom = go num denom 0
    where go n d count
            | n < d = (count, n)
            | otherwise =
                go (n - d) d (count + 1)

dividedBy2 :: Integral a => a -> a -> DividedResult
dividedBy2 num denom = go num denom 0 
    where go n d count
            | d == 0 = DividedByZero
            | n < d =  Result count
            | otherwise =
                go (n - d) d (count + 1)

data DividedResult =
      Result Integer
    | DividedByZero
    deriving Show

mc91 :: Integral a => a -> a
mc91 x = go x 
    where go x
            | x <= 100 = 91
            | otherwise = x - 10