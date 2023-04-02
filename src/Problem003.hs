module Problem003 (problem003) where

import Primes

problem003 :: Int -> Int
problem003 = last . primeFactors
