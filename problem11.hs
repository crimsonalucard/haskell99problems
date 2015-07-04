#!/usr/bin/env runghc

import Data.List (group)

data SinglesAndMultiples a = Single a | Multiple Int a
  deriving (Show)

encodeModified :: (Eq a) => [a] -> [SinglesAndMultiples a]
encodeModified x = zipWith combineLengthAndGroups (map length grouped) grouped
            where grouped = group x
                  combineLengthAndGroups :: Int -> [a] -> SinglesAndMultiples a
                  combineLengthAndGroups length group = 
                    if length == 1 then Single (head group) else Multiple length (head group)
