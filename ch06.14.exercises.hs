module Exercises where
{-
1. c
2. c
3. a
4. c
5. b
-}
{-
x :: Int -> Int
x blah = blah + 20

printIt :: IO () 
printIt = putStrLn (show x)
-}

{-
data Person = Person Bool

printPerson :: Person -> IO () 
printPerson person = putStrLn (show person)

--code doesn't typecheck because Person doesn't implement Show
-}

{-
data Mood = Blah
    | Woot deriving Show

settleDown x = if x == Woot
    then Blah
    else x

--code doesn't type check because of use of equality without an equality implementation 
-}

data Mood = Blah
    | Woot deriving Show

instance Eq Mood where 
    (==) Blah Blah = True
    (==) Woot Woot = True
    (==) _ _ = False    

settleDown :: Mood -> Mood
settleDown x = if x == Woot
    then Blah
    else x

{-


-}