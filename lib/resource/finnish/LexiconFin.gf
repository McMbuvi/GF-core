--# -path=.:prelude

concrete LexiconFin of Lexicon = CatFin ** open MorphoFin, ParadigmsFin in {

flags 
  optimize=values ;


lin
  airplane_N = regN "lentokone" ;
  answer_V2S = mkV2S (regV "vastata") (casePrep allative) ;
  apartment_N = regN "asunto" ;
  apple_N = nLukko "omena" ; --- omenia, not omenoita
  art_N = regN "taide" ;
  ask_V2Q = mkV2Q (regV "kysy�") (casePrep ablative) ;
  baby_N = nLukko "vauva" ;
  bad_A = mkADeg (nLukko "paha") "pahempi" "pahin" ;
  bank_N = regN "pankki" ;
  beautiful_A = mkADeg (regN "kaunis") "kauniimpi" "kaunein" ;
  become_VA = mkVA (regV "tulla") (casePrep translative) ;
  beer_N = regN "olut" ;
  beg_V2V = mkV2V (reg2V "pyyt��" "pyysi") (casePrep partitive) ;
  big_A = mkADeg (sgpartN (nArpi "suuri") "suurta") "suurempi" "suurin" ;
  bike_N = nLukko "polkupy�r�" ; --- for correct vowel harmony
  bird_N = nLukko "lintu" ;
  black_A = mkADeg (nLukko "musta") "mustempi" "mustin" ;
  blue_A = mkADeg (regN "sininen") "sinisempi" "sinisin" ;
  boat_N = regN "vene" ;
  book_N = nLukko "kirja" ;
  boot_N = regN "saapas" ;
  boss_N = nLukko "pomo" ;
  boy_N = nKukko "poika" "pojan" "poikia" ;
  bread_N = nLukko "leip�" ;
  break_V2 = dirV2 (regV "rikkoa") ;
  broad_A = mkADeg (regN "leve�") "leve�mpi" "levein" ;
  brother_N2 = genN2 (
    mkN "veli" "veljen" "veljen�" "velje�" "veljeen" 
        "veljin�" "veljiss�" "veljien" "velji�" "veljiin") ;
  brown_A = mkADeg (regN "ruskea") "ruskeampi" "ruskein" ;
  butter_N = reg3N "voi" "voin" "voita" ;  ---- errors in Part
  buy_V2 = dirV2 (regV "ostaa") ;
  camera_N = nLukko "kamera" ;
  cap_N = regN "lakki" ;
  car_N = reg3N "auto" "auton" "autoja" ; -- regN: audon
  carpet_N = nLukko "matto" ;
  cat_N = nLukko "kissa" ;
  ceiling_N = nLukko "katto" ;
  chair_N = regN "tuoli" ;
  cheese_N = nLukko "juusto" ;
  child_N = mkN "lapsi" "lapsen" "lapsena" "lasta" "lapseen" 
            "lapsina" "lapsissa" "lasten" "lapsia" "lapsiin" ;
  church_N = nLukko "kirkko" ;
  city_N = regN "kaupunki" ;
  clean_A = regA "puhdas" ;
  clever_A = regA "viisas" ;
  close_V2 = dirV2 (regV "sulkea") ;
  coat_N = regN "takki" ;
  cold_A = mkADeg (nLukko "kylm�") "kylmempi" "kylmin" ;
  come_V = regV "tulla" ;
  computer_N = regN "tietokone" ;
  country_N = regN "maa" ;
  cousin_N = nLukko "serkku" ;
  cow_N = nLukko "lehm�" ;
  die_V = regV "kuolla" ;
  dirty_A = mkADeg (regN "likainen") "likaisempi" "likaisin" ;
  distance_N3 = mkN3 (regN "et�isyys") (casePrep elative) (casePrep illative) ;
  doctor_N = reg2N "tohtori" "tohtoreita" ;
  dog_N = nLukko "koira" ;
  door_N = nArpi "ovi" ;
  drink_V2 = dirV2 (regV "juoda") ;
  easy_A2V = mkA2V (mkADeg (nLukko "helppo") "helpompi" "helpoin") 
    (casePrep allative) ;
  eat_V2 = dirV2 (regV "sy�d�") ;
  empty_A = mkADeg (nLukko "tyhj�") "tyhjempi" "tyhjin" ;
  enemy_N = regN "vihollinen" ;
  factory_N = regN "tehdas" ;
  father_N2 = genN2 (nLukko "is�") ;
  fear_VS = mkVS (reg2V "pel�t�" "pelk�si") ;
  find_V2 = dirV2 (reg2V "l�yt��" "l�ysi") ;
  fish_N = nLukko "kala" ;
  floor_N = reg2N "lattia" "lattioita" ;
  forget_V2 = dirV2 (regV "unohtaa") ;
  fridge_N = regN "j��kaappi" ;
  friend_N = nLukko "yst�v�" ;
  fruit_N = nLukko "hedelm�" ;
  fun_AV = mkAV (mkADeg (nLukko "hauska") "hauskempi" "hauskin") ;
  garden_N = nKukko "puutarha" "puutarhan" "puutarhoja" ;
  girl_N = nLukko "tytt�" ;
  glove_N = regN "k�sine" ;
  gold_N = nLukko "kulta" ;
  good_A = mkADeg (nLukko "hyv�") "parempi" "parhain" ; --- paras
  go_V = regV "menn�" ;
  green_A = mkADeg (regN "vihre�") "vihre�mpi" "vihrein" ;
  harbour_N = nKukko "satama" "sataman" "satamia" ;
  hate_V2 = mkV2 (regV "vihata") cpartitive ;
  hat_N = nLukko "hattu" ;
  have_V2 = dirV2 (caseV adessive vOlla) ;
  hear_V2 = dirV2 (regV "kuulla") ;
  hill_N = nLukko "kukkula" ;
  hope_VS = mkVS (regV "toivoa") ;
  horse_N = regN "hevonen" ;
  hot_A = mkADeg (nLukko "kuuma") "kuumempi" "kuumin" ;
  house_N = nLukko "talo" ;
  important_A = mkADeg (regN "t�rke�") "t�rke�mpi" "t�rkein" ;
  industry_N = regN "teollisuus" ;
  iron_N = nLukko "rauta" ;
  king_N = regN "kuningas" ;
  know_V2 = dirV2 (reg2V "tiet��" "tiesi") ; --- tuntea; gives tiet�nyt
  lake_N = nSylki "j�rvi" ;
  lamp_N = nLukko "lamppu" ;
  learn_V2 = 
    dirV2 (mk12V "oppia" "oppii" "opin" "oppivat" "oppikaa" "opitaan"
      "oppi" "opin" "oppisi" "oppinut" "opittu" "opitun") ;
  leather_N = nLukko "nahka" ; --- nahan
  leave_V2 = dirV2 (regV "j�tt��") ;
  like_V2 = caseV2 (regV "pit��") elative ;
  listen_V2 = caseV2 (reg3V "kuunnella" "kuuntelen" "kuunteli") partitive ;
  live_V = regV "el��" ;
  long_A = mkADeg (nLukko "pitk�") "pitempi" "pisin" ;
  lose_V2 = dirV2 (regV "h�vit�") ; --- hukata
  love_N = reg3N "rakkaus" "rakkauden" "rakkauksia" ;
  love_V2 = caseV2 (regV "rakastaa") partitive ;
  man_N = mkN "mies" "miehen" "miehen�" "miest�" "mieheen" 
            "miehin�" "miehiss�" "miesten" "miehi�" "miehiin" ;
  married_A2 = 
    mkA2 (mkA (nRae "avioitunut" "avioituneena")) (postPrep genitive "kanssa") ;
  meat_N = nLukko "liha" ;
  milk_N = nLukko "maito" ;
  moon_N = regN "kuu" ;
  mother_N2 = genN2 (regN "�iti") ;
  mountain_N = nArpi "vuori" ;
  music_N = regN "musiikki" ;
  narrow_A = mkADeg (regN "kapea") "kapeampi" "kapein" ;
  new_A = mkADeg (reg3N "uusi" "uuden" "uusia") "uudempi" "uusin" ;
  newspaper_N = nSylki "sanomalehti" ; --- for correct vowel harmony
  oil_N = nLukko "�ljy" ;
  old_A = mkADeg (nLukko "vanha") "vanhempi" "vanhin" ;
  open_V2 = dirV2 (regV "avata") ;
  paint_V2A = mkV2A (regV "maalata") accPrep (casePrep translative) ;
  paper_N = reg2N "paperi" "papereita" ;
  paris_PN = mkPN (regN "Pariisi") ;
  peace_N = nLukko "rauha" ;
  pen_N = nLukko "kyn�" ;
  planet_N = nLukko "planeetta" ;
  plastic_N = regN "muovi" ;
  play_V2 = mkV2 (regV "pelata") cpartitive ; --- leikki�, soittaa
  policeman_N = regN "poliisi" ;
  priest_N = regN "pappi" ;
  probable_AS = mkAS --- for vowel harmony
    (mkADeg (nNainen "todenn�k�ist�") "tonenn�k�isempi" "todenn�l�isin") ; 
  queen_N = regN "kuningatar" ;
  radio_N = reg2N "radio" "radioita" ;
  rain_V0 = mkV0 (reg2V "sataa" "satoi") ;
  read_V2 = dirV2 (regV "lukea") ;
  red_A = regA "punainen" ;
  religion_N = nLukko "uskonto" ;
  restaurant_N = nLukko "ravintola" ;
  river_N = nArpi "joki" ;
  rock_N = reg2N "kallio" "kallioita" ;
  roof_N = nLukko "katto" ;
  rubber_N = regN "kumi" ;
  run_V = reg2V "juosta" "juoksi" ;
  say_VS = mkVS (regV "sanoa") ;
  school_N = nLukko "koulu" ;
  science_N = regN "tiede" ;
  sea_N = nMeri "meri" ;
  seek_V2 = mkV2 (regV "etsi�") cpartitive ;
  see_V2 = dirV2 (
    mk12V "n�hd�" "n�kee" "n�en" "n�kev�t" "n�hk��" "n�hd��n"
      "n�ki" "n�in" "n�kisi" "n�hnyt" "n�hty" "n�hdyn") ; 
  sell_V3 = dirV3 (regV "myyd�") allative ;
  send_V3 = dirV3 (regV "l�hett��") allative ;
  sheep_N = regN "lammas" ;
  ship_N = nLukko "laiva" ;
  shirt_N = nLukko "paita" ;
  shoe_N = nLukko "kenk�" ;
  shop_N = nLukko "kauppa" ;
  short_A = regA "lyhyt" ;
  silver_N = regN "hopea" ;
  sister_N = nLukko "sisko" ;
  sleep_V = regV "nukkua" ;
  small_A = mkADeg (reg2N "pieni" "pieni�") "pienempi" "pienin" ;
  snake_N = regN "k��rme" ;
  sock_N = nLukko "sukka" ;
  speak_V2 = mkV2 (regV "puhua") cpartitive ;
  star_N = nSylki "t�hti" ;
  steel_N = regN "ter�s" ;
  stone_N = nSylki "kivi" ;
  stove_N = reg3N "liesi" "lieden" "liesi�" ;
  student_N = reg2N "opiskelija" "opiskelijoita" ;
  stupid_A = regA "tyhm�" ;
  sun_N = nLukko "aurinko" ;
  switch8off_V2 = dirV2 (regV "sammuttaa") ; ---
  switch8on_V2 = dirV2 (regV "sytytt��") ; ---
  table_N = nLukko "p�yt�" ;
  talk_V3 = mkV3 (regV "puhua") (casePrep allative) (casePrep elative) ;
  teacher_N = nLukko "opettaja" ;
  teach_V2 = dirV2 (regV "opettaa") ;
  television_N = reg2N "televisio" "televisioita" ;
  thick_A = regA "paksu" ;
  thin_A = regA "ohut" ;
  train_N = nLukko "juna" ;
  travel_V = regV "matkustaa" ;
  tree_N = regN "puu" ;
 ---- trousers_N = regN "trousers" ;
  ugly_A = mkADeg (nLukko "ruma") "rumempi" "rumin" ;
  understand_V2 = dirV2 (reg3V "ymm�rt��" "ymm�rr�n" "ymm�rsi") ;
  university_N = nLukko "yliopisto" ;
  village_N = nLukko "kyl�" ;
  wait_V2 = caseV2 (regV "odottaa") partitive ;
  walk_V = regV "k�vell�" ;
  warm_A = mkADeg 
    (mkN "l�mmin" "l�mpim�n" "l�mpim�n�" "l�mmint�" "l�mpim��n" 
         "l�mpimin�" "l�mpimiss�" "l�mpimien" "l�mpimi�" "l�mpimiin"
	 ) 
    "l�mpim�mpi" "l�mpimin" ;
  war_N = nLukko "sota" ;
  watch_V2 = mkV2 (regV "katsella") cpartitive ;
  water_N = reg3N "vesi" "veden" "vesi�" ;
  white_A = regA "valkoinen" ;
  window_N = reg2N "ikkuna" "ikkunoita" ;
  wine_N = regN "viini" ;
  win_V2 = dirV2 (regV "voittaa") ;
  woman_N = regN "nainen" ;
  wonder_VQ = mkVQ (regV "ihmetell�") ;
  wood_N = regN "puu" ;
  write_V2 = dirV2 (regV "kirjoittaa") ;
  yellow_A = regA "keltainen" ;
  young_A = mkADeg (nArpi "nuori") "nuorempi" "nuorin" ;

  do_V2 = dirV2 (
    mk12V "tehd�" "tekee" "teen" "tekev�t" "tehk��" "tehd��n"
      "teki" "tein" "tekisi" "tehnyt" "tehty" "tehdyn") ; 

  now_Adv = mkAdv "nyt" ;
  already_Adv = mkAdv "jo" ;
  song_N = nLukko "laulu" ;
  add_V3 = dirV3 (regV "lis�t�") illative ;
  number_N = reg2N "numero" "numeroita" ;
  put_V2 = dirV2 (regV "panna") ;
  stop_V = regV "pys�hty�" ;
  jump_V = regV "hyp�t�" ;
  left_Ord = mkOrd (regN "vasen") ;
  right_Ord = mkOrd (regN "oikea") ;
  far_Adv = mkAdv "kaukana" ;
  correct_A = regA "oikea" ;
  dry_A = mkADeg (regN "kuiva") "kuivempi" "kuivin" ;
  dull_A = mkADeg (regN "tyls�") "tylsempi" "tylsin" ;
  full_A = mkADeg (reg3N "t�ysi" "t�yden" "t�ysi�") "t�ydempi" "t�ysin" ;
  heavy_A = regA "raskas" ;
  near_A = regA "l�heinen" ;
  rotten_A = regA "m�t�" ;
  round_A = regA "py�re�" ;
  sharp_A = regA "ter�v�" ;
  smooth_A = regA "sile�" ;
  straight_A = mkADeg (regN "suora") "suorempi" "suorin" ;
  wet_A = mkADeg (regN "m�rk�") "m�rempi" "m�rin" ;
  wide_A = regA "leve�" ;
  animal_N = reg3N "el�in" "el�imen" "el�imi�" ;
  ashes_N = regN "tuhka" ;
  back_N = regN "selk�" ;
  bark_N = regN "kaarna" ;
  belly_N = regN "vatsa" ;
  blood_N = nMeri "veri" ;
  bone_N = regN "luu" ;
  breast_N = regN "rinta" ;
  cloud_N = reg2N "pilvi" "pilvi�" ;
  day_N = regN "p�iv�" ;
  dust_N = regN "p�ly" ;
  ear_N = regN "korva" ;
  earth_N = regN "maa" ;
  egg_N = regN "muna" ;
  eye_N = regN "silm�" ;
  fat_N = regN "rasva" ;
  feather_N = reg3N "h�yhen" "h�yhenen" "h�yheni�" ;
  fingernail_N = reg3N "kynsi" "kynnen" "kynsi�" ;
  fire_N = reg2N "tuli" "tulia" ;
  flower_N = regN "kukka" ;
  fog_N = regN "sumu" ;
  foot_N = regN "jalka" ;
  forest_N = regN "mets�" ;
  grass_N = regN "ruoho" ;
  guts_N = regN "sis�lmys" ; --- suoli
  hair_N = regN "hius" ;
  hand_N = reg3N "k�si" "k�den" "k�si�" ;
  head_N = regN "p��" ;
  heart_N = reg3N "syd�n" "syd�men" "syd�mi�" ;
  horn_N = reg2N "sarvi" "sarvia" ;
  husband_N = mkN "mies" "miehen" "miehen�" "miest�" "mieheen" 
            "miehin�" "miehiss�" "miesten" "miehi�" "miehiin" ; 
  ice_N = regN "j��" ;
  knee_N = reg2N "polvi" "polvia" ;
  leaf_N = reg2N "lehti" "lehti�" ;
  leg_N = regN "jalka" ; --- s��ri
  liver_N = regN "maksa" ;
  louse_N = regN "lude" ;
  mouth_N = regN "suu" ;
  name_N = reg2N "nimi" "nimi�" ;
  neck_N = regN "niska" ;
  night_N = regN "y�" ;
  nose_N = regN "nen�" ;
  person_N = regN "henkil�" ;
  rain_N = regN "sade" ;
  road_N = regN "tie" ;
  root_N = reg2N "juuri" "juuria" ;
  rope_N = reg3N "k�ysi" "k�yden" "k�ysi�" ;
  salt_N = regN "suola" ;
  sand_N = regN "hiekka" ;
  seed_N = regN "siemen" ;
  skin_N = regN "nahka" ;
  sky_N = reg3N "taivas" "taivaan" "taivaita" ;
  smoke_N = regN "savu" ;
  snow_N = sgpartN (nMeri "lumi") "lunta" ;
  stick_N = regN "keppi" ;
  tail_N = regN "h�nt�" ;
  tongue_N = reg2N "kieli" "kieli�" ;
  tooth_N = regN "hammas" ;
  wife_N = regN "vaimo" ;
  wind_N = reg2N "tuuli" "tuulia" ;
  wing_N = reg2N "siipi" "siipi�" ;
  worm_N = regN "mato" ;
  year_N = reg3N "vuosi" "vuoden" "vuosia" ;
  bite_V2 = dirV2 (regV "purra") ;
  blow_V = regV "puhaltaa" ;
  burn_V = regV "palaa" ;
  count_V2 = dirV2 (regV "laskea") ;
  cut_V2 = dirV2 (reg2V "leikata" "leikkasi") ;
  dig_V = regV "kaivaa" ;
  fall_V = reg3V "pudota" "putoan" "putosi" ;
  fear_V2 = mkV2 (reg3V "pel�t�" "pelk��n" "pelk�si") cpartitive ;
  fight_V2 = mkV2 (regV "taistella") (postPrep partitive "vastaan") ;
  float_V = regV "kellua" ;
  flow_V = reg3V "virrata" "virtaan" "virtasi" ;
  fly_V = regV "lent��" ;
  freeze_V = regV "j��ty�" ;
  give_V3 = dirdirV3 (reg3V "antaa" "annan" "antoi") ;
  hit_V2 = mkV2 (regV "ly�d�") cpartitive ;
  hold_V2 = mkV2 (regV "pit��") cpartitive ;
  hunt_V2 = mkV2 (regV "mets�st��") cpartitive ;
  kill_V2 = dirV2 (regV "tappaa") ;
  laugh_V = reg3V "nauraa" "nauran" "nauroi" ;
  lie_V = reg3V "maata" "makaan" "makasi" ;
  play_V = regV "pelata" ;
  pull_V2 = dirV2 (regV "vet��") ;
  push_V2 = dirV2 (regV "ty�nt��") ;
  rub_V2 = mkV2 (regV "hieroa") cpartitive ;
  scratch_V2 = mkV2 (regV "raapia") cpartitive ;
  sew_V = regV "kylv��" ;
  sing_V = regV "laulaa" ;
  sit_V = regV "istua" ;
  smell_V = reg2V "haistaa" "haistoi" ;
  spit_V = regV "sylke�" ;
  split_V2 = dirV2 (reg2V "halkaista" "halkaisi") ;
  squeeze_V2 = mkV2 (regV "puristaa") cpartitive ;
  stab_V2 = mkV2 (regV "pist��") cpartitive ;
  stand_V = mk12V "seist�" "seisoo" "seison" "seisovat" "seisk��" "seist��n"
      "seisoi" "seisoin" "seisoisi" "seissyt" "seisty" "seistyn" ; --- *seisoiv�t
  suck_V2 = mkV2 (regV "ime�") cpartitive ;
  swell_V = mk12V "turvota" "turpoaa" "turpoan" "turpoavat" "turvotkaa" "turvotaan"
      "turposi" "turposin" "turpoaisi" "turvonnut" "turvottu" "turvotun" ;
  swim_V = reg3V "uida" "uin" "ui" ;
  think_V = reg3V "ajatella" "ajattelen" "ajatteli" ;
  throw_V2 = dirV2 (regV "heitt��") ;
  tie_V2 = dirV2 (regV "sitoa") ;
  turn_V = regV "k��nty�" ;
  vomit_V = regV "oksentaa" ;
  wash_V2 = dirV2 (regV "pest�") ;
  wipe_V2 = dirV2 (regV "pyyhki�") ;

  breathe_V = regV "hengitt��" ;

  grammar_N = regN "kielioppi" ;
  language_N = reg2N "kieli" "kieli�" ;
  rule_N = regN "s��nt�" ;

    john_PN = regPN "Jussi" ;
    question_N = regN "kysymys" ;
    ready_A = regA "valmis" ;
    reason_N = regN "syy" ;
    today_Adv = mkAdv "t�n��n" ;
    uncertain_A = regA "ep�varma" ;

 oper
    mkOrd : N -> Ord ;
    mkOrd x = {s = \\n,c => x.s ! NCase n c; lock_Ord = <> } ;
    cpartitive = casePrep partitive ;

} ;