module Intermission where 

one = [1, 2, 3, 4, 5]
-- WHNF

-- 1 : 2 : 3 : 4 : _
-- NF

three = enumFromTo 1 10
-- WHNF

four = length [1, 2, 3, 4, 5]
-- Neither 

five = sum (enumFromTo 1 10)
-- WHNF 

six = ['a'..'m'] ++ ['n'..'z']
-- WHNF 

--seven = (_, 'b')
-- NF