module GF.GFCC.Raw.AbsGFCCRaw where

-- Haskell module generated by the BNF converter

newtype CId = CId String deriving (Eq,Ord,Show)
data Grammar =
   Grm [RExp]
  deriving (Eq,Ord,Show)

data RExp =
   App CId [RExp]
 | AId CId
 | AInt Integer
 | AStr String
 | AFlt Double
 | AMet
  deriving (Eq,Ord,Show)
