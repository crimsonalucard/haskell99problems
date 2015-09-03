#!/usr/bin/env runghc
import System.Random


rnd_permu :: [a] -> IO [a]
rnd_permu [] = return []
rnd_permu (x:xs) = do 
  random_index <- randomRIO (0, length xs)
  rest <- rnd_permu xs
  let (zs, ys) = splitAt random_index rest
  return $ zs ++ (x:ys) 
