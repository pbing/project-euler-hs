module Problem001 (problem001) where

problem001 :: Int -> Int
problem001 n = sum $ filter p [1..(n - 1)]

p :: Int -> Bool
p n = n `mod` 3 == 0 || n `mod` 5 == 0
