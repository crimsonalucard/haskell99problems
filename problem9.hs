#!/usr/bin/runghc

pack :: (Eq a) => [a] -> [[a]]
pack = foldr groupFunc []
      where groupFunc :: (Eq a) => a -> [[a]] -> [[a]]
            groupFunc x [] = [[x]]
            groupFunc element (x:xs) 
              | head x == element = (element:x):xs
              | otherwise         = [element]:x:xs

