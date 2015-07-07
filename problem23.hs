#!/usr/bin/env runghc

import System.Random
import Data.List



recurRandom :: [a] -> Int -> StdGen -> [a]
recurRandom _  0 _   = []
recurRandom xs n gen = let randomPair = randomR (1, length xs) gen
                           randomIndex = fst randomPair
                           randomNum = xs !! randomIndex
                           newgen = snd randomPair
                           in randomNum:(recurRandom (delete randomNum xs) (n-1) newgen) 

rnd_select :: [a] -> Int -> [a]
rnd_select xs n = do 
                    gen <- getStdGen
                    recurRandom xs n gen

