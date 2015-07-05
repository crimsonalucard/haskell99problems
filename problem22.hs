#!/usr/bin/env runghc

range :: Int -> Int -> [Int]
--range start end = [start..end]
--range start end = [x | x <- [start..end]]
range start end
  | start == end = [end]
  | otherwise    = start:(range (start + 1) end)
