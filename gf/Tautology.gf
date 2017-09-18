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
    Cl1	: NP -> A -> Cl;
    Cl2 : NP -> A -> NP -> Cl;
    Cl3 : NP -> A2 -> NP -> Cl;
    -- Cl4 : NP -> AP -> Cl ;
    Cl5 : NP -> NP -> Cl ;
    Cl6 : NP -> N -> Cl ;
    -- Cl7 : NP -> CN -> Cl ;	
    Cl8 : NP -> Adv -> Cl ;
    TautEq: NP -> Tautology ;
    Taut1 : Cl -> Tautology ;
    Taut2 : Cl -> Tautology ;
    Taut3 : Cl -> Tautology ;
    Taut4a : Cl -> Tautology ;
    Taut4b : Cl -> Tautology ;
    Taut5 : Cl -> Tautology ;
    Taut6a : Cl -> Cl -> Tautology ;
    Taut6b : Cl -> Cl -> Tautology ;
    Taut6c : Cl -> Cl -> Tautology ;
    Taut8a : Cl -> Cl -> Cl -> Tautology ;
    Taut8b : Cl -> Cl -> Cl -> Tautology ;
    iff_Conj : Conj ;
    member_N : N ;
    tautology_N : N ;
    club_N : N ;
    of_Prep : Prep ;
}