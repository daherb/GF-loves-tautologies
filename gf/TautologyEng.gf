--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/english:.:/home/herb/src/foreign/GF.git/lib/src/translator
concrete TautologyEng of Tautology = CatEng, LexiconEng ** TautologyI with (Cat=CatEng),(Lexicon=LexiconEng),(Syntax=SyntaxEng) ** open Prelude, SyntaxEng, ParadigmsEng, (R=ResEng), ExtensionsEng in {
  lin
    PrepAdv prep np = lin NP {s = prep.s ++ np.s ! ResEng.NPAcc; } ; --mkAdv prep np2 ;
    Taut2 cl = ss ("it is not the case that" ++ (mkS and_Conj (mkS presentTense positivePol cl) (mkS presentTense negativePol cl)).s) ;
    Taut3 cl = let s = mkS cl in mkS if_then_Conj s s ;
    Taut4a cl = let s = mkS cl in mkS iff_Conj s (mkS or_Conj s s) ;
    Taut4b cl = let s = mkS cl in mkS iff_Conj s (mkS and_Conj s s) ;
    Taut5 cl = let s = mkS cl in mkS iff_Conj (mkS neg_Adv (mkS presentTense negativePol cl)) s ;
    Taut6a cl1 cl2 =
      let s1 = mkS cl1 in 
      let s2 = mkS cl2 in
        mkS iff_Conj (mkS or_Conj s1 s2) (mkS or_Conj s2 s1) ;
    Taut6b cl1 cl2 =
      let s1 = mkS cl1 in 
      let s2 = mkS cl2 in
      mkS iff_Conj (mkS and_Conj s1 s2) (mkS and_Conj s2 s1) ;
    -- Taut6c cl1 cl2 =
    --   let s1 = mkS cl1 in 
    --   let s2 = mkS cl2 in
    --   mkS iff_Conj (mkS iff_Conj s1 s2) (mkS iff_Conj s2 s1) ;
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
   
    iff_Conj = P.mkConj "if and only if" ;
    member_N = P.mkN "member" ;
    tautology_N = P.mkN "tautology" ;
    club_N = P.mkN "club" ;
    of_Prep = P.mkPrep "of" ;
    
  oper
    neg_Adv : Adv = P.mkAdv "it is not the case that" ;
}