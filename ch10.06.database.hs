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
filterDbNumber = undefined