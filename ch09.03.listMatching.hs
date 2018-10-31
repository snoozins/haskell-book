module ListMatching where 

myList = [1,2,3]
mySingleEntryList = [1]
myEmptyList = []

myHead :: [a] -> a
myHead (x : _) = x

myTail :: [a] -> [a]
myTail (_ : xs) = xs

mySafeTail :: [a] -> [a]
mySafeTail []       = []
mySafeTail (_ : xs) = xs

myMaybeTail :: [a] -> Maybe [a]
myMaybeTail []      = Nothing
myMaybeTail (_: []) = Nothing
myMaybeTail (_: xs) = Just xs

myMaybeHead :: [a] -> Maybe a
myMaybeHead [] = Nothing
myMaybeHead (x : _) = Just x