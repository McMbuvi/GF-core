
instance LexWikiSwe of LexWiki = open SyntaxSwe, IrregSwe, ParadigmsSwe in {

	flags coding = utf8 ;

	oper
-- Sentences														
		singleWordCommand_Utt verb			= mkUtt politeImpForm positivePol (mkImp verb) ;
		command_Utt verb det noun			= mkUtt politeImpForm positivePol (mkImp (mkVP (mkV2 verb) (mkNP det noun))) ;
		randomlyCommand_Utt verb det noun	= mkUtt politeImpForm positivePol (mkImp (mkVP (mkAdV "slumpmässigt") (mkVP (mkV2 verb) (mkNP det noun)))) ;
		label_Utt noun						= mkUtt (mkNP (nounPN noun)) ;	
		countryName_Utt pn					= mkUtt (mkNP pn) ;		
		cuisineName_Utt pn					= mkUtt (mkNP pn) ;		
														
-- Verbs								
		cancel_V		= mkV "avbryt" ;
		select_V		= mkV "väljer" ;
		edit_V			= mkV "redigerar" ;
		save_V			= mkV "sparar" ;
		add_V			= mkV (mkV "lägger") "till" ;
		undo_V			= mkV "ångrar" ;
		redo_V			= mkV "upprepar" ;
		cut_V			= mkV (mkV "klipper") "ut" ;
		copy_V			= mkV "kopierar" ;
		paste_V			= mkV (mkV "klistrar") "in" ;
		delete_V		= mkV "raderar" ;
		refine_V		= mkV "raffinerar" ;									-- FIX!!!
		replace_V		= mkV "ersätter" ;
		wrap_V			= mkV "förpackar" ;										-- FIX!!!
														
-- Nouns														
--	Information													
		information_N	= mkN "information" ;
		name_N			= mkN "namn" "namnet" "namn" "namnen" ;
		address_N		= mkN "adress" ;
		city_N			= mkN "stad" "städer" ;
		state_N			= mkN "stat" ;
		postalcode_N	= mkN "postnummer" "postnumret" "postnummer" "postnumren" ;
		country_N		= mkN "land" "landet" "länder" "länderna" ;
		phone_N			= mkN "telefonnummer" "telefonnumret" "telefonnummer" "telefonnumren" ;
		cuisine_N		= mkN "kök" "köket" "kök" "köken" ;
		language_N		= mkN "språk" "språket" "språk" "språken" ;
														
--	Misc													
		page_N			= mkN "sida" ;
		index_N			= mkN "index" "indexet" "index" "indexen" ;
		review_N		= mkN "recension" ;
		restaurant_N	= mkN "restaurang" ;
		food_N			= mkN "mat" ;
		service_N		= mkN "betjäning" ;
		node_N			= mkN "nod" ;
		tree_N			= mkN "träd" "trädet" "träd" "träden" ;
														
-- Proper Nouns														
--	Countries							
		Andorra_PN									= mkPN "Andorra" ;
		UnitedArabEmirates_PN						= mkPN "Förenade Arabemiraten" ;
		Afghanistan_PN								= mkPN "Afghanistan" ;
		AntiguaAndBarbuda_PN						= mkPN "Antigua och Barbuda" ;
		Anguilla_PN									= mkPN "Anguilla" ;
		Albania_PN									= mkPN "Albanien" ;
		Armenia_PN									= mkPN "Armenien" ;
		NetherlandsAntilles_PN						= mkPN "Nederländska Antillerna" ;
		Angola_PN									= mkPN "Angola" ;
		Antarctica_PN								= mkPN "Antarktis" ;
		Argentina_PN								= mkPN "Argentina" ;
		AmericanSamoa_PN							= mkPN "Amerikanska Samoa" ;
		Austria_PN									= mkPN "Österrike" ;
		Australia_PN								= mkPN "Australien" ;
		Aruba_PN									= mkPN "Aruba" ;
		AlandIslands_PN								= mkPN "Åland" ;
		Azerbaijan_PN								= mkPN "Azerbajdzjan" ;
		BosniaAndHerzegovina_PN						= mkPN "Bosnien-Hercegovina" ;
		Barbados_PN									= mkPN "Barbados" ;
		Bangladesh_PN								= mkPN "Bangladesh" ;
		Belgium_PN									= mkPN "Belgien" ;
		BurkinaFaso_PN								= mkPN "Burkina Faso" ;
		Bulgaria_PN									= mkPN "Bulgarien" ;
		Bahrain_PN									= mkPN "Bahrain" ;
		Burundi_PN									= mkPN "Burundi" ;
		Benin_PN									= mkPN "Benin" ;
		Bermuda_PN									= mkPN "Bermuda" ;
		Brunei_PN									= mkPN "Brunei" ;
		Bolivia_PN									= mkPN "Bolivia" ;
		Brazil_PN									= mkPN "Brasilien" ;
		Bahamas_PN									= mkPN "Bahamas" ;
		Bhutan_PN									= mkPN "Bhutan" ;
		BouvetIsland_PN								= mkPN "Bouvetön" ;
		Botswana_PN									= mkPN "Botswana" ;
		Belarus_PN									= mkPN "Vitryssland" ;
		Belize_PN									= mkPN "Belize" ;
		Canada_PN									= mkPN "Kanada" ;
		CocosIslands_PN								= mkPN "Kokosöarna" ;
		CongoDemocraticRepublicofthe_PN				= mkPN "Demokratiska republiken Kongo" ;
		CentralAfricanRepublic_PN					= mkPN "Centralafrikanska republiken" ;
		Congo_PN									= mkPN "Kongo" ;
		Switzerland_PN								= mkPN "Schweiz" ;
		CotedIvoire_PN								= mkPN "Elfenbenskusten" ;
		CookIslands_PN								= mkPN "Cooköarna" ;
		Chile_PN									= mkPN "Chile" ;
		Cameroon_PN									= mkPN "Kamerun" ;
		China_PN									= mkPN "Kina" ;
		Colombia_PN									= mkPN "Colombia" ;
		CostaRica_PN								= mkPN "Costa Rica" ;
		SerbiaAndMontenegro_PN						= mkPN "Serbien och Montenegro" ;
		Cuba_PN										= mkPN "Kuba" ;
		CapeVerde_PN								= mkPN "Kap Verde" ;
		ChristmasIsland_PN							= mkPN "Julön" ;
		Cyprus_PN									= mkPN "Cypern" ;
		CzechRepublic_PN							= mkPN "Tjeckien" ;
		Germany_PN									= mkPN "Tyskland" ;
		Djibouti_PN									= mkPN "Djibouti" ;
		Denmark_PN									= mkPN "Danmark" ;
		Dominica_PN									= mkPN "Dominica" ;
		DominicanRepublic_PN						= mkPN "Dominikanska republiken" ;
		Algeria_PN									= mkPN "Algeriet" ;
		Ecuador_PN									= mkPN "Ecuador" ;
		Estonia_PN									= mkPN "Estland" ;
		Egypt_PN									= mkPN "Egypten" ;
		WesternSahara_PN							= mkPN "Västsahara" ;
		Eritrea_PN									= mkPN "Eritrea" ;
		Spain_PN									= mkPN "Spanien" ;
		Ethiopia_PN									= mkPN "Etiopien" ;
		Finland_PN									= mkPN "Finland" ;
		Fiji_PN										= mkPN "Fiji" ;
		FalklandIslands_PN							= mkPN "Falklandsöarna" ;
		Micronesia_PN								= mkPN "Mikronesien" ;
		FaroeIslands_PN								= mkPN "Färöarna" ;
		France_PN									= mkPN "Frankrike" ;
		Gabon_PN									= mkPN "Gabon" ;
		UnitedKingdom_PN							= mkPN "Storbritannien" ;
		Grenada_PN									= mkPN "Grenada" ;
		Georgia_PN									= mkPN "Georgia" ;
		FrenchGuiana_PN								= mkPN "Franska Guyana" ;
		Guernsey_PN									= mkPN "Guernsey" ;
		Ghana_PN									= mkPN "Ghana" ;
		Gibraltar_PN								= mkPN "Gibraltar" ;
		Greenland_PN								= mkPN "Grönland" ;
		Gambia_PN									= mkPN "Gambia" ;
		Guinea_PN									= mkPN "Guinea" ;
		Guadeloupe_PN								= mkPN "Guadeloupe" ;
		EquatorialGuinea_PN							= mkPN "Ekvatorialguinea" ;
		Greece_PN									= mkPN "Grekland" ;
		SouthGeorgiaAndTheSouthSandwichIslands_PN	= mkPN "Sydgeorgien och Sydsandwichöarna" ;
		Guatemala_PN								= mkPN "Guatemala" ;
		Guam_PN										= mkPN "Guam" ;
		GuineaBissau_PN								= mkPN "Guinea-Bissau" ;
		Guyana_PN									= mkPN "Guyana" ;
		HongKong_PN									= mkPN "Hongkong" ;
		HeardIslandAndMcDonaldIslands_PN			= mkPN "Heardön och McDonaldöarna" ;
		Honduras_PN									= mkPN "Honduras" ;
		Croatia_PN									= mkPN "Kroatien" ;
		Haiti_PN									= mkPN "Haiti" ;
		Hungary_PN									= mkPN "Ungern" ;
		Indonesia_PN								= mkPN "Indonesien" ;
		Ireland_PN									= mkPN "Irland" ;
		Israel_PN									= mkPN "Israel" ;
		IsleofMan_PN								= mkPN "Isle of Man" ;
		India_PN									= mkPN "Indien" ;
		BritishIndianOceanTerritory_PN				= mkPN "Brittiska territoriet i Indiska Oceanen" ;
		Iraq_PN										= mkPN "Irak" ;
		Iran_PN										= mkPN "Iran" ;
		Iceland_PN									= mkPN "Island" ;
		Italy_PN									= mkPN "Italien" ;
		Jersey_PN									= mkPN "Jersey" ;
		Jamaica_PN									= mkPN "Jamaica" ;
		Jordan_PN									= mkPN "Jordanien" ;
		Japan_PN									= mkPN "Japan" ;
		Kenya_PN									= mkPN "Kenya" ;
		Kyrgyzstan_PN								= mkPN "Kirgizistan" ;
		Cambodia_PN									= mkPN "Kambodja" ;
		Kiribati_PN									= mkPN "Kiribati" ;
		Comoros_PN									= mkPN "Komorerna" ;
		SaintKittsAndNevis_PN						= mkPN "St Kitts och Nevis" ;
		NorthKorea_PN								= mkPN "Nordkorea" ;
		SouthKorea_PN								= mkPN "Sydkorea" ;
		Kuwait_PN									= mkPN "Kuwait" ;
		CaymanIslands_PN							= mkPN "Caymanöarna" ;
		Kazakhstan_PN								= mkPN "Kazakstan" ;
		Laos_PN										= mkPN "Laos" ;
		Lebanon_PN									= mkPN "Libanon" ;
		SaintLucia_PN								= mkPN "St Lucia" ;
		Liechtenstein_PN							= mkPN "Liechtenstein" ;
		SriLanka_PN									= mkPN "Sri Lanka" ;
		Liberia_PN									= mkPN "Liberia" ;
		Lesotho_PN									= mkPN "Lesotho" ;
		Lithuania_PN								= mkPN "Litauen" ;
		Luxembourg_PN								= mkPN "Luxemburg" ;
		Latvia_PN									= mkPN "Lettland" ;
		Libya_PN									= mkPN "Libyen" ;
		Morocco_PN									= mkPN "Marocko" ;
		Monaco_PN									= mkPN "Monaco" ;
		Moldova_PN									= mkPN "Moldavien" ;
		Montenegro_PN								= mkPN "Montenegro" ;
		Madagascar_PN								= mkPN "Madagaskar" ;
		MarshallIslands_PN							= mkPN "Marshallöarna" ;
		Macedonia_PN								= mkPN "Makedonien" ;
		Mali_PN										= mkPN "Mali" ;
		Myanmar_PN									= mkPN "Myanmar" ;
		Mongolia_PN									= mkPN "Mongoliet" ;
		Macao_PN									= mkPN "Macao" ;
		NorthernMarianaIslands_PN					= mkPN "Nordmarianerna" ;
		Martinique_PN								= mkPN "Martinique" ;
		Mauritania_PN								= mkPN "Mauretanien" ;
		Montserrat_PN								= mkPN "Montserrat" ;
		Malta_PN									= mkPN "Malta" ;
		Mauritius_PN								= mkPN "Mauritius" ;
		Maldives_PN									= mkPN "Maldiverna" ;
		Malawi_PN									= mkPN "Malawi" ;
		Mexico_PN									= mkPN "Mexiko" ;
		Malaysia_PN									= mkPN "Malaysia" ;
		Mozambique_PN								= mkPN "Moçambique" ;
		Namibia_PN									= mkPN "Namibia" ;
		NewCaledonia_PN								= mkPN "Nya Kaledonien" ;
		Niger_PN									= mkPN "Niger" ;
		NorfolkIsland_PN							= mkPN "Norfolkön" ;
		Nigeria_PN									= mkPN "Nigeria" ;
		Nicaragua_PN								= mkPN "Nicaragua" ;
		Netherlands_PN								= mkPN "Nederländerna" ;
		Norway_PN									= mkPN "Norge" ;
		Nepal_PN									= mkPN "Nepal" ;
		Nauru_PN									= mkPN "Nauru" ;
		Niue_PN										= mkPN "Niue" ;
		NewZealand_PN								= mkPN "Nya Zeeland" ;
		Oman_PN										= mkPN "Oman" ;
		Panama_PN									= mkPN "Panama" ;
		Peru_PN										= mkPN "Peru" ;
		FrenchPolynesia_PN							= mkPN "Franska Polynesien" ;
		PapuaNewGuinea_PN							= mkPN "Papua Nya Guinea" ;
		Philippines_PN								= mkPN "Filippinerna" ;
		Pakistan_PN									= mkPN "Pakistan" ;
		Poland_PN									= mkPN "Polen" ;
		SaintPierreAndMiquelon_PN					= mkPN "St. Pierre och Miquelon" ;
		Pitcairn_PN									= mkPN "Pitcairn" ;
		PuertoRico_PN								= mkPN "Puerto Rico" ;
		PalestinianTerritory_PN						= mkPN "Palestinska territoriet" ;
		Portugal_PN									= mkPN "Portugal" ;
		Palau_PN									= mkPN "Palau Belau" ;
		Paraguay_PN									= mkPN "Paraguay" ;
		Qatar_PN									= mkPN "Qatar" ;
		Reunion_PN									= mkPN "Réunion" ;
		Romania_PN									= mkPN "Rumänien" ;
		Serbia_PN									= mkPN "Serbien" ;
		Russia_PN									= mkPN "Ryssland" ;
		Rwanda_PN									= mkPN "Rwanda" ;
		SaudiArabia_PN								= mkPN "Saudiarabien" ;
		SolomonIslands_PN							= mkPN "Salomonöarna" ;
		Seychelles_PN								= mkPN "Seychellerna" ;
		Sudan_PN									= mkPN "Sudan" ;
		Sweden_PN									= mkPN "Sverige" ;
		Singapore_PN								= mkPN "Singapore" ;
		SaintHelena_PN								= mkPN "St Helena" ;
		Slovenia_PN									= mkPN "Slovenien" ;
		SvalbardAndJanMayen_PN						= mkPN "Svalbard och Jan Mayen" ;
		Slovakia_PN									= mkPN "Slovakien" ;
		SierraLeone_PN								= mkPN "Sierra Leone" ;
		SanMarino_PN								= mkPN "San Marino" ;
		Senegal_PN									= mkPN "Senegal" ;
		Somalia_PN									= mkPN "Somalia" ;
		Suriname_PN									= mkPN "Surinam" ;
		SaoTomeAndPrincipe_PN						= mkPN "Sao Tomé och Principe" ;
		ElSalvador_PN								= mkPN "El Salvador" ;
		Syria_PN									= mkPN "Syrien" ;
		Swaziland_PN								= mkPN "Swaziland" ;
		TurksAndCaicosIslands_PN					= mkPN "Turks- och Caicosöarna" ;
		Chad_PN										= mkPN "Tchad" ;
		FrenchSouthernTerritories_PN				= mkPN "Franska territorierna i södra Indiska Oceanen" ;
		Togo_PN										= mkPN "Togo" ;
		Thailand_PN									= mkPN "Thailand" ;
		Tajikistan_PN								= mkPN "Tadzjikistan" ;
		Tokelau_PN									= mkPN "Tokelauöarna" ;
		EastTimor_PN								= mkPN "Östtimor" ;
		Turkmenistan_PN								= mkPN "Turkmenistan" ;
		Tunisia_PN									= mkPN "Tunisien" ;
		Tonga_PN									= mkPN "Tonga" ;
		Turkey_PN									= mkPN "Turkiet" ;
		TrinidadAndTobago_PN						= mkPN "Trinidad och Tobago" ;
		Tuvalu_PN									= mkPN "Tuvalu" ;
		Taiwan_PN									= mkPN "Taiwan" ;
		Tanzania_PN									= mkPN "Tanzania" ;
		Ukraine_PN									= mkPN "Ukraina" ;
		Uganda_PN									= mkPN "Uganda" ;
		UnitedStatesMinorOutlyingIslands_PN			= mkPN "Förenta staternas yttre öar" ;
		UnitedStates_PN								= mkPN "USA" ;
		Uruguay_PN									= mkPN "Uruguay" ;
		Uzbekistan_PN								= mkPN "Uzbekistan" ;
		VaticanCity_PN								= mkPN "Vatikanstaten" ;
		SaintVincentAndtheGrenadines_PN				= mkPN "Saint Vincent och Grenadinerna" ;
		Venezuela_PN								= mkPN "Venezuela" ;
		VirginIslandsBritish_PN						= mkPN "Brittiska jungfruöarna" ;
		VirginIslandsUS_PN							= mkPN "Amerikanska jungfruöarna" ;
		Vietnam_PN									= mkPN "Vietnam" ;
		Vanuatu_PN									= mkPN "Vanuatu" ;
		WallisAndFutuna_PN							= mkPN "Wallis och Futuna" ;
		Samoa_PN									= mkPN "Samoa" ;
		Yemen_PN									= mkPN "Yemen" ;
		Mayotte_PN									= mkPN "Mayotte" ;
		SouthAfrica_PN								= mkPN "Sydafrika" ;
		Zambia_PN									= mkPN "Zambia" ;
		Zimbabwe_PN									= mkPN "Zimbabwe" ;

														
--	Cuisines													
		Afghani_PN					= mkPN "Afghansk" ;
		African_PN					= mkPN "Afrikansk" ;
		American_PN					= mkPN "Amerikansk" ;
		Arabic_PN					= mkPN "Arabisk" ;
		Argentine_PN				= mkPN "Argentinsk" ;
		Armenian_PN					= mkPN "Armenisk" ;
		Asian_PN					= mkPN "Asiatisk" ;
		Australian_PN				= mkPN "Australiensisk" ;
		Austrian_PN					= mkPN "Österrikisk" ;
		Balinese_PN					= mkPN "Balinesisk" ;
		Basque_PN					= mkPN "Baskisk" ;
		Belgian_PN					= mkPN "Belgisk" ;
		Brazilian_PN				= mkPN "Brasiliansk" ;
		Bulgarian_PN				= mkPN "Bulgarisk" ;
		Burmese_PN					= mkPN "Burmesisk" ;
		Cajun_PN					= mkPN "Cajun" ;
		Cambodian_PN				= mkPN "Kambodjansk" ;
		Caribbean_PN				= mkPN "Karibisk" ;
		Catalan_PN					= mkPN "Katalansk" ;
		Chinese_PN					= mkPN "Kinesisk" ;
		Colombian_PN				= mkPN "Colombiansk" ;
		Contemporary_PN				= mkPN "Samtida" ;
		Continental_PN				= mkPN "Kontinental" ;
		Creole_PN					= mkPN "Kreolsk" ;
		Cuban_PN					= mkPN "Kubansk" ;
		Czech_PN					= mkPN "Tjeckisk" ;
		Dutch_PN					= mkPN "Nederländsk" ;
		EasternEuropean_PN			= mkPN "Östeuropeisk" ;
		Eclectic_PN					= mkPN "Eklektisk" ;
		Egyptian_PN					= mkPN "Egyptisk" ;
		English_PN					= mkPN "Brittisk" ;
		Ethiopian_PN				= mkPN "Etiopisk" ;
		Ethnic_PN					= mkPN "Etnisk" ;
		French_PN					= mkPN "Fransk" ;
		Fusion_PN					= mkPN "Fusion" ;
		German_PN					= mkPN "Tysk" ;
		Greek_PN					= mkPN "Grekisk" ;
		Haitian_PN					= mkPN "Haitiansk" ;
		Hungarian_PN				= mkPN "Ungersk" ;
		Indian_PN					= mkPN "Indisk" ;
		Indonesian_PN				= mkPN "Indonesisk" ;
		International_PN			= mkPN "Internationell" ;
		Irish_PN					= mkPN "Irländsk" ;
		Israeli_PN					= mkPN "Israelisk" ;
		Italian_PN					= mkPN "Italiensk" ;
		Jamaican_PN					= mkPN "Jamaicansk" ;
		Japanese_PN					= mkPN "Japansk" ;
		Jewish_PN					= mkPN "Judisk" ;
		Korean_PN					= mkPN "Koreansk" ;
		LatinAmerican_PN			= mkPN "Latinamerikansk" ;
		Lebanese_PN					= mkPN "Libanesisk" ;
		Malaysian_PN				= mkPN "Malaysisk" ;
		Mexican_PN					= mkPN "Mexikansk" ;
		MiddleEastern_PN			= mkPN "Mellanösternsk" ;
		Mongolian_PN				= mkPN "Mongolisk" ;
		Moroccan_PN					= mkPN "Marockansk" ;
		NewZealandCuisine_PN		= mkPN "Nyzeeländsk" ;
		Nicaraguan_PN				= mkPN "Nicaraguansk" ;
		Nouveau_PN					= mkPN "Nouveau" ;
		Pakistani_PN				= mkPN "Pakistansk" ;
		Persian_PN					= mkPN "Iransk" ;
		Peruvian_PN					= mkPN "Peruansk" ;
		Philippine_PN				= mkPN "Filippinsk" ;
		Polish_PN					= mkPN "Polsk" ;
		Polynesian_PN				= mkPN "Polynesisk" ;
		Portuguese_PN				= mkPN "Portugisisk" ;
		PuertoRican_PN				= mkPN "Puertorikansk" ;
		Russian_PN					= mkPN "Rysk" ;
		Salvadorean_PN				= mkPN "Salvadoransk" ;
		Scandinavian_PN				= mkPN "Skandinavisk" ;
		Scottish_PN					= mkPN "Skotsk" ;
		Seafood_PN					= mkPN "Fisk och Skaldjur" ;				--FIX!!!
		Singaporean_PN				= mkPN "Singaporiansk" ;
		Spanish_PN					= mkPN "Spansk" ;
		SriLankan_PN				= mkPN "Lankiesisk" ;
		Swedish_PN					= mkPN "Svensk" ;
		Swiss_PN					= mkPN "Schweizisk" ;
		Tex_Mex_PN					= mkPN "Tex-Mex" ;
		Thai_PN						= mkPN "Thailändsk" ;
		Tibetan_PN					= mkPN "Tibetansk" ;
		Turkish_PN					= mkPN "Turkisk" ;
		Ukrainian_PN				= mkPN "Ukrainsk" ;
		Vegan_PN					= mkPN "Vegansk" ;
		Vegetarian_PN				= mkPN "Vegetarisk" ;
		Venezulean_PN				= mkPN "Venezolansk" ;
		Vietnamese_PN				= mkPN "Vietnamesisk" ;
														
-- Determiners														
		defSg_Det		= defSgDet ;
--		defPl_Det		= defPlDet ;
		indefSg_Det		= indefSgDet ;
--		indefPl_Det		= indefPlDet ;
		this_Det		= mkDet this_QuantSg ;
--		that_Det		= mkDet that_QuantSg ;
--		these_Det		= mkDet these_QuantPl ;
--		those_Det		= mkDet those_QuantPl ;

}