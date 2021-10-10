module Problem014 (problem014) where

import Data.Foldable
import Data.Function

problem014 :: Int -> Int
problem014 = fst . maxCollatz

-- return the starting value and the count of the maximum Collatz sequence
maxCollatz :: Int -> (Int, Int)
maxCollatz n = maximumBy (compare `on` snd) $ zip [1 .. n] (map collatzCount [1 .. n])

-- count the terms of the Collatz sequence
collatzCount :: Int -> Int
collatzCount = length . collatzSequence

-- create the Collatz sequence starting with x
collatzSequence :: Int -> [Int]
collatzSequence n = takeWhile (/= 1) (iterate collatz n) ++ [1]
  where
    collatz :: Int -> Int
    collatz x
      | odd x = 3 * x + 1
      | otherwise = x `div` 2
