#!/usr/bin/env runghc

repli :: [a] -> Int -> [a]
repli xs amount = concatMap (replicate amount) xs
