module Fibonacci where

fibonacci :: Integral a => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x-1) + fibonacci (x-2)