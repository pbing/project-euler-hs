-- Problem 92 https://www.youtube.com/watch?v=4q3v2p2-Cmc

module Problem092 (problem092) where

problem092 :: Int -> Int
problem092 n = length $ filter (== 89) $ map terminator [1 .. n]

digits :: Int -> [Int]
digits n = reverse $ go n
  where
    go x
      | q == 0 = [r]
      | otherwise = r : go q
      where
        (q, r) = quotRem x 10

square :: Int -> Int
square x = x * x

step :: Int -> Int
step = sum . map square . digits

terminator :: Int -> Int
terminator n
  | n' == 1 = 1
  | n' == 89 = 89
  | otherwise = terminator n'
  where
    n' = step n
