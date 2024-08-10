-- Primes and prime factors
-- https://wiki.haskell.org/Euler_problems/1_to_10
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

module Util.Primes where

import Util.List

primes :: (Integral a) => [a]
primes = 2 : 3 : filter (isSingleton . primeFactors) seq6k
  where
    -- (6k - 1), (6k + 1) sequence
    seq6k = [x + y | x <- [6, 12 ..], y <- [-1, 1]]

primeFactors :: (Integral a) => a -> [a]
primeFactors n = factor n primes
  where
    factor m (p : ps)
      | p * p > m  = [m]
      | r == 0     = p : factor q (p : ps)
      | otherwise  = factor m ps
      where
        (q, r) = quotRem m p
