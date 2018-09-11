module WriteFunctions where

i :: a -> a
i x = x

c :: a -> b -> a
c x y = x

c'' :: b -> a -> b
c'' x y = x

c' :: a -> b -> b
c' x y = y

r :: [a] -> [a]
r x = x

co :: (b -> c) -> (a -> b) -> a -> c
--co = undefined
co bToc aTob a = 
    bToc (aTob a)

a :: (a -> c) -> a -> a
a _ a = a

a' :: (a -> b) -> a -> b
--a' = undefined
a' aTob a = 
    aTob a
