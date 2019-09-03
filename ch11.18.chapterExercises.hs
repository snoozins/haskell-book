module ChapterExcercises where

data Weekday =
    Monday
    | Tuesday
    | Wednesday
    | Thursday
    | Friday


-- 1. a). Weekday is a type with five data constructors

f Friday = "Miller Time"      
-- 2. a). f :: Weekday -> String

-- 3. Types defined with the data keyword 
    -- b). must begin with a capital letter

g xs = xs !! (length xs - 1)
-- 4. c). returns the final element of xs

isSubseqOf :: (Eq a) => [a] -> [a] -> Bool 
isSubseqOf _ _ = False


restult1 = isSubseqOf "blah" "blahwoot"

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