concrete ConjunctionLat of Conjunction = 
  CatLat ** open ResLat, Coordination, Prelude in {

  flags optimize=all_subs ;

  lin

    ConjS = conjunctDistrSS ;

    ConjAdv = conjunctDistrSS ;

    ConjNP conj ss = conjunctDistrTable Case conj ss ** {
      a = conjAgr (agrP3 conj.n) ss.a
      } ;

    ConjAP conj ss = conjunctDistrTable Agr conj ss ** {
      isPre = ss.isPre
      } ;

{---b

    ConjS = conjunctSS ;
    DConjS = conjunctDistrSS ;

    ConjAdv = conjunctSS ;
    DConjAdv = conjunctDistrSS ;

    ConjNP conj ss = conjunctTable Case conj ss ** {
      a = conjAgr (agrP3 conj.n) ss.a 
      } ;
    DConjNP conj ss = conjunctDistrTable Case conj ss ** {
      a = conjAgr (agrP3 conj.n) ss.a
      } ;

    ConjAP conj ss = conjunctTable Agr conj ss ** {
      isPre = ss.isPre
      } ;
    DConjAP conj ss = conjunctDistrTable Agr conj ss ** {
      isPre = ss.isPre
      } ;
-}

-- These fun's are generated from the list cat's.

    BaseS = twoSS ;
    ConsS = consrSS comma ;
    BaseAdv = twoSS ;
    ConsAdv = consrSS comma ;
    BaseNP x y = twoTable Case x y ** {a = conjAgr x.a y.a} ;
    ConsNP xs x = consrTable Case comma xs x ** {a = conjAgr xs.a x.a} ;
    BaseAP x y = twoTable Agr x y ** {isPre = andB x.isPre y.isPre} ;
    ConsAP xs x = consrTable Agr comma xs x ** {isPre = andB xs.isPre x.isPre} ;

  lincat
    [S] = {s1,s2 : Str} ;
    [Adv] = {s1,s2 : Str} ;
    [NP] = {s1,s2 : Case => Str ; a : Agr} ;
    [AP] = {s1,s2 : Agr => Str ; isPre : Bool} ;

}