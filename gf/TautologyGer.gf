--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/english:.:/home/herb/src/foreign/GF.git/lib/src/translator
concrete TautologyGer of Tautology = SemLexGer ** TautologyI with (SemCat=SemCatGer), (Syntax=SyntaxGer) ** open (P=ParadigmsGer), Prelude, SyntaxGer, ResGer in { -- , ExtensionsGer, ResGer in {
  lin
    Taut2 cl =
      let s1 : S = lin S { s = \\_ => (mkS presentTense positivePol cl).s ! Sub } in
      let s2 : S = lin S { s = \\_ => (mkS presentTense negativePol cl).s ! Sub } in
      lin S { s = \\o => "es stimmt nicht, dass" ++ (mkS and_Conj s1 s2).s ! o } ;
    Taut3 cl =
      let s1 : S = lin S { s = \\_ => (mkS cl).s ! Sub } in
      let s2 : S = lin S { s = \\_ => (mkS cl).s ! Inv } in
      mkS if_then_Conj s1 s2 ;
    Taut4a cl =
      let s1 : S = lin S { s = \\_ => (mkS cl).s ! Sub } in
      let s2 : S = lin S { s = \\_ => (mkS cl).s ! Inv } in
      let s3 : S = lin S { s = \\_ => (mkS cl).s ! Main } in
      mkS iff_Conj s1 (mkS or_Conj s2 s3) ;
    Taut4b cl =
      let s1 : S = lin S { s = \\_ => (mkS cl).s ! Sub } in
      let s2 : S = lin S { s = \\_ => (mkS cl).s ! Inv } in
      let s3 : S = lin S { s = \\_ => (mkS cl).s ! Main } in
      mkS iff_Conj s1 (mkS and_Conj s2 s3) ;
    Taut5 cl =
      let s1 : S = lin S { s = \\_ => "es nicht stimmt, dass" ++ (mkS presentTense negativePol cl).s ! Sub ++ bindComma } in
      let s2 : S = lin S { s = \\_ => (mkS cl).s ! Inv } in
      mkS iff_Conj s1 s2 ;
    Taut6a cl1 cl2 =
      let s1 : S = lin S { s = \\_ => (mkS cl1).s ! Sub ++ bindComma } in
      let s2 : S = lin S { s = \\_ => (mkS cl2).s ! Sub ++ bindComma } in
      let s3 : S = lin S { s = \\_ => (mkS cl1).s ! Inv } in
      let s4 : S = lin S { s = \\_ => (mkS cl2).s ! Main } in
      mkS iff_Conj (mkS or_Conj s1 s2) (mkS or_Conj s3 s4) ;
    Taut6b cl1 cl2 =
      let s1 : S = lin S { s = \\_ => (mkS cl1).s ! Sub ++ bindComma } in
      let s2 : S = lin S { s = \\_ => (mkS cl2).s ! Sub ++ bindComma } in
      let s3 : S = lin S { s = \\_ => (mkS cl1).s ! Inv } in
      let s4 : S = lin S { s = \\_ => (mkS cl2).s ! Main } in
      mkS iff_Conj (mkS and_Conj s1 s2) (mkS and_Conj s3 s4) ;
    Taut6c cl1 cl2 =
      let s1 : S = lin S { s = \\_ => (mkS cl1).s ! Sub } in
      let s2 : S = lin S { s = \\_ => (mkS cl2).s ! Sub } in
      let s3 : S = lin S { s = \\_ => (mkS cl1).s ! Inv } in
      let s4 : S = lin S { s = \\_ => (mkS cl2).s ! Inv } in
      mkS iff_Conj (mkS iff_Conj s1 s4) (mkS iff_Conj s2 s3) ;
    Taut8a cl1 cl2 cl3 =
      let s1 : S = mkS cl1 in 
      let s2 : S = mkS cl2 in
      let s3 : S = mkS cl3 in
      mkS iff_Conj (mkS and_Conj s1 (mkS or_Conj s2 s3)) (mkS or_Conj (mkS and_Conj s1 s2) (mkS and_Conj s1 s3)) ;
    Taut8b cl1 cl2 cl3 =
      let s1 : S = mkS cl1 in 
      let s2 : S = mkS cl2 in
      let s3 : S = mkS cl3 in
      mkS iff_Conj (mkS or_Conj s1 (mkS and_Conj s2 s3)) (mkS and_Conj (mkS or_Conj s1 s2) (mkS or_Conj s1 s3)) ;

    CompN _ _ n n2 = lin N { s = \\num,c => n.co ++ BIND ++ n2.uncap.s ! num ! c ; co = n.co ++ BIND ++ n2.uncap.s ! Sg ! Nom ; g = n2.g ;
		       uncap = { s = \\num,c => n.uncap.s ! num ! c ++ BIND ++ n2.uncap.s ! num ! c ; co = n.uncap.s ! Sg ! Nom ++ BIND ++ n2.uncap.s ! Sg ! Nom } } ;
    PrintTaut t = ss (t.s ! Main ) ;
}