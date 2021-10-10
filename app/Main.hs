module Main where

import Problem001
import Problem002
import Problem014

-- print all solutions
main :: IO ()
main = do
  putStrLn $ "Problem 001: " ++ show (problem001 1000)
  putStrLn $ "Problem 002: " ++ show (problem002 4000000)
  putStrLn $ "Problem 014: " ++ show (problem014 1000000)
