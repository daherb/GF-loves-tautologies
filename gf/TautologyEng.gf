--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/english:.:/home/herb/src/foreign/GF.git/lib/src/translator
concrete TautologyEng of Tautology = SemLexEng ** TautologyI with (SemCat=SemCatEng), (Syntax=SyntaxEng) ** open (P=ParadigmsEng), Prelude in {
  lin
--    PrepAdv prep np = lin Adv {s = prep.s ++ np.s ! ResEng.NPAcc; } ; --mkAdv prep np2 ;
  
    Taut2 cl = lin S (ss ("it is not the case that" ++ (mkS and_Conj (mkS presentTense positivePol cl) (mkS presentTense negativePol cl)).s)) ;
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
    Taut6c cl1 cl2 =
      let s1 = mkS cl1 in 
      let s2 = mkS cl2 in
      mkS iff_Conj (mkS iff_Conj s1 s2) (mkS iff_Conj s2 s1) ;
    Taut8a cl1 cl2 cl3 =
      let s1 = mkS cl1 in 
      let s2 = mkS cl2 in
      let s3 = mkS cl3 in
      mkS iff_Conj (mkS and_Conj s1 (mkS or_Conj s2 s3)) (mkS or_Conj (mkS and_Conj s1 s2) (mkS and_Conj s1 s3)) ;
    Taut8b cl1 cl2 cl3 =
      let s1 = mkS cl1 in 
      let s2 = mkS cl2 in
      let s3 = mkS cl3 in
      mkS iff_Conj (mkS or_Conj s1 (mkS and_Conj s2 s3)) (mkS and_Conj (mkS or_Conj s1 s2) (mkS or_Conj s1 s3)) ;

  CompN _ _ n n2 = lin N { s = \\num,c => n.s ! num ! c++ n2.s ! num ! c ; g = n2.g } ;

  PrintTaut t = t ;
  
  oper
    neg_Adv : SemCat.Adv = P.mkAdv "it is not the case that" ;
}