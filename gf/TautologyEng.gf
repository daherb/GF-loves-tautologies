--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/english:.:/home/herb/src/foreign/GF.git/lib/src/translator
concrete TautologyEng of Tautology = CatEng, LexiconEng ** open Prelude, SyntaxEng, ParadigmsEng, (R=ResEng), ExtensionsEng in {
  lincat Tautology = SS ;
  lin
    IndefAdjN a n = mkNP aSg_Det (mkCN a n) ;
    DefAdjN a n = mkNP theSg_Det (mkCN a n) ;
    IndefN n = mkNP aSg_Det (mkCN n) ;
    DefN n = mkNP theSg_Det (mkCN n) ;
    CompN compl n = CompoundN compl n ;
    AdvNP adv np  = mkNP np adv ;
    PrepAdv prep np = {s = prep.s ++ np.s ! ResEng.NPAcc; } ; --mkAdv prep np2 ;
    Taut np = let nps = np.s ! (R.NCase R.Nom) in ss (nps ++ "is" ++ nps) ;
    member_N = mkN "member" ;
    tautology_N = mkN "tautology" ;
    club_N = mkN "club" ;
    of_Prep = mkPrep "of" ;
}