incomplete concrete NounScand of Noun =
   CatScand ** open CommonScand, ResScand, Prelude in {

  flags optimize=all_subs ;

-- The rule defines $Det Quant Num Ord CN$ where $Det$ is empty if
-- it is the definite article ($DefSg$ or $DefPl$) and both $Num$ and
-- $Ord$ are empty and $CN$ is not adjectivally modified
-- ($AdjCN$). Thus we get $huset$ but $de fem husen$, $det gamla huset$.

  lin
    DetCN det cn = 
      let 
        g = cn.g ;
        m = cn.isMod ;
        dd = case <det.det,detDef,m> of {
          <DDef Def, Indef, True> => DDef Indef ;
          <d,_,_> => d
          }
      in {
      s = \\c => det.s ! m ! g ++
                 cn.s ! det.n ! dd ! caseNP c ; 
      a = agrP3 g det.n
      } ;

    UsePN pn = {
      s = \\c => pn.s ! caseNP c ; 
      a = agrP3 pn.g Sg
      } ;

    UsePron p = p ;

    PredetNP pred np = {
      s = \\c => pred.s ! np.a.gn ++ np.s ! c ;
      a = np.a
      } ;

    PPartNP np v2 = {
      s = \\c => np.s ! c ++ v2.s ! (VI (VPtPret (agrAdj np.a.gn DIndef) Nom)) ;
      a = np.a
      } ;

    AdvNP np adv = {
      s = \\c => np.s ! c ++ adv.s ;
      a = np.a
      } ;

    DetQuantOrd quant num ord = {
      s = \\b,g => quant.s ! num.n ! (orB b (orB num.isDet ord.isDet)) ! g ++ 
                   num.s ! g ++ ord.s ;
      n = num.n ;
      det = quant.det
      } ;

    PossPron p = {
      s = \\n,_,g => p.s ! NPPoss (gennum g n) ; 
      det = DDef Indef
      } ;

    NumSg = {s = \\_ => [] ; isDet = False ; n = Sg} ;
    NumPl = {s = \\_ => [] ; isDet = False ; n = Pl} ;

    NumDigits nu = {s = \\g => nu.s ! NCard g ; isDet = True ; n = nu.n} ;
    OrdDigits nu = {s = nu.s ! NOrd SupWeak ; isDet = True} ;

    NumNumeral nu = {s = \\g => nu.s ! NCard g ; isDet = True ; n = nu.n} ;
    OrdNumeral nu = {s = nu.s ! NOrd SupWeak ; isDet = True} ;

    AdNum adn num = {s = \\g => adn.s ++ num.s ! g ; isDet = True ; n = num.n} ;

    OrdSuperl a = {
      s = case a.isComp of {
        True => "mest" ++ a.s ! AF (APosit (Weak Sg)) Nom ;
        _    => a.s ! AF (ASuperl SupWeak) Nom
        }  ; 
      isDet = True
      } ;

    DefArt = {
      s = \\n,b,g => if_then_Str b (artDef (gennum g n)) [] ; 
      det = DDef Def
      } ;

    IndefArt = {
      s = table {
        Sg => \\_ => artIndef ; 
        Pl => \\_,_ => []
        } ; 
      det = DIndef
      } ;
{-
    MassDet = {s = \\_,_,_ => [] ; n = Sg ; det = DIndef} ;
-}
    UseN, UseN2 = \noun -> {
      s = \\n,d,c => noun.s ! n ! specDet d ! c ; 
           ---- part app wo c shows editor bug. AR 8/7/2007
      g = noun.g ;
      isMod = False
      } ;

-- The genitive of this $NP$ is not correct: "sonen till mig" (not "migs").

    ComplN2 f x = {
      s = \\n,d,c => f.s ! n ! specDet d ! Nom ++ f.c2 ++ x.s ! accusative ;
      g = f.g ;
      isMod = False
      } ;
    ComplN3 f x = {
      s = \\n,d,c => f.s ! n ! d ! Nom ++ f.c2 ++ x.s ! accusative ; 
      g = f.g ;
      c2 = f.c3 ;
      isMod = False
      } ;

    AdjCN ap cn = let g = cn.g in {
      s = \\n,d,c =>
            preOrPost ap.isPre 
             (ap.s ! agrAdj (gennum g n) d) 
             (cn.s ! n ! d ! c) ;
      g = g ;
      isMod = True
      } ;

    RelCN cn rs = let g = cn.g in {
      s = \\n,d,c => cn.s ! n ! d ! c ++ rs.s ! agrP3 g n ;
      g = g ;
      isMod = cn.isMod
      } ;
    AdvCN  cn sc = let g = cn.g in {
      s = \\n,d,c => cn.s ! n ! d ! c ++ sc.s ;
      g = g ;
      isMod = cn.isMod
      } ;
    SentCN  cn sc = let g = cn.g in {
      s = \\n,d,c => cn.s ! n ! d ! c ++ sc.s ;
      g = g ;
      isMod = cn.isMod
      } ;
    ApposCN  cn np = let g = cn.g in {
      s = \\n,d,c => cn.s ! n ! d ! Nom ++ np.s ! NPNom ; --c
      g = g ;
      isMod = cn.isMod
      } ;

}