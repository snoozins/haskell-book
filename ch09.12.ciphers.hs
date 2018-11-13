module Cipher where

import Data.Char

--right shift of 3
--eg. hello -> khoor
--eg. zebra -> cheud

base = ord 'a'
peak = ord 'z'
range = peak - base + 1

shiftDown x = x - base
shiftUp x = x + base

loopShift :: (Int -> Int) -> Int -> Int
loopShift f x = mod (f x) range

shift :: (Int -> Int) -> String -> String
shift fs xs = map (\x -> chr . shiftUp $ 
    (loopShift 
        (\z -> fs (shiftDown z))
        (ord x))
    ) xs

caesar :: String -> Int -> String 
caesar [] _ = []
caesar xs y = shift 
                (+ y) 
                xs
    

unCeaser :: String -> Int -> String 
unCeaser [] _ = []
unCeaser xs y = shift 
                (subtract y)
                xs

validate = (caesar "hello" 3 ) == "khoor"
    && (unCeaser "khoor" 3) == "hello"
    && (caesar "zebra" 3) == "cheud"
    && (unCeaser "cheud" 3) == "zebra"
    && (caesar "hello" 4 ) == "lipps"
    && (unCeaser "lipps" 4) == "hello"
    && (caesar "zebra" 4) == "difve"
    && (unCeaser "difve" 4) == "zebra"
