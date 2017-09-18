--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/english:.:/home/herb/src/foreign/GF.git/lib/src/translator
incomplete concrete TautologyI of Tautology = Cat, Lexicon-[
    art_N,
    blood_N,
    dust_N,
    earth_N,
    fat_N,
    gold_N,
    grass_N,
    guts_N,
    ice_N,
    industry_N,
    iron_N,
    leather_N,
    love_N,
    meat_N,
    milk_N,
    music_N,
    oil_N,
    peace_N,
    plastic_N,
    rain_N,
    rubber_N,
    salt_N,
    sand_N,
    science_N,
    sea_N,
    silver_N,
    skin_N,
    smoke_N,
    snow_N,
    steel_N,
    water_N,
    wind_N,
    wood_N
  ] ** open Prelude, Syntax  in {
  lincat Tautology = S ; AdvP = Adv ; MN = N ;
  lin
    IndefAdjN a n = mkNP aSg_Det (mkCN a n) ;
    DefAdjN a n = mkNP theSg_Det (mkCN a n) ;
    DefAdjMN = DefAdjN ;
    AdjMN a mn = mkNP (mkCN a mn) ;
    IndefN n = mkNP aSg_Det (mkCN n) ;
    DefN n = mkNP theSg_Det (mkCN n) ;
    DefMN = DefN ;
    MassMN mn = mkNP mn ;
    CompN compl n = CompoundN compl n ;
    AdvNP adv np  = mkNP np adv ;
    Cl1 np a = mkCl np a ;
    Cl2 np1 a np2 = mkCl np1 a np2 ;
    -- Cl3 : NP -> A2 -> NP -> Cl;
    -- Cl4 : NP -> AP -> Cl ;
    Cl5 np1 np2 = mkCl np1 np2 ; 
    Cl6 np n = mkCl np n ; 
    -- Cl7 : NP -> CN -> Cl ;	
    Cl8 np adv = mkCl np adv ; 
    TautEq np = mkS (mkCl np np) ;
    Taut1 cl = mkS or_Conj (mkS presentTense positivePol cl) (mkS presentTense negativePol cl) ;

    art_MN = art_N ;
    blood_MN = blood_N ;
    dust_MN = dust_N ;
    earth_MN = earth_N ;
    fat_MN = fat_N ;
    gold_MN = gold_N ;
    grass_MN = grass_N ;
    guts_MN = guts_N ;
    ice_MN = ice_N ;
    industry_MN = industry_N ;
    iron_MN = iron_N ;
    leather_MN = leather_N ;
    love_MN = love_N ;
    meat_MN = meat_N ;
    milk_MN = milk_N ;
    music_MN = music_N ;
    oil_MN = oil_N ;
    peace_MN = peace_N ;
    plastic_MN = plastic_N ;
    rain_MN = rain_N ;
    rubber_MN = rubber_N ;
    salt_MN = salt_N ;
    sand_MN = sand_N ;
    science_MN = science_N ;
    sea_MN = sea_N ;
    silver_MN = silver_N ;
    skin_MN = skin_N ;
    smoke_MN = smoke_N ;
    snow_MN = snow_N ;
    steel_MN = steel_N ;
    water_MN = water_N ;
    wind_MN = wind_N ;
    wood_MN = wood_N ;
}