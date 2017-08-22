--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/english:.:/home/herb/src/foreign/GF.git/lib/src/translator
concrete TautologyEng of Tautology = CatEng, LexiconEng ** TautologyI with (Cat=CatEng),(Lexicon=LexiconEng),(Syntax=SyntaxEng) ** open Prelude, SyntaxEng, ParadigmsEng, (R=ResEng), ExtensionsEng in {
  lin
    PrepAdv prep np = lin NP {s = prep.s ++ np.s ! ResEng.NPAcc; } ; --mkAdv prep np2 ;
    member_N = mkN "member" ;
    tautology_N = mkN "tautology" ;
    club_N = mkN "club" ;
    of_Prep = mkPrep "of" ;
}