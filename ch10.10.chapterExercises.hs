module ChapterExercises where 

stops = "pbtdkg"
vowels = "aeiou"

oneA = [(x, y, z) | x <- stops, y <- vowels, z <- stops]

oneB = [(x, y, z) | x <- stops, y <- vowels, z <- stops, x == 'p']
oneBb = filter (\(x, _, _) -> x == 'p') oneA

someNouns = ["France", "Actor", "Sermon"]
someVerbs = ["Run", "Follow", "Swim"]
-- words = someNouns ++ someVerbs

oneC = [(x, y, z) | x <- someNouns, y <- someVerbs, z <- someNouns, x/=z]
oneC2 nouns verbs = [(x, y, z) | x <- nouns, y <- verbs, z <- nouns, x /= z]

seekritFunc :: String -> Int
seekritFunc x = div (sum (map length (words x ))) (length (words x))
 -- words will take a string and return an array of strings containing the "words"
 -- words "This is a random string" -> ["This", "is", "a", "random", "string"]
 -- div (sum ([4, 2, 1, 6, 6])) 5
 -- div 19 5
 -- 3
 -- It's summing all the letters in the words and dividing it by the number of words
 -- to give the average letter count per word (rounded down)
 
seekritPreciseFunc :: (Fractional a) =>  String -> a
--  seekritPreciseFunc = undefined
seekritPreciseFunc x = (/) (fromIntegral (sum (map length (words x )))) (fromIntegral (length (words x)))