module Main where

import Test.Hspec
import Data.IntegerLiterals.Underscores

main :: IO ()
main = hspec $
  describe "integer literals" $
    it "should have the correct value" $ do
      1_000 `shouldBe` 1000
      37_000_000 `shouldBe` 37000000
      999_000_000_000 `shouldBe` 999000000000
