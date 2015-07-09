#!/usr/bin/env runghc
import System.Random
import Data.List



rnd_permu :: [a] -> IO [a]
rnd_permu x = let randomIndexes = take (length x) . nub . randomRs (0, length x - 1) <$> newStdGen
              in map ((!!) x) <$> randomIndexes


