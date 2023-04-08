{-# OPTIONS_GHC -Wno-type-defaults #-}
module Main where

import Test.Hspec

import Util.Number
import Problem001
import Problem002
import Problem003
import Problem004
import Problem014
import Problem016
import Problem092

main :: IO ()
main = hspec $ do
  describe "Utility tests" $ do
    it "digits" $ do
      digits 1 `shouldBe` [1]
      digits 12 `shouldBe` [1, 2]
      digits 123456789 `shouldBe` [1..9]

    it "digitSum" $ do
      digitSum 0 `shouldBe` 0
      digitSum 1 `shouldBe` 1
      digitSum 123456789 `shouldBe` 45
      
    it "palindrome" $ do
      palindrome 7 `shouldBe` 7
      palindrome 123456789 `shouldBe` 987654321
  
    it "isPalindrome" $ do
      isPalindrome 4 `shouldBe` True
      isPalindrome 123456789 `shouldBe` False
      isPalindrome 12345678987654321 `shouldBe` True
    
  describe "Basic tests" $ do
    it "001: Multiples of 3 and 5" $ do
      problem001 10 `shouldBe` 23

    it "002: Even Fibonacci number" $ do
      problem002 89 `shouldBe` sum (filter even [1, 2, 3, 5, 8, 13, 21, 34, 55, 89])

    it "003: Largest prime factor" $ do
      problem003 13195 `shouldBe` 29

    it "004: Largest palindrome product" $ do
      problem004 [x * y | x <- [10..99], y <- [x..99]] `shouldBe` 9009
      
    it "014: Longest Collatz sequence" $ do
      problem014 10 `shouldBe` 9

    it "016: Power digit sum" $ do
      problem016 (2 ^ 15) `shouldBe` 26

    it "092: Square digit chains" $ do
      problem092 1000 `shouldBe` 857
