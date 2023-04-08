{-# OPTIONS_GHC -Wno-type-defaults #-}
module Main where

import Problem001
import Problem002
import Problem003
import Problem004
import Problem014
import Problem016
import Problem092

-- print all solutions
main :: IO ()
main = do
  putStrLn $ "Problem 001: " ++ show (problem001 1000)
  putStrLn $ "Problem 002: " ++ show (problem002 4000000)
  putStrLn $ "Problem 003: " ++ show (problem003 600851475143)
  putStrLn $ "Problem 004: " ++ show (problem004 [x * y | x <- [100..999], y <- [x..999]])
  putStrLn $ "Problem 014: " ++ show (problem014 1000000)
  putStrLn $ "Problem 016: " ++ show (problem016 $ 2 ^ 1000)
  putStrLn $ "Problem 092: " ++ show (problem092 $ (10 ^ 7) - 1)
