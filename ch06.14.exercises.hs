module Exercises where
import Data.List

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

type Subject = String
type Verb = String
type Object = String

data Sentence =
    Sentence Subject Verb Object 
    deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"
--Code typechecks

data Rocks =
    Rocks String 
    deriving (Eq, Show)
data Yeah =
    Yeah Bool 
    deriving (Eq, Show)
data Papu =
    Papu Rocks Yeah 
    deriving (Eq, Show)

{-
phew = Papu "chases" True
-- will not typecheck because expects type Rocks 
-- which has a constructor that takes string but is not a synonym for type string
-}

truth = Papu (Rocks "chomskydoz") (Yeah True)
-- will typecheck 

equalityForall :: Papu -> Papu -> Bool 
equalityForall p p' = p == p'
-- will typecheck 

{-
comparePapus :: Papu -> Papu -> Bool 
comparePapus p p' = p > p'
-- will not typecheck becaause papu implements Eq Not Ord
-}

i :: Num a => a
--i :: a
i = 1
-- can't be substituted as a is not constrained to Num

f :: Float
--f :: Num a => a 
f = 1.0
-- can't be substituted as 1.0 is fractional, which is a more constrained type of Num

--f3 :: Float 
f3 :: Fractional a => a
f3 = 1.0
-- can be substituted as 1.0 is fractional

--f4 :: Float
f4 :: RealFrac a => a 
f4 = 1.0
-- can be substituted as 1.0 satifies both real and fractional

--freud :: a -> a 
freud :: Ord a => a -> a
freud x = x
-- can be substituted, but is meaningless restriction on possible values of x

--freud' :: a -> a
freud' :: Int -> Int
freud' x = x
-- can be substituted 

myX = 1 :: Int
sigmund :: Int -> Int
--sigmund :: a -> a -- can not be substituted as a is now an int, due to output being an int
sigmund x = myX

sigmund' :: Int -> Int
--sigmund' :: Num a => a -> a -- you can't pass in any type of Num, as myX forces it to return an int
--sigmund' :: Num a => a -> Int -- is the closest you could get
sigmund' x = myX

--jung :: Ord a => [a] -> a
jung :: [Int] -> Int 
jung xs = head (sort xs) 
-- Can be substituted as Int implements Ord

--young :: [Char] -> Char
young :: Ord a => [a] -> a
young xs = head (sort xs) 
-- can be substituted as young doesn't implement anything specific to Char, 
-- and is still constrained with Ord which lets us use sort

mySort :: [Char] -> [Char] 
mySort = sort

signifier :: [Char] -> Char
--signifier :: Ord a => [a] -> a
signifier xs = head (mySort xs) 
-- Can not be substituted as mySort is expects a list of chars and returns a char
-- and can't accept any type that implements Ord