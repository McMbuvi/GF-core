concrete ExtraBul of ExtraBulAbs = CatBul ** 
  open ResBul, Coordination, Prelude in {

  lin
    PossIndefPron p = {
      s = \\aform => p.gen ! (indefAForm ! aform) ;
      spec = Indef
      } ;
      
    ReflQuant = {
      s = \\aform => reflPron ! aform ;
      spec = Indef
    } ;

    ReflIndefQuant = {
      s = \\aform => reflPron ! (indefAForm ! aform) ;
      spec = Indef
    } ;

    i8fem_Pron  = mkPron "��" "���" "��" "���" "���" "����" "���" "�����" "���" "�����" "���" "�����" (GSg Fem)  P1 ;
    i8neut_Pron = mkPron "��" "���" "��" "���" "���" "����" "���" "�����" "���" "�����" "���" "�����" (GSg Neut) P1 ;
    
    whatSg8fem_IP  = mkIP "�����" "�����" (GSg Fem) ;
    whatSg8neut_IP = mkIP "�����" "�����" (GSg Neut) ;

    whoSg8fem_IP  = mkIP "���" "����" (GSg Fem) ;
    whoSg8neut_IP = mkIP "���" "����" (GSg Neut) ;
    
    youSg8fem_Pron  = mkPron "��" "���" "��" "����" "����" "�����" "����" "������" "����" "������" "����" "������" (GSg Fem) P2 ;
    youSg8neut_Pron = mkPron "��" "���" "��" "����" "����" "�����" "����" "������" "����" "������" "����" "������" (GSg Neut) P2 ;
    
    youPol8fem_Pron  = mkPron "���" "���" "��" "���" "�����" "������" "����" "������" "����" "������" "����" "������" (GSg Fem) P2 ;
    youPol8neut_Pron = mkPron "���" "���" "��" "���" "�����" "������" "����" "������" "����" "������" "����" "������" (GSg Neut) P2 ;

    onePl_Num = {s = table {
                       DMascIndef | DMascPersonalIndef | DFemIndef | DNeutIndef                             => "����" ;
                       DMascDef | DMascDefNom | DMascPersonalDef | DMascPersonalDefNom | DFemDef | DNeutDef => "������"
                     } ;
                 n = Pl;
                 nonEmpty = True
                } ;

    UttImpSg8fem  pol imp = {s = pol.s ++ imp.s ! pol.p ! GSg Fem} ;
    UttImpSg8neut pol imp = {s = pol.s ++ imp.s ! pol.p ! GSg Fem} ;
    
  oper
    reflPron : AForm => Str =
      table {
        ASg Masc Indef => "����" ;
        ASg Masc Def   => "����" ;
        ASgMascDefNom  => "�����" ;
        ASg Fem  Indef => "����" ;
        ASg Fem  Def   => "������" ;
        ASg Neut Indef => "����" ;
        ASg Neut Def   => "������" ;
        APl Indef      => "����" ;
        APl Def        => "������"
      } ;
      
    indefAForm : AForm => AForm =
      table {
        ASg g _       => ASg g Indef ;
        ASgMascDefNom => ASg Masc Indef ;
        APl _         => APl Indef
      } ;
} 