! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.1 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 13:04 on 9.6.2025   
! ----------------------------------------------------------------------  
 
 
Module CouplingsCT_2HDMSCPV
 
Use Control 
Use Settings 
Use Model_Data_2HDMSCPV 
Use Mathematics, Only: CompareMatrices, Adjungate 
 
Contains 
 
 Subroutine CalculateCouplingCT(Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,              & 
& Lam2p,L3pp,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,            & 
& Lam3p,eta,zeta,vd,vu,vS,ZH,ZP,g1,g2,TW,g3,Yd,epsD,ZDL,ZDR,Yu,epsU,ZUL,ZUR,             & 
& Ye,epsE,ZEL,ZER,dLam6,dLam5,dLam7,dLam1,dLam4,dLam3,dLam2,dLam1p,dLam2p,               & 
& dL3pp,dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,dLam5p,           & 
& dL2pp,dLam3p,deta,dzeta,dvd,dvu,dvS,dZH,dZP,dg1,dg2,dSinTW,dCosTW,dTanTW,              & 
& dg3,dYd,depsD,dZDL,dZDR,dYu,depsU,dZUL,dZUR,dYe,depsE,dZEL,dZER,ctcplhhhhhh,           & 
& ctcplhhHmcHm,ctcplhhhhVZ,ctcplhhHmcVWm,ctcplhhcHmVWm,ctcplHmcHmVP,ctcplHmcHmVZ,        & 
& ctcplhhcVWmVWm,ctcplhhVZVZ,ctcplHmcVWmVP,ctcplHmcVWmVZ,ctcplcHmVPVWm,ctcplcHmVWmVZ,    & 
& ctcplVGVGVG,ctcplcVWmVPVWm,ctcplcVWmVWmVZ,ctcplcFdFdhhL,ctcplcFdFdhhR,ctcplcFuFdcHmL,  & 
& ctcplcFuFdcHmR,ctcplcFeFehhL,ctcplcFeFehhR,ctcplcFvFecHmL,ctcplcFvFecHmR,              & 
& ctcplcFuFuhhL,ctcplcFuFuhhR,ctcplcFdFuHmL,ctcplcFdFuHmR,ctcplcFeFvHmL,ctcplcFeFvHmR,   & 
& ctcplcFdFdVGL,ctcplcFdFdVGR,ctcplcFdFdVPL,ctcplcFdFdVPR,ctcplcFdFdVZL,ctcplcFdFdVZR,   & 
& ctcplcFuFdcVWmL,ctcplcFuFdcVWmR,ctcplcFeFeVPL,ctcplcFeFeVPR,ctcplcFeFeVZL,             & 
& ctcplcFeFeVZR,ctcplcFvFecVWmL,ctcplcFvFecVWmR,ctcplcFuFuVGL,ctcplcFuFuVGR,             & 
& ctcplcFuFuVPL,ctcplcFuFuVPR,ctcplcFdFuVWmL,ctcplcFdFuVWmR,ctcplcFuFuVZL,               & 
& ctcplcFuFuVZR,ctcplcFeFvVWmL,ctcplcFeFvVWmR,ctcplcFvFvVZL,ctcplcFvFvVZR)

Implicit None 
Real(dp), Intent(in) :: Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,eta,zeta,vd,vu,vS,ZH(6,6),ZP(2,2),               & 
& g1,g2,TW,g3,dLam1,dLam4,dLam3,dLam2,dLam1p,dLam2p,dL3pp,deta,dzeta,dvd,dvu,            & 
& dvS,dZH(6,6),dZP(2,2),dg1,dg2,dSinTW,dCosTW,dTanTW,dg3

Complex(dp), Intent(in) :: Lam6,Lam5,Lam7,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,            & 
& L2pp,Lam3p,Yd(3,3),epsD(3,3),ZDL(3,3),ZDR(3,3),Yu(3,3),epsU(3,3),ZUL(3,3),             & 
& ZUR(3,3),Ye(3,3),epsE(3,3),ZEL(3,3),ZER(3,3),dLam6,dLam5,dLam7,dmus1,dmu11,            & 
& dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,dLam5p,dL2pp,dLam3p,dYd(3,3),       & 
& depsD(3,3),dZDL(3,3),dZDR(3,3),dYu(3,3),depsU(3,3),dZUL(3,3),dZUR(3,3),dYe(3,3),       & 
& depsE(3,3),dZEL(3,3),dZER(3,3)

Complex(dp), Intent(out) :: ctcplhhhhhh(6,6,6),ctcplhhHmcHm(6,2,2),ctcplhhhhVZ(6,6),ctcplhhHmcVWm(6,2),           & 
& ctcplhhcHmVWm(6,2),ctcplHmcHmVP(2,2),ctcplHmcHmVZ(2,2),ctcplhhcVWmVWm(6),              & 
& ctcplhhVZVZ(6),ctcplHmcVWmVP(2),ctcplHmcVWmVZ(2),ctcplcHmVPVWm(2),ctcplcHmVWmVZ(2),    & 
& ctcplVGVGVG,ctcplcVWmVPVWm,ctcplcVWmVWmVZ,ctcplcFdFdhhL(3,3,6),ctcplcFdFdhhR(3,3,6),   & 
& ctcplcFuFdcHmL(3,3,2),ctcplcFuFdcHmR(3,3,2),ctcplcFeFehhL(3,3,6),ctcplcFeFehhR(3,3,6), & 
& ctcplcFvFecHmL(3,3,2),ctcplcFvFecHmR(3,3,2),ctcplcFuFuhhL(3,3,6),ctcplcFuFuhhR(3,3,6), & 
& ctcplcFdFuHmL(3,3,2),ctcplcFdFuHmR(3,3,2),ctcplcFeFvHmL(3,3,2),ctcplcFeFvHmR(3,3,2),   & 
& ctcplcFdFdVGL(3,3),ctcplcFdFdVGR(3,3),ctcplcFdFdVPL(3,3),ctcplcFdFdVPR(3,3),           & 
& ctcplcFdFdVZL(3,3),ctcplcFdFdVZR(3,3),ctcplcFuFdcVWmL(3,3),ctcplcFuFdcVWmR(3,3),       & 
& ctcplcFeFeVPL(3,3),ctcplcFeFeVPR(3,3),ctcplcFeFeVZL(3,3),ctcplcFeFeVZR(3,3),           & 
& ctcplcFvFecVWmL(3,3),ctcplcFvFecVWmR(3,3),ctcplcFuFuVGL(3,3),ctcplcFuFuVGR(3,3),       & 
& ctcplcFuFuVPL(3,3),ctcplcFuFuVPR(3,3),ctcplcFdFuVWmL(3,3),ctcplcFdFuVWmR(3,3),         & 
& ctcplcFuFuVZL(3,3),ctcplcFuFuVZR(3,3),ctcplcFeFvVWmL(3,3),ctcplcFeFvVWmR(3,3),         & 
& ctcplcFvFvVZL(3,3),ctcplcFvFvVZR(3,3)

Integer :: gt1, gt2, gt3, gt4, ct1, ct2, ct3, ct4

Iname = Iname + 1 
NameOfUnit(Iname) = 'CalculateCouplingCT'
 
ctcplhhhhhh = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 6
  Do gt3 = 1, 6
Call CT_Couplinghhhhhh(gt1,gt2,gt3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,          & 
& Lam2p,L3pp,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,            & 
& Lam3p,eta,zeta,vd,vu,vS,ZH,dLam6,dLam5,dLam7,dLam1,dLam4,dLam3,dLam2,dLam1p,           & 
& dLam2p,dL3pp,dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,           & 
& dLam5p,dL2pp,dLam3p,deta,dzeta,dvd,dvu,dvS,dZH,ctcplhhhhhh(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


ctcplhhHmcHm = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 2
  Do gt3 = 1, 2
Call CT_CouplinghhHmcHm(gt1,gt2,gt3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,mu11,mu12,mu21,mu22,Lam4p,Lam6p,Lam7p,Lam5p,Lam3p,eta,zeta,vd,             & 
& vu,vS,ZH,ZP,dLam6,dLam5,dLam7,dLam1,dLam4,dLam3,dLam2,dLam1p,dLam2p,dmu11,             & 
& dmu12,dmu21,dmu22,dLam4p,dLam6p,dLam7p,dLam5p,dLam3p,deta,dzeta,dvd,dvu,               & 
& dvS,dZH,dZP,ctcplhhHmcHm(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


ctcplhhhhVZ = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 6
Call CT_CouplinghhhhVZ(gt1,gt2,g1,g2,ZH,TW,dg1,dg2,dZH,dSinTW,dCosTW,dTanTW,          & 
& ctcplhhhhVZ(gt1,gt2))

 End Do 
End Do 


ctcplhhHmcVWm = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 2
Call CT_CouplinghhHmcVWm(gt1,gt2,g2,ZH,ZP,dg2,dZH,dZP,ctcplhhHmcVWm(gt1,gt2))

 End Do 
End Do 


ctcplhhcHmVWm = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 2
Call CT_CouplinghhcHmVWm(gt1,gt2,g2,ZH,ZP,dg2,dZH,dZP,ctcplhhcHmVWm(gt1,gt2))

 End Do 
End Do 


ctcplHmcHmVP = 0._dp 
Do gt1 = 1, 2
 Do gt2 = 1, 2
Call CT_CouplingHmcHmVP(gt1,gt2,g1,g2,ZP,TW,dg1,dg2,dZP,dSinTW,dCosTW,dTanTW,         & 
& ctcplHmcHmVP(gt1,gt2))

 End Do 
End Do 


ctcplHmcHmVZ = 0._dp 
Do gt1 = 1, 2
 Do gt2 = 1, 2
Call CT_CouplingHmcHmVZ(gt1,gt2,g1,g2,ZP,TW,dg1,dg2,dZP,dSinTW,dCosTW,dTanTW,         & 
& ctcplHmcHmVZ(gt1,gt2))

 End Do 
End Do 


ctcplhhcVWmVWm = 0._dp 
Do gt1 = 1, 6
Call CT_CouplinghhcVWmVWm(gt1,g2,vd,vu,ZH,dg2,dvd,dvu,dZH,ctcplhhcVWmVWm(gt1))

End Do 


ctcplhhVZVZ = 0._dp 
Do gt1 = 1, 6
Call CT_CouplinghhVZVZ(gt1,g1,g2,vd,vu,ZH,TW,dg1,dg2,dvd,dvu,dZH,dSinTW,              & 
& dCosTW,dTanTW,ctcplhhVZVZ(gt1))

End Do 


ctcplHmcVWmVP = 0._dp 
Do gt1 = 1, 2
Call CT_CouplingHmcVWmVP(gt1,g1,g2,vd,vu,ZP,TW,dg1,dg2,dvd,dvu,dZP,dSinTW,            & 
& dCosTW,dTanTW,ctcplHmcVWmVP(gt1))

End Do 


ctcplHmcVWmVZ = 0._dp 
Do gt1 = 1, 2
Call CT_CouplingHmcVWmVZ(gt1,g1,g2,vd,vu,ZP,TW,dg1,dg2,dvd,dvu,dZP,dSinTW,            & 
& dCosTW,dTanTW,ctcplHmcVWmVZ(gt1))

End Do 


ctcplcHmVPVWm = 0._dp 
Do gt1 = 1, 2
Call CT_CouplingcHmVPVWm(gt1,g1,g2,vd,vu,ZP,TW,dg1,dg2,dvd,dvu,dZP,dSinTW,            & 
& dCosTW,dTanTW,ctcplcHmVPVWm(gt1))

End Do 


ctcplcHmVWmVZ = 0._dp 
Do gt1 = 1, 2
Call CT_CouplingcHmVWmVZ(gt1,g1,g2,vd,vu,ZP,TW,dg1,dg2,dvd,dvu,dZP,dSinTW,            & 
& dCosTW,dTanTW,ctcplcHmVWmVZ(gt1))

End Do 


ctcplVGVGVG = 0._dp 
Call CT_CouplingVGVGVG(g3,dg3,ctcplVGVGVG)



ctcplcVWmVPVWm = 0._dp 
Call CT_CouplingcVWmVPVWm(g2,TW,dg2,dSinTW,dCosTW,dTanTW,ctcplcVWmVPVWm)



ctcplcVWmVWmVZ = 0._dp 
Call CT_CouplingcVWmVWmVZ(g2,TW,dg2,dSinTW,dCosTW,dTanTW,ctcplcVWmVWmVZ)



ctcplcFdFdhhL = 0._dp 
ctcplcFdFdhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CT_CouplingcFdFdhh(gt1,gt2,gt3,Yd,epsD,eta,ZH,ZDL,ZDR,dYd,depsD,deta,            & 
& dZH,dZDL,dZDR,ctcplcFdFdhhL(gt1,gt2,gt3),ctcplcFdFdhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


ctcplcFuFdcHmL = 0._dp 
ctcplcFuFdcHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CT_CouplingcFuFdcHm(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,ZUL,              & 
& ZUR,dYu,depsU,dYd,depsD,deta,dZP,dZDL,dZDR,dZUL,dZUR,ctcplcFuFdcHmL(gt1,gt2,gt3)       & 
& ,ctcplcFuFdcHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


ctcplcFeFehhL = 0._dp 
ctcplcFeFehhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CT_CouplingcFeFehh(gt1,gt2,gt3,Ye,epsE,eta,ZH,ZEL,ZER,dYe,depsE,deta,            & 
& dZH,dZEL,dZER,ctcplcFeFehhL(gt1,gt2,gt3),ctcplcFeFehhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


ctcplcFvFecHmL = 0._dp 
ctcplcFvFecHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CT_CouplingcFvFecHm(gt1,gt2,gt3,Ye,epsE,eta,ZP,ZER,dYe,depsE,deta,               & 
& dZP,dZER,ctcplcFvFecHmL(gt1,gt2,gt3),ctcplcFvFecHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


ctcplcFuFuhhL = 0._dp 
ctcplcFuFuhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CT_CouplingcFuFuhh(gt1,gt2,gt3,Yu,epsU,eta,ZH,ZUL,ZUR,dYu,depsU,deta,            & 
& dZH,dZUL,dZUR,ctcplcFuFuhhL(gt1,gt2,gt3),ctcplcFuFuhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


ctcplcFdFuHmL = 0._dp 
ctcplcFdFuHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CT_CouplingcFdFuHm(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,ZUL,               & 
& ZUR,dYu,depsU,dYd,depsD,deta,dZP,dZDL,dZDR,dZUL,dZUR,ctcplcFdFuHmL(gt1,gt2,gt3)        & 
& ,ctcplcFdFuHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


ctcplcFeFvHmL = 0._dp 
ctcplcFeFvHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CT_CouplingcFeFvHm(gt1,gt2,gt3,Ye,epsE,eta,ZP,ZER,dYe,depsE,deta,dZP,            & 
& dZER,ctcplcFeFvHmL(gt1,gt2,gt3),ctcplcFeFvHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


ctcplcFdFdVGL = 0._dp 
ctcplcFdFdVGR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFdFdVG(gt1,gt2,g3,dg3,ctcplcFdFdVGL(gt1,gt2),ctcplcFdFdVGR(gt1,gt2))

 End Do 
End Do 


ctcplcFdFdVPL = 0._dp 
ctcplcFdFdVPR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFdFdVP(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,ctcplcFdFdVPL(gt1,gt2)& 
& ,ctcplcFdFdVPR(gt1,gt2))

 End Do 
End Do 


ctcplcFdFdVZL = 0._dp 
ctcplcFdFdVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFdFdVZ(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,ctcplcFdFdVZL(gt1,gt2)& 
& ,ctcplcFdFdVZR(gt1,gt2))

 End Do 
End Do 


ctcplcFuFdcVWmL = 0._dp 
ctcplcFuFdcVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFuFdcVWm(gt1,gt2,g2,ZDL,ZUL,dg2,dZDL,dZUL,ctcplcFuFdcVWmL(gt1,gt2)   & 
& ,ctcplcFuFdcVWmR(gt1,gt2))

 End Do 
End Do 


ctcplcFeFeVPL = 0._dp 
ctcplcFeFeVPR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFeFeVP(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,ctcplcFeFeVPL(gt1,gt2)& 
& ,ctcplcFeFeVPR(gt1,gt2))

 End Do 
End Do 


ctcplcFeFeVZL = 0._dp 
ctcplcFeFeVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFeFeVZ(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,ctcplcFeFeVZL(gt1,gt2)& 
& ,ctcplcFeFeVZR(gt1,gt2))

 End Do 
End Do 


ctcplcFvFecVWmL = 0._dp 
ctcplcFvFecVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFvFecVWm(gt1,gt2,g2,ZEL,dg2,dZEL,ctcplcFvFecVWmL(gt1,gt2)            & 
& ,ctcplcFvFecVWmR(gt1,gt2))

 End Do 
End Do 


ctcplcFuFuVGL = 0._dp 
ctcplcFuFuVGR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFuFuVG(gt1,gt2,g3,dg3,ctcplcFuFuVGL(gt1,gt2),ctcplcFuFuVGR(gt1,gt2))

 End Do 
End Do 


ctcplcFuFuVPL = 0._dp 
ctcplcFuFuVPR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFuFuVP(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,ctcplcFuFuVPL(gt1,gt2)& 
& ,ctcplcFuFuVPR(gt1,gt2))

 End Do 
End Do 


ctcplcFdFuVWmL = 0._dp 
ctcplcFdFuVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFdFuVWm(gt1,gt2,g2,ZDL,ZUL,dg2,dZDL,dZUL,ctcplcFdFuVWmL(gt1,gt2)     & 
& ,ctcplcFdFuVWmR(gt1,gt2))

 End Do 
End Do 


ctcplcFuFuVZL = 0._dp 
ctcplcFuFuVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFuFuVZ(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,ctcplcFuFuVZL(gt1,gt2)& 
& ,ctcplcFuFuVZR(gt1,gt2))

 End Do 
End Do 


ctcplcFeFvVWmL = 0._dp 
ctcplcFeFvVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFeFvVWm(gt1,gt2,g2,ZEL,dg2,dZEL,ctcplcFeFvVWmL(gt1,gt2)              & 
& ,ctcplcFeFvVWmR(gt1,gt2))

 End Do 
End Do 


ctcplcFvFvVZL = 0._dp 
ctcplcFvFvVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CT_CouplingcFvFvVZ(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,ctcplcFvFvVZL(gt1,gt2)& 
& ,ctcplcFvFvVZR(gt1,gt2))

 End Do 
End Do 


Iname = Iname - 1 
End Subroutine CalculateCouplingCT

Subroutine CT_Couplinghhhhhh(gt1,gt2,gt3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,               & 
& Lam2,Lam1p,Lam2p,L3pp,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,eta,zeta,vd,vu,vS,ZH,dLam6,dLam5,dLam7,dLam1,dLam4,dLam3,             & 
& dLam2,dLam1p,dLam2p,dL3pp,dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,            & 
& dLam6p,dLam7p,dLam5p,dL2pp,dLam3p,deta,dzeta,dvd,dvu,dvS,dZH,res)

Implicit None 

Integer, Intent(in) :: gt1,gt2,gt3
Real(dp), Intent(in) :: Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,eta,zeta,vd,vu,vS,ZH(6,6),dLam1,dLam4,           & 
& dLam3,dLam2,dLam1p,dLam2p,dL3pp,deta,dzeta,dvd,dvu,dvS,dZH(6,6)

Complex(dp), Intent(in) :: Lam6,Lam5,Lam7,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,            & 
& L2pp,Lam3p,dLam6,dLam5,dLam7,dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,         & 
& dLam6p,dLam7p,dLam5p,dL2pp,dLam3p

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_Couplinghhhhhh' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

If ((gt3.Lt.1).Or.(gt3.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt3 out of range', gt3 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt3 out of range', gt3 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res-3*Lam1*vd*dZH(gt3,1)*ZH(gt1,1)*ZH(gt2,1)
res = res-(Lam3*vu*dZH(gt3,2)*ZH(gt1,1)*ZH(gt2,1))
res = res-(Lam4*vu*dZH(gt3,2)*ZH(gt1,1)*ZH(gt2,1))
res = res-2*Lam1p*vS*dZH(gt3,3)*ZH(gt1,1)*ZH(gt2,1)
res = res-(Lam3*vu*dZH(gt3,1)*ZH(gt1,2)*ZH(gt2,1))
res = res-(Lam4*vu*dZH(gt3,1)*ZH(gt1,2)*ZH(gt2,1))
res = res-(Lam3*vd*dZH(gt3,2)*ZH(gt1,2)*ZH(gt2,1))
res = res-(Lam4*vd*dZH(gt3,2)*ZH(gt1,2)*ZH(gt2,1))
res = res-2*Lam1p*vS*dZH(gt3,1)*ZH(gt1,3)*ZH(gt2,1)
res = res-2*Lam1p*vd*dZH(gt3,3)*ZH(gt1,3)*ZH(gt2,1)
res = res-(Lam1*vd*dZH(gt3,4)*ZH(gt1,4)*ZH(gt2,1))
res = res-(Lam3*vd*dZH(gt3,5)*ZH(gt1,5)*ZH(gt2,1))
res = res-(Lam4*vd*dZH(gt3,5)*ZH(gt1,5)*ZH(gt2,1))
res = res-2*Lam1p*vd*dZH(gt3,6)*ZH(gt1,6)*ZH(gt2,1)
res = res-(Lam3*vu*dZH(gt3,1)*ZH(gt1,1)*ZH(gt2,2))
res = res-(Lam4*vu*dZH(gt3,1)*ZH(gt1,1)*ZH(gt2,2))
res = res-(Lam3*vd*dZH(gt3,2)*ZH(gt1,1)*ZH(gt2,2))
res = res-(Lam4*vd*dZH(gt3,2)*ZH(gt1,1)*ZH(gt2,2))
res = res-(Lam3*vd*dZH(gt3,1)*ZH(gt1,2)*ZH(gt2,2))
res = res-(Lam4*vd*dZH(gt3,1)*ZH(gt1,2)*ZH(gt2,2))
res = res-3*Lam2*vu*dZH(gt3,2)*ZH(gt1,2)*ZH(gt2,2)
res = res-2*Lam2p*vS*dZH(gt3,3)*ZH(gt1,2)*ZH(gt2,2)
res = res-2*Lam2p*vS*dZH(gt3,2)*ZH(gt1,3)*ZH(gt2,2)
res = res-2*Lam2p*vu*dZH(gt3,3)*ZH(gt1,3)*ZH(gt2,2)
res = res-(Lam3*vu*dZH(gt3,4)*ZH(gt1,4)*ZH(gt2,2))
res = res-(Lam4*vu*dZH(gt3,4)*ZH(gt1,4)*ZH(gt2,2))
res = res-(Lam2*vu*dZH(gt3,5)*ZH(gt1,5)*ZH(gt2,2))
res = res-2*Lam2p*vu*dZH(gt3,6)*ZH(gt1,6)*ZH(gt2,2)
res = res-2*Lam1p*vS*dZH(gt3,1)*ZH(gt1,1)*ZH(gt2,3)
res = res-2*Lam1p*vd*dZH(gt3,3)*ZH(gt1,1)*ZH(gt2,3)
res = res-2*Lam2p*vS*dZH(gt3,2)*ZH(gt1,2)*ZH(gt2,3)
res = res-2*Lam2p*vu*dZH(gt3,3)*ZH(gt1,2)*ZH(gt2,3)
res = res-2*Lam1p*vd*dZH(gt3,1)*ZH(gt1,3)*ZH(gt2,3)
res = res-2*Lam2p*vu*dZH(gt3,2)*ZH(gt1,3)*ZH(gt2,3)
res = res-6*L3pp*vS*dZH(gt3,3)*ZH(gt1,3)*ZH(gt2,3)
res = res-2*Lam1p*vS*dZH(gt3,4)*ZH(gt1,4)*ZH(gt2,3)
res = res-2*Lam2p*vS*dZH(gt3,5)*ZH(gt1,5)*ZH(gt2,3)
res = res-2*L3pp*vS*dZH(gt3,6)*ZH(gt1,6)*ZH(gt2,3)
res = res-(Lam1*vd*dZH(gt3,4)*ZH(gt1,1)*ZH(gt2,4))
res = res-(Lam3*vu*dZH(gt3,4)*ZH(gt1,2)*ZH(gt2,4))
res = res-(Lam4*vu*dZH(gt3,4)*ZH(gt1,2)*ZH(gt2,4))
res = res-2*Lam1p*vS*dZH(gt3,4)*ZH(gt1,3)*ZH(gt2,4)
res = res-(Lam1*vd*dZH(gt3,1)*ZH(gt1,4)*ZH(gt2,4))
res = res-(Lam3*vu*dZH(gt3,2)*ZH(gt1,4)*ZH(gt2,4))
res = res-(Lam4*vu*dZH(gt3,2)*ZH(gt1,4)*ZH(gt2,4))
res = res-2*Lam1p*vS*dZH(gt3,3)*ZH(gt1,4)*ZH(gt2,4)
res = res-(Lam3*vd*dZH(gt3,5)*ZH(gt1,1)*ZH(gt2,5))
res = res-(Lam4*vd*dZH(gt3,5)*ZH(gt1,1)*ZH(gt2,5))
res = res-(Lam2*vu*dZH(gt3,5)*ZH(gt1,2)*ZH(gt2,5))
res = res-2*Lam2p*vS*dZH(gt3,5)*ZH(gt1,3)*ZH(gt2,5)
res = res-(Lam3*vd*dZH(gt3,1)*ZH(gt1,5)*ZH(gt2,5))
res = res-(Lam4*vd*dZH(gt3,1)*ZH(gt1,5)*ZH(gt2,5))
res = res-(Lam2*vu*dZH(gt3,2)*ZH(gt1,5)*ZH(gt2,5))
res = res-2*Lam2p*vS*dZH(gt3,3)*ZH(gt1,5)*ZH(gt2,5)
res = res-2*Lam1p*vd*dZH(gt3,6)*ZH(gt1,1)*ZH(gt2,6)
res = res-2*Lam2p*vu*dZH(gt3,6)*ZH(gt1,2)*ZH(gt2,6)
res = res-2*L3pp*vS*dZH(gt3,6)*ZH(gt1,3)*ZH(gt2,6)
res = res-2*Lam1p*vd*dZH(gt3,1)*ZH(gt1,6)*ZH(gt2,6)
res = res-2*Lam2p*vu*dZH(gt3,2)*ZH(gt1,6)*ZH(gt2,6)
res = res-2*L3pp*vS*dZH(gt3,3)*ZH(gt1,6)*ZH(gt2,6)
res = res-3*Lam1*vd*dZH(gt2,1)*ZH(gt1,1)*ZH(gt3,1)
res = res-(Lam3*vu*dZH(gt2,2)*ZH(gt1,1)*ZH(gt3,1))
res = res-(Lam4*vu*dZH(gt2,2)*ZH(gt1,1)*ZH(gt3,1))
res = res-2*Lam1p*vS*dZH(gt2,3)*ZH(gt1,1)*ZH(gt3,1)
res = res-(Lam3*vu*dZH(gt2,1)*ZH(gt1,2)*ZH(gt3,1))
res = res-(Lam4*vu*dZH(gt2,1)*ZH(gt1,2)*ZH(gt3,1))
res = res-(Lam3*vd*dZH(gt2,2)*ZH(gt1,2)*ZH(gt3,1))
res = res-(Lam4*vd*dZH(gt2,2)*ZH(gt1,2)*ZH(gt3,1))
res = res-2*Lam1p*vS*dZH(gt2,1)*ZH(gt1,3)*ZH(gt3,1)
res = res-2*Lam1p*vd*dZH(gt2,3)*ZH(gt1,3)*ZH(gt3,1)
res = res-(Lam1*vd*dZH(gt2,4)*ZH(gt1,4)*ZH(gt3,1))
res = res-(Lam3*vd*dZH(gt2,5)*ZH(gt1,5)*ZH(gt3,1))
res = res-(Lam4*vd*dZH(gt2,5)*ZH(gt1,5)*ZH(gt3,1))
res = res-2*Lam1p*vd*dZH(gt2,6)*ZH(gt1,6)*ZH(gt3,1)
res = res-3*Lam1*vd*dZH(gt1,1)*ZH(gt2,1)*ZH(gt3,1)
res = res-(Lam3*vu*dZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))
res = res-(Lam4*vu*dZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))
res = res-2*Lam1p*vS*dZH(gt1,3)*ZH(gt2,1)*ZH(gt3,1)
res = res-3*dvd*Lam1*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,1)
res = res-3*dLam1*vd*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,1)
res = res+(3*Lam6*vu*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*eta))
res = res+(-3*Lam6*vu*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*(deta + eta)))
res = res+(3*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,1))/2._dp
res = res+(-3*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,1))/2._dp
res = res-(dvu*Lam3*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))
res = res-(dvu*Lam4*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))
res = res+(3*Lam6*vd*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*eta))
res = res+(-3*Lam6*vd*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*(deta + eta)))
res = res-(dLam3*vu*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))
res = res-(dLam4*vu*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))
res = res+(Lam5*vu*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))
res = res+(3*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))/2._dp
res = res+(-3*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,1))/2._dp
res = res-2*dvS*Lam1p*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,1)
res = res+exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,1)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,1))
res = res-2*dLam1p*vS*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,1)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,1)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,1)
res = res+(2*vS*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,1))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,1))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu11)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,1))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu11)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,1))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vu*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vu*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,1)
res = res+(3._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(-3._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,1))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,1))/exp(2*(0.,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,1)
res = res-3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,1)
res = res+3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,1)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,1)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,1)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,1))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,1))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu11)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,1))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu11)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,1))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res-(Lam3*vu*dZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))
res = res-(Lam4*vu*dZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))
res = res-(Lam3*vd*dZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))
res = res-(Lam4*vd*dZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))
res = res-(dvu*Lam3*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))
res = res-(dvu*Lam4*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))
res = res+(3*Lam6*vd*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*eta))
res = res+(-3*Lam6*vd*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*(deta + eta)))
res = res-(dLam3*vu*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))
res = res-(dLam4*vu*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))
res = res+(Lam5*vu*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))
res = res+(3*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))/2._dp
res = res+(-3*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,1))/2._dp
res = res-(dvd*Lam3*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))
res = res-(dvd*Lam4*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))
res = res-(dLam3*vd*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))
res = res-(dLam4*vd*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))
res = res+(Lam5*vd*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(3*Lam7*vu*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*eta))
res = res+(-3*Lam7*vu*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*(deta + eta)))
res = res+(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))
res = res+(3*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))/2._dp
res = res+(-3*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,1))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1))/2._dp
res = res+(Lam3p*vS*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,1))/2._dp
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,1))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,1))/exp(2*(0.,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,1)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,1))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,1))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,1)
res = res-2*Lam1p*vS*dZH(gt1,1)*ZH(gt2,3)*ZH(gt3,1)
res = res-2*Lam1p*vd*dZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1)
res = res-2*dvS*Lam1p*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,1)
res = res+exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,1)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,1))
res = res-2*dLam1p*vS*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,1)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,1)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,1)
res = res+(2*vS*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,1))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,1))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu11)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,1))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu11)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,1))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1))/2._dp
res = res+(Lam3p*vS*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,1))/2._dp
res = res-2*dvd*Lam1p*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1)
res = res-2*dLam1p*vd*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1)
res = res+(Lam3p*vu*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vu*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1)
res = res+exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1))
res = res+(2*vd*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vd*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,1)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,1)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,1)
res = res+(-2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,1))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,1))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,1)
res = res-(Lam1*vd*dZH(gt1,4)*ZH(gt2,4)*ZH(gt3,1))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vu*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vu*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,1)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,1))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,1))/exp(2*(0.,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,1)
res = res-(dvd*Lam1*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,1))
res = res-(dLam1*vd*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,1))
res = res+(Lam6*vu*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vu*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,1))
res = res+(Lam6*vd*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vd*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+(Lam5*vu*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,1))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,1))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,1))
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,1))
res = res-(Lam3*vd*dZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))
res = res-(Lam4*vd*dZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))
res = res+(3._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(-3._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,1))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,1))/exp(2*(0.,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,1)
res = res-3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,1)
res = res+3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,1)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,1))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,1))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,1)
res = res+(Lam6*vd*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vd*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+(Lam5*vu*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,1))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,1))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,1))
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,1))
res = res-(dvd*Lam3*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))
res = res-(dvd*Lam4*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))
res = res-(dLam3*vd*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))
res = res-(dLam4*vd*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))/exp(2*(0.,1._dp)*eta)
res = res+(Lam5*vd*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))/(2._dp*exp(2*(0.,1._dp)*(deta + eta)))
res = res+(Lam7*vu*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vu*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))
res = res+(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))/2._dp
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,1))
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,1))
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,1))/2._dp
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,1))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,1)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,1))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,1)
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,1))
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,1))/2._dp
res = res-2*Lam1p*vd*dZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,1)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,1)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,1)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,1))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,1))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu11)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,1))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu11)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,1))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,1)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,1)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,1)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,1)
res = res+(-2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,1))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,1))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,1)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,1)
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,1))
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,1))/2._dp
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,1))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,1)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,1))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,1)
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,1))
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,1))/2._dp
res = res-2*dvd*Lam1p*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1)
res = res-2*dLam1p*vd*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1)
res = res-2*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1)
res = res+2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1)
res = res+(Lam3p*vu*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vu*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1))/exp((0._dp,1._dp)*(deta + eta)))
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1))
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1))
res = res+exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1))
res = res+(-2*vd*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1))/exp(2*(0.,1._dp)*zeta)
res = res+(2*vd*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1))
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,1))
res = res-(Lam3*vu*dZH(gt2,1)*ZH(gt1,1)*ZH(gt3,2))
res = res-(Lam4*vu*dZH(gt2,1)*ZH(gt1,1)*ZH(gt3,2))
res = res-(Lam3*vd*dZH(gt2,2)*ZH(gt1,1)*ZH(gt3,2))
res = res-(Lam4*vd*dZH(gt2,2)*ZH(gt1,1)*ZH(gt3,2))
res = res-(Lam3*vd*dZH(gt2,1)*ZH(gt1,2)*ZH(gt3,2))
res = res-(Lam4*vd*dZH(gt2,1)*ZH(gt1,2)*ZH(gt3,2))
res = res-3*Lam2*vu*dZH(gt2,2)*ZH(gt1,2)*ZH(gt3,2)
res = res-2*Lam2p*vS*dZH(gt2,3)*ZH(gt1,2)*ZH(gt3,2)
res = res-2*Lam2p*vS*dZH(gt2,2)*ZH(gt1,3)*ZH(gt3,2)
res = res-2*Lam2p*vu*dZH(gt2,3)*ZH(gt1,3)*ZH(gt3,2)
res = res-(Lam3*vu*dZH(gt2,4)*ZH(gt1,4)*ZH(gt3,2))
res = res-(Lam4*vu*dZH(gt2,4)*ZH(gt1,4)*ZH(gt3,2))
res = res-(Lam2*vu*dZH(gt2,5)*ZH(gt1,5)*ZH(gt3,2))
res = res-2*Lam2p*vu*dZH(gt2,6)*ZH(gt1,6)*ZH(gt3,2)
res = res-(Lam3*vu*dZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))
res = res-(Lam4*vu*dZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))
res = res-(Lam3*vd*dZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))
res = res-(Lam4*vd*dZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))
res = res-(dvu*Lam3*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))
res = res-(dvu*Lam4*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))
res = res+(3*Lam6*vd*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*eta))
res = res+(-3*Lam6*vd*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*(deta + eta)))
res = res-(dLam3*vu*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))
res = res-(dLam4*vu*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))
res = res+(Lam5*vu*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))
res = res+(3*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))/2._dp
res = res+(-3*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,2))/2._dp
res = res-(dvd*Lam3*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))
res = res-(dvd*Lam4*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))
res = res-(dLam3*vd*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))
res = res-(dLam4*vd*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))
res = res+(Lam5*vd*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(3*Lam7*vu*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*eta))
res = res+(-3*Lam7*vu*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*(deta + eta)))
res = res+(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))
res = res+(3*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))/2._dp
res = res+(-3*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,2))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2))/2._dp
res = res+(Lam3p*vS*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,2))/2._dp
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,2))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,2)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,2))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,2)
res = res-(Lam3*vd*dZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))
res = res-(Lam4*vd*dZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))
res = res-3*Lam2*vu*dZH(gt1,2)*ZH(gt2,2)*ZH(gt3,2)
res = res-2*Lam2p*vS*dZH(gt1,3)*ZH(gt2,2)*ZH(gt3,2)
res = res-(dvd*Lam3*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))
res = res-(dvd*Lam4*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))
res = res-(dLam3*vd*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))
res = res-(dLam4*vd*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))
res = res+(Lam5*vd*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(3*Lam7*vu*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*eta))
res = res+(-3*Lam7*vu*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*(deta + eta)))
res = res+(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))
res = res+(3*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))/2._dp
res = res+(-3*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,2))/2._dp
res = res-3*dvu*Lam2*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,2)
res = res+(3*Lam7*vd*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*eta))
res = res+(-3*Lam7*vd*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*(deta + eta)))
res = res-3*dLam2*vu*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,2)
res = res+(3*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,2))/2._dp
res = res+(-3*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,2))/2._dp
res = res-2*dvS*Lam2p*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,2)
res = res+exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,2)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,2))
res = res-2*dLam2p*vS*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,2)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,2)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,2)
res = res+(2*vS*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,2))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,2))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu22)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,2))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu22)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,2))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,2))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(-3._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+(3._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,2)
res = res+3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,2)
res = res-3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,2)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vd*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vd*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,2)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,2)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,2)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,2))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,2))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu22)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,2))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu22)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,2))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res-2*Lam2p*vS*dZH(gt1,2)*ZH(gt2,3)*ZH(gt3,2)
res = res-2*Lam2p*vu*dZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2)
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2))/2._dp
res = res+(Lam3p*vS*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,2))/2._dp
res = res-2*dvS*Lam2p*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,2)
res = res+exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,2)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,2))
res = res-2*dLam2p*vS*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,2)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,2)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,2)
res = res+(2*vS*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,2))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,2))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu22)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,2))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu22)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,2))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res-2*dvu*Lam2p*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2)
res = res+(Lam3p*vd*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vd*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2)
res = res-2*dLam2p*vu*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2)
res = res+exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2))
res = res+(2*vu*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vu*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,2)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,2)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,2)
res = res+(-2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,2))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,2))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,2)
res = res-(Lam3*vu*dZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))
res = res-(Lam4*vu*dZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,2))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,2)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,2))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(-3._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+(3._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,2)
res = res+3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,2)
res = res-3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,2)
res = res-(dvu*Lam3*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))
res = res-(dvu*Lam4*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))
res = res+(Lam6*vd*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vd*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res-(dLam3*vu*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))
res = res-(dLam4*vu*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))/exp(2*(0.,1._dp)*eta)
res = res+(Lam5*vu*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))/(2._dp*exp(2*(0.,1._dp)*(deta + eta)))
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))
res = res+(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))/2._dp
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,2))
res = res+(Lam5*vd*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,2))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(Lam7*vu*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vu*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,2))
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,2))
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,2))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,2)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,2))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,2)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,2))
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,2))
res = res-(Lam2*vu*dZH(gt1,5)*ZH(gt2,5)*ZH(gt3,2))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,2))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,2)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vd*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vd*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,2)
res = res+(Lam5*vd*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,2))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(Lam7*vu*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vu*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,2))
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,2))
res = res-(dvu*Lam2*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,2))
res = res+(Lam7*vd*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,2))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vd*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res-(dLam2*vu*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,2))
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,2))
res = res-2*Lam2p*vu*dZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,2)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,2)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,2)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,2))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,2))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu22)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,2))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu22)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,2))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,2)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,2)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,2)
res = res+(-2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,2))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,2))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,2)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,2)
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,2))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,2)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,2))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,2)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,2))
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,2))
res = res-2*dvu*Lam2p*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2)
res = res+(Lam3p*vd*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vd*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2))/exp((0._dp,1._dp)*(deta + eta)))
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2))
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2))
res = res-2*dLam2p*vu*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2)
res = res-2*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2)
res = res+2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2)
res = res+exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2))
res = res+(-2*vu*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2))/exp(2*(0.,1._dp)*zeta)
res = res+(2*vu*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2))
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,2))
res = res-2*Lam1p*vS*dZH(gt2,1)*ZH(gt1,1)*ZH(gt3,3)
res = res-2*Lam1p*vd*dZH(gt2,3)*ZH(gt1,1)*ZH(gt3,3)
res = res-2*Lam2p*vS*dZH(gt2,2)*ZH(gt1,2)*ZH(gt3,3)
res = res-2*Lam2p*vu*dZH(gt2,3)*ZH(gt1,2)*ZH(gt3,3)
res = res-2*Lam1p*vd*dZH(gt2,1)*ZH(gt1,3)*ZH(gt3,3)
res = res-2*Lam2p*vu*dZH(gt2,2)*ZH(gt1,3)*ZH(gt3,3)
res = res-6*L3pp*vS*dZH(gt2,3)*ZH(gt1,3)*ZH(gt3,3)
res = res-2*Lam1p*vS*dZH(gt2,4)*ZH(gt1,4)*ZH(gt3,3)
res = res-2*Lam2p*vS*dZH(gt2,5)*ZH(gt1,5)*ZH(gt3,3)
res = res-2*L3pp*vS*dZH(gt2,6)*ZH(gt1,6)*ZH(gt3,3)
res = res-2*Lam1p*vS*dZH(gt1,1)*ZH(gt2,1)*ZH(gt3,3)
res = res-2*Lam1p*vd*dZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3)
res = res-2*dvS*Lam1p*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,3))
res = res-2*dLam1p*vS*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,3)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,3)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,3)
res = res+(2*vS*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu11)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,3))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu11)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,3))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3))/2._dp
res = res+(Lam3p*vS*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,3))/2._dp
res = res-2*dvd*Lam1p*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3)
res = res-2*dLam1p*vd*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3)
res = res+(Lam3p*vu*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vu*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3))
res = res+(2*vd*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vd*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,3)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,3)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,3)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,3)
res = res+(-2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,3)
res = res-2*Lam2p*vS*dZH(gt1,2)*ZH(gt2,2)*ZH(gt3,3)
res = res-2*Lam2p*vu*dZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3)
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3))/2._dp
res = res+(Lam3p*vS*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,3))/2._dp
res = res-2*dvS*Lam2p*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,3))
res = res-2*dLam2p*vS*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,3)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,3)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,3)
res = res+(2*vS*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu22)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,3))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu22)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,3))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res-2*dvu*Lam2p*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3)
res = res+(Lam3p*vd*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vd*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3)
res = res-2*dLam2p*vu*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3))
res = res+(2*vu*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vu*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,3)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,3)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,3)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,3)
res = res+(-2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,3)
res = res-2*Lam1p*vd*dZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3)
res = res-2*Lam2p*vu*dZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3)
res = res-6*L3pp*vS*dZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3)
res = res-2*dvd*Lam1p*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3)
res = res-2*dLam1p*vd*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3)
res = res+(Lam3p*vu*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vu*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3))
res = res+(2*vd*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vd*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,3)
res = res-2*dvu*Lam2p*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3)
res = res+(Lam3p*vd*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vd*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3)
res = res-2*dLam2p*vu*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3))
res = res+(2*vu*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vu*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,3)
res = res-6*dvS*L3pp*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3)
res = res+exp(3*(0.,1._dp)*zeta)*mus1*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3)
res = res-(exp(3*(0.,1._dp)*(dzeta + zeta))*mus1*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3))
res = res+3*exp((0._dp,1._dp)*zeta)*mus2*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3)
res = res-3*exp((0._dp,1._dp)*(dzeta + zeta))*mus2*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3)
res = res-6*dL3pp*vS*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3)
res = res+exp(4*(0.,1._dp)*zeta)*L1pp*vS*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3)
res = res-(exp(4*(0.,1._dp)*(dzeta + zeta))*L1pp*vS*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3))
res = res+4*exp(2*(0.,1._dp)*zeta)*L2pp*vS*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3)
res = res-4*exp(2*(0.,1._dp)*(dzeta + zeta))*L2pp*vS*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3)
res = res+(vS*Conjg(L1pp)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3))/exp(4*(0.,1._dp)*zeta)
res = res-((vS*Conjg(L1pp)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3))/exp(4*(0.,1._dp)*(dzeta + zeta)))
res = res+(4*vS*Conjg(L2pp)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(-4*vS*Conjg(L2pp)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mus1)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3))/exp(3*(0.,1._dp)*zeta)
res = res-((Conjg(mus1)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3))/exp(3*(0.,1._dp)*(dzeta + zeta)))
res = res+(3*Conjg(mus2)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*zeta)
res = res+(-3*Conjg(mus2)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Lam3p*vu*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vu*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,3)
res = res+((0._dp,1._dp)*Lam3p*vd*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vd*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(3*(0.,1._dp)*zeta)*mus1*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(3*(0.,1._dp)*(dzeta + zeta))*mus1*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mus2*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mus2*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(4*(0.,1._dp)*zeta)*L1pp*vS*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(4*(0.,1._dp)*(dzeta + zeta))*L1pp*vS*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*L2pp*vS*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*L2pp*vS*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3)
res = res+(-1*(0.,1._dp)*vS*Conjg(L1pp)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3))/exp(4*(0.,1._dp)*zeta)
res = res+((0._dp,1._dp)*vS*Conjg(L1pp)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3))/exp(4*(0.,1._dp)*(dzeta + zeta))
res = res+(-2*(0.,1._dp)*vS*Conjg(L2pp)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(L2pp)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mus1)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3))/exp(3*(0.,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mus1)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3))/exp(3*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mus2)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mus2)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,3))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res-2*Lam1p*vS*dZH(gt1,4)*ZH(gt2,4)*ZH(gt3,3)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,3)
res = res+(-1*(0.,1._dp)*Lam3p*vu*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vu*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,3)
res = res-2*dvS*Lam1p*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,3))
res = res-2*dLam1p*vS*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,3)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,3)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,3)
res = res+(2*vS*Conjg(Lam4p)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam4p)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu11)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,3))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu11)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,3))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3))/2._dp
res = res+(Lam3p*vS*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,3))/2._dp
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,3))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,3)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,3))
res = res-2*Lam2p*vS*dZH(gt1,5)*ZH(gt2,5)*ZH(gt3,3)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,3)
res = res+((0._dp,1._dp)*Lam3p*vd*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vd*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,3)
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3))/2._dp
res = res+(Lam3p*vS*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,3))/2._dp
res = res-2*dvS*Lam2p*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,3))
res = res-2*dLam2p*vS*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,3)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,3)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,3)
res = res+(2*vS*Conjg(Lam5p)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam5p)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu22)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,3))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu22)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,3))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,3))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,3))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,3)
res = res-2*L3pp*vS*dZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,3)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,3)
res = res+(-2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,3)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,3)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,3)
res = res+(-2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(3*(0.,1._dp)*zeta)*mus1*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(3*(0.,1._dp)*(dzeta + zeta))*mus1*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mus2*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mus2*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3)
res = res+(0._dp,1._dp)*exp(4*(0.,1._dp)*zeta)*L1pp*vS*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3)
res = res-1*(0.,1._dp)*exp(4*(0.,1._dp)*(dzeta + zeta))*L1pp*vS*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*L2pp*vS*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*L2pp*vS*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3)
res = res+(-1*(0.,1._dp)*vS*Conjg(L1pp)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3))/exp(4*(0.,1._dp)*zeta)
res = res+((0._dp,1._dp)*vS*Conjg(L1pp)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3))/exp(4*(0.,1._dp)*(dzeta + zeta))
res = res+(-2*(0.,1._dp)*vS*Conjg(L2pp)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(L2pp)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mus1)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3))/exp(3*(0.,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mus1)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3))/exp(3*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mus2)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mus2)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,3))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,3))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,3)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,3))
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,3))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,3))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,3)
res = res-2*dvS*L3pp*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3)
res = res-(exp(3*(0.,1._dp)*zeta)*mus1*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3))
res = res+exp(3*(0.,1._dp)*(dzeta + zeta))*mus1*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3)
res = res+exp((0._dp,1._dp)*zeta)*mus2*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mus2*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3))
res = res-2*dL3pp*vS*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3)
res = res-(exp(4*(0.,1._dp)*zeta)*L1pp*vS*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3))
res = res+exp(4*(0.,1._dp)*(dzeta + zeta))*L1pp*vS*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3)
res = res-((vS*Conjg(L1pp)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3))/exp(4*(0.,1._dp)*zeta))
res = res+(vS*Conjg(L1pp)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3))/exp(4*(0.,1._dp)*(dzeta + zeta))
res = res-((Conjg(mus1)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3))/exp(3*(0.,1._dp)*zeta))
res = res+(Conjg(mus1)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3))/exp(3*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mus2)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mus2)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,3))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res-(Lam1*vd*dZH(gt2,4)*ZH(gt1,1)*ZH(gt3,4))
res = res-(Lam3*vu*dZH(gt2,4)*ZH(gt1,2)*ZH(gt3,4))
res = res-(Lam4*vu*dZH(gt2,4)*ZH(gt1,2)*ZH(gt3,4))
res = res-2*Lam1p*vS*dZH(gt2,4)*ZH(gt1,3)*ZH(gt3,4)
res = res-(Lam1*vd*dZH(gt2,1)*ZH(gt1,4)*ZH(gt3,4))
res = res-(Lam3*vu*dZH(gt2,2)*ZH(gt1,4)*ZH(gt3,4))
res = res-(Lam4*vu*dZH(gt2,2)*ZH(gt1,4)*ZH(gt3,4))
res = res-2*Lam1p*vS*dZH(gt2,3)*ZH(gt1,4)*ZH(gt3,4)
res = res-(Lam1*vd*dZH(gt1,4)*ZH(gt2,1)*ZH(gt3,4))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vu*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vu*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,4)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,4))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,4))/exp(2*(0.,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,4)
res = res-(dvd*Lam1*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,4))
res = res-(dLam1*vd*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,4))
res = res+(Lam6*vu*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,4))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vu*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,4))
res = res+(Lam6*vd*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,4))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vd*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+(Lam5*vu*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,4))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,4))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,4))
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,4))
res = res-(Lam3*vu*dZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))
res = res-(Lam4*vu*dZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,4))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,4))/exp(2*(0.,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,4)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,4))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,4))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(-3._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+(3._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,4)
res = res+3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,4)
res = res-3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,4)
res = res-(dvu*Lam3*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))
res = res-(dvu*Lam4*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))
res = res+(Lam6*vd*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vd*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res-(dLam3*vu*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))
res = res-(dLam4*vu*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))/exp(2*(0.,1._dp)*eta)
res = res+(Lam5*vu*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))/(2._dp*exp(2*(0.,1._dp)*(deta + eta)))
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))
res = res+(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))/2._dp
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,4))
res = res+(Lam5*vd*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,4))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,4))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(Lam7*vu*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,4))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vu*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,4))
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,4))
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,4))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,4)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,4))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,4)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,4))
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,4))
res = res-2*Lam1p*vS*dZH(gt1,4)*ZH(gt2,3)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,4)
res = res+(-1*(0.,1._dp)*Lam3p*vu*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vu*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,4)
res = res-2*dvS*Lam1p*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,4)
res = res+exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,4)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,4))
res = res-2*dLam1p*vS*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,4)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,4)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,4)
res = res+(2*vS*Conjg(Lam4p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,4))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam4p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,4))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu11)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,4))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu11)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,4))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4))/2._dp
res = res+(Lam3p*vS*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,4))/2._dp
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,4)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,4))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,4)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,4))
res = res-(Lam1*vd*dZH(gt1,1)*ZH(gt2,4)*ZH(gt3,4))
res = res-(Lam3*vu*dZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))
res = res-(Lam4*vu*dZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))
res = res-2*Lam1p*vS*dZH(gt1,3)*ZH(gt2,4)*ZH(gt3,4)
res = res-(dvd*Lam1*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,4))
res = res-(dLam1*vd*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,4))
res = res+(Lam6*vu*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,4))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vu*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,4))
res = res-(dvu*Lam3*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))
res = res-(dvu*Lam4*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))
res = res+(Lam6*vd*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vd*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res-(dLam3*vu*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))
res = res-(dLam4*vu*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))/exp(2*(0.,1._dp)*eta)
res = res+(Lam5*vu*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))/(2._dp*exp(2*(0.,1._dp)*(deta + eta)))
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))
res = res+(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))/2._dp
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,4))
res = res-2*dvS*Lam1p*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,4)
res = res+exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,4)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,4))
res = res-2*dLam1p*vS*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,4)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,4)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,4)
res = res+(2*vS*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,4))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,4))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu11)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,4))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu11)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,4))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(-3._dp/2._dp*(0.,1._dp)*Lam6*vu*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+(3._dp/2._dp*(0.,1._dp)*Lam6*vu*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,4)
res = res-3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,4)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,4))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,4))/exp(2*(0.,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,4)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,4)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,4)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,4))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,4))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu11)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,4))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu11)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,4))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+(Lam6*vd*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,4))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vd*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+(Lam5*vu*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,4))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,4))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,4))
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,4))
res = res+(Lam5*vd*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,4))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,4))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(Lam7*vu*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,4))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vu*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,4))
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,4))
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4))/2._dp
res = res+(Lam3p*vS*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,4))/2._dp
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,4))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,4))/exp(2*(0.,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,4)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,4))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,4))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,4)
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,4))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,4)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,4))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,4)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,4))
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,4))/2._dp
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,4))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,4)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,4))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,4)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,4))
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,4)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,4)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,4)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,4))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,4))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu11)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,4))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu11)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,4))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,4)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,4)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,4)
res = res+(-1*(0.,1._dp)*Lam3p*vu*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,4))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vu*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,4))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,4)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,4)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,4)
res = res-(Lam3*vd*dZH(gt2,5)*ZH(gt1,1)*ZH(gt3,5))
res = res-(Lam4*vd*dZH(gt2,5)*ZH(gt1,1)*ZH(gt3,5))
res = res-(Lam2*vu*dZH(gt2,5)*ZH(gt1,2)*ZH(gt3,5))
res = res-2*Lam2p*vS*dZH(gt2,5)*ZH(gt1,3)*ZH(gt3,5)
res = res-(Lam3*vd*dZH(gt2,1)*ZH(gt1,5)*ZH(gt3,5))
res = res-(Lam4*vd*dZH(gt2,1)*ZH(gt1,5)*ZH(gt3,5))
res = res-(Lam2*vu*dZH(gt2,2)*ZH(gt1,5)*ZH(gt3,5))
res = res-2*Lam2p*vS*dZH(gt2,3)*ZH(gt1,5)*ZH(gt3,5)
res = res-(Lam3*vd*dZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))
res = res-(Lam4*vd*dZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))
res = res+(3._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(-3._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,5))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,5))/exp(2*(0.,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,5)
res = res-3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,5)
res = res+3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,5)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,5))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,5))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,5)
res = res+(Lam6*vd*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,5))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vd*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res+(Lam5*vu*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,5))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,5))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,5))
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,1)*ZH(gt3,5))
res = res-(dvd*Lam3*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))
res = res-(dvd*Lam4*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))
res = res-(dLam3*vd*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))
res = res-(dLam4*vd*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))/exp(2*(0.,1._dp)*eta)
res = res+(Lam5*vd*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))/(2._dp*exp(2*(0.,1._dp)*(deta + eta)))
res = res+(Lam7*vu*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vu*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))
res = res+(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))/2._dp
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,5))
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,5))
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,5))/2._dp
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,5))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,5)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,5))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,5)
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,5))
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,5))/2._dp
res = res-(Lam2*vu*dZH(gt1,5)*ZH(gt2,2)*ZH(gt3,5))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,5))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,5))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,5)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vd*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vd*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,5)
res = res+(Lam5*vd*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,5))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,5))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(Lam7*vu*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,5))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vu*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,5))
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,5))
res = res-(dvu*Lam2*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,5))
res = res+(Lam7*vd*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,5))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vd*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res-(dLam2*vu*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,5))
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,2)*ZH(gt3,5))
res = res-2*Lam2p*vS*dZH(gt1,5)*ZH(gt2,3)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5)
res = res+((0._dp,1._dp)*Lam3p*vS*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vS*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,5)
res = res+((0._dp,1._dp)*Lam3p*vd*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vd*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,5)
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5))/2._dp
res = res+(Lam3p*vS*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,5))/2._dp
res = res-2*dvS*Lam2p*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,5)
res = res+exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,5)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,5))
res = res-2*dLam2p*vS*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,5)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,5)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,5)
res = res+(2*vS*Conjg(Lam5p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,5))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam5p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,5))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu22)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,5))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu22)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,5))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,5))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,5)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,5))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,5)
res = res+(Lam6*vd*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,5))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vd*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res+(Lam5*vu*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,5))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,5))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,5))
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,1)*ZH(gt2,4)*ZH(gt3,5))
res = res+(Lam5*vd*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,5))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,5))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(Lam7*vu*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,5))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vu*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res+(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,5))
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,5))
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5))/2._dp
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5))/2._dp
res = res+(Lam3p*vS*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vS*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5)
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5)
res = res+exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5)
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5)
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5))/2._dp
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,5))/2._dp
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,5))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,5))/exp(2*(0.,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,5)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,5))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,5))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,5)
res = res-(Lam3*vd*dZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))
res = res-(Lam4*vd*dZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))
res = res-(Lam2*vu*dZH(gt1,2)*ZH(gt2,5)*ZH(gt3,5))
res = res-2*Lam2p*vS*dZH(gt1,3)*ZH(gt2,5)*ZH(gt3,5)
res = res-(dvd*Lam3*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))
res = res-(dvd*Lam4*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))
res = res-(dLam3*vd*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))
res = res-(dLam4*vd*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))/exp(2*(0.,1._dp)*eta)
res = res+(Lam5*vd*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))/(2._dp*exp(2*(0.,1._dp)*(deta + eta)))
res = res+(Lam7*vu*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vu*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))
res = res+(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))/2._dp
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,5))
res = res-(dvu*Lam2*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,5))
res = res+(Lam7*vd*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,5))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vd*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res-(dLam2*vu*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,5))
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,5))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam7)*ZH(gt1,2)*ZH(gt2,5)*ZH(gt3,5))
res = res-2*dvS*Lam2p*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,5)
res = res+exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,5)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,5))
res = res-2*dLam2p*vS*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,5)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,5)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,5)
res = res+(2*vS*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,5))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,5))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu22)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,5))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu22)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,5))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,5))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,5))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,5)
res = res+(3._dp/2._dp*(0.,1._dp)*Lam7*vd*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(-3._dp/2._dp*(0.,1._dp)*Lam7*vd*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res-3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,5)
res = res+3._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam7)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,5)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,5)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,5)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,5))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,5))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu22)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,5))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu22)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,5))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,5))
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,5))/2._dp
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,5))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,5)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,5))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,5)
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,5))
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,5))/2._dp
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,5))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,5)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,5))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,5)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,5)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,5)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,5)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,5)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,5))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,5))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu22)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,5))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu22)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,5))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+((0._dp,1._dp)*Lam3p*vd*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,5))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vd*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,5))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,5)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,5)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,5)
res = res-2*Lam1p*vd*dZH(gt2,6)*ZH(gt1,1)*ZH(gt3,6)
res = res-2*Lam2p*vu*dZH(gt2,6)*ZH(gt1,2)*ZH(gt3,6)
res = res-2*L3pp*vS*dZH(gt2,6)*ZH(gt1,3)*ZH(gt3,6)
res = res-2*Lam1p*vd*dZH(gt2,1)*ZH(gt1,6)*ZH(gt3,6)
res = res-2*Lam2p*vu*dZH(gt2,2)*ZH(gt1,6)*ZH(gt3,6)
res = res-2*L3pp*vS*dZH(gt2,3)*ZH(gt1,6)*ZH(gt3,6)
res = res-2*Lam1p*vd*dZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,6)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,6)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,6)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu11)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,6))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu11)*ZH(gt1,1)*ZH(gt2,1)*ZH(gt3,6))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,6)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,6)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,6)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,2)*ZH(gt2,1)*ZH(gt3,6)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,6)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,6)
res = res+(-2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,1)*ZH(gt3,6)
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,6))
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,6))/2._dp
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,6))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,6))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,6)
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,6))
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,5)*ZH(gt2,1)*ZH(gt3,6))/2._dp
res = res-2*dvd*Lam1p*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6)
res = res-2*dLam1p*vd*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6)
res = res-2*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6)
res = res+2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6)
res = res+(Lam3p*vu*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vu*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6))/exp((0._dp,1._dp)*(deta + eta)))
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6))
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6))
res = res+exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6))
res = res+(-2*vd*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*vd*Conjg(Lam4p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6))
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,1)*ZH(gt3,6))
res = res-2*Lam2p*vu*dZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,6)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,6)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,6)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,1)*ZH(gt2,2)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,6)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,6)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,6)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu22)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,6))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu22)*ZH(gt1,2)*ZH(gt2,2)*ZH(gt3,6))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,6)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,6)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,6)
res = res+(-2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,2)*ZH(gt3,6)
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,6))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,6))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,6))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,6)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,6))
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,6))/2._dp
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,4)*ZH(gt2,2)*ZH(gt3,6))
res = res-2*dvu*Lam2p*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6)
res = res+(Lam3p*vd*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vd*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6))/exp((0._dp,1._dp)*(deta + eta)))
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6))
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6))
res = res-2*dLam2p*vu*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6)
res = res-2*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6)
res = res+2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6)
res = res+exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6))
res = res+(-2*vu*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*vu*Conjg(Lam5p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6))
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,2)*ZH(gt3,6))
res = res-2*L3pp*vS*dZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,6)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,6)
res = res+(-2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vd*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,3)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,6)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,6)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,6)
res = res+(-2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vu*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,3)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(3*(0.,1._dp)*zeta)*mus1*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(3*(0.,1._dp)*(dzeta + zeta))*mus1*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mus2*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mus2*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(4*(0.,1._dp)*zeta)*L1pp*vS*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(4*(0.,1._dp)*(dzeta + zeta))*L1pp*vS*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*L2pp*vS*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*L2pp*vS*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6)
res = res+(-1*(0.,1._dp)*vS*Conjg(L1pp)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6))/exp(4*(0.,1._dp)*zeta)
res = res+((0._dp,1._dp)*vS*Conjg(L1pp)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6))/exp(4*(0.,1._dp)*(dzeta + zeta))
res = res+(-2*(0.,1._dp)*vS*Conjg(L2pp)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(L2pp)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mus1)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6))/exp(3*(0.,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mus1)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6))/exp(3*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mus2)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mus2)*ZH(gt1,3)*ZH(gt2,3)*ZH(gt3,6))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,6))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,6)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,3)*ZH(gt3,6))
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,6))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,6))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,3)*ZH(gt3,6)
res = res-2*dvS*L3pp*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6)
res = res-(exp(3*(0.,1._dp)*zeta)*mus1*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6))
res = res+exp(3*(0.,1._dp)*(dzeta + zeta))*mus1*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6)
res = res+exp((0._dp,1._dp)*zeta)*mus2*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mus2*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6))
res = res-2*dL3pp*vS*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6)
res = res-(exp(4*(0.,1._dp)*zeta)*L1pp*vS*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6))
res = res+exp(4*(0.,1._dp)*(dzeta + zeta))*L1pp*vS*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6)
res = res-((vS*Conjg(L1pp)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6))/exp(4*(0.,1._dp)*zeta))
res = res+(vS*Conjg(L1pp)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6))/exp(4*(0.,1._dp)*(dzeta + zeta))
res = res-((Conjg(mus1)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6))/exp(3*(0.,1._dp)*zeta))
res = res+(Conjg(mus1)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6))/exp(3*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mus2)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mus2)*ZH(gt1,6)*ZH(gt2,3)*ZH(gt3,6))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,6))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,6))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,6))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,6)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,6))
res = res+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,6))/2._dp
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,2)*ZH(gt2,4)*ZH(gt3,6))
res = res+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,6))
res = res+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,6)
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,4)*ZH(gt3,6))
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,6)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,6)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,6)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu11)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,6))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu11)*ZH(gt1,4)*ZH(gt2,4)*ZH(gt3,6))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,6)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,6)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,6)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,5)*ZH(gt2,4)*ZH(gt3,6)
res = res+(-1*(0.,1._dp)*Lam3p*vu*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,6))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vu*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,6))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,4)*ZH(gt3,6)
res = res-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,6))
res = res+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,6))/2._dp
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,6))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,6))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,6)
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,6))
res = res+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,1)*ZH(gt2,5)*ZH(gt3,6))/2._dp
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,6))
res = res+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,6))
res = res+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,3)*ZH(gt2,5)*ZH(gt3,6)
res = res+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,6)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,6)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,6)
res = res-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,4)*ZH(gt2,5)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,6)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,6)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,6)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu22)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,6))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu22)*ZH(gt1,5)*ZH(gt2,5)*ZH(gt3,6))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res+((0._dp,1._dp)*Lam3p*vd*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,6))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vd*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,6))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,6)*ZH(gt2,5)*ZH(gt3,6)
res = res-2*Lam1p*vd*dZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6)
res = res-2*Lam2p*vu*dZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6)
res = res-2*L3pp*vS*dZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6)
res = res-2*dvd*Lam1p*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6)
res = res-2*dLam1p*vd*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6)
res = res-2*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6)
res = res+2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vd*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6)
res = res+(Lam3p*vu*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vu*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*(deta + eta)))
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6))
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6))
res = res+exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6))
res = res+(-2*vd*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*vd*Conjg(Lam4p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6))
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,1)*ZH(gt2,6)*ZH(gt3,6))
res = res-2*dvu*Lam2p*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6)
res = res+(Lam3p*vd*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*eta)
res = res-((Lam3p*vd*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*(deta + eta)))
res = res-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6))
res = res-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6))
res = res-2*dLam2p*vu*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6)
res = res-2*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6)
res = res+2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vu*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6)
res = res+exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6))
res = res+(-2*vu*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*vu*Conjg(Lam5p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6))
res = res-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,2)*ZH(gt2,6)*ZH(gt3,6))
res = res-2*dvS*L3pp*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6)
res = res-(exp(3*(0.,1._dp)*zeta)*mus1*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6))
res = res+exp(3*(0.,1._dp)*(dzeta + zeta))*mus1*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6)
res = res+exp((0._dp,1._dp)*zeta)*mus2*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mus2*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6))
res = res-2*dL3pp*vS*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6)
res = res-(exp(4*(0.,1._dp)*zeta)*L1pp*vS*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6))
res = res+exp(4*(0.,1._dp)*(dzeta + zeta))*L1pp*vS*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6)
res = res-((vS*Conjg(L1pp)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6))/exp(4*(0.,1._dp)*zeta))
res = res+(vS*Conjg(L1pp)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6))/exp(4*(0.,1._dp)*(dzeta + zeta))
res = res-((Conjg(mus1)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6))/exp(3*(0.,1._dp)*zeta))
res = res+(Conjg(mus1)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6))/exp(3*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mus2)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mus2)*ZH(gt1,3)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(-1*(0.,1._dp)*Lam3p*vu*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*eta)
res = res+((0._dp,1._dp)*Lam3p*vu*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam3p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam6p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*Conjg(Lam7p)*ZH(gt1,4)*ZH(gt2,6)*ZH(gt3,6)
res = res+((0._dp,1._dp)*Lam3p*vd*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*eta)
res = res+(-1*(0.,1._dp)*Lam3p*vd*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*(deta + eta))
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam3p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam6p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*Conjg(Lam7p)*ZH(gt1,5)*ZH(gt2,6)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(3*(0.,1._dp)*zeta)*mus1*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(3*(0.,1._dp)*(dzeta + zeta))*mus1*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6)
res = res+3*(0.,1._dp)*exp((0._dp,1._dp)*zeta)*mus2*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6)
res = res-3*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mus2*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6)
res = res-1*(0.,1._dp)*exp(4*(0.,1._dp)*zeta)*L1pp*vS*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6)
res = res+(0._dp,1._dp)*exp(4*(0.,1._dp)*(dzeta + zeta))*L1pp*vS*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*L2pp*vS*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*L2pp*vS*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6)
res = res+((0._dp,1._dp)*vS*Conjg(L1pp)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6))/exp(4*(0.,1._dp)*zeta)
res = res+(-1*(0.,1._dp)*vS*Conjg(L1pp)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6))/exp(4*(0.,1._dp)*(dzeta + zeta))
res = res+(-2*(0.,1._dp)*vS*Conjg(L2pp)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(L2pp)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+((0._dp,1._dp)*Conjg(mus1)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6))/exp(3*(0.,1._dp)*zeta)
res = res+(-1*(0.,1._dp)*Conjg(mus1)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6))/exp(3*(0.,1._dp)*(dzeta + zeta))
res = res+(-3*(0.,1._dp)*Conjg(mus2)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*zeta)
res = res+(3*(0.,1._dp)*Conjg(mus2)*ZH(gt1,6)*ZH(gt2,6)*ZH(gt3,6))/exp((0._dp,1._dp)*(dzeta + zeta))
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_Couplinghhhhhh  
 
 
Subroutine CT_CouplinghhHmcHm(gt1,gt2,gt3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,              & 
& Lam2,Lam1p,Lam2p,mu11,mu12,mu21,mu22,Lam4p,Lam6p,Lam7p,Lam5p,Lam3p,eta,zeta,           & 
& vd,vu,vS,ZH,ZP,dLam6,dLam5,dLam7,dLam1,dLam4,dLam3,dLam2,dLam1p,dLam2p,dmu11,          & 
& dmu12,dmu21,dmu22,dLam4p,dLam6p,dLam7p,dLam5p,dLam3p,deta,dzeta,dvd,dvu,               & 
& dvS,dZH,dZP,res)

Implicit None 

Integer, Intent(in) :: gt1,gt2,gt3
Real(dp), Intent(in) :: Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,eta,zeta,vd,vu,vS,ZH(6,6),ZP(2,2),dLam1,              & 
& dLam4,dLam3,dLam2,dLam1p,dLam2p,deta,dzeta,dvd,dvu,dvS,dZH(6,6),dZP(2,2)

Complex(dp), Intent(in) :: Lam6,Lam5,Lam7,mu11,mu12,mu21,mu22,Lam4p,Lam6p,Lam7p,Lam5p,Lam3p,dLam6,               & 
& dLam5,dLam7,dmu11,dmu12,dmu21,dmu22,dLam4p,dLam6p,dLam7p,dLam5p,dLam3p

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplinghhHmcHm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

If ((gt3.Lt.1).Or.(gt3.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt3 out of range', gt3 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt3 out of range', gt3 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res-(Lam1*vd*dZP(gt3,1)*ZH(gt1,1)*ZP(gt2,1))
res = res-1._dp/2._dp*(Lam4*vu*dZP(gt3,2)*ZH(gt1,1)*ZP(gt2,1))
res = res-(Lam3*vu*dZP(gt3,1)*ZH(gt1,2)*ZP(gt2,1))
res = res-1._dp/2._dp*(Lam4*vd*dZP(gt3,2)*ZH(gt1,2)*ZP(gt2,1))
res = res-2*Lam1p*vS*dZP(gt3,1)*ZH(gt1,3)*ZP(gt2,1)
res = res-1._dp/2._dp*(0.,1._dp)*Lam4*vu*dZP(gt3,2)*ZH(gt1,4)*ZP(gt2,1)
res = res+1._dp/2._dp*(0.,1._dp)*Lam4*vd*dZP(gt3,2)*ZH(gt1,5)*ZP(gt2,1)
res = res-1._dp/2._dp*(Lam4*vu*dZP(gt3,1)*ZH(gt1,1)*ZP(gt2,2))
res = res-(Lam3*vd*dZP(gt3,2)*ZH(gt1,1)*ZP(gt2,2))
res = res-1._dp/2._dp*(Lam4*vd*dZP(gt3,1)*ZH(gt1,2)*ZP(gt2,2))
res = res-(Lam2*vu*dZP(gt3,2)*ZH(gt1,2)*ZP(gt2,2))
res = res-2*Lam2p*vS*dZP(gt3,2)*ZH(gt1,3)*ZP(gt2,2)
res = res+1._dp/2._dp*(0.,1._dp)*Lam4*vu*dZP(gt3,1)*ZH(gt1,4)*ZP(gt2,2)
res = res-1._dp/2._dp*(0.,1._dp)*Lam4*vd*dZP(gt3,1)*ZH(gt1,5)*ZP(gt2,2)
res = res-(Lam1*vd*dZP(gt2,1)*ZH(gt1,1)*ZP(gt3,1))
res = res-1._dp/2._dp*(Lam4*vu*dZP(gt2,2)*ZH(gt1,1)*ZP(gt3,1))
res = res-(Lam3*vu*dZP(gt2,1)*ZH(gt1,2)*ZP(gt3,1))
res = res-1._dp/2._dp*(Lam4*vd*dZP(gt2,2)*ZH(gt1,2)*ZP(gt3,1))
res = res-2*Lam1p*vS*dZP(gt2,1)*ZH(gt1,3)*ZP(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*Lam4*vu*dZP(gt2,2)*ZH(gt1,4)*ZP(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*Lam4*vd*dZP(gt2,2)*ZH(gt1,5)*ZP(gt3,1)
res = res-(Lam1*vd*dZH(gt1,1)*ZP(gt2,1)*ZP(gt3,1))
res = res-(Lam3*vu*dZH(gt1,2)*ZP(gt2,1)*ZP(gt3,1))
res = res-2*Lam1p*vS*dZH(gt1,3)*ZP(gt2,1)*ZP(gt3,1)
res = res-(dvd*Lam1*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,1))
res = res-(dLam1*vd*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,1))
res = res+(Lam6*vu*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,1))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vu*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam6)*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam6)*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,1))
res = res-(dvu*Lam3*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,1))
res = res+(Lam6*vd*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,1))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam6*vd*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res-(dLam3*vu*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,1))
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,1))
res = res-2*dvS*Lam1p*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,1)
res = res+exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,1)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,1))
res = res-2*dLam1p*vS*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,1)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,1)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,1)
res = res+(2*vS*Conjg(Lam4p)*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,1))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam4p)*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,1))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu11)*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,1))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu11)*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,1))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vu*ZH(gt1,4)*ZP(gt2,1)*ZP(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vu*ZH(gt1,4)*ZP(gt2,1)*ZP(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam6)*ZH(gt1,4)*ZP(gt2,1)*ZP(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam6)*ZH(gt1,4)*ZP(gt2,1)*ZP(gt3,1)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,5)*ZP(gt2,1)*ZP(gt3,1))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam6*vd*ZH(gt1,5)*ZP(gt2,1)*ZP(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,5)*ZP(gt2,1)*ZP(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,5)*ZP(gt2,1)*ZP(gt3,1)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu11*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu11*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,1)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vS*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,1)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam4p*vS*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,1)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,1))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam4p)*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,1))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu11)*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,1))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu11)*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,1))/exp((0._dp,1._dp)*(dzeta + zeta))
res = res-1._dp/2._dp*(Lam4*vu*dZH(gt1,1)*ZP(gt2,2)*ZP(gt3,1))
res = res-1._dp/2._dp*(Lam4*vd*dZH(gt1,2)*ZP(gt2,2)*ZP(gt3,1))
res = res+1._dp/2._dp*(0.,1._dp)*Lam4*vu*dZH(gt1,4)*ZP(gt2,2)*ZP(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*Lam4*vd*dZH(gt1,5)*ZP(gt2,2)*ZP(gt3,1)
res = res-1._dp/2._dp*(dvu*Lam4*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,1))
res = res-1._dp/2._dp*(dLam4*vu*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,1))
res = res+(exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,1))
res = res+exp((0._dp,1._dp)*eta)*vd*Conjg(Lam6)*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,1)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam6)*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,1))
res = res-1._dp/2._dp*(dvd*Lam4*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,1))
res = res-1._dp/2._dp*(dLam4*vd*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,1))
res = res+(exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,1))/2._dp
res = res-1._dp/2._dp*(exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,1))
res = res+exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,1)
res = res-(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,1))
res = res+exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,1)
res = res+2*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,1)
res = res+2*exp((0._dp,1._dp)*eta)*vS*Conjg(Lam3p)*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,1)
res = res-2*exp((0._dp,1._dp)*(deta + eta))*vS*Conjg(Lam3p)*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,1)
res = res+2*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,1)
res = res+exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*dvu*Lam4*ZH(gt1,4)*ZP(gt2,2)*ZP(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*dLam4*vu*ZH(gt1,4)*ZP(gt2,2)*ZP(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Conjg(Lam5)*ZH(gt1,4)*ZP(gt2,2)*ZP(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vu*Conjg(Lam5)*ZH(gt1,4)*ZP(gt2,2)*ZP(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*dvd*Lam4*ZH(gt1,5)*ZP(gt2,2)*ZP(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*dLam4*vd*ZH(gt1,5)*ZP(gt2,2)*ZP(gt3,1)
res = res-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*Conjg(Lam5)*ZH(gt1,5)*ZP(gt2,2)*ZP(gt3,1)
res = res+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*(deta + eta))*vd*Conjg(Lam5)*ZH(gt1,5)*ZP(gt2,2)*ZP(gt3,1)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,1)
res = res+2*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,1)
res = res-2*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam6p)*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,1)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu12)*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,1)
res = res-1._dp/2._dp*(Lam4*vu*dZP(gt2,1)*ZH(gt1,1)*ZP(gt3,2))
res = res-(Lam3*vd*dZP(gt2,2)*ZH(gt1,1)*ZP(gt3,2))
res = res-1._dp/2._dp*(Lam4*vd*dZP(gt2,1)*ZH(gt1,2)*ZP(gt3,2))
res = res-(Lam2*vu*dZP(gt2,2)*ZH(gt1,2)*ZP(gt3,2))
res = res-2*Lam2p*vS*dZP(gt2,2)*ZH(gt1,3)*ZP(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*Lam4*vu*dZP(gt2,1)*ZH(gt1,4)*ZP(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*Lam4*vd*dZP(gt2,1)*ZH(gt1,5)*ZP(gt3,2)
res = res-1._dp/2._dp*(Lam4*vu*dZH(gt1,1)*ZP(gt2,1)*ZP(gt3,2))
res = res-1._dp/2._dp*(Lam4*vd*dZH(gt1,2)*ZP(gt2,1)*ZP(gt3,2))
res = res-1._dp/2._dp*(0.,1._dp)*Lam4*vu*dZH(gt1,4)*ZP(gt2,1)*ZP(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*Lam4*vd*dZH(gt1,5)*ZP(gt2,1)*ZP(gt3,2)
res = res-1._dp/2._dp*(dvu*Lam4*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,2))
res = res+(Lam6*vd*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,2))/exp((0._dp,1._dp)*eta)
res = res-((Lam6*vd*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,2))/exp((0._dp,1._dp)*(deta + eta)))
res = res-1._dp/2._dp*(dLam4*vu*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,2))
res = res+(Lam5*vu*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,2))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vu*ZH(gt1,1)*ZP(gt2,1)*ZP(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(dvd*Lam4*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,2))
res = res-1._dp/2._dp*(dLam4*vd*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,2))
res = res+(Lam5*vd*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,2))/(2._dp*exp(2*(0.,1._dp)*eta))
res = res-1._dp/2._dp*(Lam5*vd*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(Lam7*vu*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,2))/exp((0._dp,1._dp)*eta)
res = res-((Lam7*vu*ZH(gt1,2)*ZP(gt2,1)*ZP(gt3,2))/exp((0._dp,1._dp)*(deta + eta)))
res = res+exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,2)
res = res+(2*Lam3p*vS*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+(-2*Lam3p*vS*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res+2*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,2)
res = res+2*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,2)
res = res+exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,3)*ZP(gt2,1)*ZP(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*dvu*Lam4*ZH(gt1,4)*ZP(gt2,1)*ZP(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*dLam4*vu*ZH(gt1,4)*ZP(gt2,1)*ZP(gt3,2)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,4)*ZP(gt2,1)*ZP(gt3,2))/exp(2*(0.,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vu*ZH(gt1,4)*ZP(gt2,1)*ZP(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*dvd*Lam4*ZH(gt1,5)*ZP(gt2,1)*ZP(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*dLam4*vd*ZH(gt1,5)*ZP(gt2,1)*ZP(gt3,2)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,5)*ZP(gt2,1)*ZP(gt3,2))/exp(2*(0.,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*ZH(gt1,5)*ZP(gt2,1)*ZP(gt3,2))/exp(2*(0.,1._dp)*(deta + eta))
res = res+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,2)
res = res+2*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,2)
res = res-2*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS*Conjg(Lam7p)*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,2)
res = res-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*Conjg(mu21)*ZH(gt1,6)*ZP(gt2,1)*ZP(gt3,2)
res = res-(Lam3*vd*dZH(gt1,1)*ZP(gt2,2)*ZP(gt3,2))
res = res-(Lam2*vu*dZH(gt1,2)*ZP(gt2,2)*ZP(gt3,2))
res = res-2*Lam2p*vS*dZH(gt1,3)*ZP(gt2,2)*ZP(gt3,2)
res = res-(dvd*Lam3*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,2))
res = res-(dLam3*vd*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,2))
res = res+(Lam7*vu*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,2))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vu*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res+(exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,1)*ZP(gt2,2)*ZP(gt3,2))
res = res-(dvu*Lam2*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,2))
res = res+(Lam7*vd*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,2))/(2._dp*exp((0._dp,1._dp)*eta))
res = res-1._dp/2._dp*(Lam7*vd*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res-(dLam2*vu*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,2))
res = res+(exp((0._dp,1._dp)*eta)*vd*Conjg(Lam7)*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,2))/2._dp
res = res-1._dp/2._dp*(exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam7)*ZH(gt1,2)*ZP(gt2,2)*ZP(gt3,2))
res = res-2*dvS*Lam2p*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,2)
res = res+exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,2)
res = res-(exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,2))
res = res-2*dLam2p*vS*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,2)
res = res+2*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,2)
res = res-2*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,2)
res = res+(2*vS*Conjg(Lam5p)*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,2))/exp(2*(0.,1._dp)*zeta)
res = res+(-2*vS*Conjg(Lam5p)*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,2))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(Conjg(mu22)*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,2))/exp((0._dp,1._dp)*zeta)
res = res-((Conjg(mu22)*ZH(gt1,3)*ZP(gt2,2)*ZP(gt3,2))/exp((0._dp,1._dp)*(dzeta + zeta)))
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,4)*ZP(gt2,2)*ZP(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vu*ZH(gt1,4)*ZP(gt2,2)*ZP(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu*Conjg(Lam7)*ZH(gt1,4)*ZP(gt2,2)*ZP(gt3,2)
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vu*Conjg(Lam7)*ZH(gt1,4)*ZP(gt2,2)*ZP(gt3,2)
res = res+(1._dp/2._dp*(0.,1._dp)*Lam7*vd*ZH(gt1,5)*ZP(gt2,2)*ZP(gt3,2))/exp((0._dp,1._dp)*eta)
res = res+(-1._dp/2._dp*(0.,1._dp)*Lam7*vd*ZH(gt1,5)*ZP(gt2,2)*ZP(gt3,2))/exp((0._dp,1._dp)*(deta + eta))
res = res-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*Conjg(Lam7)*ZH(gt1,5)*ZP(gt2,2)*ZP(gt3,2)
res = res+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*(deta + eta))*vd*Conjg(Lam7)*ZH(gt1,5)*ZP(gt2,2)*ZP(gt3,2)
res = res+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu22*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,2)
res = res-1*(0.,1._dp)*exp((0._dp,1._dp)*(dzeta + zeta))*mu22*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,2)
res = res+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vS*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,2)
res = res-2*(0.,1._dp)*exp(2*(0.,1._dp)*(dzeta + zeta))*Lam5p*vS*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,2)
res = res+(-2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,2))/exp(2*(0.,1._dp)*zeta)
res = res+(2*(0.,1._dp)*vS*Conjg(Lam5p)*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,2))/exp(2*(0.,1._dp)*(dzeta + zeta))
res = res+(-1*(0.,1._dp)*Conjg(mu22)*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,2))/exp((0._dp,1._dp)*zeta)
res = res+((0._dp,1._dp)*Conjg(mu22)*ZH(gt1,6)*ZP(gt2,2)*ZP(gt3,2))/exp((0._dp,1._dp)*(dzeta + zeta))
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplinghhHmcHm  
 
 
Subroutine CT_CouplinghhhhVZ(gt1,gt2,g1,g2,ZH,TW,dg1,dg2,dZH,dSinTW,dCosTW,           & 
& dTanTW,res)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g1,g2,ZH(6,6),TW,dg1,dg2,dZH(6,6),dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplinghhhhVZ' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res-1._dp/2._dp*(g2*Cos(TW)*dZH(gt2,4)*ZH(gt1,1))
res = res-1._dp/2._dp*(g1*dZH(gt2,4)*Sin(TW)*ZH(gt1,1))
res = res-1._dp/2._dp*(g2*Cos(TW)*dZH(gt2,5)*ZH(gt1,2))
res = res-1._dp/2._dp*(g1*dZH(gt2,5)*Sin(TW)*ZH(gt1,2))
res = res+(g2*Cos(TW)*dZH(gt2,1)*ZH(gt1,4))/2._dp
res = res+(g1*dZH(gt2,1)*Sin(TW)*ZH(gt1,4))/2._dp
res = res+(g2*Cos(TW)*dZH(gt2,2)*ZH(gt1,5))/2._dp
res = res+(g1*dZH(gt2,2)*Sin(TW)*ZH(gt1,5))/2._dp
res = res+(g2*Cos(TW)*dZH(gt1,4)*ZH(gt2,1))/2._dp
res = res+(g1*dZH(gt1,4)*Sin(TW)*ZH(gt2,1))/2._dp
res = res+(dSinTW*g1*ZH(gt1,4)*ZH(gt2,1))/2._dp
res = res+(dCosTW*g2*ZH(gt1,4)*ZH(gt2,1))/2._dp
res = res+(dg2*Cos(TW)*ZH(gt1,4)*ZH(gt2,1))/2._dp
res = res+(dg1*Sin(TW)*ZH(gt1,4)*ZH(gt2,1))/2._dp
res = res+(g2*Cos(TW)*dZH(gt1,5)*ZH(gt2,2))/2._dp
res = res+(g1*dZH(gt1,5)*Sin(TW)*ZH(gt2,2))/2._dp
res = res+(dSinTW*g1*ZH(gt1,5)*ZH(gt2,2))/2._dp
res = res+(dCosTW*g2*ZH(gt1,5)*ZH(gt2,2))/2._dp
res = res+(dg2*Cos(TW)*ZH(gt1,5)*ZH(gt2,2))/2._dp
res = res+(dg1*Sin(TW)*ZH(gt1,5)*ZH(gt2,2))/2._dp
res = res-1._dp/2._dp*(g2*Cos(TW)*dZH(gt1,1)*ZH(gt2,4))
res = res-1._dp/2._dp*(g1*dZH(gt1,1)*Sin(TW)*ZH(gt2,4))
res = res-1._dp/2._dp*(dSinTW*g1*ZH(gt1,1)*ZH(gt2,4))
res = res-1._dp/2._dp*(dCosTW*g2*ZH(gt1,1)*ZH(gt2,4))
res = res-1._dp/2._dp*(dg2*Cos(TW)*ZH(gt1,1)*ZH(gt2,4))
res = res-1._dp/2._dp*(dg1*Sin(TW)*ZH(gt1,1)*ZH(gt2,4))
res = res-1._dp/2._dp*(g2*Cos(TW)*dZH(gt1,2)*ZH(gt2,5))
res = res-1._dp/2._dp*(g1*dZH(gt1,2)*Sin(TW)*ZH(gt2,5))
res = res-1._dp/2._dp*(dSinTW*g1*ZH(gt1,2)*ZH(gt2,5))
res = res-1._dp/2._dp*(dCosTW*g2*ZH(gt1,2)*ZH(gt2,5))
res = res-1._dp/2._dp*(dg2*Cos(TW)*ZH(gt1,2)*ZH(gt2,5))
res = res-1._dp/2._dp*(dg1*Sin(TW)*ZH(gt1,2)*ZH(gt2,5))
res = -(0.,1.)*res 
 
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplinghhhhVZ  
 
 
Subroutine CT_CouplinghhHmcVWm(gt1,gt2,g2,ZH,ZP,dg2,dZH,dZP,res)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g2,ZH(6,6),ZP(2,2),dg2,dZH(6,6),dZP(2,2)

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplinghhHmcVWm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res+(g2*dZP(gt2,1)*ZH(gt1,1))/2._dp
res = res+(g2*dZP(gt2,2)*ZH(gt1,2))/2._dp
res = res+1._dp/2._dp*(0.,1._dp)*g2*dZP(gt2,1)*ZH(gt1,4)
res = res+1._dp/2._dp*(0.,1._dp)*g2*dZP(gt2,2)*ZH(gt1,5)
res = res+(g2*dZH(gt1,1)*ZP(gt2,1))/2._dp
res = res+1._dp/2._dp*(0.,1._dp)*g2*dZH(gt1,4)*ZP(gt2,1)
res = res+(dg2*ZH(gt1,1)*ZP(gt2,1))/2._dp
res = res+1._dp/2._dp*(0.,1._dp)*dg2*ZH(gt1,4)*ZP(gt2,1)
res = res+(g2*dZH(gt1,2)*ZP(gt2,2))/2._dp
res = res+1._dp/2._dp*(0.,1._dp)*g2*dZH(gt1,5)*ZP(gt2,2)
res = res+(dg2*ZH(gt1,2)*ZP(gt2,2))/2._dp
res = res+1._dp/2._dp*(0.,1._dp)*dg2*ZH(gt1,5)*ZP(gt2,2)
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplinghhHmcVWm  
 
 
Subroutine CT_CouplinghhcHmVWm(gt1,gt2,g2,ZH,ZP,dg2,dZH,dZP,res)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g2,ZH(6,6),ZP(2,2),dg2,dZH(6,6),dZP(2,2)

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplinghhcHmVWm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res-1._dp/2._dp*(g2*dZP(gt2,1)*ZH(gt1,1))
res = res-1._dp/2._dp*(g2*dZP(gt2,2)*ZH(gt1,2))
res = res+1._dp/2._dp*(0.,1._dp)*g2*dZP(gt2,1)*ZH(gt1,4)
res = res+1._dp/2._dp*(0.,1._dp)*g2*dZP(gt2,2)*ZH(gt1,5)
res = res-1._dp/2._dp*(g2*dZH(gt1,1)*ZP(gt2,1))
res = res+1._dp/2._dp*(0.,1._dp)*g2*dZH(gt1,4)*ZP(gt2,1)
res = res-1._dp/2._dp*(dg2*ZH(gt1,1)*ZP(gt2,1))
res = res+1._dp/2._dp*(0.,1._dp)*dg2*ZH(gt1,4)*ZP(gt2,1)
res = res-1._dp/2._dp*(g2*dZH(gt1,2)*ZP(gt2,2))
res = res+1._dp/2._dp*(0.,1._dp)*g2*dZH(gt1,5)*ZP(gt2,2)
res = res-1._dp/2._dp*(dg2*ZH(gt1,2)*ZP(gt2,2))
res = res+1._dp/2._dp*(0.,1._dp)*dg2*ZH(gt1,5)*ZP(gt2,2)
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplinghhcHmVWm  
 
 
Subroutine CT_CouplingHmcHmVP(gt1,gt2,g1,g2,ZP,TW,dg1,dg2,dZP,dSinTW,dCosTW,          & 
& dTanTW,res)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g1,g2,ZP(2,2),TW,dg1,dg2,dZP(2,2),dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingHmcHmVP' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res-1._dp/2._dp*(g1*Cos(TW)*dZP(gt2,1)*ZP(gt1,1))
res = res-1._dp/2._dp*(g2*dZP(gt2,1)*Sin(TW)*ZP(gt1,1))
res = res-1._dp/2._dp*(g1*Cos(TW)*dZP(gt2,2)*ZP(gt1,2))
res = res-1._dp/2._dp*(g2*dZP(gt2,2)*Sin(TW)*ZP(gt1,2))
res = res-1._dp/2._dp*(g1*Cos(TW)*dZP(gt1,1)*ZP(gt2,1))
res = res-1._dp/2._dp*(g2*dZP(gt1,1)*Sin(TW)*ZP(gt2,1))
res = res-1._dp/2._dp*(dCosTW*g1*ZP(gt1,1)*ZP(gt2,1))
res = res-1._dp/2._dp*(dSinTW*g2*ZP(gt1,1)*ZP(gt2,1))
res = res-1._dp/2._dp*(dg1*Cos(TW)*ZP(gt1,1)*ZP(gt2,1))
res = res-1._dp/2._dp*(dg2*Sin(TW)*ZP(gt1,1)*ZP(gt2,1))
res = res-1._dp/2._dp*(g1*Cos(TW)*dZP(gt1,2)*ZP(gt2,2))
res = res-1._dp/2._dp*(g2*dZP(gt1,2)*Sin(TW)*ZP(gt2,2))
res = res-1._dp/2._dp*(dCosTW*g1*ZP(gt1,2)*ZP(gt2,2))
res = res-1._dp/2._dp*(dSinTW*g2*ZP(gt1,2)*ZP(gt2,2))
res = res-1._dp/2._dp*(dg1*Cos(TW)*ZP(gt1,2)*ZP(gt2,2))
res = res-1._dp/2._dp*(dg2*Sin(TW)*ZP(gt1,2)*ZP(gt2,2))
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingHmcHmVP  
 
 
Subroutine CT_CouplingHmcHmVZ(gt1,gt2,g1,g2,ZP,TW,dg1,dg2,dZP,dSinTW,dCosTW,          & 
& dTanTW,res)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g1,g2,ZP(2,2),TW,dg1,dg2,dZP(2,2),dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingHmcHmVZ' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res-1._dp/2._dp*(g2*Cos(TW)*dZP(gt2,1)*ZP(gt1,1))
res = res+(g1*dZP(gt2,1)*Sin(TW)*ZP(gt1,1))/2._dp
res = res-1._dp/2._dp*(g2*Cos(TW)*dZP(gt2,2)*ZP(gt1,2))
res = res+(g1*dZP(gt2,2)*Sin(TW)*ZP(gt1,2))/2._dp
res = res-1._dp/2._dp*(g2*Cos(TW)*dZP(gt1,1)*ZP(gt2,1))
res = res+(g1*dZP(gt1,1)*Sin(TW)*ZP(gt2,1))/2._dp
res = res+(dSinTW*g1*ZP(gt1,1)*ZP(gt2,1))/2._dp
res = res-1._dp/2._dp*(dCosTW*g2*ZP(gt1,1)*ZP(gt2,1))
res = res-1._dp/2._dp*(dg2*Cos(TW)*ZP(gt1,1)*ZP(gt2,1))
res = res+(dg1*Sin(TW)*ZP(gt1,1)*ZP(gt2,1))/2._dp
res = res-1._dp/2._dp*(g2*Cos(TW)*dZP(gt1,2)*ZP(gt2,2))
res = res+(g1*dZP(gt1,2)*Sin(TW)*ZP(gt2,2))/2._dp
res = res+(dSinTW*g1*ZP(gt1,2)*ZP(gt2,2))/2._dp
res = res-1._dp/2._dp*(dCosTW*g2*ZP(gt1,2)*ZP(gt2,2))
res = res-1._dp/2._dp*(dg2*Cos(TW)*ZP(gt1,2)*ZP(gt2,2))
res = res+(dg1*Sin(TW)*ZP(gt1,2)*ZP(gt2,2))/2._dp
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingHmcHmVZ  
 
 
Subroutine CT_CouplinghhcVWmVWm(gt1,g2,vd,vu,ZH,dg2,dvd,dvu,dZH,res)

Implicit None 

Integer, Intent(in) :: gt1
Real(dp), Intent(in) :: g2,vd,vu,ZH(6,6),dg2,dvd,dvu,dZH(6,6)

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplinghhcVWmVWm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res+(g2**2*vd*dZH(gt1,1))/2._dp
res = res+(g2**2*vu*dZH(gt1,2))/2._dp
res = res+(dvd*g2**2*ZH(gt1,1))/2._dp
res = res+dg2*g2*vd*ZH(gt1,1)
res = res+(dvu*g2**2*ZH(gt1,2))/2._dp
res = res+dg2*g2*vu*ZH(gt1,2)
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplinghhcVWmVWm  
 
 
Subroutine CT_CouplinghhVZVZ(gt1,g1,g2,vd,vu,ZH,TW,dg1,dg2,dvd,dvu,dZH,               & 
& dSinTW,dCosTW,dTanTW,res)

Implicit None 

Integer, Intent(in) :: gt1
Real(dp), Intent(in) :: g1,g2,vd,vu,ZH(6,6),TW,dg1,dg2,dvd,dvu,dZH(6,6),dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplinghhVZVZ' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res+(g1**2*vd*dZH(gt1,1))/4._dp
res = res+(g2**2*vd*dZH(gt1,1))/4._dp
res = res-1._dp/4._dp*(g1**2*vd*Cos(TW)**2*dZH(gt1,1))
res = res+(g2**2*vd*Cos(TW)**2*dZH(gt1,1))/4._dp
res = res+(g1**2*vu*dZH(gt1,2))/4._dp
res = res+(g2**2*vu*dZH(gt1,2))/4._dp
res = res-1._dp/4._dp*(g1**2*vu*Cos(TW)**2*dZH(gt1,2))
res = res+(g2**2*vu*Cos(TW)**2*dZH(gt1,2))/4._dp
res = res+g1*g2*vd*Cos(TW)*dZH(gt1,1)*Sin(TW)
res = res+g1*g2*vu*Cos(TW)*dZH(gt1,2)*Sin(TW)
res = res+(g1**2*vd*dZH(gt1,1)*Sin(TW)**2)/4._dp
res = res-1._dp/4._dp*(g2**2*vd*dZH(gt1,1)*Sin(TW)**2)
res = res+(g1**2*vu*dZH(gt1,2)*Sin(TW)**2)/4._dp
res = res-1._dp/4._dp*(g2**2*vu*dZH(gt1,2)*Sin(TW)**2)
res = res+(dvd*g1**2*ZH(gt1,1))/4._dp
res = res+(dvd*g2**2*ZH(gt1,1))/4._dp
res = res+(dg1*g1*vd*ZH(gt1,1))/2._dp
res = res+(dg2*g2*vd*ZH(gt1,1))/2._dp
res = res-1._dp/2._dp*(dCosTW*g1**2*vd*Cos(TW)*ZH(gt1,1))
res = res+dSinTW*g1*g2*vd*Cos(TW)*ZH(gt1,1)
res = res+(dCosTW*g2**2*vd*Cos(TW)*ZH(gt1,1))/2._dp
res = res-1._dp/4._dp*(dvd*g1**2*Cos(TW)**2*ZH(gt1,1))
res = res+(dvd*g2**2*Cos(TW)**2*ZH(gt1,1))/4._dp
res = res-1._dp/2._dp*(dg1*g1*vd*Cos(TW)**2*ZH(gt1,1))
res = res+(dg2*g2*vd*Cos(TW)**2*ZH(gt1,1))/2._dp
res = res+(dSinTW*g1**2*vd*Sin(TW)*ZH(gt1,1))/2._dp
res = res+dCosTW*g1*g2*vd*Sin(TW)*ZH(gt1,1)
res = res-1._dp/2._dp*(dSinTW*g2**2*vd*Sin(TW)*ZH(gt1,1))
res = res+dvd*g1*g2*Cos(TW)*Sin(TW)*ZH(gt1,1)
res = res+dg2*g1*vd*Cos(TW)*Sin(TW)*ZH(gt1,1)
res = res+dg1*g2*vd*Cos(TW)*Sin(TW)*ZH(gt1,1)
res = res+(dvd*g1**2*Sin(TW)**2*ZH(gt1,1))/4._dp
res = res-1._dp/4._dp*(dvd*g2**2*Sin(TW)**2*ZH(gt1,1))
res = res+(dg1*g1*vd*Sin(TW)**2*ZH(gt1,1))/2._dp
res = res-1._dp/2._dp*(dg2*g2*vd*Sin(TW)**2*ZH(gt1,1))
res = res+(dvu*g1**2*ZH(gt1,2))/4._dp
res = res+(dvu*g2**2*ZH(gt1,2))/4._dp
res = res+(dg1*g1*vu*ZH(gt1,2))/2._dp
res = res+(dg2*g2*vu*ZH(gt1,2))/2._dp
res = res-1._dp/2._dp*(dCosTW*g1**2*vu*Cos(TW)*ZH(gt1,2))
res = res+dSinTW*g1*g2*vu*Cos(TW)*ZH(gt1,2)
res = res+(dCosTW*g2**2*vu*Cos(TW)*ZH(gt1,2))/2._dp
res = res-1._dp/4._dp*(dvu*g1**2*Cos(TW)**2*ZH(gt1,2))
res = res+(dvu*g2**2*Cos(TW)**2*ZH(gt1,2))/4._dp
res = res-1._dp/2._dp*(dg1*g1*vu*Cos(TW)**2*ZH(gt1,2))
res = res+(dg2*g2*vu*Cos(TW)**2*ZH(gt1,2))/2._dp
res = res+(dSinTW*g1**2*vu*Sin(TW)*ZH(gt1,2))/2._dp
res = res+dCosTW*g1*g2*vu*Sin(TW)*ZH(gt1,2)
res = res-1._dp/2._dp*(dSinTW*g2**2*vu*Sin(TW)*ZH(gt1,2))
res = res+dvu*g1*g2*Cos(TW)*Sin(TW)*ZH(gt1,2)
res = res+dg2*g1*vu*Cos(TW)*Sin(TW)*ZH(gt1,2)
res = res+dg1*g2*vu*Cos(TW)*Sin(TW)*ZH(gt1,2)
res = res+(dvu*g1**2*Sin(TW)**2*ZH(gt1,2))/4._dp
res = res-1._dp/4._dp*(dvu*g2**2*Sin(TW)**2*ZH(gt1,2))
res = res+(dg1*g1*vu*Sin(TW)**2*ZH(gt1,2))/2._dp
res = res-1._dp/2._dp*(dg2*g2*vu*Sin(TW)**2*ZH(gt1,2))
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplinghhVZVZ  
 
 
Subroutine CT_CouplingHmcVWmVP(gt1,g1,g2,vd,vu,ZP,TW,dg1,dg2,dvd,dvu,dZP,             & 
& dSinTW,dCosTW,dTanTW,res)

Implicit None 

Integer, Intent(in) :: gt1
Real(dp), Intent(in) :: g1,g2,vd,vu,ZP(2,2),TW,dg1,dg2,dvd,dvu,dZP(2,2),dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingHmcVWmVP' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res+(g1*g2*vd*Cos(TW)*dZP(gt1,1))/2._dp
res = res+(g1*g2*vu*Cos(TW)*dZP(gt1,2))/2._dp
res = res+(dCosTW*g1*g2*vd*ZP(gt1,1))/2._dp
res = res+(dvd*g1*g2*Cos(TW)*ZP(gt1,1))/2._dp
res = res+(dg2*g1*vd*Cos(TW)*ZP(gt1,1))/2._dp
res = res+(dg1*g2*vd*Cos(TW)*ZP(gt1,1))/2._dp
res = res+(dCosTW*g1*g2*vu*ZP(gt1,2))/2._dp
res = res+(dvu*g1*g2*Cos(TW)*ZP(gt1,2))/2._dp
res = res+(dg2*g1*vu*Cos(TW)*ZP(gt1,2))/2._dp
res = res+(dg1*g2*vu*Cos(TW)*ZP(gt1,2))/2._dp
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingHmcVWmVP  
 
 
Subroutine CT_CouplingHmcVWmVZ(gt1,g1,g2,vd,vu,ZP,TW,dg1,dg2,dvd,dvu,dZP,             & 
& dSinTW,dCosTW,dTanTW,res)

Implicit None 

Integer, Intent(in) :: gt1
Real(dp), Intent(in) :: g1,g2,vd,vu,ZP(2,2),TW,dg1,dg2,dvd,dvu,dZP(2,2),dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingHmcVWmVZ' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res-1._dp/2._dp*(g1*g2*vd*dZP(gt1,1)*Sin(TW))
res = res-1._dp/2._dp*(g1*g2*vu*dZP(gt1,2)*Sin(TW))
res = res-1._dp/2._dp*(dSinTW*g1*g2*vd*ZP(gt1,1))
res = res-1._dp/2._dp*(dvd*g1*g2*Sin(TW)*ZP(gt1,1))
res = res-1._dp/2._dp*(dg2*g1*vd*Sin(TW)*ZP(gt1,1))
res = res-1._dp/2._dp*(dg1*g2*vd*Sin(TW)*ZP(gt1,1))
res = res-1._dp/2._dp*(dSinTW*g1*g2*vu*ZP(gt1,2))
res = res-1._dp/2._dp*(dvu*g1*g2*Sin(TW)*ZP(gt1,2))
res = res-1._dp/2._dp*(dg2*g1*vu*Sin(TW)*ZP(gt1,2))
res = res-1._dp/2._dp*(dg1*g2*vu*Sin(TW)*ZP(gt1,2))
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingHmcVWmVZ  
 
 
Subroutine CT_CouplingcHmVPVWm(gt1,g1,g2,vd,vu,ZP,TW,dg1,dg2,dvd,dvu,dZP,             & 
& dSinTW,dCosTW,dTanTW,res)

Implicit None 

Integer, Intent(in) :: gt1
Real(dp), Intent(in) :: g1,g2,vd,vu,ZP(2,2),TW,dg1,dg2,dvd,dvu,dZP(2,2),dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcHmVPVWm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res+(g1*g2*vd*Cos(TW)*dZP(gt1,1))/2._dp
res = res+(g1*g2*vu*Cos(TW)*dZP(gt1,2))/2._dp
res = res+(dCosTW*g1*g2*vd*ZP(gt1,1))/2._dp
res = res+(dvd*g1*g2*Cos(TW)*ZP(gt1,1))/2._dp
res = res+(dg2*g1*vd*Cos(TW)*ZP(gt1,1))/2._dp
res = res+(dg1*g2*vd*Cos(TW)*ZP(gt1,1))/2._dp
res = res+(dCosTW*g1*g2*vu*ZP(gt1,2))/2._dp
res = res+(dvu*g1*g2*Cos(TW)*ZP(gt1,2))/2._dp
res = res+(dg2*g1*vu*Cos(TW)*ZP(gt1,2))/2._dp
res = res+(dg1*g2*vu*Cos(TW)*ZP(gt1,2))/2._dp
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcHmVPVWm  
 
 
Subroutine CT_CouplingcHmVWmVZ(gt1,g1,g2,vd,vu,ZP,TW,dg1,dg2,dvd,dvu,dZP,             & 
& dSinTW,dCosTW,dTanTW,res)

Implicit None 

Integer, Intent(in) :: gt1
Real(dp), Intent(in) :: g1,g2,vd,vu,ZP(2,2),TW,dg1,dg2,dvd,dvu,dZP(2,2),dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcHmVWmVZ' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

res = 0._dp 
res = res-1._dp/2._dp*(g1*g2*vd*dZP(gt1,1)*Sin(TW))
res = res-1._dp/2._dp*(g1*g2*vu*dZP(gt1,2)*Sin(TW))
res = res-1._dp/2._dp*(dSinTW*g1*g2*vd*ZP(gt1,1))
res = res-1._dp/2._dp*(dvd*g1*g2*Sin(TW)*ZP(gt1,1))
res = res-1._dp/2._dp*(dg2*g1*vd*Sin(TW)*ZP(gt1,1))
res = res-1._dp/2._dp*(dg1*g2*vd*Sin(TW)*ZP(gt1,1))
res = res-1._dp/2._dp*(dSinTW*g1*g2*vu*ZP(gt1,2))
res = res-1._dp/2._dp*(dvu*g1*g2*Sin(TW)*ZP(gt1,2))
res = res-1._dp/2._dp*(dg2*g1*vu*Sin(TW)*ZP(gt1,2))
res = res-1._dp/2._dp*(dg1*g2*vu*Sin(TW)*ZP(gt1,2))
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcHmVWmVZ  
 
 
Subroutine CT_CouplingVGVGVG(g3,dg3,res)

Implicit None 

Real(dp), Intent(in) :: g3,dg3

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingVGVGVG' 
 
res = 0._dp 
res = res+dg3
res = -(0.,1.)*res 
 
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingVGVGVG  
 
 
Subroutine CT_CouplingcVWmVPVWm(g2,TW,dg2,dSinTW,dCosTW,dTanTW,res)

Implicit None 

Real(dp), Intent(in) :: g2,TW,dg2,dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcVWmVPVWm' 
 
res = 0._dp 
res = res+dSinTW*g2
res = res+dg2*Sin(TW)
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcVWmVPVWm  
 
 
Subroutine CT_CouplingcVWmVWmVZ(g2,TW,dg2,dSinTW,dCosTW,dTanTW,res)

Implicit None 

Real(dp), Intent(in) :: g2,TW,dg2,dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: res 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcVWmVWmVZ' 
 
res = 0._dp 
res = res-(dCosTW*g2)
res = res-(dg2*Cos(TW))
If (Real(res,dp).ne.Real(res,dp)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcVWmVWmVZ  
 
 
Subroutine CT_CouplingcFdFdhh(gt1,gt2,gt3,Yd,epsD,eta,ZH,ZDL,ZDR,dYd,depsD,           & 
& deta,dZH,dZDL,dZDR,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2,gt3
Real(dp), Intent(in) :: eta,ZH(6,6),deta,dZH(6,6)

Complex(dp), Intent(in) :: Yd(3,3),epsD(3,3),ZDL(3,3),ZDR(3,3),dYd(3,3),depsD(3,3),dZDL(3,3),dZDR(3,3)

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFdFdhh' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

If ((gt3.Lt.1).Or.(gt3.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt3 out of range', gt3 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt3 out of range', gt3 
  Call TerminateProgram 
End If 

resL = 0._dp 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(ZDR(gt1,j1))*Conjg(ZDL(gt2,j2))*dZH(gt3,2)*epsD(j1,j2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+((0._dp,1._dp)*Conjg(ZDR(gt1,j1))*Conjg(ZDL(gt2,j2))*dZH(gt3,5)*epsD(j1,j2))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((exp(-1*(0.,1._dp)*deta - (0._dp,1._dp)*eta)*Conjg(ZDR(gt1,j1))*Conjg(ZDL(gt2,j2))*Yd(j1,j2)*ZH(gt3,1))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+(Conjg(ZDR(gt1,j1))*Conjg(ZDL(gt2,j2))*Yd(j1,j2)*ZH(gt3,1))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(ZDR(gt1,j1))*Conjg(ZDL(gt2,j2))*depsD(j1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(dZDL(gt2,j2))*Conjg(ZDR(gt1,j1))*epsD(j1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(dZDR(gt1,j1))*Conjg(ZDL(gt2,j2))*epsD(j1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+((0._dp,1._dp)*exp(-1*(0.,1._dp)*deta - (0._dp,1._dp)*eta)*Conjg(ZDR(gt1,j1))*Conjg(ZDL(gt2,j2))*Yd(j1,j2)*ZH(gt3,4))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+(-1*(0.,1._dp)*Conjg(ZDR(gt1,j1))*Conjg(ZDL(gt2,j2))*Yd(j1,j2)*ZH(gt3,4))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+((0._dp,1._dp)*Conjg(ZDR(gt1,j1))*Conjg(ZDL(gt2,j2))*depsD(j1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+((0._dp,1._dp)*Conjg(dZDL(gt2,j2))*Conjg(ZDR(gt1,j1))*epsD(j1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+((0._dp,1._dp)*Conjg(dZDR(gt1,j1))*Conjg(ZDL(gt2,j2))*epsD(j1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
resR = 0._dp 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(epsD(j1,j2))*dZH(gt3,2)*ZDR(gt2,j1)*ZDL(gt1,j2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(-1*(0.,1._dp)*Conjg(epsD(j1,j2))*dZH(gt3,5)*ZDR(gt2,j1)*ZDL(gt1,j2))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((exp((0._dp,1._dp)*deta + (0._dp,1._dp)*eta)*Conjg(Yd(j1,j2))*ZDR(gt2,j1)*ZDL(gt1,j2)*ZH(gt3,1))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(exp((0._dp,1._dp)*eta)*Conjg(Yd(j1,j2))*ZDR(gt2,j1)*ZDL(gt1,j2)*ZH(gt3,1))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(epsD(j1,j2))*dZDL(gt1,j2)*ZDR(gt2,j1)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(epsD(j1,j2))*dZDR(gt2,j1)*ZDL(gt1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(depsD(j1,j2))*ZDR(gt2,j1)*ZDL(gt1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(-1*(0.,1._dp)*exp((0._dp,1._dp)*deta + (0._dp,1._dp)*eta)*Conjg(Yd(j1,j2))*ZDR(gt2,j1)*ZDL(gt1,j2)*ZH(gt3,4))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+((0._dp,1._dp)*exp((0._dp,1._dp)*eta)*Conjg(Yd(j1,j2))*ZDR(gt2,j1)*ZDL(gt1,j2)*ZH(gt3,4))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(-1*(0.,1._dp)*Conjg(epsD(j1,j2))*dZDL(gt1,j2)*ZDR(gt2,j1)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(-1*(0.,1._dp)*Conjg(epsD(j1,j2))*dZDR(gt2,j1)*ZDL(gt1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(-1*(0.,1._dp)*Conjg(depsD(j1,j2))*ZDR(gt2,j1)*ZDL(gt1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFdFdhh  
 
 
Subroutine CT_CouplingcFuFdcHm(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,            & 
& ZUL,ZUR,dYu,depsU,dYd,depsD,deta,dZP,dZDL,dZDR,dZUL,dZUR,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2,gt3
Real(dp), Intent(in) :: eta,ZP(2,2),deta,dZP(2,2)

Complex(dp), Intent(in) :: Yu(3,3),epsU(3,3),Yd(3,3),epsD(3,3),ZDL(3,3),ZDR(3,3),ZUL(3,3),ZUR(3,3),              & 
& dYu(3,3),depsU(3,3),dYd(3,3),depsD(3,3),dZDL(3,3),dZDR(3,3),dZUL(3,3),dZUR(3,3)

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFuFdcHm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

If ((gt3.Lt.1).Or.(gt3.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt3 out of range', gt3 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt3 out of range', gt3 
  Call TerminateProgram 
End If 

resL = 0._dp 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+Conjg(ZUR(gt1,j1))*Conjg(ZDL(gt2,j2))*dZP(gt3,2)*epsU(j1,j2)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-(exp((0._dp,1._dp)*eta)*Conjg(ZUR(gt1,j1))*Conjg(ZDL(gt2,j2))*Yu(j1,j2)*ZP(gt3,1))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+exp((0._dp,1._dp)*(deta + eta))*Conjg(ZUR(gt1,j1))*Conjg(ZDL(gt2,j2))*Yu(j1,j2)*ZP(gt3,1)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+Conjg(ZUR(gt1,j1))*Conjg(ZDL(gt2,j2))*depsU(j1,j2)*ZP(gt3,2)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+Conjg(dZDL(gt2,j2))*Conjg(ZUR(gt1,j1))*epsU(j1,j2)*ZP(gt3,2)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+Conjg(dZUR(gt1,j1))*Conjg(ZDL(gt2,j2))*epsU(j1,j2)*ZP(gt3,2)
End Do 
End Do 
resR = 0._dp 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-(Conjg(epsD(j1,j2))*dZP(gt3,2)*ZDR(gt2,j1)*ZUL(gt1,j2))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+exp((0._dp,1._dp)*eta)*Conjg(Yd(j1,j2))*ZDR(gt2,j1)*ZUL(gt1,j2)*ZP(gt3,1)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-(exp((0._dp,1._dp)*(deta + eta))*Conjg(Yd(j1,j2))*ZDR(gt2,j1)*ZUL(gt1,j2)*ZP(gt3,1))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-(Conjg(epsD(j1,j2))*dZUL(gt1,j2)*ZDR(gt2,j1)*ZP(gt3,2))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-(Conjg(epsD(j1,j2))*dZDR(gt2,j1)*ZUL(gt1,j2)*ZP(gt3,2))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-(Conjg(depsD(j1,j2))*ZDR(gt2,j1)*ZUL(gt1,j2)*ZP(gt3,2))
End Do 
End Do 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFuFdcHm  
 
 
Subroutine CT_CouplingcFeFehh(gt1,gt2,gt3,Ye,epsE,eta,ZH,ZEL,ZER,dYe,depsE,           & 
& deta,dZH,dZEL,dZER,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2,gt3
Real(dp), Intent(in) :: eta,ZH(6,6),deta,dZH(6,6)

Complex(dp), Intent(in) :: Ye(3,3),epsE(3,3),ZEL(3,3),ZER(3,3),dYe(3,3),depsE(3,3),dZEL(3,3),dZER(3,3)

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFeFehh' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

If ((gt3.Lt.1).Or.(gt3.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt3 out of range', gt3 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt3 out of range', gt3 
  Call TerminateProgram 
End If 

resL = 0._dp 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(ZER(gt1,j1))*Conjg(ZEL(gt2,j2))*dZH(gt3,2)*epsE(j1,j2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+((0._dp,1._dp)*Conjg(ZER(gt1,j1))*Conjg(ZEL(gt2,j2))*dZH(gt3,5)*epsE(j1,j2))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((exp(-1*(0.,1._dp)*deta - (0._dp,1._dp)*eta)*Conjg(ZER(gt1,j1))*Conjg(ZEL(gt2,j2))*Ye(j1,j2)*ZH(gt3,1))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+(Conjg(ZER(gt1,j1))*Conjg(ZEL(gt2,j2))*Ye(j1,j2)*ZH(gt3,1))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(ZER(gt1,j1))*Conjg(ZEL(gt2,j2))*depsE(j1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(dZEL(gt2,j2))*Conjg(ZER(gt1,j1))*epsE(j1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(dZER(gt1,j1))*Conjg(ZEL(gt2,j2))*epsE(j1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+((0._dp,1._dp)*exp(-1*(0.,1._dp)*deta - (0._dp,1._dp)*eta)*Conjg(ZER(gt1,j1))*Conjg(ZEL(gt2,j2))*Ye(j1,j2)*ZH(gt3,4))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+(-1*(0.,1._dp)*Conjg(ZER(gt1,j1))*Conjg(ZEL(gt2,j2))*Ye(j1,j2)*ZH(gt3,4))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+((0._dp,1._dp)*Conjg(ZER(gt1,j1))*Conjg(ZEL(gt2,j2))*depsE(j1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+((0._dp,1._dp)*Conjg(dZEL(gt2,j2))*Conjg(ZER(gt1,j1))*epsE(j1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+((0._dp,1._dp)*Conjg(dZER(gt1,j1))*Conjg(ZEL(gt2,j2))*epsE(j1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
resR = 0._dp 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(epsE(j1,j2))*dZH(gt3,2)*ZER(gt2,j1)*ZEL(gt1,j2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(-1*(0.,1._dp)*Conjg(epsE(j1,j2))*dZH(gt3,5)*ZER(gt2,j1)*ZEL(gt1,j2))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((exp((0._dp,1._dp)*deta + (0._dp,1._dp)*eta)*Conjg(Ye(j1,j2))*ZER(gt2,j1)*ZEL(gt1,j2)*ZH(gt3,1))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(exp((0._dp,1._dp)*eta)*Conjg(Ye(j1,j2))*ZER(gt2,j1)*ZEL(gt1,j2)*ZH(gt3,1))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(epsE(j1,j2))*dZEL(gt1,j2)*ZER(gt2,j1)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(epsE(j1,j2))*dZER(gt2,j1)*ZEL(gt1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(depsE(j1,j2))*ZER(gt2,j1)*ZEL(gt1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(-1*(0.,1._dp)*exp((0._dp,1._dp)*deta + (0._dp,1._dp)*eta)*Conjg(Ye(j1,j2))*ZER(gt2,j1)*ZEL(gt1,j2)*ZH(gt3,4))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+((0._dp,1._dp)*exp((0._dp,1._dp)*eta)*Conjg(Ye(j1,j2))*ZER(gt2,j1)*ZEL(gt1,j2)*ZH(gt3,4))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(-1*(0.,1._dp)*Conjg(epsE(j1,j2))*dZEL(gt1,j2)*ZER(gt2,j1)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(-1*(0.,1._dp)*Conjg(epsE(j1,j2))*dZER(gt2,j1)*ZEL(gt1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(-1*(0.,1._dp)*Conjg(depsE(j1,j2))*ZER(gt2,j1)*ZEL(gt1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFeFehh  
 
 
Subroutine CT_CouplingcFvFecHm(gt1,gt2,gt3,Ye,epsE,eta,ZP,ZER,dYe,depsE,              & 
& deta,dZP,dZER,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2,gt3
Real(dp), Intent(in) :: eta,ZP(2,2),deta,dZP(2,2)

Complex(dp), Intent(in) :: Ye(3,3),epsE(3,3),ZER(3,3),dYe(3,3),depsE(3,3),dZER(3,3)

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFvFecHm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

If ((gt3.Lt.1).Or.(gt3.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt3 out of range', gt3 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt3 out of range', gt3 
  Call TerminateProgram 
End If 

resL = 0._dp 
resR = 0._dp 
Do j1 = 1,3
resR = resR-(Conjg(epsE(j1,gt1))*dZP(gt3,2)*ZER(gt2,j1))
End Do 
Do j1 = 1,3
resR = resR+exp((0._dp,1._dp)*eta)*Conjg(Ye(j1,gt1))*ZER(gt2,j1)*ZP(gt3,1)
End Do 
Do j1 = 1,3
resR = resR-(exp((0._dp,1._dp)*(deta + eta))*Conjg(Ye(j1,gt1))*ZER(gt2,j1)*ZP(gt3,1))
End Do 
Do j1 = 1,3
resR = resR-(Conjg(epsE(j1,gt1))*dZER(gt2,j1)*ZP(gt3,2))
End Do 
Do j1 = 1,3
resR = resR-(Conjg(depsE(j1,gt1))*ZER(gt2,j1)*ZP(gt3,2))
End Do 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFvFecHm  
 
 
Subroutine CT_CouplingcFuFuhh(gt1,gt2,gt3,Yu,epsU,eta,ZH,ZUL,ZUR,dYu,depsU,           & 
& deta,dZH,dZUL,dZUR,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2,gt3
Real(dp), Intent(in) :: eta,ZH(6,6),deta,dZH(6,6)

Complex(dp), Intent(in) :: Yu(3,3),epsU(3,3),ZUL(3,3),ZUR(3,3),dYu(3,3),depsU(3,3),dZUL(3,3),dZUR(3,3)

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFuFuhh' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

If ((gt3.Lt.1).Or.(gt3.Gt.6)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt3 out of range', gt3 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt3 out of range', gt3 
  Call TerminateProgram 
End If 

resL = 0._dp 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(ZUR(gt1,j1))*Conjg(ZUL(gt2,j2))*dZH(gt3,2)*epsU(j1,j2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+(-1*(0.,1._dp)*Conjg(ZUR(gt1,j1))*Conjg(ZUL(gt2,j2))*dZH(gt3,5)*epsU(j1,j2))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((exp((0._dp,1._dp)*deta + (0._dp,1._dp)*eta)*Conjg(ZUR(gt1,j1))*Conjg(ZUL(gt2,j2))*Yu(j1,j2)*ZH(gt3,1))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+(exp((0._dp,1._dp)*eta)*Conjg(ZUR(gt1,j1))*Conjg(ZUL(gt2,j2))*Yu(j1,j2)*ZH(gt3,1))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(ZUR(gt1,j1))*Conjg(ZUL(gt2,j2))*depsU(j1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(dZUL(gt2,j2))*Conjg(ZUR(gt1,j1))*epsU(j1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(dZUR(gt1,j1))*Conjg(ZUL(gt2,j2))*epsU(j1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+(-1*(0.,1._dp)*exp((0._dp,1._dp)*deta + (0._dp,1._dp)*eta)*Conjg(ZUR(gt1,j1))*Conjg(ZUL(gt2,j2))*Yu(j1,j2)*ZH(gt3,4))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+((0._dp,1._dp)*exp((0._dp,1._dp)*eta)*Conjg(ZUR(gt1,j1))*Conjg(ZUL(gt2,j2))*Yu(j1,j2)*ZH(gt3,4))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+(-1*(0.,1._dp)*Conjg(ZUR(gt1,j1))*Conjg(ZUL(gt2,j2))*depsU(j1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+(-1*(0.,1._dp)*Conjg(dZUL(gt2,j2))*Conjg(ZUR(gt1,j1))*epsU(j1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+(-1*(0.,1._dp)*Conjg(dZUR(gt1,j1))*Conjg(ZUL(gt2,j2))*epsU(j1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
resR = 0._dp 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(epsU(j1,j2))*dZH(gt3,2)*ZUR(gt2,j1)*ZUL(gt1,j2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+((0._dp,1._dp)*Conjg(epsU(j1,j2))*dZH(gt3,5)*ZUR(gt2,j1)*ZUL(gt1,j2))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((exp(-1*(0.,1._dp)*deta - (0._dp,1._dp)*eta)*Conjg(Yu(j1,j2))*ZUR(gt2,j1)*ZUL(gt1,j2)*ZH(gt3,1))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(Conjg(Yu(j1,j2))*ZUR(gt2,j1)*ZUL(gt1,j2)*ZH(gt3,1))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(epsU(j1,j2))*dZUL(gt1,j2)*ZUR(gt2,j1)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(epsU(j1,j2))*dZUR(gt2,j1)*ZUL(gt1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(depsU(j1,j2))*ZUR(gt2,j1)*ZUL(gt1,j2)*ZH(gt3,2))/sqrt(2._dp))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+((0._dp,1._dp)*exp(-1*(0.,1._dp)*deta - (0._dp,1._dp)*eta)*Conjg(Yu(j1,j2))*ZUR(gt2,j1)*ZUL(gt1,j2)*ZH(gt3,4))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(-1*(0.,1._dp)*Conjg(Yu(j1,j2))*ZUR(gt2,j1)*ZUL(gt1,j2)*ZH(gt3,4))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+((0._dp,1._dp)*Conjg(epsU(j1,j2))*dZUL(gt1,j2)*ZUR(gt2,j1)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+((0._dp,1._dp)*Conjg(epsU(j1,j2))*dZUR(gt2,j1)*ZUL(gt1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+((0._dp,1._dp)*Conjg(depsU(j1,j2))*ZUR(gt2,j1)*ZUL(gt1,j2)*ZH(gt3,5))/sqrt(2._dp)
End Do 
End Do 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFuFuhh  
 
 
Subroutine CT_CouplingcFdFuHm(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,             & 
& ZUL,ZUR,dYu,depsU,dYd,depsD,deta,dZP,dZDL,dZDR,dZUL,dZUR,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2,gt3
Real(dp), Intent(in) :: eta,ZP(2,2),deta,dZP(2,2)

Complex(dp), Intent(in) :: Yu(3,3),epsU(3,3),Yd(3,3),epsD(3,3),ZDL(3,3),ZDR(3,3),ZUL(3,3),ZUR(3,3),              & 
& dYu(3,3),depsU(3,3),dYd(3,3),depsD(3,3),dZDL(3,3),dZDR(3,3),dZUL(3,3),dZUR(3,3)

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFdFuHm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

If ((gt3.Lt.1).Or.(gt3.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt3 out of range', gt3 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt3 out of range', gt3 
  Call TerminateProgram 
End If 

resL = 0._dp 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-(Conjg(ZDR(gt1,j1))*Conjg(ZUL(gt2,j2))*dZP(gt3,2)*epsD(j1,j2))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL+(Conjg(ZDR(gt1,j1))*Conjg(ZUL(gt2,j2))*Yd(j1,j2)*ZP(gt3,1))/exp((0._dp,1._dp)*eta)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-((Conjg(ZDR(gt1,j1))*Conjg(ZUL(gt2,j2))*Yd(j1,j2)*ZP(gt3,1))/exp((0._dp,1._dp)*(deta + eta)))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-(Conjg(ZDR(gt1,j1))*Conjg(ZUL(gt2,j2))*depsD(j1,j2)*ZP(gt3,2))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-(Conjg(dZUL(gt2,j2))*Conjg(ZDR(gt1,j1))*epsD(j1,j2)*ZP(gt3,2))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resL = resL-(Conjg(dZDR(gt1,j1))*Conjg(ZUL(gt2,j2))*epsD(j1,j2)*ZP(gt3,2))
End Do 
End Do 
resR = 0._dp 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+Conjg(epsU(j1,j2))*dZP(gt3,2)*ZUR(gt2,j1)*ZDL(gt1,j2)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR-((Conjg(Yu(j1,j2))*ZUR(gt2,j1)*ZDL(gt1,j2)*ZP(gt3,1))/exp((0._dp,1._dp)*eta))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+(Conjg(Yu(j1,j2))*ZUR(gt2,j1)*ZDL(gt1,j2)*ZP(gt3,1))/exp((0._dp,1._dp)*(deta + eta))
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+Conjg(epsU(j1,j2))*dZDL(gt1,j2)*ZUR(gt2,j1)*ZP(gt3,2)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+Conjg(epsU(j1,j2))*dZUR(gt2,j1)*ZDL(gt1,j2)*ZP(gt3,2)
End Do 
End Do 
Do j2 = 1,3
Do j1 = 1,3
resR = resR+Conjg(depsU(j1,j2))*ZUR(gt2,j1)*ZDL(gt1,j2)*ZP(gt3,2)
End Do 
End Do 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFdFuHm  
 
 
Subroutine CT_CouplingcFeFvHm(gt1,gt2,gt3,Ye,epsE,eta,ZP,ZER,dYe,depsE,               & 
& deta,dZP,dZER,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2,gt3
Real(dp), Intent(in) :: eta,ZP(2,2),deta,dZP(2,2)

Complex(dp), Intent(in) :: Ye(3,3),epsE(3,3),ZER(3,3),dYe(3,3),depsE(3,3),dZER(3,3)

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFeFvHm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

If ((gt3.Lt.1).Or.(gt3.Gt.2)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt3 out of range', gt3 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt3 out of range', gt3 
  Call TerminateProgram 
End If 

resL = 0._dp 
Do j1 = 1,3
resL = resL-(Conjg(ZER(gt1,j1))*dZP(gt3,2)*epsE(j1,gt2))
End Do 
Do j1 = 1,3
resL = resL+(Conjg(ZER(gt1,j1))*Ye(j1,gt2)*ZP(gt3,1))/exp((0._dp,1._dp)*eta)
End Do 
Do j1 = 1,3
resL = resL-((Conjg(ZER(gt1,j1))*Ye(j1,gt2)*ZP(gt3,1))/exp((0._dp,1._dp)*(deta + eta)))
End Do 
Do j1 = 1,3
resL = resL-(Conjg(ZER(gt1,j1))*depsE(j1,gt2)*ZP(gt3,2))
End Do 
Do j1 = 1,3
resL = resL-(Conjg(dZER(gt1,j1))*epsE(j1,gt2)*ZP(gt3,2))
End Do 
resR = 0._dp 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFeFvHm  
 
 
Subroutine CT_CouplingcFdFdVG(gt1,gt2,g3,dg3,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g3,dg3

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFdFdVG' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp*(dg3)
End If 
resR = 0._dp 
If ((gt1.eq.gt2)) Then 
resR = resR-1._dp*(dg3)
End If 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFdFdVG  
 
 
Subroutine CT_CouplingcFdFdVP(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,          & 
& resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFdFdVP' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/6._dp*(dCosTW*g1)
End If 
If ((gt1.eq.gt2)) Then 
resL = resL+(dSinTW*g2)/2._dp
End If 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/6._dp*(dg1*Cos(TW))
End If 
If ((gt1.eq.gt2)) Then 
resL = resL+(dg2*Sin(TW))/2._dp
End If 
resR = 0._dp 
If ((gt1.eq.gt2)) Then 
resR = resR+(dCosTW*g1)/3._dp
End If 
If ((gt1.eq.gt2)) Then 
resR = resR+(dg1*Cos(TW))/3._dp
End If 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFdFdVP  
 
 
Subroutine CT_CouplingcFdFdVZ(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,          & 
& resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFdFdVZ' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
If ((gt1.eq.gt2)) Then 
resL = resL+(dSinTW*g1)/6._dp
End If 
If ((gt1.eq.gt2)) Then 
resL = resL+(dCosTW*g2)/2._dp
End If 
If ((gt1.eq.gt2)) Then 
resL = resL+(dg2*Cos(TW))/2._dp
End If 
If ((gt1.eq.gt2)) Then 
resL = resL+(dg1*Sin(TW))/6._dp
End If 
resR = 0._dp 
If ((gt1.eq.gt2)) Then 
resR = resR-1._dp/3._dp*(dSinTW*g1)
End If 
If ((gt1.eq.gt2)) Then 
resR = resR-1._dp/3._dp*(dg1*Sin(TW))
End If 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFdFdVZ  
 
 
Subroutine CT_CouplingcFuFdcVWm(gt1,gt2,g2,ZDL,ZUL,dg2,dZDL,dZUL,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g2,dg2

Complex(dp), Intent(in) :: ZDL(3,3),ZUL(3,3),dZDL(3,3),dZUL(3,3)

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFuFdcVWm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
Do j1 = 1,3
resL = resL-((g2*Conjg(ZDL(gt2,j1))*dZUL(gt1,j1))/sqrt(2._dp))
End Do 
Do j1 = 1,3
resL = resL-((g2*Conjg(dZDL(gt2,j1))*ZUL(gt1,j1))/sqrt(2._dp))
End Do 
Do j1 = 1,3
resL = resL-((dg2*Conjg(ZDL(gt2,j1))*ZUL(gt1,j1))/sqrt(2._dp))
End Do 
resR = 0._dp 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFuFdcVWm  
 
 
Subroutine CT_CouplingcFeFeVP(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,          & 
& resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFeFeVP' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
If ((gt1.eq.gt2)) Then 
resL = resL+(dCosTW*g1)/2._dp
End If 
If ((gt1.eq.gt2)) Then 
resL = resL+(dSinTW*g2)/2._dp
End If 
If ((gt1.eq.gt2)) Then 
resL = resL+(dg1*Cos(TW))/2._dp
End If 
If ((gt1.eq.gt2)) Then 
resL = resL+(dg2*Sin(TW))/2._dp
End If 
resR = 0._dp 
If ((gt1.eq.gt2)) Then 
resR = resR+dCosTW*g1
End If 
If ((gt1.eq.gt2)) Then 
resR = resR+dg1*Cos(TW)
End If 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFeFeVP  
 
 
Subroutine CT_CouplingcFeFeVZ(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,          & 
& resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFeFeVZ' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/2._dp*(dSinTW*g1)
End If 
If ((gt1.eq.gt2)) Then 
resL = resL+(dCosTW*g2)/2._dp
End If 
If ((gt1.eq.gt2)) Then 
resL = resL+(dg2*Cos(TW))/2._dp
End If 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/2._dp*(dg1*Sin(TW))
End If 
resR = 0._dp 
If ((gt1.eq.gt2)) Then 
resR = resR-(dSinTW*g1)
End If 
If ((gt1.eq.gt2)) Then 
resR = resR-(dg1*Sin(TW))
End If 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFeFeVZ  
 
 
Subroutine CT_CouplingcFvFecVWm(gt1,gt2,g2,ZEL,dg2,dZEL,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g2,dg2

Complex(dp), Intent(in) :: ZEL(3,3),dZEL(3,3)

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFvFecVWm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
If ((gt1.le.3).And.(gt1.ge.1)) Then 
resL = resL-((g2*Conjg(dZEL(gt2,gt1)))/sqrt(2._dp))
End If 
If ((gt1.le.3).And.(gt1.ge.1)) Then 
resL = resL-((dg2*Conjg(ZEL(gt2,gt1)))/sqrt(2._dp))
End If 
resR = 0._dp 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFvFecVWm  
 
 
Subroutine CT_CouplingcFuFuVG(gt1,gt2,g3,dg3,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g3,dg3

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFuFuVG' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp*(dg3)
End If 
resR = 0._dp 
If ((gt1.eq.gt2)) Then 
resR = resR-1._dp*(dg3)
End If 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFuFuVG  
 
 
Subroutine CT_CouplingcFuFuVP(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,          & 
& resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFuFuVP' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/6._dp*(dCosTW*g1)
End If 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/2._dp*(dSinTW*g2)
End If 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/6._dp*(dg1*Cos(TW))
End If 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/2._dp*(dg2*Sin(TW))
End If 
resR = 0._dp 
If ((gt1.eq.gt2)) Then 
resR = resR+(-2*dCosTW*g1)/3._dp
End If 
If ((gt1.eq.gt2)) Then 
resR = resR+(-2*dg1*Cos(TW))/3._dp
End If 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFuFuVP  
 
 
Subroutine CT_CouplingcFdFuVWm(gt1,gt2,g2,ZDL,ZUL,dg2,dZDL,dZUL,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g2,dg2

Complex(dp), Intent(in) :: ZDL(3,3),ZUL(3,3),dZDL(3,3),dZUL(3,3)

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFdFuVWm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
Do j1 = 1,3
resL = resL-((g2*Conjg(ZUL(gt2,j1))*dZDL(gt1,j1))/sqrt(2._dp))
End Do 
Do j1 = 1,3
resL = resL-((g2*Conjg(dZUL(gt2,j1))*ZDL(gt1,j1))/sqrt(2._dp))
End Do 
Do j1 = 1,3
resL = resL-((dg2*Conjg(ZUL(gt2,j1))*ZDL(gt1,j1))/sqrt(2._dp))
End Do 
resR = 0._dp 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFdFuVWm  
 
 
Subroutine CT_CouplingcFuFuVZ(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,          & 
& resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFuFuVZ' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
If ((gt1.eq.gt2)) Then 
resL = resL+(dSinTW*g1)/6._dp
End If 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/2._dp*(dCosTW*g2)
End If 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/2._dp*(dg2*Cos(TW))
End If 
If ((gt1.eq.gt2)) Then 
resL = resL+(dg1*Sin(TW))/6._dp
End If 
resR = 0._dp 
If ((gt1.eq.gt2)) Then 
resR = resR+(2*dSinTW*g1)/3._dp
End If 
If ((gt1.eq.gt2)) Then 
resR = resR+(2*dg1*Sin(TW))/3._dp
End If 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFuFuVZ  
 
 
Subroutine CT_CouplingcFeFvVWm(gt1,gt2,g2,ZEL,dg2,dZEL,resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g2,dg2

Complex(dp), Intent(in) :: ZEL(3,3),dZEL(3,3)

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFeFvVWm' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
If ((gt2.le.3).And.(gt2.ge.1)) Then 
resL = resL-((g2*dZEL(gt1,gt2))/sqrt(2._dp))
End If 
If ((gt2.le.3).And.(gt2.ge.1)) Then 
resL = resL-((dg2*ZEL(gt1,gt2))/sqrt(2._dp))
End If 
resR = 0._dp 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFeFvVWm  
 
 
Subroutine CT_CouplingcFvFvVZ(gt1,gt2,g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW,          & 
& resL,resR)

Implicit None 

Integer, Intent(in) :: gt1,gt2
Real(dp), Intent(in) :: g1,g2,TW,dg1,dg2,dSinTW,dCosTW,dTanTW

Complex(dp), Intent(out) :: resL, resR 
 
Integer :: j1,j2,j3,j4,j5,j6, j7, j8, j9, j10, j11, j12 
Iname = Iname +1 
NameOfUnit(Iname) = 'CT_CouplingcFvFvVZ' 
 
If ((gt1.Lt.1).Or.(gt1.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt1 out of range', gt1 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt1 out of range', gt1 
  Call TerminateProgram 
End If 

If ((gt2.Lt.1).Or.(gt2.Gt.3)) Then 
  Write (ErrCan,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (ErrCan,*) 'index gt2 out of range', gt2 
  Write (*,*) 'Problem in Subroutine ',NameOfUnit(Iname) 
  Write (*,*) 'index gt2 out of range', gt2 
  Call TerminateProgram 
End If 

resL = 0._dp 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/2._dp*(dSinTW*g1)
End If 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/2._dp*(dCosTW*g2)
End If 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/2._dp*(dg2*Cos(TW))
End If 
If ((gt1.eq.gt2)) Then 
resL = resL-1._dp/2._dp*(dg1*Sin(TW))
End If 
resR = 0._dp 
If ((Real(resL,dp).ne.Real(resL,dp)).or.(Real(resR,dp).ne.Real(resR,dp))) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Call TerminateProgram 
End If 


Iname = Iname - 1 
 
End Subroutine CT_CouplingcFvFvVZ  
 
 
End Module CouplingsCT_2HDMSCPV 
