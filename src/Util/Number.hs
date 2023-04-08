-- Misc. number utilities

module Util.Number where

reverseDigits :: Integral a => a -> [a]
reverseDigits n =
  let (q, r) = quotRem n 10
  in if q == 0 then [r] else r : reverseDigits q

digitSum :: Integral a => a -> a
digitSum 0 = 0
digitSum n = r + digitSum q
  where
    (q, r) = quotRem n 10
