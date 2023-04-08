-- Problem 92 https://www.youtube.com/watch?v=4q3v2p2-Cmc

module Problem092 (problem092) where

problem092 :: Int -> Int
problem092 n = length $ filter (== 89) $ map terminator [1 .. n]

step :: Int -> Int
step 0 = 0
step n = r * r + step q
  where
    (q, r) = quotRem n 10

terminator :: Int -> Int
terminator n
  | n' == 1 = 1
  | n' == 89 = 89
  | otherwise = terminator n'
  where
    n' = step n
