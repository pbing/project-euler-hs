{-# OPTIONS_GHC -Wno-type-defaults #-}
module Main where

import Problem001
import Problem002
import Problem014
import Problem016

-- print all solutions
main :: IO ()
main = do
  putStrLn $ "Problem 001: " ++ show (problem001 1000)
  putStrLn $ "Problem 002: " ++ show (problem002 4000000)
  putStrLn $ "Problem 014: " ++ show (problem014 1000000)
  putStrLn $ "Problem 016: " ++ show (problem016 $ 2 ^ 1000)
