module Dogges where 

data PugType = PugData
data HuskyType a = HuskyData
data DogueDeBordeaux doge = 
    DogueDeBordeaux doge


myPug = PugData :: PugType 

myHusky :: HuskyType a
myHusky = HuskyData

myOtherHusky :: Num a => HuskyType a
myOtherHusky = HuskyData

myOtherOtherHusky :: HuskyType [[[[Int]]]] 
myOtherOtherHusky = HuskyData

myDoge :: DogueDeBordeaux Int
myDoge = DogueDeBordeaux 10

data Doggies a = 
    Husky a
    | Mastiff a deriving (Eq, Show)

{-
1. Is Doggies a type constructor or a data constructor?
T   ype constructor
2. What is the kind of Doggies?
    * -> * 
3. What is the kind of Doggies String?
    Doggies String :: * 
4. What is the type of Husky 10?
    Husky 10 :: Num a => Doggies a
5. What is the type of Husky (10 :: Integer)? 
    Husky (10 :: Integer) :: Doggies Integer
6. What is the type of Mastiff "Scooby Doo"?
    Mastiff "Scooby Doo" :: Doggies [char]
7. Is DogueDeBordeaux a type constructor or a data constructor? 
    Both 
8. What is the type of DogueDeBordeaux?
    DogueDeBordeaux :: doge -> DogueDeBordeaux doge
9. What is the type of DogueDeBordeaux "doggie!"
    DogueDeBordeaux "doggies" :: DogueDeBordeaux [char]
-}