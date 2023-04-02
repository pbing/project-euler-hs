module Problem003 (problem003) where

import Util.Primes

problem003 :: Int -> Int
problem003 = last . primeFactors
