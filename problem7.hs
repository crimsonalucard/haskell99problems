#!/usr/bin/env runghc

data NestedList a = Elem a | List [NestedList a]


myFlatten :: NestedList a -> [a]
myFlatten (Elem a) = [a]
myFlatten (List []) = []
myFlatten (List ((Elem x):xs)) = x:(myFlatten (List xs))
myFlatten (List ((List x):xs)) = myFlatten (List x) ++ myFlatten (List xs)
