{-# LANGUAGE FlexibleInstances #-}
-- | Importing this module adds support for pretty decimal literals like
-- @37_000_000@ (@37000000@). Up to 12 decimal places (in groups of three) are
-- supported. Only zeros may appear after the first underscore.
module Data.IntegerLiterals.Underscores (
    _000
  , _000_000
  , _000_000_000
  , _000_000_000_000
) where

data Modifier =
  Modifier { decimalPlaces :: Int }

instance Num a => Num (Modifier -> a) where
  fromInteger x (Modifier places) = (10^places) * fromInteger x

  (+) = error "Modifier used as Num"
  (-) = error "Modifier used as Num"
  (*) = error "Modifier used as Num"
  abs = error "Modifier used as Num"
  signum = error "Modifier used as Num"

_000 :: Modifier
_000 = Modifier 3

_000_000 :: Modifier
_000_000 = Modifier 6

_000_000_000 :: Modifier
_000_000_000 = Modifier 9

_000_000_000_000 :: Modifier
_000_000_000_000 = Modifier 12
