module Exercise where

-- Test Set Up
myTestString = "sheryl wants fun"
firstSen = "Tyger Tyger, burning bright\n" 
secondSen = "In the forests of the night\n" 
thirdSen = "What immortal hand or eye\n" 
fourthSen = "Could frame thy fearful\
    \ symmetry?"
sentences = firstSen ++ secondSen 
    ++ thirdSen ++ fourthSen

poemShouldEqual = 
    [ "Tyger Tyger, burning bright"
    , "In the forests of the night"
    , "What immortal hand or eye"
    , "Could frame thy fearful symmetry?"
    ]
testStringShouldEqual = 
    [ "sheryl"
    , "wants"
    , "fun"
    ]

myWords :: String -> [String]
myWords x = go x []
    where go string list 
            | length string < 1 = list
            | otherwise = (takeWhile (/= ' ') string) 
                : go (drop 1 ( dropWhile (/= ' ') string)) list

myLines :: String -> [String]
myLines x = go x []
    where go string list 
            | length string < 1 = list
            | take 1 string == "\n" = go spliter drop 1 string) list
            | otherwise = (takeWhile (/= '\n') string) 
                : go spliter ( dropWhile (/= '\n') string) list

mySplit :: Char -> String -> [String]
mySplit x y = go x y []
    where go spliter string list 
            | length string < 1 = list
            | take 1 string == spliter : [] = go (drop 1 string) list
            | otherwise = (takeWhile (/= spliter) string) 
                : go ( dropWhile (/= spliter) string) list

main :: IO ()
main = do
    putStrLn ("Are they equal? " 
        ++ show (myLines sentences == poemShouldEqual))
    putStrLn (" Are they equal? "
        ++ show (myWords myTestString == testStringShouldEqual))