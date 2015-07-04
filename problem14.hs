#!/usr/bin/env runghc

dupli :: [a] -> [a]
dupli = concatMap (replicate 2)
