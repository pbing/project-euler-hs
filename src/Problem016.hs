module Problem016 (problem016) where

problem016 :: Integer -> Integer
problem016 = digitSum

digitSum :: Integer -> Integer
digitSum 0 = 0
digitSum n = r + digitSum q
  where
    (q, r) = quotRem n 10
