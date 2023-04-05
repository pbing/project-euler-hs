-- List utilities

module Util.List where

isSingleton :: [a] -> Bool
isSingleton [_] = True
isSingleton _   = False
