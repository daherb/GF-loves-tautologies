concrete SemLexGer of SemLex = SemCatGer ** SemLexI with (Lexicon=LexiconGer), (Structural=StructuralGer), (Syntax=SyntaxGer) ** open (P=ParadigmsGer), ExtensionsGer, ResGer in {
  lin
    iff_Conj = lin Conj {s1 = "genau dann wenn" ; s2 = "dann" ; n = Sg} ;
    member_N = P.reg1N "Mitglied" Neutr ;
    tautology_N = P.reg1N "Tautologie" Fem ;
    club_N = P.regN "Klub" ;
    of_Prep = P.mkPrep "" (NPC Gen);
}