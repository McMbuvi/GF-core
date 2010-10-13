concrete NQueensAscii of NQueens = NatAscii ** open Prelude in {

lincat S, Matrix = Str ;
       Vec = {s : Str; empty : Bool} ;
       ListNat, Sat = {} ;

lin nqueens _ m = m ;

lin nilV _ _ = {s=""; empty=True} ;
    consV _ j k _ _ v = {s=j ++ "X" ++ k ++ 
                           case v.empty of {True=>"";False=>";"} ++ 
                           v.s;
                         empty=False} ;

    matrix _ v = v.s ;

}
