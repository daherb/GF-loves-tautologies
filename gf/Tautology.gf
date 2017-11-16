--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/abstract
abstract Tautology = Cat, Lexicon-[
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
  ] ** {
  flags
    startcat = Tautology ;
  cat Tautology; AdvP; MN;
  fun
    IndefAdjN : A -> N -> NP ;
    DefAdjN : A -> N -> NP ;
    DefAdjMN : A -> MN -> NP ;
    AdjMN : A -> MN -> NP ;
    IndefN : N -> NP ;
    DefN : N -> NP ;
    DefMN : MN -> NP ;
    MassMN : MN -> NP ;
    CompN : N -> N -> N ;
    AdvNP : AdvP -> NP -> NP ;
    PrepAdv : Prep -> NP -> AdvP ;
    Cl1	: NP -> A -> Cl;
    Cl2 : NP -> A -> NP -> Cl;
    -- Cl3 : NP -> A2 -> NP -> Cl;
    -- Cl4 : NP -> AP -> Cl ;
    Cl5 : NP -> NP -> Cl ;
    Cl6 : NP -> N -> Cl ;
    -- Cl7 : NP -> CN -> Cl ;	
    Cl8 : NP -> Adv -> Cl ;
    TautEq: NP -> Tautology ;
    Taut1 : Cl -> Tautology ;
    Taut2 : Cl -> Tautology ;
    Taut3 : Cl -> Tautology ;
    Taut4a : Cl -> Tautology ;
    Taut4b : Cl -> Tautology ;
    Taut5 : Cl -> Tautology ;
    Taut6a : Cl -> Cl -> Tautology ;
    Taut6b : Cl -> Cl -> Tautology ;
    Taut6c : Cl -> Cl -> Tautology ;
    Taut8a : Cl -> Cl -> Cl -> Tautology ;
    Taut8b : Cl -> Cl -> Cl -> Tautology ;
    iff_Conj : Conj ;
    member_N : N ;
    tautology_N : N ;
    club_N : N ;
    of_Prep : Prep ;
    art_MN : MN ;
    blood_MN : MN ;
    dust_MN : MN ;
    earth_MN : MN ;
    fat_MN : MN ;
    gold_MN : MN ;
    grass_MN : MN ;
    guts_MN : MN ;
    ice_MN : MN ;
    industry_MN : MN ;
    iron_MN : MN ;
    leather_MN : MN ;
    love_MN : MN ;
    meat_MN : MN ;
    milk_MN : MN ;
    music_MN : MN ;
    oil_MN : MN ;
    peace_MN : MN ;
    plastic_MN : MN ;
    rain_MN : MN ;
    rubber_MN : MN ;
    salt_MN : MN ;
    sand_MN : MN ;
    science_MN : MN ;
    sea_MN : MN ;
    silver_MN : MN ;
    skin_MN : MN ;
    smoke_MN : MN ;
    snow_MN : MN ;
    steel_MN : MN ;
    water_MN : MN ;
    wind_MN : MN ;
    wood_MN : MN ;
}