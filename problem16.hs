#!/usr/bin/env runghc

dropEvery :: [a] -> Int -> [a]
dropEvery list n = map snd filteredIndexedList
  where filteredIndexedList = filter (\x -> (fst x) `mod` n /= 0) indexedList
        indexedList = zip [1..] list
