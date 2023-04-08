module Problem004 (problem004) where

import Util.Number

problem004 :: [Int] -> Int
problem004 = maximum . filter isPalindrome

