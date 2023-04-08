-- Misc. number utilities

module Util.Number where

-------------------------------
-- Digit operations of base 10
-------------------------------

digits :: Integral a => a -> [a]
digits = reverse . revDigits
  where
    revDigits n
      | q == 0    = [r]
      | otherwise = r : revDigits q
      where
        (q, r) = quotRem n 10

digitSum :: Integral a => a -> a
digitSum 0 = 0
digitSum n = r + digitSum q
  where
    (q, r) = quotRem n 10

isPalindrome :: Integral a => a -> Bool
isPalindrome n = n == palindrome n

palindrome :: Integral a => a -> a
palindrome = go 0
  where
    go acc n
      | n == 0    = acc
      | otherwise = go (10 * acc + r) q
      where
        (q, r) = quotRem n 10
