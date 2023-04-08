module Problem004 (problem004) where

import Util.Number

-- n: number of digits
problem004 :: Int -> Int
problem004 n = (maximum . filter isPalindrome) xs
  where
    n1 = 10 ^ (n - 1)
    n2 = 10 ^  n - 1
    xs = [x * y | x <- [n1..n2], y <- [x..n2]]
