#!/usr/bin/env runghc

import Data.List (group)

data SinglesAndMultiples a = Single a | Multiple Int a
  deriving (Show)

encodeDirect :: (Eq a) => [a] -> [SinglesAndMultiples a]
encodeDirect = foldr combine [] where 
                        combine :: (Eq a) => a -> [SinglesAndMultiples a] -> [SinglesAndMultiples a]
                        combine x [] = [Single x]
                        combine x ((Single y):ys)
                          | x == y = (Multiple 2 x):ys
                          | otherwise = (Single x):(Single y):ys
                        combine x ((Multiple b y):ys)
                          | x == y = (Multiple (b+1) y):ys
                          | otherwise = (Single x):(Multiple b y):ys
