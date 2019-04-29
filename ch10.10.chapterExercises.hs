module ChapterExercises where 

stops = "pbtdkg"
vowels = "aeiou"

oneA = [(x, y, z) | x <- stops, y <- vowels, z <- stops]

oneB = [(x, y, z) | x <- stops, y <- vowels, z <- stops, x == 'p']
oneBb = filter (\(x, _, _) -> x == 'p') oneA

someNouns = ["France", "Actor", "Sermon"]
someVerbs = ["Run", "Follow", "Swim"]

oneC = [(x, y, z) | x <- someNouns, y <- someVerbs, z <- someNouns, x/=z]
oneC2 nouns verbs = [(x, y, z) | x <- nouns, y <- verbs, z <- nouns, x /= z]