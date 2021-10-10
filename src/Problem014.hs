module Problem014 (problem014) where

problem014 :: Int -> Int
problem014 = fst . maxCollatz

-- return the starting value and the count of the maximum Collatz sequence
maxCollatz :: Int -> (Int, Int)
maxCollatz n = foldr cmp (0, 0) $ zip [1 .. n] (map collatzCount [1 .. n])
  where
    cmp :: (Int, Int) -> (Int, Int) -> (Int, Int)
    cmp a b = if snd a > snd b then a else b

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
