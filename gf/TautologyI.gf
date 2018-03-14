incomplete concrete TautologyI of Tautology = SemCat ** open Syntax, Prelude in {
  lincat
    Tautology = S ;
    STautology = SS ;
  lin
    -- UseN : (nc: NounClass) -> N nc -> CN nc ;
    UseN _ = idN ;
    -- DetAdjN : (dc : NounClass) -> (ac: NounClass) -> (nc: NounClass) -> (npc : NounClass) -> (npc2 : NounClass) -> CompatibleNounClass dc nc npc -> CompatibleNounClass ac nc npc2 -> Det dc -> A ac -> CN nc -> NP npc2;
    DetAdjN _ _ _ _ _ _ _ det a n = mkNP det (mkCN a n) ;
    -- DetN : (dc : NounClass) -> (nc : NounClass) -> (npc : NounClass) -> CompatibleNounClass dc nc npc -> Det dc -> CN nc -> NP npc;
    DetN _ _ _ _ det n = mkNP det n ;
    -- MassN : (N mass) -> NP mass ;
    MassN = mkNP ;
    -- PrepNP : (nc : NounClass) -> (nc2 : NounClass) -> NP nc -> Prep -> NP nc2 -> NP nc ;
    PrepNP _ _ np1 prep np2 = mkNP np1 (mkAdv prep np2) ;
    -- Cl1 : (nc : NounClass) -> (ac : NounClass) -> (npc : NounClass) -> CompatibleNounClass ac nc npc -> NP nc -> A ac -> Cl; -- he is old
    Cl1 _ _ _ _ np a = mkCl np a ;
    -- Cl2 : (nc : NounClass) -> (ac : NounClass) -> (nc2 : NounClass) -> (npc : NounClass) -> (npc2 : NounClass) -> (npc3 : NounClass) -> CompatibleNounClass ac nc npc -> CompatibleNounClass ac nc2 npc2 -> CompatibleNounClass nc nc2 npc3 -> NP nc -> A ac -> NP nc2 -> Cl; -- he is older than her
    Cl2 _ _ _ _ _ _ _ _ _ np1 a np2 = mkCl np1 a np2 ;
    ---- Cl3 : NP -> A2 -> NP -> Cl;
    ---- Cl4 : NP -> AP -> Cl ;
    -- Cl5 : (nc : NounClass) -> (nc2 : NounClass) -> (npc : NounClass) -> CompatibleNounClass nc nc2 npc -> NP nc -> NP nc2 -> Cl ; -- she is the woman
    Cl5 _ _ _ _ np1 np2 = mkCl np1 np2 ;
    -- Cl6 : (nc : NounClass) -> (nc2 : NounClass) -> (npc : NounClass) -> CompatibleNounClass nc nc2 npc -> NP nc-> CN nc2 -> Cl ;
    Cl6 _ _ _ _ np n = mkCl np n ;
    ---- Cl7 : NP -> CN -> Cl ;
    -- Cl8 : (nc : NounClass) -> NP nc -> Adv verb -> Cl ;
    Cl8 _ np adv = mkCl np adv ;
    -- TautEq: (nc : NounClass) -> NP nc -> Tautology ;
    TautEq _ np = mkS (mkCl np np) ;
    -- Taut1 : Cl -> Tautology ;
    Taut1 cl = mkS or_Conj (mkS presentTense positivePol cl) (mkS presentTense negativePol cl) ;
}