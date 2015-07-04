#!/usr/bin/env runghc

import Data.List (group)

encode :: (Eq a) => [a] -> [(Int, a)]
encode x = zipWith (\lengths groups -> (lengths, head groups)) (map length grouped) grouped
            where grouped = group x
