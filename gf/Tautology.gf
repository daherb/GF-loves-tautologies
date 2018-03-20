--# -path=/home/herb/src/foreign/GF.git/lib/src/api:/home/herb/src/foreign/GF.git/lib/src/abstract
abstract Tautology = SemCat, SemLex ** open Prelude in {
  flags
    startcat = STautology;
  cat Tautology; STautology;
  fun
    UseN : (nc: NounClass) -> N nc -> CN nc ;
    UseN2 : (nc: NounClass) -> (nc2: NounClass) -> N2 nc nc2 -> N nc ;
    DetAdjN : (dc : NounClass) -> (ac: NounClass) -> (nc: NounClass) -> (npc : NounClass) -> (npc2 : NounClass) -> CompatibleNounClass dc nc npc -> CompatibleNounClass ac nc npc2 -> Det dc -> A ac -> CN nc -> NP npc2;
    DetN : (dc : NounClass) -> (nc : NounClass) -> (npc : NounClass) -> CompatibleNounClass dc nc npc -> Det dc -> CN nc -> NP npc;
    MassN : (N mass) -> NP mass ;
    PrepNP : (nc : NounClass) -> (nc2 : NounClass) -> NP nc -> Prep -> NP nc2 -> NP nc ;
    
    Cl1	: (nc : NounClass) -> (ac : NounClass) -> (npc : NounClass) -> CompatibleNounClass ac nc npc -> NP nc -> A ac -> Cl; -- he is old
    Cl2 : (nc : NounClass) -> (ac : NounClass) -> (nc2 : NounClass) -> (npc : NounClass) -> (npc2 : NounClass) -> (npc3 : NounClass) -> CompatibleNounClass ac nc npc -> CompatibleNounClass ac nc2 npc2 -> CompatibleNounClass nc nc2 npc3 -> NP nc -> A ac -> NP nc2 -> Cl; -- he is older than her
    -- Cl3 : NP -> A2 -> NP -> Cl;
    -- Cl4 : NP -> AP -> Cl ;
    Cl5 : (nc : NounClass) -> (nc2 : NounClass) -> (npc : NounClass) -> CompatibleNounClass nc nc2 npc -> NP nc -> NP nc2 -> Cl ; -- she is the woman
    Cl6 : (nc : NounClass) -> (nc2 : NounClass) -> (npc : NounClass) -> CompatibleNounClass nc nc2 npc -> NP nc-> CN nc2 -> Cl ;
    -- Cl7 : NP -> CN -> Cl ;	
    Cl8 : (nc : NounClass) -> NP nc -> Adv verb -> Cl ;

    TautEq: (nc : NounClass) -> NP nc -> Tautology ;
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

    CompN : (nc : NounClass) -> (nc2 : NounClass) -> N nc -> N nc2 -> CN nc2 ;

    PrintTaut : Tautology -> STautology ;
}