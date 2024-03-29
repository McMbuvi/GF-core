--# -path=.:prelude:alltenses

concrete LexiconPnb of Lexicon = CatPnb ** 
--open ResPnb, Prelude in {
  open ParadigmsPnb,MorphoPnb, Prelude in {

  flags 
    optimize=values ;
    coding = utf8;

  lin
  airplane_N = mkN07 "jhaj" ;
  
  answer_V2S = mkV2  (compoundV "jwab" (mkV "dyna")) ;
  apartment_N = mkN01 "kmrh" ;
  apple_N = mkN02 "syb" ;
--  art_N = mkN "fn" ;
  ask_V2Q = mkV2 (mkV "pch'na") ;
  baby_N = mkN01 "bch" ;
  bad_A = mkAdj1 "bra" ;
--  bank_N = mkN "bank" ;
  beautiful_A = mkAdj1 "swny" ;
  become_VA = mkV "bnna";
  beer_N = mkN04 "Xrab" ;
  beg_V2V =  mkV2V (mkV "mangna") "sE" "kh" False;
  big_A = mkAdj1 "wDa" ;
  bike_N = mkN03 "saycl" ;
  bird_N = mkN01 "prndh" ;
  black_A =  mkAdj1 "kala" ;
  blue_A = mkAdj1 "nyla" ;
  boat_N = mkN03 "kXty" ;
  book_N = mkN04 "ktab" ;
  boot_N = mkN03 "jwta" ;
--  boss_N = mkN "Sahb" ;
  boy_N = mkN01 "mnDa" ;
  bread_N = mkN03 "rwty" ;
  break_V2 = mkV2 (mkV "twRna") ;
  broad_A = mkAdj1 "kh'la" ;
  brother_N2 = mkN2 (mkN01 "pra") (mkPrep "ka") "kE" ; --not correct
  brown_A = mkAdj1 "nswary" ;
--  butter_N = mkN "mkh'n" ;
  buy_V2 = mkV2 (mkV "Krydna");
  camera_N = mkN01 "kymrh" ;
  cap_N = mkN03 "twpy" ;
  car_N = mkN03 "gDy" ;
  carpet_N = mkN03 "tpay^y" ;
  cat_N = mkN03 "bly" ;
  ceiling_N = mkN01 "kwTh'a" ;
  chair_N = mkN03 "krsy" ;
--  cheese_N = mkN "pnyr" feminine ;
  child_N = mkN01 "bch"  ;
--  church_N = mkCmpdNoun "grja" (mkN "gh'r") ;
  city_N = mkN02 "Xhr" ;
  clean_A = mkAdj1 "Saf" ;
  clever_A = mkAdj1 "hwXyar" ;  
  close_V2 =  mkV2 (compoundV "bnd" do_V2); 
  coat_N = mkN04 "kwT" ;
  cold_A = mkAdj1 "Th'nDa" ;
  come_V = mkV "Ana" ;
--  computer_N = mkN "kmpywTr" ;
--  country_N = mkN "mlk" ;
--  cousin_N = mkCmpdNoun "cca" (mkN "zad") ; -- a compund noun made of two nouns
  cow_N = mkN05 "gaE" ;
  die_V = mkV "mrna" ;
  dirty_A = mkAdj1 "gnda" ;
--  distance_N3 = mkN3 (mkN "pynDa") (mkPrep "da") "dE" "twN"  ;
--  doctor_N = mkN "mealj" ;
  dog_N = mkN01 "kta" ;
  door_N = mkN01 "drwzh" ;
  drink_V2 = mkV2 (mkV "pyna");
  easy_A2V = mkA "swkh'a" "" ;
  eat_V2 = mkV2 (mkV "kh'ana") "" ;
  empty_A = mkAdj1 "Kaly" ;
--  enemy_N = mkN "dXmn" ;
--  factory_N = mkN "karKanh" ;
  father_N2 = mkN2 (mkN01 "aba") (mkPrep "da") "dE"  ;
  fear_VS = mkV "Drna";
  find_V2 = mkV2 (mkV "pana") ;
  fish_N = mkN03 "mch'ly" ;
  floor_N = mkN02 "frX" ;
  forget_V2 = mkV2 (mkV "bh'wlna") "nwN" ;
--  fridge_N = mkN "fryg" ;
  friend_N = mkN04 "dwst" ;
  fruit_N = mkN02 "ph'l" ;
--  fun_AV = mkAdj1V (regA "f?n") ;
  garden_N = mkN04 "baG" ;
  girl_N = mkN03 "kRy" ;
--  glove_N = mkN "dstanh" ;
  gold_N = mkN01 "swna" ;
  good_A = mkAdj1 "ach'a" ;
  go_V = mkV "jana" ;
  green_A = mkAdj1 "sbz" ;
--  harbour_N = mkCmpdNoun "bndr" (mkN "gah") ;
  hate_V2 = mkV2 (compoundV "nfrt" do_V2) ;
  hat_N = mkN03 "twpy" ;
--  have_V2 = dirV2 (mk5V "ha?e" "has" "had" "had" "ha??ng") ;
  hear_V2 = mkV2 (mkV "snna") ;
  hill_N = mkN03 "paRy" ;
  hope_VS = (compoundV "As" do_V2);
  horse_N = mkN01 "kwRa" ;
  hot_A = mkAdj1 "grm" ;
  house_N = mkN02 "gh'r" ;
  important_A = mkAdj1 "ahm" ;
--  industry_N = mkN "Snet" feminine ;
--  iron_N = mkN "lwha" ;
--  king_N = mkN "badXah" ;
  know_V2 = mkV2 (mkV "janna") ;
  know_VS = (mkV "janna") ;
  know_VQ = (mkV "janna") ;
  lake_N = mkN04 "jh'yl" ;
--  lamp_N = mkN "lymp" ;
  learn_V2 = mkV2 (mkV "skh'na") ;
--  leather_N = mkN "cmRa" ;
  leave_V2 = mkV2 (mkV "jana") ;
  like_V2 = mkV2 (compoundV "psnd" do_V2);
  listen_V2 = mkV2 (mkV "snna") ;
  live_V = mkV "rhna" ; ---- touch
  long_A = mkAdj1 "lmba" ;
  lose_V2 = mkV2 (compoundV "kh'w" (mkV "dyna")) ;
  love_N = mkN02 "mHbt" ;
  love_V2 = mkV2 (compoundV "pyar" do_V2) "nwN";
  man_N = mkN03 "Admy" ; -- not correct according to rules should be discussed
--  married_A2 = mkAdj1 "Xady?krna" "sE" ;
  meat_N = mkN02 "gwXt" ;
--  milk_N = mkN "dwdh'" ;
  moon_N = mkN02 "cn" ;
  mother_N2 = mkN2 (mkN05 "maN") (mkPrep "dy") "DE";   -- not covered need to be discussed
  mountain_N = mkN03 "paRy" ;
--  music_N = mkN "mwsyqy" ;
  narrow_A = mkAdj1 "baryk" ;
  new_A = mkAdj1 "nwa" ;
  newspaper_N = mkN04 "aKbar" ;
  oil_N = mkN02 "tyl" ;
  old_A = mkAdj1 "bwDa" ;
  open_V2 = mkV2 (mkV "kh'wlna") ;
  paint_V2A = mkV2 (compoundV "rng" do_V2) ;
--  paper_N = mkN "kaGz" ;
--  paris_PN = mkPN "pyrs" ;
--  peace_N = mkN "amn" ;
  pen_N = mkN04 "pnsl" ;
  planet_N = mkN01 "syarh" ;
--  plastic_N = mkN "plasTk" ;
  play_V2 = mkV2 (mkV "kh'yDna") ;
--  policeman_N = mkCmpdNoun "pwlys" (mkN "wala") ; 
--  priest_N = (mkN "pyGmbr") ;
--  probable_AS = mkAdj1S (regA "pr?bable") ;
  queen_N = mkN03 "Xhzady" ;
--  radio_N = mkN "ryDyw" ;
  rain_V0 = compoundV "barX" (mkV "hwna" ) ;
  read_V2 = mkV2 (mkV "pRh'na");
  red_A = mkAdj1 "lal" ;
--  religion_N = mkN "mzhb" ;
--  restaurant_N = mkN "hwTl" ;
--  river_N = mkN "drya" masculine ;
  rock_N = mkN04 "cTan" ;
--  roof_N = mkN "ch't"   masculine ;
  rubber_N = mkN04 "rbR" ;
  run_V = mkV "dwRna" ;
  say_VS = mkV "khna" ;
--  school_N = mkN "skwl" ;
--  science_N = mkN "sans" ;
  sea_N = mkN02 "smndr" ;
  seek_V2 = mkV2 (mkV "lbh'na" ) "nwN" ;
  see_V2 = mkV2 (mkV "wykh'na") "nwN" ;
  sell_V3 = mkV3 (mkV "wycna") "kw" "";
  send_V3 = mkV3 (mkV "pyjna") "kw" "";
--  sheep_N = mkN "bh'yR" feminine ;
--  ship_N = mkN "jhaz" ;
  shirt_N = mkN04 "qmyZ-";
  shoe_N = mkN01 "jwta" ;
--  shop_N = mkN "dwkan" feminine ;
  short_A = mkAdj1 "ch'wTa" ;
  silver_N = mkN03 "candy" ;
  sister_N = mkN04 "bhn" ;
  sleep_V = mkV "swna" ;
  small_A = mkAdj1 "ch'wTa" ;
--  snake_N = mkN "sanp" ;
  sock_N = mkN04 "jrab" ;
--  speak_V2 = mkV2 (mkV "bwlna") ;
  star_N = mkN01 "stara" ;
--  steel_N = mkN "styl" ;
--  stone_N = mkN "pth'r" ;
  stove_N = mkN01 "cwlha" ;
--  student_N = mkCmpdNoun "t-alb" (mkN "elm") ;
--  stupid_A = mkAdj1 "aHmq" ;
  sun_N = mkN02 "swrj" ;
  switch8off_V2 = mkV2 (mkV "clana") ;
  switch8on_V2 = mkV2 (compoundV "bnd" do_V2) ;
  table_N = mkN04 "myz" ;
  talk_V3 = mkV3 (mkV "bwlna") "sE" "";
  teacher_N = mkN02 "astad" ;
  teach_V2 = mkV2 (mkV "pRh'na") ;
--  television_N = mkN "telywyzn" ;
  thick_A = mkAdj1 "mwTa" ;
  thin_A = mkAdj1 "ptla" ;
  train_N = mkN03 "gDy" ;
  travel_V = (compoundV "pynDa" do_V2) ;
--  tree_N = mkN "drKt" masculine ;
-- ---- trousers_N = mkN "tr??sers" ;
  ugly_A = mkAdj1 "kwja" ;
  understand_V2 = mkV2 (mkV "smjh'na") ;
--  university_N = mkN "ywnywrsTy" ;
--  village_N = mkN "gawN" ;
  wait_V2 = mkV2 (compoundV "rah" (mkV "wykh'na")) ;
  walk_V = mkV "clna" ;
  warm_A = mkAdj1 "tta" ;
  war_N = mkN02 "jng" ;
  watch_V2 = mkV2 (mkV "wykh'na") ;
  water_N = mkN03 "pany" ; -- not covered masculine ending with y
  white_A = mkAdj1 "cTa" ;
--  window_N = mkN "kh'Rky" ;
  wine_N = mkN04 "Xrab";
  win_V2 = mkV2 (mkV "jytna") ;
  woman_N = mkN04 "ewrt" ;
  wonder_VQ = compoundV "Heran" (mkV "hwna") ;
  wood_N = mkN04 "lkRy" ;
  write_V2 = mkV2 (mkV "lkh'na") ;
  yellow_A = mkAdj1 "kh'Ta" ;
  young_A = mkAdj1 "jwan" ;
  do_V2 = mkV2 (mkV "krna")  ;
--  now_Adv = mkAdj1dv "ab" ;
--  already_Adv = mkAdj1dv "phlE?hy" ;
  song_N = mkN01 "gana" ;
  add_V3 = mkV3 (compoundV "wadh'a" do_V2) "" "" ;
  number_N = mkN01 "hndsh" ;
  put_V2 = mkV2 (mkV "Dalna") ;
  stop_V = mkV "rwkna"  ;
  jump_V = compoundV "ch'al" (mkV "marna") ;

  left_Ord = {s = "sja" ; n = singular};
  right_Ord = {s= "kh'ba" ; n = singular};
--  far_Adv = mkAdj1dv "dwr" ;
  correct_A = mkAdj1 "Syh" ;
  dry_A = mkAdj1 "swka" ;
  dull_A = mkAdj1 "nkh'Tw" ;
  full_A = mkAdj1 "pwra" ;
  heavy_A = mkAdj1 "pary" ;
  near_A = mkAdj1 "nyRE" ;
  rotten_A = mkAdj1 "Krab" ;
  round_A = mkAdj1 "gwl" ;
  sharp_A = mkAdj1 "tyz" ;
  smooth_A = mkAdj1 "pdra" ;
  straight_A = mkAdj1 "sda" ;
  wet_A = mkAdj1 "gla" ; ----
  wide_A = mkAdj1 "cwRa" ;
  animal_N = mkN02 "janwr" ;
--  ashes_N = mkN "rakh'" feminine; -- FIXME: plural only?
--  back_N = mkN "qmr" feminine ;
--  bark_N = mkN "bark" ;
--  belly_N = mkN "dh'ny" ;
  blood_N = mkN02 "lhw" ;
  bone_N = mkN03 "hDy" ;
--  breast_N = mkN "ch'aty" ;
--  cloud_N = mkN "badl" ;
  day_N = mkN04 "dn" ;
--  dust_N = mkN "dh'wl" ;
--  ear_N = mkN "kan" ;
--  earth_N = mkN "zmyn" feminine ;
  egg_N = mkN01 "anDh" ;
--  eye_N = mkN "Ankh'" feminine ;
  fat_N = mkN01 "mwta" ;
--  feather_N = mkN "pr" ;
--  fingernail_N = mkN "naKn" ;
--  fire_N = mkN "Ag" feminine ;
  flower_N = mkN02 "ph'wl" ;
--  fog_N = mkN "dh'nd" feminine ;
--  foot_N = mkN "pawN" ; -- not properly covered need to be discussed
  forest_N = mkN02 "njgl" ;
--  grass_N = mkN "gh's" feminine ;
--  guts_N = mkN "g?t" ; -- FIXME: no singular
--  hair_N = mkN "bal" ;
  hand_N = mkN02 "hth'" ;
  head_N = mkN02 "sr" ;
  heart_N = mkN02 "dl" ;
--  horn_N = mkN "gh'nty" ;
  husband_N = mkN01 "bnda" ;
  ice_N = mkN04 "brf" ;
--  knee_N = mkN "khny" ;
  leaf_N = mkN01 "pth" ;
--  leg_N = mkN "tang" ;
--  liver_N = mkN "jgr" ;
--  louse_N = mkN "gh'r" ;
--  mouth_N = mkN "mnh" ;
--  name_N = mkN "nam" ;
--  neck_N = mkN "grdn" feminine ;
  night_N = mkN02 "rat" ;
--  nose_N = mkN "nak" ;
--  person_N = mkN "XKS" ;
--  rain_N = mkN "barX" feminine ;
--  road_N = mkN "sRk" ;
  root_N = mkN02 "gR" ;
  rope_N = mkN03 "rsy" ;
--  salt_N = mkN "nmk" feminine ;
--  sand_N = mkN "ryt" feminine ;
--  seed_N = mkN "byj"  ;
  skin_N = mkN04 "jld" ;
  sky_N = mkN02 "Asman" ;
--  smoke_N = mkN "dh'waN"; -- singular masc nouns ending with aN,wN yet to be implemented
  snow_N = mkN04 "brf" ;
  stick_N = mkN03 "swTy" ;
  tail_N = mkN02 "pwXl" ;
  tongue_N = mkN04 "jyb" ;
--  tooth_N = mkN "dant" masculine;
  wife_N = mkN03 "jnany" ;
--  wind_N = mkN "Andh'y" ;
--  wing_N = mkN "pr" ;
  worm_N = mkN01 "tta" ;
  year_N = mkN02 "sal" ;
  blow_V = mkV "clna" ;
  breathe_V = compoundV "sah" (mkV "lyna" ) ;
  burn_V = mkV "jlna" ;
  dig_V = mkV "kh'wdna" ;
  fall_V = mkV "grna" ;
  float_V = mkV "tyrna" ;
  flow_V = mkV "bhna" ;
  fly_V = mkV "aDna" ;
  freeze_V = mkV "jmna" ;
  give_V3 = mkV3 (mkV "dyna") "nwN" "";
  laugh_V = mkV "hsna"  ;
--  lie_N = mkN "jh'wt" masculine ;
  lie_V = compoundV "ch'wTh'" (mkV "bwlna" );
  play_V = mkV "kh'ylna" ;
  sew_V = mkV "syna" ;
  sing_V = mkV "gana" ;
  sit_V = mkV "byTh'na" ;
  smell_V = mkV "swngna" ;
  spit_V = mkV "th'wkna" ;
  stand_V = mkV "kh'lwna";
  swell_V = mkV "swjna" ;
  swim_V = mkV "trna" ;
  think_V = mkV "swcna" ;
  turn_V = mkV "mRna" ;
  vomit_V = compoundV "alty" (mkV "krna") ;
  bite_V2 = mkV2 (mkV "kTna") ;
  count_V2 = mkV2 (mkV "gnna") ;
  cut_V2 = mkV2 (mkV "kTna") ;
  fear_V2 = mkV2 (mkV "Drna") ;
  fight_V2 = mkV2 (mkV "lRna") ;
  hit_V2 = mkV2 (compoundV "Th'wDa" (mkV "marna" ));
  hold_V2 = mkV2 (mkV "ph'Rna") ;
--  hunt_V2 = mkV2 (compoundV "Xkar" do_V2);
  kill_V2 =  mkV2 (compoundV "mar" (mkV "dyna" )) ;
  pull_V2 = mkV2 (mkV "kh'cna");
  push_V2 = mkV2 (compoundV "tka" (mkV "dyna")) "kw" ;
  rub_V2 = mkV2 (mkV "rgRna") ;
--  scratch_V2 = mkV2 (mkV "kh'rcna") "kw" ;
--  split_V2 = mkV2 (mkV "banta") "kw" ;
--  squeeze_V2 = dirV2 (regV "sq?eeze") ;
--  stab_V2 = dirV2 (regDuplV "stab") ;
  suck_V2 = mkV2 (mkV "cwnDna") ;
  throw_V2 = mkV2 (mkV "swTna") ;
  tie_V2 = mkV2 (mkV "bnna") ;
  wash_V2 = mkV2 (mkV "twna") ;
  wipe_V2 = mkV2 (mkV "pwnjh'na");

----  other_A = regA "?ther" ;

--  grammar_N = mkN "grdan" ;
  language_N = mkN04 "bwly" ;
--  rule_N = mkN "aSwl" ;

---- added 4/6/2007
    john_PN = mkPN "jan" ;
--    question_N = mkN "swal" ;
--    ready_A = regA "ready" ;
--    reason_N = mkN "wjh" feminine ;
--    today_Adv = mkAdj1dv "aj" ;
--    uncertain_A = mkAdj1 ["Gyr?yqyny"] ;
    
 
}
