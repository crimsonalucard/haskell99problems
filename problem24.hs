#!/usr/bin/env runghc
--NOT COMPLETE INDEX IS SOMETIMES TOO LARGE
import System.Random
import Data.List



recurRandom :: (Eq a) => [a] -> Int -> StdGen -> [a]
recurRandom _ 0 _   = []
recurRandom xs n gen = let randomPair = randomR (1, length xs) gen
                           randomIndex = fst randomPair
                           randomNum = xs !! (randomIndex - 1)
                           newgen = snd randomPair
                           in randomNum:(recurRandom (delete randomNum xs) (n-1) newgen) 
diff_select :: Int -> Int -> IO [Int]
diff_select n max = do 
                    gen <- newStdGen
                    return $ recurRandom [1..max] n gen
