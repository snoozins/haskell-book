{-# LANGUAGE NoMonomorphismRestriction #-}
module DetermineTheType where

example = 1

f1a = (* 9) 6
-- Num a => a

f1b = head [(0, "dodg"),(1,"kitteh")]
-- (Num a) => (a, [Char])

f1c = head [(0 :: Integer, "dodge"),(1,"kitteh")]
-- (Integer, [Char])

f1d = if False then True else False
-- Bool

f1e = length [1,2,3,4,5]
-- Int

f1f = (length [1,2,3,4])> (length "TACOCAT")
-- Bool


f2x = 5
f2y = f2x + 5
f2w = f2y * 10
-- Num a => a

f2 = y * 10
 where 
    y = x + 5
    x = 5
-- Num a => a

f3x = 5
f3y = f3x + 5
f3z f3y = f3y * 10

f3 y = y * 10
 where 
    y = x + 5
    x = 5
-- f3z and f3 are not the same

f4x = 5
f4y = f4x + 5
f4 = 4 / f4y
-- Fractional a => a

f5x = "Julie"
f5y = " <3 "
f5z = "Haskell"
f5 = f5x ++ f5y ++ f5z
-- [Char]

-- Does it compile section 
bigNum = (^) 5 $ 10
-- wahooWrong = bigNum $ 10
wahoo = bigNum ^ 10
wahoo2 = (^) bigNum $ 10

f2x2 = print 
f2y2 = print "woohoo!"
f2z2 = f2x2 "Hello world"