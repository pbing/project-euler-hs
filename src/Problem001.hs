module Problem001 (problem001) where

-- -- runtime O(n)
-- problem001 :: Int -> Int
-- problem001 n = sum $ filter p [1..(n - 1)]
--
-- p :: Int -> Bool
-- p n = n `mod` 3 == 0 || n `mod` 5 == 0

-- runtime O(1)
problem001 :: Int -> Int
problem001 n = summate 3 + summate 5 - summate (lcm 3 5)
  where
    summate a = a * m * (m + 1) `div` 2
      where
        m = (n - 1) `div` a
