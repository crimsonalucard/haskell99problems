#!/usr/bin/env runghc

import Data.List (group)

data SinglesAndMultiples a = Single a | Multiple Int a
  deriving (Show)

decodeModified :: (Eq a) => [SinglesAndMultiples a] -> [a]
decodeModified = concatMap singlesAndMultiplesToList 
                  where singlesAndMultiplesToList :: SinglesAndMultiples a -> [a]
                        singlesAndMultiplesToList (Single x) = [x]
                        singlesAndMultiplesToList (Multiple length x) = replicate length x
