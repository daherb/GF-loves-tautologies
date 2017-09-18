--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/english:.:/home/herb/src/foreign/GF.git/lib/src/translator
concrete TautologyGer of Tautology = CatGer, LexiconGer-[
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
  ] ** TautologyI with (Cat=CatGer),(Lexicon=LexiconGer),(Syntax=SyntaxGer) ** open (P=ParadigmsGer), Prelude, SyntaxGer, ExtensionsGer, ResGer in {
  lin
    PrepAdv prep np = lin Adv {s = prep.s ++ np.s ! prep.c; } ; --mkAdv prep np2 ;
    Taut2 cl =
      let s1 : { s : Order => Str } = { s = \\_ => (mkS presentTense positivePol cl).s ! Sub } in
      let s2 : { s : Order => Str } = { s = \\_ => (mkS presentTense negativePol cl).s ! Sub } in
      lin S { s = \\o => "es stimmt nicht, dass" ++ (mkS and_Conj s1 s2).s ! o } ;
    Taut3 cl =
      let s1 : { s : Order => Str } = { s = \\_ => (mkS cl).s ! Sub } in
      let s2 : { s : Order => Str } = { s = \\_ => (mkS cl).s ! Inv } in
      mkS if_then_Conj s1 s2 ;
    Taut4a cl =
      let s1 : { s : Order => Str } = { s = \\_ => (mkS cl).s ! Sub } in
      let s2 : { s : Order => Str } = { s = \\_ => (mkS cl).s ! Inv } in
      let s3 : { s : Order => Str } = { s = \\_ => (mkS cl).s ! Main } in
      mkS iff_Conj s1 (mkS or_Conj s2 s3) ;
    Taut4b cl =
      let s1 : { s : Order => Str } = { s = \\_ => (mkS cl).s ! Sub } in
      let s2 : { s : Order => Str } = { s = \\_ => (mkS cl).s ! Inv } in
      let s3 : { s : Order => Str } = { s = \\_ => (mkS cl).s ! Main } in
      mkS iff_Conj s1 (mkS and_Conj s2 s3) ;
    Taut5 cl =
      let s1 : { s : Order => Str } = { s = \\_ => "es nicht stimmt, dass" ++ (mkS presentTense negativePol cl).s ! Sub ++ bindComma } in
      let s2 : { s : Order => Str } = { s = \\_ => (mkS cl).s ! Inv } in
      mkS iff_Conj s1 s2 ;
    Taut6a cl1 cl2 =
      let s1 : { s : Order => Str } = { s = \\_ => (mkS cl1).s ! Sub ++ bindComma } in
      let s2 : { s : Order => Str } = { s = \\_ => (mkS cl2).s ! Sub ++ bindComma } in
      let s3 : { s : Order => Str } = { s = \\_ => (mkS cl1).s ! Inv } in
      let s4 : { s : Order => Str } = { s = \\_ => (mkS cl2).s ! Main } in
      mkS iff_Conj (mkS or_Conj s1 s2) (mkS or_Conj s3 s4) ;
    Taut6b cl1 cl2 =
      let s1 : { s : Order => Str } = { s = \\_ => (mkS cl1).s ! Sub ++ bindComma } in
      let s2 : { s : Order => Str } = { s = \\_ => (mkS cl2).s ! Sub ++ bindComma } in
      let s3 : { s : Order => Str } = { s = \\_ => (mkS cl1).s ! Inv } in
      let s4 : { s : Order => Str } = { s = \\_ => (mkS cl2).s ! Main } in
      mkS iff_Conj (mkS and_Conj s1 s2) (mkS and_Conj s3 s4) ;
    -- Taut6c cl1 cl2 =
    --   let s1 : { s : Order => Str } = { s = \\_ => (mkS cl1).s ! Sub } in
    --   let s2 : { s : Order => Str } = { s = \\_ => (mkS cl2).s ! Sub } in
    --   let s3 : { s : Order => Str } = { s = \\_ => (mkS cl1).s ! Inv } in
    --   let s4 : { s : Order => Str } = { s = \\_ => (mkS cl2).s ! Inv } in
    --   mkS iff_Conj (mkS iff_Conj s1 s4) (mkS iff_Conj s2 s3) ;
    -- Taut8a cl1 cl2 cl3 =
    --   let s1 = mkS cl1 in 
    --   let s2 = mkS cl2 in
    --   let s3 = mkS cl3 in
    --   mkS iff_Conj (mkS and_Conj s1 (mkS or_Conj s2 s3)) (mkS or_Conj (mkS and_Conj s1 s2) (mkS and_Conj s1 s3)) ;
    -- Taut8b cl1 cl2 cl3 =
    --   let s1 = mkS cl1 in 
    --   let s2 = mkS cl2 in
    --   let s3 = mkS cl3 in
    --   mkS iff_Conj (mkS or_Conj s1 (mkS and_Conj s2 s3)) (mkS and_Conj (mkS or_Conj s1 s2) (mkS or_Conj s1 s3)) ;
    iff_Conj = {s1 = "genau dann wenn" ; s2 = "dann" ; n = Sg} ;
    member_N = P.reg1N "Mitglied" Neutr ;
    tautology_N = P.reg1N "Tautologie" Fem ;
    club_N = P.regN "Klub" ;
    of_Prep = P.mkPrep "" (NPC Gen);
    
}