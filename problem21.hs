#!/usr/bin/env runghc

insertAt :: a -> [a] -> Int -> [a]
insertAt x (y:ys) 1 = x:y:ys
insertAt x (y:ys) n = y:(insertAt x ys (n-1))
