{-# OPTIONS_GHC -fglasgow-exts #-}
module GFCC.Abs (Tree(..), Grammar, Header, Abstract, Concrete, AbsDef, CncDef, Type, Exp, Atom, Term, Tokn, Variant, CId, johnMajorEq, module GFCC.ComposOp) where

import GFCC.ComposOp

import Data.Monoid

-- Haskell module generated by the BNF converter

data Grammar_
type Grammar = Tree Grammar_
data Header_
type Header = Tree Header_
data Abstract_
type Abstract = Tree Abstract_
data Concrete_
type Concrete = Tree Concrete_
data AbsDef_
type AbsDef = Tree AbsDef_
data CncDef_
type CncDef = Tree CncDef_
data Type_
type Type = Tree Type_
data Exp_
type Exp = Tree Exp_
data Atom_
type Atom = Tree Atom_
data Term_
type Term = Tree Term_
data Tokn_
type Tokn = Tree Tokn_
data Variant_
type Variant = Tree Variant_
data CId_
type CId = Tree CId_

data Tree :: * -> * where
    Grm :: Header -> Abstract -> [Concrete] -> Tree Grammar_
    Hdr :: CId -> [CId] -> Tree Header_
    Abs :: [AbsDef] -> Tree Abstract_
    Cnc :: CId -> [CncDef] -> Tree Concrete_
    Fun :: CId -> Type -> Exp -> Tree AbsDef_
    Lin :: CId -> Term -> Tree CncDef_
    Typ :: [CId] -> CId -> Tree Type_
    Tr :: Atom -> [Exp] -> Tree Exp_
    AC :: CId -> Tree Atom_
    AS :: String -> Tree Atom_
    AI :: Integer -> Tree Atom_
    AF :: Double -> Tree Atom_
    AM :: Tree Atom_
    R :: [Term] -> Tree Term_
    P :: Term -> Term -> Tree Term_
    S :: [Term] -> Tree Term_
    K :: Tokn -> Tree Term_
    V :: Integer -> Tree Term_
    C :: Integer -> Tree Term_
    F :: CId -> Tree Term_
    FV :: [Term] -> Tree Term_
    W :: String -> Term -> Tree Term_
    RP :: Term -> Term -> Tree Term_
    TM :: Tree Term_
    L :: CId -> Term -> Tree Term_
    BV :: CId -> Tree Term_
    KS :: String -> Tree Tokn_
    KP :: [String] -> [Variant] -> Tree Tokn_
    Var :: [String] -> [String] -> Tree Variant_
    CId :: String -> Tree CId_

instance Compos Tree where
  compos r a f t = case t of
      Grm header abstract concretes -> r Grm `a` f header `a` f abstract `a` foldr (a . a (r (:)) . f) (r []) concretes
      Hdr cid cids -> r Hdr `a` f cid `a` foldr (a . a (r (:)) . f) (r []) cids
      Abs absdefs -> r Abs `a` foldr (a . a (r (:)) . f) (r []) absdefs
      Cnc cid cncdefs -> r Cnc `a` f cid `a` foldr (a . a (r (:)) . f) (r []) cncdefs
      Fun cid type' exp -> r Fun `a` f cid `a` f type' `a` f exp
      Lin cid term -> r Lin `a` f cid `a` f term
      Typ cids cid -> r Typ `a` foldr (a . a (r (:)) . f) (r []) cids `a` f cid
      Tr atom exps -> r Tr `a` f atom `a` foldr (a . a (r (:)) . f) (r []) exps
      AC cid -> r AC `a` f cid
      R terms -> r R `a` foldr (a . a (r (:)) . f) (r []) terms
      P term0 term1 -> r P `a` f term0 `a` f term1
      S terms -> r S `a` foldr (a . a (r (:)) . f) (r []) terms
      K tokn -> r K `a` f tokn
      F cid -> r F `a` f cid
      FV terms -> r FV `a` foldr (a . a (r (:)) . f) (r []) terms
      W str term -> r W `a` r str `a` f term
      RP term0 term1 -> r RP `a` f term0 `a` f term1
      L cid term -> r L `a` f cid `a` f term
      BV cid -> r BV `a` f cid
      KP strs variants -> r KP `a` r strs `a` foldr (a . a (r (:)) . f) (r []) variants
      _ -> r t

instance Show (Tree c) where
  showsPrec n t = case t of
    Grm header abstract concretes -> opar n . showString "Grm" . showChar ' ' . showsPrec 1 header . showChar ' ' . showsPrec 1 abstract . showChar ' ' . showsPrec 1 concretes . cpar n
    Hdr cid cids -> opar n . showString "Hdr" . showChar ' ' . showsPrec 1 cid . showChar ' ' . showsPrec 1 cids . cpar n
    Abs absdefs -> opar n . showString "Abs" . showChar ' ' . showsPrec 1 absdefs . cpar n
    Cnc cid cncdefs -> opar n . showString "Cnc" . showChar ' ' . showsPrec 1 cid . showChar ' ' . showsPrec 1 cncdefs . cpar n
    Fun cid type' exp -> opar n . showString "Fun" . showChar ' ' . showsPrec 1 cid . showChar ' ' . showsPrec 1 type' . showChar ' ' . showsPrec 1 exp . cpar n
    Lin cid term -> opar n . showString "Lin" . showChar ' ' . showsPrec 1 cid . showChar ' ' . showsPrec 1 term . cpar n
    Typ cids cid -> opar n . showString "Typ" . showChar ' ' . showsPrec 1 cids . showChar ' ' . showsPrec 1 cid . cpar n
    Tr atom exps -> opar n . showString "Tr" . showChar ' ' . showsPrec 1 atom . showChar ' ' . showsPrec 1 exps . cpar n
    AC cid -> opar n . showString "AC" . showChar ' ' . showsPrec 1 cid . cpar n
    AS str -> opar n . showString "AS" . showChar ' ' . showsPrec 1 str . cpar n
    AI n -> opar n . showString "AI" . showChar ' ' . showsPrec 1 n . cpar n
    AF d -> opar n . showString "AF" . showChar ' ' . showsPrec 1 d . cpar n
    AM -> showString "AM"
    R terms -> opar n . showString "R" . showChar ' ' . showsPrec 1 terms . cpar n
    P term0 term1 -> opar n . showString "P" . showChar ' ' . showsPrec 1 term0 . showChar ' ' . showsPrec 1 term1 . cpar n
    S terms -> opar n . showString "S" . showChar ' ' . showsPrec 1 terms . cpar n
    K tokn -> opar n . showString "K" . showChar ' ' . showsPrec 1 tokn . cpar n
    V n -> opar n . showString "V" . showChar ' ' . showsPrec 1 n . cpar n
    C n -> opar n . showString "C" . showChar ' ' . showsPrec 1 n . cpar n
    F cid -> opar n . showString "F" . showChar ' ' . showsPrec 1 cid . cpar n
    FV terms -> opar n . showString "FV" . showChar ' ' . showsPrec 1 terms . cpar n
    W str term -> opar n . showString "W" . showChar ' ' . showsPrec 1 str . showChar ' ' . showsPrec 1 term . cpar n
    RP term0 term1 -> opar n . showString "RP" . showChar ' ' . showsPrec 1 term0 . showChar ' ' . showsPrec 1 term1 . cpar n
    TM -> showString "TM"
    L cid term -> opar n . showString "L" . showChar ' ' . showsPrec 1 cid . showChar ' ' . showsPrec 1 term . cpar n
    BV cid -> opar n . showString "BV" . showChar ' ' . showsPrec 1 cid . cpar n
    KS str -> opar n . showString "KS" . showChar ' ' . showsPrec 1 str . cpar n
    KP strs variants -> opar n . showString "KP" . showChar ' ' . showsPrec 1 strs . showChar ' ' . showsPrec 1 variants . cpar n
    Var strs0 strs1 -> opar n . showString "Var" . showChar ' ' . showsPrec 1 strs0 . showChar ' ' . showsPrec 1 strs1 . cpar n
    CId str -> opar n . showString "CId" . showChar ' ' . showsPrec 1 str . cpar n
   where opar n = if n > 0 then showChar '(' else id
         cpar n = if n > 0 then showChar ')' else id

instance Eq (Tree c) where (==) = johnMajorEq

johnMajorEq :: Tree a -> Tree b -> Bool
johnMajorEq (Grm header abstract concretes) (Grm header_ abstract_ concretes_) = header == header_ && abstract == abstract_ && concretes == concretes_
johnMajorEq (Hdr cid cids) (Hdr cid_ cids_) = cid == cid_ && cids == cids_
johnMajorEq (Abs absdefs) (Abs absdefs_) = absdefs == absdefs_
johnMajorEq (Cnc cid cncdefs) (Cnc cid_ cncdefs_) = cid == cid_ && cncdefs == cncdefs_
johnMajorEq (Fun cid type' exp) (Fun cid_ type'_ exp_) = cid == cid_ && type' == type'_ && exp == exp_
johnMajorEq (Lin cid term) (Lin cid_ term_) = cid == cid_ && term == term_
johnMajorEq (Typ cids cid) (Typ cids_ cid_) = cids == cids_ && cid == cid_
johnMajorEq (Tr atom exps) (Tr atom_ exps_) = atom == atom_ && exps == exps_
johnMajorEq (AC cid) (AC cid_) = cid == cid_
johnMajorEq (AS str) (AS str_) = str == str_
johnMajorEq (AI n) (AI n_) = n == n_
johnMajorEq (AF d) (AF d_) = d == d_
johnMajorEq AM AM = True
johnMajorEq (R terms) (R terms_) = terms == terms_
johnMajorEq (P term0 term1) (P term0_ term1_) = term0 == term0_ && term1 == term1_
johnMajorEq (S terms) (S terms_) = terms == terms_
johnMajorEq (K tokn) (K tokn_) = tokn == tokn_
johnMajorEq (V n) (V n_) = n == n_
johnMajorEq (C n) (C n_) = n == n_
johnMajorEq (F cid) (F cid_) = cid == cid_
johnMajorEq (FV terms) (FV terms_) = terms == terms_
johnMajorEq (W str term) (W str_ term_) = str == str_ && term == term_
johnMajorEq (RP term0 term1) (RP term0_ term1_) = term0 == term0_ && term1 == term1_
johnMajorEq TM TM = True
johnMajorEq (L cid term) (L cid_ term_) = cid == cid_ && term == term_
johnMajorEq (BV cid) (BV cid_) = cid == cid_
johnMajorEq (KS str) (KS str_) = str == str_
johnMajorEq (KP strs variants) (KP strs_ variants_) = strs == strs_ && variants == variants_
johnMajorEq (Var strs0 strs1) (Var strs0_ strs1_) = strs0 == strs0_ && strs1 == strs1_
johnMajorEq (CId str) (CId str_) = str == str_
johnMajorEq _ _ = False

instance Ord (Tree c) where
  compare x y = compare (index x) (index y) `mappend` compareSame x y
index :: Tree c -> Int
index (Grm _ _ _) = 0
index (Hdr _ _) = 1
index (Abs _) = 2
index (Cnc _ _) = 3
index (Fun _ _ _) = 4
index (Lin _ _) = 5
index (Typ _ _) = 6
index (Tr _ _) = 7
index (AC _) = 8
index (AS _) = 9
index (AI _) = 10
index (AF _) = 11
index (AM ) = 12
index (R _) = 13
index (P _ _) = 14
index (S _) = 15
index (K _) = 16
index (V _) = 17
index (C _) = 18
index (F _) = 19
index (FV _) = 20
index (W _ _) = 21
index (RP _ _) = 22
index (TM ) = 23
index (L _ _) = 24
index (BV _) = 25
index (KS _) = 26
index (KP _ _) = 27
index (Var _ _) = 28
index (CId _) = 29
compareSame :: Tree c -> Tree c -> Ordering
compareSame (Grm header abstract concretes) (Grm header_ abstract_ concretes_) = mappend (compare header header_) (mappend (compare abstract abstract_) (compare concretes concretes_))
compareSame (Hdr cid cids) (Hdr cid_ cids_) = mappend (compare cid cid_) (compare cids cids_)
compareSame (Abs absdefs) (Abs absdefs_) = compare absdefs absdefs_
compareSame (Cnc cid cncdefs) (Cnc cid_ cncdefs_) = mappend (compare cid cid_) (compare cncdefs cncdefs_)
compareSame (Fun cid type' exp) (Fun cid_ type'_ exp_) = mappend (compare cid cid_) (mappend (compare type' type'_) (compare exp exp_))
compareSame (Lin cid term) (Lin cid_ term_) = mappend (compare cid cid_) (compare term term_)
compareSame (Typ cids cid) (Typ cids_ cid_) = mappend (compare cids cids_) (compare cid cid_)
compareSame (Tr atom exps) (Tr atom_ exps_) = mappend (compare atom atom_) (compare exps exps_)
compareSame (AC cid) (AC cid_) = compare cid cid_
compareSame (AS str) (AS str_) = compare str str_
compareSame (AI n) (AI n_) = compare n n_
compareSame (AF d) (AF d_) = compare d d_
compareSame AM AM = EQ
compareSame (R terms) (R terms_) = compare terms terms_
compareSame (P term0 term1) (P term0_ term1_) = mappend (compare term0 term0_) (compare term1 term1_)
compareSame (S terms) (S terms_) = compare terms terms_
compareSame (K tokn) (K tokn_) = compare tokn tokn_
compareSame (V n) (V n_) = compare n n_
compareSame (C n) (C n_) = compare n n_
compareSame (F cid) (F cid_) = compare cid cid_
compareSame (FV terms) (FV terms_) = compare terms terms_
compareSame (W str term) (W str_ term_) = mappend (compare str str_) (compare term term_)
compareSame (RP term0 term1) (RP term0_ term1_) = mappend (compare term0 term0_) (compare term1 term1_)
compareSame TM TM = EQ
compareSame (L cid term) (L cid_ term_) = mappend (compare cid cid_) (compare term term_)
compareSame (BV cid) (BV cid_) = compare cid cid_
compareSame (KS str) (KS str_) = compare str str_
compareSame (KP strs variants) (KP strs_ variants_) = mappend (compare strs strs_) (compare variants variants_)
compareSame (Var strs0 strs1) (Var strs0_ strs1_) = mappend (compare strs0 strs0_) (compare strs1 strs1_)
compareSame (CId str) (CId str_) = compare str str_
compareSame x y = error "BNFC error:" compareSame