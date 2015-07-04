#!/usr/bin/env

slice :: [a] -> Int -> Int -> [a]
slice list start end = take (end-start+1) $ drop (start-1) list
