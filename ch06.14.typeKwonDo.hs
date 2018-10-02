module TypeKwonDo where 

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk fnAtoB a b = 
    (fnAtoB a) == b

arith :: Num b
    => (a -> b) 
    -> Integer
    -> a
    -> b

arith fnAtoB i a = 
    fnAtoB a + fromInteger i