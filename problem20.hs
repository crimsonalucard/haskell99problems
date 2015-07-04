#!/usr/bin/env runghc

removeAt :: Int -> [a] -> (a,[a])
removeAt 1 (x:xs) = (x,xs)
removeAt n (x:xs) = (value, x:remaining)
  where (value, remaining) =  removeAt (n - 1) xs
