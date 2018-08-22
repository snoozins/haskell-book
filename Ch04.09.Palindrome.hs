module Palidrome where 

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = 
    let reversed = reverse x
    in 
        if reversed == x 
            then True 
        else 
            False

isPalindrome2 :: (Eq a) => [a] -> Bool
isPalindrome2 x = 
    if reversed == x 
        then True 
    else 
        False        
    where reversed = reverse x