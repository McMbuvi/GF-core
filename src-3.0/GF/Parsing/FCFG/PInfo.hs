---------------------------------------------------------------------
-- |
-- Maintainer  : Krasimir Angelov
-- Stability   : (stable)
-- Portability : (portable)
--
-- FCFG parsing, parser information
-----------------------------------------------------------------------------

module GF.Parsing.FCFG.PInfo where

import GF.Infra.PrintClass
import GF.Formalism.Utilities
import GF.Formalism.FCFG
import GF.Data.SortedList
import GF.Data.Assoc
import GF.Parsing.FCFG.Range
import qualified GF.GFCC.CId as AbsGFCC

import Data.Array
import Data.Maybe
import qualified Data.Map as Map
import qualified Data.Set as Set
import Debug.Trace

----------------------------------------------------------------------
-- type declarations

-- | the list of categories = possible starting categories
type FCFParser =  FCFPInfo
               -> [FCat]
               -> Input FToken
               -> SyntaxChart FName (FCat,RangeRec)

makeFinalEdge cat 0 0 = (cat, [EmptyRange])
makeFinalEdge cat i j = (cat, [makeRange i j])

------------------------------------------------------------
-- parser information

type RuleId = Int

data FCFPInfo
    = FCFPInfo { allRules           :: Array RuleId FRule
               , topdownRules       :: Assoc FCat (SList RuleId)
		 -- ^ used in 'GF.Parsing.MCFG.Active' (Earley):
	         -- , emptyRules    :: [RuleId]
	       , epsilonRules       :: [RuleId]
		 -- ^ used in 'GF.Parsing.MCFG.Active' (Kilbury):
	       , leftcornerCats     :: Assoc FCat (SList RuleId)
	       , leftcornerTokens   :: Assoc FToken (SList RuleId)
		 -- ^ used in 'GF.Parsing.MCFG.Active' (Kilbury):
	       , grammarCats        :: SList FCat
	       , grammarToks        :: SList FToken
	       , startupCats        :: Map.Map AbsGFCC.CId [FCat]
	       }


getLeftCornerTok lins
  | inRange (bounds syms) 0 = case syms ! 0 of
                                FSymTok tok -> Just tok
                                _           -> Nothing
  | otherwise               = Nothing
  where
    syms = lins ! 0

getLeftCornerCat lins
  | inRange (bounds syms) 0 = case syms ! 0 of
                                FSymCat c _ _ -> Just c
                                _             -> Nothing
  | otherwise               = Nothing
  where
    syms = lins ! 0

buildFCFPInfo :: FGrammar -> FCFPInfo
buildFCFPInfo (grammar,startup) = -- trace (unlines [prt (x,Set.toList set) | (x,set) <- Map.toList leftcornFilter]) $
    FCFPInfo { allRules = allrules
             , topdownRules = topdownrules
	     -- , emptyRules = emptyrules
	     , epsilonRules = epsilonrules
	     , leftcornerCats = leftcorncats
	     , leftcornerTokens = leftcorntoks
	     , grammarCats = grammarcats
	     , grammarToks = grammartoks
	     , startupCats = startup
	     }

    where allrules = listArray (0,length grammar-1) grammar
	  topdownrules  = accumAssoc id [(cat,  ruleid) | (ruleid, FRule _ _ cat _) <- assocs allrules]
	  -- emptyrules    = [ruleid | (ruleid, FRule _ [] _ _) <- assocs allrules]
	  epsilonrules  = [ ruleid | (ruleid, FRule _ _ _ lins) <- assocs allrules,
                            not (inRange (bounds (lins ! 0)) 0) ]
	  leftcorncats  = accumAssoc id
			  [ (fromJust (getLeftCornerCat lins), ruleid) | 
			    (ruleid, FRule _ _ _ lins) <- assocs allrules, isJust (getLeftCornerCat lins) ]
	  leftcorntoks  = accumAssoc id 
			  [ (fromJust (getLeftCornerTok lins), ruleid) | 
			    (ruleid, FRule _ _ _ lins) <- assocs allrules, isJust (getLeftCornerTok lins) ]
	  grammarcats   = aElems topdownrules
	  grammartoks   = nubsort [t | (FRule _ _ _ lins) <- grammar, lin <- elems lins, FSymTok t <- elems lin]

fcfPInfoToFGrammar :: FCFPInfo -> FGrammar
fcfPInfoToFGrammar pinfo = (elems (allRules pinfo), startupCats pinfo)

----------------------------------------------------------------------
-- pretty-printing of statistics

instance Print FCFPInfo where
    prt pI = "[ allRules=" ++ sl (elems . allRules) ++
	     "; tdRules=" ++ sla topdownRules ++
	     -- "; emptyRules=" ++ sl emptyRules ++ 
	     "; epsilonRules=" ++ sl epsilonRules ++ 
	     "; lcCats=" ++ sla leftcornerCats ++
	     "; lcTokens=" ++ sla leftcornerTokens ++
	     "; categories=" ++ sl grammarCats ++ 
	     " ]"

	where sl  f = show $ length $ f pI
	      sla f = let (as, bs) = unzip $ aAssocs $ f pI
		       in show (length as) ++ "/" ++ show (length (concat bs))
