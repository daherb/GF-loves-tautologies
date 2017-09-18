--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/english:.:/home/herb/src/foreign/GF.git/lib/src/translator
incomplete concrete TautologyI of Tautology = Cat, Lexicon ** open Prelude, Syntax  in {
  lincat Tautology = S ;
  lin
    IndefAdjN a n = mkNP aSg_Det (mkCN a n) ;
    DefAdjN a n = mkNP theSg_Det (mkCN a n) ;
    IndefN n = mkNP aSg_Det (mkCN n) ;
    DefN n = mkNP theSg_Det (mkCN n) ;
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
    -- PrepAdv prep np = {s = prep.s ++ np.s ! ResEng.NPAcc; } ; --mkAdv prep np2 ;
    Taut np = mkS (mkCl np np) ;
    -- member_N = mkN "member" ;
    -- tautology_N = mkN "tautology" ;
    -- club_N = mkN "club" ;
    -- of_Prep = mkPrep "of" ;
}