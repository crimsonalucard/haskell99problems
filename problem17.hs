#!/usr/bin/env

split :: [a] -> Int -> ([a],[a])
split xs amount = (take amount xs, drop amount xs)
