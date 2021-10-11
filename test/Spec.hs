{-# OPTIONS_GHC -Wno-type-defaults #-}
module Main where

import Test.Hspec

import Problem001
import Problem002
import Problem014
import Problem016

main :: IO ()
main = hspec $ do
  describe "Basic tests" $ do
    it "001: Multiples of 3 and 5" $ do
      problem001 10 `shouldBe` 23

    it "002: Even Fibonacci number" $ do
      problem002 89 `shouldBe` sum (filter even [1, 2, 3, 5, 8, 13, 21, 34, 55, 89])

    it "014: Longest Collatz sequence" $ do
      problem014 10 `shouldBe` 9

    it "016: Power digit sum" $ do
      problem016 (2 ^ 15) `shouldBe` 26
