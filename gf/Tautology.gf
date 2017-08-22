--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/abstract
abstract Tautology = Cat, Lexicon ** {
  flags
    startcat = Tautology ;
  cat Tautology;
  fun
    IndefAdjN : A -> N -> NP ;
    DefAdjN : A -> N -> NP ;
    IndefN : N -> NP ;
    DefN : N -> NP ;
    CompN : N -> N -> N ;
    AdvNP : Adv -> NP -> NP ;
    PrepAdv : Prep -> NP -> Adv ;
    Taut: NP -> Tautology ;
    member_N : N ;
    tautology_N : N ;
    club_N : N ;
    of_Prep : Prep ;
}