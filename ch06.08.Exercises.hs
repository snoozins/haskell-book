module WillItWork where

one = max (length [1,2,3]) (length [8,9,10,11,12])
--5

two = compare (3 * 4) (3 * 5)
--LT

--three = compare "Julie" True
-- Won't compile type mismatch

four = (5+3) > (3 + 6)
-- False