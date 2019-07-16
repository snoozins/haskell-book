module Vehicles where

data Price = Price Integer 
    deriving (Eq, Show)
data Size = Size Integer
    deriving (Eq, Show)    
data Manufacturer = 
    Mini | Mazda | Tata 
    deriving (Eq, Show)
data Airline = 
    PapuAir | CatapultsR'Us | TakeYourChancesUnited 
    deriving (Eq, Show)    

data Vehicle = 
    Car Manufacturer Price
    | Plane Airline Size
    deriving (Eq, Show)

myCar = Car Mini (Price 14000)
urCar = Car Mazda (Price 20000)
clownCar = Car Tata (Price 7000)
doge = Plane PapuAir (Size 766)
        
-- 1. What is the type of myCar? myCar :: Vehicle 

-- 2. 
isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _ = False

isPlane :: Vehicle -> Bool
isPlane (Plane _ _) = True
isPlane _ = False

areCars :: [Vehicle] -> [Bool]
areCars = map isCar

-- 3. 

getManu :: Vehicle -> Manufacturer
getManu (Car manufacturer _ ) = manufacturer

-- 4. You get an exception 

{-
11.8 Exercises: Cardinality 
1. PugType -> 1
2. Airline -> 3
3. Int16 -> 65536
4. Int -> 9223372036854775807
   Integer is unbounded, so could have any number in it
5. It's x where x is 2^x. eg 2^8 == 256

11.8 Exercises: For Example 
1. :t MakeExample -> MakeExample :: Example

3. :t MakeExample :: Int -> Example
-}
-- data Example = MakeExample  deriving Show
data NewExample  = MakeExample Int deriving Show