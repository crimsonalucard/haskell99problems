#!/usr/bin/env runghc

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:y:zs)
  | x == y = compress (x:zs) 
  | otherwise = x:(compress (y:zs))
