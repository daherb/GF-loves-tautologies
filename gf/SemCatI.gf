incomplete concrete SemCatI of SemCat = open Cat in {
  lincat
    AdvClass = Str ;
    CompatibleNounClass = Str ;
    NounClass = Str ;
    A = Cat.A ;
    A2 = Cat.A2 ;
    AP = Cat.AP ;
    Adv = Cat.Adv ;
    Cl = Cat.Cl ;
    CN = Cat.N ;
    Conj = Cat.Conj ;
    Det = Cat.Det ;
    N = Cat.N ;
    N2 = Cat.N2 ;
    N3 = Cat.N3 ;
    NP = Cat.NP ;
    PN = Cat.PN ;
    Prep = Cat.Prep ;
    Pron = Cat.Pron ;
    V = Cat.V ;
    V2 = Cat.V2 ;
    V2A = Cat.V2A ;
    V2Q = Cat.V2Q ;
    V2S = Cat.V2S ;
    V2V = Cat.V2V ;
    V3 = Cat.V3 ;
    VA = Cat.VA ;
    VQ = Cat.VQ ;
    VS = Cat.VS ;
    VV = Cat.VV ;
  lin
    animate, count, general, human, inanimate, liquid, liquidcount, liquidmass, liquidmasscount, mass, masscount, nonhuman, sent, verb, nonmass = "" ;
    animateIsCount,
      countIsInanimate,
      countIsNonhuman,
      humanIsAnimate,
      inanimateIsCount,
      inanimateIsNonhuman,
      liquidIsInanimate,
      liquidIsNonhuman,
      liquidcoundIsCount,
      liquidcountIsLiquid,
      liquidmassIsLiquid,
      liquidmassIsMass,
      liquidmasscountIsLiquidcount,
      liquidmasscountIsLiquidmass,
      massIsInanimate,
      massIsNonhuman,
      masscountIsCount,
      masscountIsMass,
      animateIsNonmass,
      inanimateIsNonmass,
      humanIsNonmass,
      nonhumanIsNonmass,
      countIsNonmass,
      liquidIsNonmass,
      liquidcountIsNonmass = idN ;
    everythingIsGeneral _ n = n ;
    sameIsCompatible _ = "" ;
  oper
    idN : Cat.N -> Cat.N = \n -> n ;
}