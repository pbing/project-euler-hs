-- Problem 92 https://www.youtube.com/watch?v=4q3v2p2-Cmc

module Problem092 (problem092) where

problem092 :: Int -> Int
problem092 n = length $ filter (== 89) $ map terminator [1 .. n]

reverseDigits :: Int -> [Int]
reverseDigits n =
  let (q, r) = quotRem n 10
  in if q == 0 then [r] else r : reverseDigits q

step :: Int -> Int
step  = foldr (\n -> (+) (n * n)) 0 . reverseDigits

terminator :: Int -> Int
terminator n
  | n' == 1 = 1
  | n' == 89 = 89
  | otherwise = terminator n'
  where
    n' = step n
