--1 Tensed forms of sentences, questions, and relative clauses

-- This module defines the 2 x 4 x 4 = 16 forms generated by different
-- combinations of tense, polarity, and
-- anteriority, which are defined in [Tense Tense.html].
-- A variant with just the polarity variation is given in
-- [Untensed Untensed.html].

abstract Tensed = Cat ** {

  fun
    UseCl  : Tense -> Ant -> Pol -> Cl  -> S ;
    UseQCl : Tense -> Ant -> Pol -> QCl -> QS ;
    UseRCl : Tense -> Ant -> Pol -> RCl -> RS ;

}

-- Examples for English $S$:
{-
  Pres  Simul  Pos  ODir  : he sleeps
  Pres  Simul  Neg  ODir  : he doesn't sleep
  Pres  Anter  Pos  ODir  : he has slept
  Pres  Anter  Neg  ODir  : he hasn't slept
  Past  Simul  Pos  ODir  : he slept
  Past  Simul  Neg  ODir  : he didn't sleep
  Past  Anter  Pos  ODir  : he had slept
  Past  Anter  Neg  ODir  : he hadn't slept
  Fut   Simul  Pos  ODir  : he will sleep
  Fut   Simul  Neg  ODir  : he won't sleep
  Fut   Anter  Pos  ODir  : he will have slept
  Fut   Anter  Neg  ODir  : he won't have slept
  Cond  Simul  Pos  ODir  : he would sleep
  Cond  Simul  Neg  ODir  : he wouldn't sleep
  Cond  Anter  Pos  ODir  : he would have slept
  Cond  Anter  Neg  ODir  : he wouldn't have slept
-}