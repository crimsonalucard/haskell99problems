#!/usr/bin/env runghc

myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []
