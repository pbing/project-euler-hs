module Main where

import Problem001
import Problem002

-- print all solutions
main :: IO ()
main = do
  putStrLn $ "Problem 001: " ++ show (problem001 1000)
  putStrLn $ "Problem 002: " ++ show (problem002 4000000)
