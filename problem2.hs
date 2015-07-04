#!/usr/bin/env runghc

myButLast :: [a] -> a
myButLast [x, y] = x
myButLast (x:xs) = myButLast xs
