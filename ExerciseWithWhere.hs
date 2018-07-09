module ExerciseWithWhere where

first = x
 where x = 5

second = x * x
 where x = 5

third = x * y 
 where  x = 5
        y = 6

forth = x + 3
 where  x = 3
        y = 1000

fifth = x * 3 + y
 where  x = 3
        y = 1000

sixth = x * 5
 where  y = 10
        x = 10 * 5 + y

seventh = z / x+y
 where  x = 7
        y = negate x
        z = y * 10