--# -path=.:present:prelude

concrete PeaceLexExt_Fin of PeaceLexExt = 
  PeaceCat_Fin ** open ParadigmsFin in {

  lin

    -- Adjectives
    dangerous_A = regA "vaarallinen" ;
    dead_A = mkA (nRae "kuollut" "kuolleena") ;
    hungry_A = regA "n�lk�inen" ;
    large_A = regA "iso" ;
    sick_A = regA "sairas" ;

    -- Nouns
    air_N = regN "ilma" ;
    arm_N = reg3N "k�si" "k�den" "k�si�" ;
    building_N = regN "rakennus" ;
    car_N = regN "auto" ;
    corpse_N = regN "ruumis" ;
    doctor_N = regN "l��k�ri";
    enemy_N = regN "vihollinen";
    face_N = regN "naama" ; ---- kasvot
    food_N = regN "ruoka";
    friend_N = regN "yst�v�";
    ground_N = regN "maa" ;
    knife_N = reg2N "veitsi" "veitsi�" ; ---- veist�
    landmine_N = regN "maamiina" ;
    map_N = regN "kartta" ;
    medicine_N = regN "l��ke" ;
    police8officer_N = regN "poliisi" ;
    skin_N = regN "iho" ;
    soldier_N = regN "sotilas" ;
    weapon_N = regN "ase";

    -- Verbs
    cough_V = regV "yski�" ;
    drop_V2 = dirV2 (regV "pudottaa") ;
    hurt_V = regV "sattua" ;
    need_V2 = dirV2 (regV "tarvita");
    own_V2 = dirV2 (regV "omistaa") ;
    show_V3 = dirdirV3 (regV "n�ytt��") ;

}