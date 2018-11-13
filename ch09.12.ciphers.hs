module Cipher where

import Data.Char

--right shift of 3
--eg. hello -> khoor
--eg. zebra -> cheud



rightShift3 :: String -> String
rightShift3 [] = []
rightShift3 xs = map (\x -> chr . shift $ x) xs
    where 
        shift x = (mod (((ord x) - base) + 3) diff) + base
        base = ord 'a'
        diff = 26
            
        
caesar :: String -> Int -> String 
caesar [] _ = []
caesar xs y = map (\x -> chr . go $ x) xs
    where 
        go x = (loopShift (ord x)) + base
        loopShift x' = mod (shift x') diff
        shift x' = (reduce x') + y
        reduce x' = x' - base
        base = ord 'a'
        diff = 26