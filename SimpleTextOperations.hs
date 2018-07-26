module SimpleTextOperations where 

addExclamation :: String -> String
addExclamation x = x ++ "!"

returnForthCharacter :: String -> Char
returnForthCharacter x = x !! 4

returnForthCharacterAsString :: String -> String
returnForthCharacterAsString x = [x !! 4]

dropNine :: String -> String
dropNine x = drop 9 x

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterAtIndex :: Int -> Char
letterAtIndex x = "Curry is awesome!" !! x

-- "Curry is awesome" -> "awesome is Curry"
rvrs :: String -> String
rvrs x = drop 9 x ++ take 4 (drop 5 x) ++ take 5 x