#!/usr/bin/env runghc

rotate :: [a] -> Int -> [a]
rotate xs amount 
  | amount >= 0 = drop amount xs ++ take amount xs
  | otherwise = drop (length remaining) xs ++ remaining
    where remaining = take (length xs + amount) xs
