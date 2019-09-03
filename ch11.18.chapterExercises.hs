module ChapterExercises where

import Data.Char
-- import Data.List
-- import Data.List.Split

data Weekday = 
      Monday
    | Tuesday
    | Wednesday
    | Thursday
    | Friday
    
-- 1. We can say Weekday is a type with five data constructors 

f Friday = "Miller Time"

-- 2. Type of f is f :: Weekday -> String

-- 3. Types defined with the data keyword must begin with a capital letter

g xs = xs !! (length xs -1)

-- 4. g returns the final element of xs

isSubseqOf :: (Eq a) => [a] -> [a] -> Bool 
isSubseqOf [] _ = True
isSubseqOf _ [] = False
isSubseqOf (x:xs) (y:ys) = 
    case x == y of 
        True -> isSubseqOf xs ys
        False -> isSubseqOf (x:xs) ys
    
testisSubseqOf :: IO ()
testisSubseqOf = do 
    putStrLn ( testCondition (isSubseqOf "blah" "blahwoot") True ) 
    putStrLn ( testCondition (isSubseqOf "blah" "wootblah") True ) 
    putStrLn ( testCondition (isSubseqOf "blah" "wboloath") True ) 
    putStrLn ( testCondition (isSubseqOf "blah" "wootbla") False ) 
    putStrLn ( testCondition (isSubseqOf "blah" "halbwoot") False ) 
    putStrLn ( testCondition (isSubseqOf "blah" "blawhoot") True ) 


testCondition :: Bool -> Bool -> [Char]
testCondition a b = 
    if a == b then "Passed"
    else "Failed"

capitalizeWords :: String -> [(String, String)]
capitalizeWords input = map createTuplesAndCapitalize (words input)
    where 
        createTuplesAndCapitalize wordIn = (wordIn, capitalizeFirstLetter wordIn)
        capitalizeFirstLetter (x:xs) = ((toUpper x):xs)

capitalizeWordsResult = capitalizeWords "hello world"
capitalizeWordsExpected = [("hello", "Hello"), ("world", "World")]

testCapitalizeWords :: IO () 
testCapitalizeWords = do 
    putStrLn ( testCondition (capitalizeWordsResult == capitalizeWordsExpected) True)

capitalizeWord :: String -> String     
capitalizeWord [] = []
capitalizeWord (x:xs) = ((toUpper x) : xs )

capitalizeParagraph :: String -> String
-- capitalizeParagraph paragraph = concat( intersperse " " (map capitalizeWord (words paragraph)))
-- capitalizeParagraph paragraph = splitOn "." paragraph
capitalizeParagraph = undefined

p = "blah. woot ha."

testCapitalizeParagraph :: IO ()
testCapitalizeParagraph = do 
    putStrLn( testCondition ((capitalizeParagraph "blah. woot ha.") == "Blah. Woot ha.") True)