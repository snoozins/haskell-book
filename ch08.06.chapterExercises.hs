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
-}