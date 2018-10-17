module Arith4 where

roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)

roundTripPF :: (Show a, Read a) => a -> a
roundTripPF a = read . show $ a

--read :: Read a => String -> a 
--show :: Show a => a -> String

roundTripTypeChange :: (Show a, Read b) => a -> b
roundTripTypeChange x = read (show x) -- not working
    

main = do 
    print (roundTrip 4)
    print (id 4)
    print (roundTripPF 4)
    print (roundTripTypeChange 4)