-- Primes and prime factors
-- https://wiki.haskell.org/Euler_problems/1_to_10
{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

module Primes where

primes :: [Int]
primes = 2 : filter (isSingleton . primeFactors) [3, 5..]
  where
    isSingleton :: [a] -> Bool
    isSingleton [_] = True
    isSingleton _   = False

primeFactors :: Int -> [Int]
primeFactors n = factor n primes
  where
    factor :: Int -> [Int] -> [Int]
    factor m (p:ps)
        | p * p > m      = [m]
        | m `mod` p == 0 = p : factor (m `div` p) (p:ps)
        | otherwise      = factor m ps
