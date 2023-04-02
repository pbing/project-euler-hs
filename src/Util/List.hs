-- List utilities

module Util.List where

isSingleton :: [a] -> Bool
isSingleton [_] = True
isSingleton _   = False

merge :: [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) = x : y : merge xs ys
