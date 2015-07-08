#!/usr/bin/env runghc
--NOT COMPLETE
import System.Random
import Data.List



recurRandom :: (Eq a) => [a] -> Int -> StdGen -> [a]
recurRandom _  0 _   = []
recurRandom xs n gen = let randomPair = randomR (1, length xs) gen
                           randomIndex = fst randomPair
                           randomNum = xs !! randomIndex
                           newgen = snd randomPair
                           in randomNum:(recurRandom (delete randomNum xs) (n-1) newgen) 

rnd_select :: Eq a => [a] -> Int -> IO [a]
rnd_select xs n = do 
                    gen <- newStdGen
                    return $ recurRandom xs n gen

