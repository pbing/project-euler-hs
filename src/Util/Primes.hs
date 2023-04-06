-- Primes and prime factors
-- https://wiki.haskell.org/Euler_problems/1_to_10
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

module Util.Primes where

import Util.List

primes :: (Integral a, Num a) => [a]
primes = 2 : 3 : filter (isSingleton . primeFactors) seq6k
  where
    -- (6k - 1), (6k + 1) sequence
    seq6k :: (Enum a, Num a) => [a]
    seq6k = [x + y | x <- [6, 12..], y <- [-1, 1]]

primeFactors :: (Integral a, Num a) => a -> [a]
primeFactors n = factor n primes
  where
    factor :: Integral a => a -> [a] -> [a]
    factor m (p:ps)
        | p * p > m      = [m]
        | m `mod` p == 0 = p : factor (m `div` p) (p:ps)
        | otherwise      = factor m ps
