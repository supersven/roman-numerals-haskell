module RomanNumeralsSpec(main,spec) where

import Test.Hspec
import RomanNumerals

main :: IO ()
main = hspec spec

spec = do
  describe "Acceptance Test" $ do
    it "should convert 59 to LIX" $ do
      RomanNumerals.convert(59) `shouldBe` "LIX"

  describe "Roman Numerals" $ do
    it "should convert 1 to I" $ do
      RomanNumerals.convert(1) `shouldBe` "I"
    it "should convert 2 to II" $ do
      RomanNumerals.convert(2) `shouldBe` "II"
    it "should convert 3 to III" $ do
      RomanNumerals.convert(3) `shouldBe` "III"
    it "should convert 4 to IV" $ do
      RomanNumerals.convert(4) `shouldBe` "IV"
    it "should convert 5 to V" $ do
      RomanNumerals.convert(5) `shouldBe` "V"
    it "should convert 6 to VI" $ do
      RomanNumerals.convert(6) `shouldBe` "VI"
    it "should convert 7 to VII" $ do
      RomanNumerals.convert(7) `shouldBe` "VII"
    it "should convert 8 to VIII" $ do
      RomanNumerals.convert(8) `shouldBe` "VIII"
    it "should convert 9 to IX" $ do
      RomanNumerals.convert(9) `shouldBe` "IX"
    it "should convert 10 to X" $ do
      RomanNumerals.convert(10) `shouldBe` "X"
    it "should convert 11 to XI" $ do
      RomanNumerals.convert(11) `shouldBe` "XI"
    it "should convert 12 to XII" $ do
      RomanNumerals.convert(12) `shouldBe` "XII"
    it "should convert 13 to XIII" $ do
      RomanNumerals.convert(13) `shouldBe` "XIII"
    it "should convert 14 to XIV" $ do
      RomanNumerals.convert(14) `shouldBe` "XIV"
    it "should convert 15 to XV" $ do
      RomanNumerals.convert(15) `shouldBe` "XV"
    it "should convert 16 to XVI" $ do
      RomanNumerals.convert(16) `shouldBe` "XVI"
    it "should convert 19 to XIX" $ do
      RomanNumerals.convert(19) `shouldBe` "XIX"
    it "should convert 20 to XX" $ do
      RomanNumerals.convert(20) `shouldBe` "XX"
    it "should convert 21 to XXI" $ do
      RomanNumerals.convert(21) `shouldBe` "XXI"
    it "should convert 39 to XXXIX" $ do
      RomanNumerals.convert(39) `shouldBe` "XXXIX"
    it "should convert 40 to XL" $ do
      RomanNumerals.convert(40) `shouldBe` "XL"
    it "should convert 41 to XLI" $ do
      RomanNumerals.convert(41) `shouldBe` "XLI"
    it "should convert 42 to XLII" $ do
      RomanNumerals.convert(42) `shouldBe` "XLII"
    it "should convert 49 to XLIX" $ do
      RomanNumerals.convert(49) `shouldBe` "XLIX"
    it "should convert 50 to L" $ do
      RomanNumerals.convert(50) `shouldBe` "L"
    it "should convert 51 to LI" $ do
      RomanNumerals.convert(51) `shouldBe` "LI"
    it "should convert 66 to LXVI" $ do
      RomanNumerals.convert(66) `shouldBe` "LXVI"
    it "should convert 89 to LXXXIX" $ do
      RomanNumerals.convert(89) `shouldBe` "LXXXIX"
    it "should convert 90 to LC" $ do
      RomanNumerals.convert(90) `shouldBe` "LC"
    it "should convert 99 to LCIX" $ do
      RomanNumerals.convert(99) `shouldBe` "LCIX"
    it "should convert 100 to C" $ do
      RomanNumerals.convert(100) `shouldBe` "C"
    it "should convert 200 to CC" $ do
      RomanNumerals.convert(200) `shouldBe` "CC"

