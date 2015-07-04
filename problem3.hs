#!/usr/bin/env runghc

elementAt :: [a] -> Int -> a
elementAt (x:xs) 1 = x
elementAt (x:xs) y = elementAt xs (y-1)

