concrete NumeralBul of Numeral = CatBul ** open Prelude, ResBul in {

lincat 
  Digit      = {s : DForm => CardOrd => Str} ;
  Sub10      = {s : DForm => CardOrd => Str; n : Number} ;
  Sub100     = {s : CardOrd => Str; n : Number; i : Bool} ;
  Sub1000    = {s : CardOrd => Str; n : Number; i : Bool} ;
  Sub1000000 = {s : CardOrd => Str; n : Number} ;

lin num x = x ;
lin n2 = mkDigit "���"    "�����"    "���"    "�����"    "������" ;
lin n3 = mkDigit "���"    "�����"    "���"    "�����"    "������" ;
lin n4 = mkDigit "������" "��������" "������" "��������" "������������" ;
lin n5 = mkDigit "���"    "������"   "���"    "����"     "���������" ;
lin n6 = mkDigit "����"   "�������"  "����"   "�����"    "����������" ;
lin n7 = mkDigit "�����"  "�������"  "�����"  "�����"    "�����������" ;
lin n8 = mkDigit "����"   "������"   "����"   "����"     "����������" ;
lin n9 = mkDigit "�����"  "��������" "�����"  "������"   "�����������" ;

lin pot01 =
      {s = table {
             unit    => table {
                          NCard DMascIndef          => "����" ;
                          NCard DMascDef            => "������" ;
                          NCard DMascDefNom         => "�������" ;
                          NCard DMascPersonalIndef  => "����" ;
                          NCard DMascPersonalDef    => "������" ;
                          NCard DMascPersonalDefNom => "�������" ;
                          NCard DFemIndef           => "����" ;
                          NCard DFemDef             => "������" ;
                          NCard DNeutIndef          => "����" ;
                          NCard DNeutDef            => "������" ;
                          NOrd  aform               => case aform of {
                                                         ASg Masc Indef => "�����" ;
                                                         ASg Masc Def   => "������" ;
                                                         ASgMascDefNom  => "�������" ;
                                                         ASg Fem  Indef => "�����" ;
                                                         ASg Fem  Def   => "�������" ;
                                                         ASg Neut Indef => "�����" ;
                                                         ASg Neut Def   => "�������" ;
                                                         APl Indef      => "�����" ;
                                                         APl Def        => "�������"
                                                       }
                        } ;
             teen    => mkCardOrd "����������" "�������������" "����������" "�����������" ;
             ten     => mkCardOrd "�����"      "��������"      "�����"      "������" ;
             hundred => mkCardOrd "���"        "�������"       "���"        "������"
           }
      ;n = Sg
      } ;
lin pot0 d = d ** {n = Pl} ;

lin pot110 = {s=pot01.s ! ten;  n = Pl; i = True} ;
lin pot111 = {s=pot01.s ! teen; n = Pl; i = True} ;
lin pot1to19 d = {s = d.s ! teen; n = Pl; i = True} ;
lin pot0as1 n = {s = n.s ! unit; n = n.n; i = True} ;
lin pot1 d = {s = d.s ! ten; n = Pl; i = True} ;
lin pot1plus d e = {
   s = \\c => d.s ! ten ! NCard DMascIndef ++ "�" ++ e.s ! unit ! c ; n = Pl; i = False} ;

lin pot1as2 n = n ;
lin pot2 n = {s = \\c => n.s ! hundred ! c; n = Pl; i = True} ;
lin pot2plus d e = {
  s = \\c => d.s ! hundred ! NCard DMascIndef ++ case e.i of {False => []; True  => "�"} ++ e.s ! c ;
  n = Pl ;
  i = False
  } ;

lin pot2as3 n = n ;
lin pot3 n = {
  s = \\c => case n.n of {
               Sg => mkCardOrd "������" "������" "������" "�������" ! c ;
               Pl => n.s ! NCard DFemIndef ++ mkCardOrd "������" "������" "������" "�������" ! c
             } ;
  n = Pl
  } ;
lin pot3plus n m = {
  s = \\c => (pot3 (n ** {lock_Sub1000=<>})).s ! NCard DMascIndef ++ case m.i of {False => []; True  => "�"} ++ m.s ! c ;
  n = Pl
  } ;


-- numerals as sequences of digits

  lincat 
    Dig = TDigit ;

  lin
    IDig d = d ** {tail = T1} ;

    IIDig d i = {
      s = \\o => d.s ! NCard DMascIndef ++ commaIf i.tail ++ i.s ! o ;
      n = Pl ;
      tail = inc i.tail
    } ;

    D_0 = mk2Dig "0" "0�" ;
    D_1 = mk3Dig "1" "1��" Sg ;
    D_2 = mk2Dig "2" "2��" ;
    D_3 = mkDig "3" ;
    D_4 = mkDig "4" ;
    D_5 = mkDig "5" ;
    D_6 = mkDig "6" ;
    D_7 = mk2Dig "7" "7��" ;
    D_8 = mk2Dig "8" "8��" ;
    D_9 = mkDig "9" ;

  oper
    commaIf : DTail -> Str = \t -> case t of {
      T3 => "," ;
      _ => []
      } ;

    inc : DTail -> DTail = \t -> case t of {
      T1 => T2 ;
      T2 => T3 ;
      T3 => T1
      } ;

    mk2Dig : Str -> Str -> TDigit = \c,o -> mk3Dig c o Pl ;
    mkDig : Str -> TDigit = \c -> mk2Dig c (c + "��") ;

    mk3Dig : Str -> Str -> Number -> TDigit = \c,o,n -> {
      s = table {NCard _ => c ; NOrd aform => regAdjective o ! aform} ;
      n = n
      } ;

    TDigit = {
      n : Number ;
      s : CardOrd => Str
    } ;
}