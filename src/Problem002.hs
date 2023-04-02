module Problem002 (problem002) where

import Util.Fibonacci

problem002 :: Int -> Int
problem002 = sum . filter even . fibs

fibs :: Int -> [Int]
fibs n = takeWhile (<= n) $ fromInteger <$> fiblist
