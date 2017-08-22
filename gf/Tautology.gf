abstract Tautology = {
  flags
    startcat = Tautology ;
  cat Tautology; NP ; Prep ; A ; N ;
  fun
    IndefAdjN : A -> N -> NP ;
    DefAdjN : A -> N -> NP ;
    IndefN : N -> NP ;
    DefN : N -> NP ;
    CompoundN : N -> N -> N ;
--    NPPrepNP : NP -> Prep -> NP ;
    Taut: NP -> Tautology ;
    member_N : N ;
    tautology_N : N ;
    club_N : N ;
}