concrete SemLexEng of SemLex = SemCatEng ** SemLexI with (Lexicon=LexiconEng), (Structural=StructuralEng), (Syntax=SyntaxEng) ** open (P=ParadigmsEng) in {
  lin
    iff_Conj = P.mkConj "if and only if" ;
    member_N = P.mkN "member" ;
    tautology_N = P.mkN "tautology" ;
    club_N = P.mkN "club" ;
    of_Prep = P.mkPrep "of" ;
}