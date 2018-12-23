module Database where

import Data.Time

data DatabaseItem = DbString String 
                  | DbNumber Integer
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase = 
 [DbDate (UTCTime
            (fromGregorian 1911 5 1 )
      (secondsToDiffTime 34123))
    , DbNumber 9001
    , DbString "Hello World"
    , DbDate (UTCTime 
                (fromGregorian 1921 5 1)
                (secondsToDiffTime 34123))
 ]

isDbDate :: DatabaseItem -> Bool
isDbDate (DbDate a) = True
isDbDate _ = False

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate xs = foldr onlyDates [] xs

onlyDates :: DatabaseItem -> [UTCTime] -> [UTCTime]
onlyDates (DbDate x) xs = x : xs
onlyDates _ xs = xs

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber xs = foldr filterNumbers [] xs
  where 
    filterNumbers (DbNumber x) xs = x : xs
    filterNumbers _ xs = xs

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent xs = recent (foldr onlyDates [] xs)

recent :: [UTCTime] -> UTCTime
recent (x : xs) = foldr max x xs

sumDb :: [DatabaseItem] -> Integer
sumDb xs = foldr (+) 0 (filterDbNumber xs)

averageDb :: [DatabaseItem] -> Double
averageDb xs = (fromIntegral . sumDb $ xs) / (fromIntegral . length . filterDbNumber $ xs)