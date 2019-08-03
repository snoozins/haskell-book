module Farmers where

newtype Name = Name String deriving Show
newtype Acres = Acres Int deriving (Eq, Ord, Show)
data FarmerType = 
    DairyFarmer
    | WheatFarmer
    | SoybeanFarmer
    deriving Show

data Farmer = 
    Farmer Name Acres FarmerType
    deriving Show

isDairyFarmer :: Farmer -> Bool
isDairyFarmer (Farmer _ _ DairyFarmer) = True
isDairyFarmer _ = False

data FarmerRec =
    FarmerRec { name :: Name
    , acres :: Acres
    , farmerType :: FarmerType }
    deriving Show

isDairyFarmerRec :: FarmerRec -> Bool
isDairyFarmerRec farmer =
    case farmerType farmer of
        DairyFarmer -> True
        _ -> False

isBigFarmFarmerRec :: FarmerRec -> Bool 
isBigFarmFarmerRec farmer = 
    acres farmer > Acres 40

smallTimeFarmer = FarmerRec { name = Name "smalltimer", acres = Acres 10, farmerType = SoybeanFarmer} 
bigTimeFarmer = FarmerRec { name = Name "bigtimer", acres = Acres 1000, farmerType = SoybeanFarmer}    