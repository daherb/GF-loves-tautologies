--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/english:.:/home/herb/src/foreign/GF.git/lib/src/translator
concrete TautologyGer of Tautology = CatGer, LexiconGer ** TautologyI with (Cat=CatGer),(Lexicon=LexiconGer),(Syntax=SyntaxGer) ** open ParadigmsGer, Prelude, SyntaxGer, ExtensionsGer, ResGer in {
  lin
    PrepAdv prep np = lin NP {s = prep.s ++ np.s ! prep.c; } ; --mkAdv prep np2 ;
    member_N = regN "Mitglied" ;
    tautology_N = regN "Tautologie" ;
    club_N = regN "Klub" ;
    of_Prep = mkPrep "" (NPC Gen);
}