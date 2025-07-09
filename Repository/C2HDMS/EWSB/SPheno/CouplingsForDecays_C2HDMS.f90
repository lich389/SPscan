! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.4 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 17:42 on 9.7.2025   
! ----------------------------------------------------------------------  
 
 
Module CouplingsForDecays_C2HDMS
 
Use Control 
Use Settings 
Use Model_Data_C2HDMS 
Use Couplings_C2HDMS 
Use LoopCouplings_C2HDMS 
Use Tadpoles_C2HDMS 
 Use TreeLevelMasses_C2HDMS 
Use Mathematics, Only: CompareMatrices, Adjungate 
 
Use StandardModel 
Contains 
 
 
 
Subroutine CouplingsFor_Fu_decays_2B(m_in,i1,MFdinput,MFd2input,MFeinput,             & 
& MFe2input,MFuinput,MFu2input,Mhhinput,Mhh2input,MHminput,MHm2input,MVWminput,          & 
& MVWm2input,MVZinput,MVZ2input,TWinput,ZDRinput,ZERinput,ZURinput,vinput,               & 
& ZDLinput,ZELinput,ZULinput,ZHinput,ZPinput,ZWinput,ZZinput,betaHinput,g1input,         & 
& g2input,g3input,Lam6input,Lam5input,Lam7input,Lam1input,Lam4input,Lam3input,           & 
& Lam2input,Lam1pinput,Lam2pinput,L3ppinput,L1ppinput,Lam4pinput,Lam6pinput,             & 
& Lam7pinput,Lam5pinput,L2ppinput,Lam3pinput,Yuinput,epsUinput,Ydinput,Yeinput,          & 
& epsDinput,epsEinput,mus1input,mu11input,mu12input,mu21input,mu22input,mus2input,       & 
& M122input,M112input,M222input,mS2input,mSp2input,vdinput,vuinput,vSinput,              & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFuFuVZL,cplcFuFuVZR,deltaM)

Implicit None 

Real(dp), Intent(in) :: m_in 
Real(dp), Intent(in) :: deltaM 
Integer, Intent(in) :: i1 
Real(dp),Intent(in) :: g1input,g2input,g3input,Lam1input,Lam4input,Lam3input,Lam2input,Lam1pinput,           & 
& Lam2pinput,L3ppinput,M112input,M222input,mS2input,vdinput,vuinput,vSinput

Complex(dp),Intent(in) :: Lam6input,Lam5input,Lam7input,L1ppinput,Lam4pinput,Lam6pinput,Lam7pinput,             & 
& Lam5pinput,L2ppinput,Lam3pinput,Yuinput(3,3),epsUinput(3,3),Ydinput(3,3),              & 
& Yeinput(3,3),epsDinput(3,3),epsEinput(3,3),mus1input,mu11input,mu12input,              & 
& mu21input,mu22input,mus2input,M122input,mSp2input

Real(dp),Intent(in) :: MFdinput(3),MFd2input(3),MFeinput(3),MFe2input(3),MFuinput(3),MFu2input(3),           & 
& Mhhinput(6),Mhh2input(6),MHminput(2),MHm2input(2),MVWminput,MVWm2input,MVZinput,       & 
& MVZ2input,TWinput,vinput,ZHinput(6,6),ZPinput(2,2),ZZinput(2,2),betaHinput

Complex(dp),Intent(in) :: ZDRinput(3,3),ZERinput(3,3),ZURinput(3,3),ZDLinput(3,3),ZELinput(3,3),ZULinput(3,3),  & 
& ZWinput(2,2)

Real(dp) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Complex(dp),Intent(out) :: cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),        & 
& cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3)

Integer :: i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp) :: gSM(11), sinW2, dt, tz, Qin 
Iname = Iname + 1 
NameOfUnit(Iname) = 'Couplings_Fu_2B'
 
sinW2=1._dp-mW2/mZ2 
g1 = g1input 
g2 = g2input 
g3 = g3input 
Lam6 = Lam6input 
Lam5 = Lam5input 
Lam7 = Lam7input 
Lam1 = Lam1input 
Lam4 = Lam4input 
Lam3 = Lam3input 
Lam2 = Lam2input 
Lam1p = Lam1pinput 
Lam2p = Lam2pinput 
L3pp = L3ppinput 
L1pp = L1ppinput 
Lam4p = Lam4pinput 
Lam6p = Lam6pinput 
Lam7p = Lam7pinput 
Lam5p = Lam5pinput 
L2pp = L2ppinput 
Lam3p = Lam3pinput 
Yu = Yuinput 
epsU = epsUinput 
Yd = Ydinput 
Ye = Yeinput 
epsD = epsDinput 
epsE = epsEinput 
mus1 = mus1input 
mu11 = mu11input 
mu12 = mu12input 
mu21 = mu21input 
mu22 = mu22input 
mus2 = mus2input 
M122 = M122input 
M112 = M112input 
M222 = M222input 
mS2 = mS2input 
mSp2 = mSp2input 
vd = vdinput 
vu = vuinput 
vS = vSinput 
Qin=sqrt(getRenormalizationScale()) 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

! --- Calculate running tree-level masses for loop induced couplings and Quark mixing matrices --- 
Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,.True.,kont)

If (ExternalZfactors) Then 
! --- Use the 1-loop mixing matrices calculated at M_SUSY in the vertices --- 
ZH = ZHinput 
ZP = ZPinput 
ZW = ZWinput 
ZZ = ZZinput 
End if 
If (PoleMassesInLoops) Then 
! --- Use the pole masses --- 
MFd = MFdinput 
MFd2 = MFd2input 
MFe = MFeinput 
MFe2 = MFe2input 
MFu = MFuinput 
MFu2 = MFu2input 
Mhh = Mhhinput 
Mhh2 = Mhh2input 
MHm = MHminput 
MHm2 = MHm2input 
MVWm = MVWminput 
MVWm2 = MVWm2input 
MVZ = MVZinput 
MVZ2 = MVZ2input 
v = vinput 
betaH = betaHinput 
End if 
cplcFuFdcHmL = 0._dp 
cplcFuFdcHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFuFdcHmT(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,ZUL,ZUR,            & 
& cplcFuFdcHmL(gt1,gt2,gt3),cplcFuFdcHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFuFuhhL = 0._dp 
cplcFuFuhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFuFuhhT(gt1,gt2,gt3,Yu,epsU,eta,ZH,ZUL,ZUR,cplcFuFuhhL(gt1,gt2,gt3)     & 
& ,cplcFuFuhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFuFdcVWmL = 0._dp 
cplcFuFdcVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFuFdcVWmT(gt1,gt2,g2,ZDL,ZUL,cplcFuFdcVWmL(gt1,gt2),cplcFuFdcVWmR(gt1,gt2))

 End Do 
End Do 


cplcFuFuVZL = 0._dp 
cplcFuFuVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFuFuVZT(gt1,gt2,g1,g2,TW,cplcFuFuVZL(gt1,gt2),cplcFuFuVZR(gt1,gt2))

 End Do 
End Do 


Iname = Iname - 1 
 
End subroutine CouplingsFor_Fu_decays_2B
 
Subroutine CouplingsFor_Fe_decays_2B(m_in,i1,MFdinput,MFd2input,MFeinput,             & 
& MFe2input,MFuinput,MFu2input,Mhhinput,Mhh2input,MHminput,MHm2input,MVWminput,          & 
& MVWm2input,MVZinput,MVZ2input,TWinput,ZDRinput,ZERinput,ZURinput,vinput,               & 
& ZDLinput,ZELinput,ZULinput,ZHinput,ZPinput,ZWinput,ZZinput,betaHinput,g1input,         & 
& g2input,g3input,Lam6input,Lam5input,Lam7input,Lam1input,Lam4input,Lam3input,           & 
& Lam2input,Lam1pinput,Lam2pinput,L3ppinput,L1ppinput,Lam4pinput,Lam6pinput,             & 
& Lam7pinput,Lam5pinput,L2ppinput,Lam3pinput,Yuinput,epsUinput,Ydinput,Yeinput,          & 
& epsDinput,epsEinput,mus1input,mu11input,mu12input,mu21input,mu22input,mus2input,       & 
& M122input,M112input,M222input,mS2input,mSp2input,vdinput,vuinput,vSinput,              & 
& cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,               & 
& cplcFeFvVWmL,cplcFeFvVWmR,deltaM)

Implicit None 

Real(dp), Intent(in) :: m_in 
Real(dp), Intent(in) :: deltaM 
Integer, Intent(in) :: i1 
Real(dp),Intent(in) :: g1input,g2input,g3input,Lam1input,Lam4input,Lam3input,Lam2input,Lam1pinput,           & 
& Lam2pinput,L3ppinput,M112input,M222input,mS2input,vdinput,vuinput,vSinput

Complex(dp),Intent(in) :: Lam6input,Lam5input,Lam7input,L1ppinput,Lam4pinput,Lam6pinput,Lam7pinput,             & 
& Lam5pinput,L2ppinput,Lam3pinput,Yuinput(3,3),epsUinput(3,3),Ydinput(3,3),              & 
& Yeinput(3,3),epsDinput(3,3),epsEinput(3,3),mus1input,mu11input,mu12input,              & 
& mu21input,mu22input,mus2input,M122input,mSp2input

Real(dp),Intent(in) :: MFdinput(3),MFd2input(3),MFeinput(3),MFe2input(3),MFuinput(3),MFu2input(3),           & 
& Mhhinput(6),Mhh2input(6),MHminput(2),MHm2input(2),MVWminput,MVWm2input,MVZinput,       & 
& MVZ2input,TWinput,vinput,ZHinput(6,6),ZPinput(2,2),ZZinput(2,2),betaHinput

Complex(dp),Intent(in) :: ZDRinput(3,3),ZERinput(3,3),ZURinput(3,3),ZDLinput(3,3),ZELinput(3,3),ZULinput(3,3),  & 
& ZWinput(2,2)

Real(dp) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Complex(dp),Intent(out) :: cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),              & 
& cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3)

Integer :: i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp) :: gSM(11), sinW2, dt, tz, Qin 
Iname = Iname + 1 
NameOfUnit(Iname) = 'Couplings_Fe_2B'
 
sinW2=1._dp-mW2/mZ2 
g1 = g1input 
g2 = g2input 
g3 = g3input 
Lam6 = Lam6input 
Lam5 = Lam5input 
Lam7 = Lam7input 
Lam1 = Lam1input 
Lam4 = Lam4input 
Lam3 = Lam3input 
Lam2 = Lam2input 
Lam1p = Lam1pinput 
Lam2p = Lam2pinput 
L3pp = L3ppinput 
L1pp = L1ppinput 
Lam4p = Lam4pinput 
Lam6p = Lam6pinput 
Lam7p = Lam7pinput 
Lam5p = Lam5pinput 
L2pp = L2ppinput 
Lam3p = Lam3pinput 
Yu = Yuinput 
epsU = epsUinput 
Yd = Ydinput 
Ye = Yeinput 
epsD = epsDinput 
epsE = epsEinput 
mus1 = mus1input 
mu11 = mu11input 
mu12 = mu12input 
mu21 = mu21input 
mu22 = mu22input 
mus2 = mus2input 
M122 = M122input 
M112 = M112input 
M222 = M222input 
mS2 = mS2input 
mSp2 = mSp2input 
vd = vdinput 
vu = vuinput 
vS = vSinput 
Qin=sqrt(getRenormalizationScale()) 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

! --- Calculate running tree-level masses for loop induced couplings and Quark mixing matrices --- 
Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,.True.,kont)

If (ExternalZfactors) Then 
! --- Use the 1-loop mixing matrices calculated at M_SUSY in the vertices --- 
ZH = ZHinput 
ZP = ZPinput 
ZW = ZWinput 
ZZ = ZZinput 
End if 
If (PoleMassesInLoops) Then 
! --- Use the pole masses --- 
MFd = MFdinput 
MFd2 = MFd2input 
MFe = MFeinput 
MFe2 = MFe2input 
MFu = MFuinput 
MFu2 = MFu2input 
Mhh = Mhhinput 
Mhh2 = Mhh2input 
MHm = MHminput 
MHm2 = MHm2input 
MVWm = MVWminput 
MVWm2 = MVWm2input 
MVZ = MVZinput 
MVZ2 = MVZ2input 
v = vinput 
betaH = betaHinput 
End if 
cplcFeFehhL = 0._dp 
cplcFeFehhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFeFehhT(gt1,gt2,gt3,Ye,epsE,eta,ZH,ZEL,ZER,cplcFeFehhL(gt1,gt2,gt3)     & 
& ,cplcFeFehhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFeFvHmL = 0._dp 
cplcFeFvHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFeFvHmT(gt1,gt2,gt3,Ye,epsE,eta,ZP,ZER,cplcFeFvHmL(gt1,gt2,gt3)         & 
& ,cplcFeFvHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFeFeVZL = 0._dp 
cplcFeFeVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFeFeVZT(gt1,gt2,g1,g2,TW,cplcFeFeVZL(gt1,gt2),cplcFeFeVZR(gt1,gt2))

 End Do 
End Do 


cplcFeFvVWmL = 0._dp 
cplcFeFvVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFeFvVWmT(gt1,gt2,g2,ZEL,cplcFeFvVWmL(gt1,gt2),cplcFeFvVWmR(gt1,gt2))

 End Do 
End Do 


Iname = Iname - 1 
 
End subroutine CouplingsFor_Fe_decays_2B
 
Subroutine CouplingsFor_Fd_decays_2B(m_in,i1,MFdinput,MFd2input,MFeinput,             & 
& MFe2input,MFuinput,MFu2input,Mhhinput,Mhh2input,MHminput,MHm2input,MVWminput,          & 
& MVWm2input,MVZinput,MVZ2input,TWinput,ZDRinput,ZERinput,ZURinput,vinput,               & 
& ZDLinput,ZELinput,ZULinput,ZHinput,ZPinput,ZWinput,ZZinput,betaHinput,g1input,         & 
& g2input,g3input,Lam6input,Lam5input,Lam7input,Lam1input,Lam4input,Lam3input,           & 
& Lam2input,Lam1pinput,Lam2pinput,L3ppinput,L1ppinput,Lam4pinput,Lam6pinput,             & 
& Lam7pinput,Lam5pinput,L2ppinput,Lam3pinput,Yuinput,epsUinput,Ydinput,Yeinput,          & 
& epsDinput,epsEinput,mus1input,mu11input,mu12input,mu21input,mu22input,mus2input,       & 
& M122input,M112input,M222input,mS2input,mSp2input,vdinput,vuinput,vSinput,              & 
& cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,               & 
& cplcFdFuVWmL,cplcFdFuVWmR,deltaM)

Implicit None 

Real(dp), Intent(in) :: m_in 
Real(dp), Intent(in) :: deltaM 
Integer, Intent(in) :: i1 
Real(dp),Intent(in) :: g1input,g2input,g3input,Lam1input,Lam4input,Lam3input,Lam2input,Lam1pinput,           & 
& Lam2pinput,L3ppinput,M112input,M222input,mS2input,vdinput,vuinput,vSinput

Complex(dp),Intent(in) :: Lam6input,Lam5input,Lam7input,L1ppinput,Lam4pinput,Lam6pinput,Lam7pinput,             & 
& Lam5pinput,L2ppinput,Lam3pinput,Yuinput(3,3),epsUinput(3,3),Ydinput(3,3),              & 
& Yeinput(3,3),epsDinput(3,3),epsEinput(3,3),mus1input,mu11input,mu12input,              & 
& mu21input,mu22input,mus2input,M122input,mSp2input

Real(dp),Intent(in) :: MFdinput(3),MFd2input(3),MFeinput(3),MFe2input(3),MFuinput(3),MFu2input(3),           & 
& Mhhinput(6),Mhh2input(6),MHminput(2),MHm2input(2),MVWminput,MVWm2input,MVZinput,       & 
& MVZ2input,TWinput,vinput,ZHinput(6,6),ZPinput(2,2),ZZinput(2,2),betaHinput

Complex(dp),Intent(in) :: ZDRinput(3,3),ZERinput(3,3),ZURinput(3,3),ZDLinput(3,3),ZELinput(3,3),ZULinput(3,3),  & 
& ZWinput(2,2)

Real(dp) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Complex(dp),Intent(out) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),              & 
& cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3)

Integer :: i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp) :: gSM(11), sinW2, dt, tz, Qin 
Iname = Iname + 1 
NameOfUnit(Iname) = 'Couplings_Fd_2B'
 
sinW2=1._dp-mW2/mZ2 
g1 = g1input 
g2 = g2input 
g3 = g3input 
Lam6 = Lam6input 
Lam5 = Lam5input 
Lam7 = Lam7input 
Lam1 = Lam1input 
Lam4 = Lam4input 
Lam3 = Lam3input 
Lam2 = Lam2input 
Lam1p = Lam1pinput 
Lam2p = Lam2pinput 
L3pp = L3ppinput 
L1pp = L1ppinput 
Lam4p = Lam4pinput 
Lam6p = Lam6pinput 
Lam7p = Lam7pinput 
Lam5p = Lam5pinput 
L2pp = L2ppinput 
Lam3p = Lam3pinput 
Yu = Yuinput 
epsU = epsUinput 
Yd = Ydinput 
Ye = Yeinput 
epsD = epsDinput 
epsE = epsEinput 
mus1 = mus1input 
mu11 = mu11input 
mu12 = mu12input 
mu21 = mu21input 
mu22 = mu22input 
mus2 = mus2input 
M122 = M122input 
M112 = M112input 
M222 = M222input 
mS2 = mS2input 
mSp2 = mSp2input 
vd = vdinput 
vu = vuinput 
vS = vSinput 
Qin=sqrt(getRenormalizationScale()) 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

! --- Calculate running tree-level masses for loop induced couplings and Quark mixing matrices --- 
Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,.True.,kont)

If (ExternalZfactors) Then 
! --- Use the 1-loop mixing matrices calculated at M_SUSY in the vertices --- 
ZH = ZHinput 
ZP = ZPinput 
ZW = ZWinput 
ZZ = ZZinput 
End if 
If (PoleMassesInLoops) Then 
! --- Use the pole masses --- 
MFd = MFdinput 
MFd2 = MFd2input 
MFe = MFeinput 
MFe2 = MFe2input 
MFu = MFuinput 
MFu2 = MFu2input 
Mhh = Mhhinput 
Mhh2 = Mhh2input 
MHm = MHminput 
MHm2 = MHm2input 
MVWm = MVWminput 
MVWm2 = MVWm2input 
MVZ = MVZinput 
MVZ2 = MVZ2input 
v = vinput 
betaH = betaHinput 
End if 
cplcFdFdhhL = 0._dp 
cplcFdFdhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFdFdhhT(gt1,gt2,gt3,Yd,epsD,eta,ZH,ZDL,ZDR,cplcFdFdhhL(gt1,gt2,gt3)     & 
& ,cplcFdFdhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFdFuHmL = 0._dp 
cplcFdFuHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFdFuHmT(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,ZUL,ZUR,             & 
& cplcFdFuHmL(gt1,gt2,gt3),cplcFdFuHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFdFdVZL = 0._dp 
cplcFdFdVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFdFdVZT(gt1,gt2,g1,g2,TW,cplcFdFdVZL(gt1,gt2),cplcFdFdVZR(gt1,gt2))

 End Do 
End Do 


cplcFdFuVWmL = 0._dp 
cplcFdFuVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFdFuVWmT(gt1,gt2,g2,ZDL,ZUL,cplcFdFuVWmL(gt1,gt2),cplcFdFuVWmR(gt1,gt2))

 End Do 
End Do 


Iname = Iname - 1 
 
End subroutine CouplingsFor_Fd_decays_2B
 
Subroutine CouplingsFor_hh_decays_2B(m_in,i1,MFdinput,MFd2input,MFeinput,             & 
& MFe2input,MFuinput,MFu2input,Mhhinput,Mhh2input,MHminput,MHm2input,MVWminput,          & 
& MVWm2input,MVZinput,MVZ2input,TWinput,ZDRinput,ZERinput,ZURinput,vinput,               & 
& ZDLinput,ZELinput,ZULinput,ZHinput,ZPinput,ZWinput,ZZinput,betaHinput,g1input,         & 
& g2input,g3input,Lam6input,Lam5input,Lam7input,Lam1input,Lam4input,Lam3input,           & 
& Lam2input,Lam1pinput,Lam2pinput,L3ppinput,L1ppinput,Lam4pinput,Lam6pinput,             & 
& Lam7pinput,Lam5pinput,L2ppinput,Lam3pinput,Yuinput,epsUinput,Ydinput,Yeinput,          & 
& epsDinput,epsEinput,mus1input,mu11input,mu12input,mu21input,mu22input,mus2input,       & 
& M122input,M112input,M222input,mS2input,mSp2input,vdinput,vuinput,vSinput,              & 
& cplHiggsPP,cplHiggsGG,cplHiggsZZvirt,cplHiggsWWvirt,cplcFdFdhhL,cplcFdFdhhR,           & 
& cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,        & 
& cplhhHmcVWm,cplhhcVWmVWm,cplhhVZVZ,deltaM)

Implicit None 

Real(dp), Intent(in) :: m_in 
Real(dp), Intent(in) :: deltaM 
Integer, Intent(in) :: i1 
Real(dp),Intent(in) :: g1input,g2input,g3input,Lam1input,Lam4input,Lam3input,Lam2input,Lam1pinput,           & 
& Lam2pinput,L3ppinput,M112input,M222input,mS2input,vdinput,vuinput,vSinput

Complex(dp),Intent(in) :: Lam6input,Lam5input,Lam7input,L1ppinput,Lam4pinput,Lam6pinput,Lam7pinput,             & 
& Lam5pinput,L2ppinput,Lam3pinput,Yuinput(3,3),epsUinput(3,3),Ydinput(3,3),              & 
& Yeinput(3,3),epsDinput(3,3),epsEinput(3,3),mus1input,mu11input,mu12input,              & 
& mu21input,mu22input,mus2input,M122input,mSp2input

Real(dp),Intent(in) :: MFdinput(3),MFd2input(3),MFeinput(3),MFe2input(3),MFuinput(3),MFu2input(3),           & 
& Mhhinput(6),Mhh2input(6),MHminput(2),MHm2input(2),MVWminput,MVWm2input,MVZinput,       & 
& MVZ2input,TWinput,vinput,ZHinput(6,6),ZPinput(2,2),ZZinput(2,2),betaHinput

Complex(dp),Intent(in) :: ZDRinput(3,3),ZERinput(3,3),ZURinput(3,3),ZDLinput(3,3),ZELinput(3,3),ZULinput(3,3),  & 
& ZWinput(2,2)

Real(dp) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Complex(dp),Intent(out) :: cplHiggsPP(6),cplHiggsGG(6),cplHiggsZZvirt(6),cplHiggsWWvirt(6),cplcFdFdhhL(3,3,6),   & 
& cplcFdFdhhR(3,3,6),cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFuFuhhL(3,3,6),           & 
& cplcFuFuhhR(3,3,6),cplhhhhhh(6,6,6),cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2), & 
& cplhhcVWmVWm(6),cplhhVZVZ(6)

Integer :: i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Complex(dp) :: ratFd(3),ratFe(3),ratFu(3),ratHm(2),ratVWm

Complex(dp) :: ratPFd(3),ratPFe(3),ratPFu(3),ratPHm(2),ratPVWm

Complex(dp) :: coup 
Real(dp) :: vev, gNLO, NLOqcd, NNLOqcd, NNNLOqcd, AlphaSQ, AlphaSQhlf 
Real(dp) :: g1SM,g2SM,g3SM,vSM
Complex(dp) ::YuSM(3,3),YdSM(3,3),YeSM(3,3)
Real(dp) :: gSM(11), sinW2, dt, tz, Qin 
Iname = Iname + 1 
NameOfUnit(Iname) = 'Couplings_hh_2B'
 
sinW2=1._dp-mW2/mZ2 
g1 = g1input 
g2 = g2input 
g3 = g3input 
Lam6 = Lam6input 
Lam5 = Lam5input 
Lam7 = Lam7input 
Lam1 = Lam1input 
Lam4 = Lam4input 
Lam3 = Lam3input 
Lam2 = Lam2input 
Lam1p = Lam1pinput 
Lam2p = Lam2pinput 
L3pp = L3ppinput 
L1pp = L1ppinput 
Lam4p = Lam4pinput 
Lam6p = Lam6pinput 
Lam7p = Lam7pinput 
Lam5p = Lam5pinput 
L2pp = L2ppinput 
Lam3p = Lam3pinput 
Yu = Yuinput 
epsU = epsUinput 
Yd = Ydinput 
Ye = Yeinput 
epsD = epsDinput 
epsE = epsEinput 
mus1 = mus1input 
mu11 = mu11input 
mu12 = mu12input 
mu21 = mu21input 
mu22 = mu22input 
mus2 = mus2input 
M122 = M122input 
M112 = M112input 
M222 = M222input 
mS2 = mS2input 
mSp2 = mSp2input 
vd = vdinput 
vu = vuinput 
vS = vSinput 
Qin=sqrt(getRenormalizationScale()) 
! Run always SM gauge couplings if present 
  Qin=sqrt(getRenormalizationScale()) 
  Call RunSMohdm(m_in,deltaM,g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM) 
   ! SM pole masses needed for diphoton/digluon rate 
   ! But only top and W play a role. 
   vSM=1/Sqrt((G_F*Sqrt(2._dp))) ! On-Shell VEV needed for loop 
   YuSM(3,3)=sqrt(2._dp)*mf_u(3)/vSM  ! On-Shell top needed in loop 
   ! Other running values kept to get H->ff correct 
Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)

! Run always SM gauge couplings if present 
! alphaS(mH/2) for NLO corrections to diphoton rate 
Call RunSMgauge(m_in/2._dp,deltaM, g1,g2,g3) 
AlphaSQhlf=g3**2/(4._dp*Pi) 
! alphaS(mH) for digluon rate 
Call RunSMgauge(m_in,deltaM, g1,g2,g3) 
AlphaSQ=g3**2/(4._dp*Pi) 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

! --- Calculate running tree-level masses for loop induced couplings and Quark mixing matrices --- 
Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,.True.,kont)

If (ExternalZfactors) Then 
! --- Use the 1-loop mixing matrices calculated at M_SUSY in the vertices --- 
ZH = ZHinput 
ZP = ZPinput 
ZW = ZWinput 
ZZ = ZZinput 
End if 
cplhhhhhh = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 6
  Do gt3 = 1, 6
Call CouplinghhhhhhT(gt1,gt2,gt3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,            & 
& Lam2p,L3pp,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,            & 
& Lam3p,eta,zeta,vd,vu,vS,ZH,cplhhhhhh(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplhhHmcHm = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 2
  Do gt3 = 1, 2
Call CouplinghhHmcHmT(gt1,gt2,gt3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,           & 
& Lam2p,mu11,mu12,mu21,mu22,Lam4p,Lam6p,Lam7p,Lam5p,Lam3p,eta,zeta,vd,vu,vS,             & 
& ZH,ZP,cplhhHmcHm(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplhhhhVZ = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 6
Call CouplinghhhhVZT(gt1,gt2,g1,g2,ZH,TW,cplhhhhVZ(gt1,gt2))

 End Do 
End Do 


cplhhHmcVWm = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 2
Call CouplinghhHmcVWmT(gt1,gt2,g2,ZH,ZP,cplhhHmcVWm(gt1,gt2))

 End Do 
End Do 


cplhhcVWmVWm = 0._dp 
Do gt1 = 1, 6
Call CouplinghhcVWmVWmT(gt1,g2,vd,vu,ZH,cplhhcVWmVWm(gt1))

End Do 


cplhhVZVZ = 0._dp 
Do gt1 = 1, 6
Call CouplinghhVZVZT(gt1,g1,g2,vd,vu,ZH,TW,cplhhVZVZ(gt1))

End Do 


cplcFdFdhhL = 0._dp 
cplcFdFdhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFdFdhhT(gt1,gt2,gt3,Yd,epsD,eta,ZH,ZDL,ZDR,cplcFdFdhhL(gt1,gt2,gt3)     & 
& ,cplcFdFdhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFeFehhL = 0._dp 
cplcFeFehhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFeFehhT(gt1,gt2,gt3,Ye,epsE,eta,ZH,ZEL,ZER,cplcFeFehhL(gt1,gt2,gt3)     & 
& ,cplcFeFehhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFuFuhhL = 0._dp 
cplcFuFuhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFuFuhhT(gt1,gt2,gt3,Yu,epsU,eta,ZH,ZUL,ZUR,cplcFuFuhhL(gt1,gt2,gt3)     & 
& ,cplcFuFuhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


vev=1/Sqrt((G_F*Sqrt(2._dp)))
cplHiggsWWvirt = cplhhcVWmVWm/vev 
cplHiggsZZvirt = cplhhVZVZ*Sqrt(7._dp/12._dp-10._dp/9._dp*Sin(TW)**2+40._dp/27._dp*Sin(TW)**4)/vev 
 

!----------------------------------------------------
! Coupling ratios for HiggsBounds 
!----------------------------------------------------
 
rHB_S_VZ(i1) = Abs(-0.5_dp*cplhhVZVZ(i1)*vev/MVZ2) 
rHB_S_VWm(i1) = Abs(-0.5_dp*cplhhcVWmVWm(i1)*vev/MVWm2) 
Do i2=1, 3
rHB_S_S_Fd(i1,i2) = Abs((cplcFdFdhhL(i2,i2,i1)+cplcFdFdhhR(i2,i2,i1))*vev/(2._dp*MFd(i2))) 
rHB_S_P_Fd(i1,i2) = Abs((cplcFdFdhhL(i2,i2,i1)-cplcFdFdhhR(i2,i2,i1))*vev/(2._dp*MFd(i2))) 
End Do 
Do i2=1, 3
rHB_S_S_Fu(i1,i2) = Abs((cplcFuFuhhL(i2,i2,i1)+cplcFuFuhhR(i2,i2,i1))*vev/(2._dp*MFu(i2))) 
rHB_S_P_Fu(i1,i2) = Abs((cplcFuFuhhL(i2,i2,i1)-cplcFuFuhhR(i2,i2,i1))*vev/(2._dp*MFu(i2))) 
End Do 
Do i2=1, 3
rHB_S_S_Fe(i1,i2) = Abs((cplcFeFehhL(i2,i2,i1)+cplcFeFehhR(i2,i2,i1))*vev/(2._dp*MFe(i2))) 
rHB_S_P_Fe(i1,i2) = Abs((cplcFeFehhL(i2,i2,i1)-cplcFeFehhR(i2,i2,i1))*vev/(2._dp*MFe(i2))) 
End Do 
If (PoleMassesInLoops) Then 
! --- Use the pole masses --- 
MFd = MFdinput 
MFd2 = MFd2input 
MFe = MFeinput 
MFe2 = MFe2input 
MFu = MFuinput 
MFu2 = MFu2input 
Mhh = Mhhinput 
Mhh2 = Mhh2input 
MHm = MHminput 
MHm2 = MHm2input 
MVWm = MVWminput 
MVWm2 = MVWm2input 
MVZ = MVZinput 
MVZ2 = MVZ2input 
v = vinput 
betaH = betaHinput 
End if 
!----------------------------------------------------
! Scalar Higgs coupling ratios 
!----------------------------------------------------
 
Do i2=1, 3
ratFd(i2) = cplcFdFdhhL(i2,i2,i1)*1._dp*vev/MFd(i2) 
End Do 
Do i2=1, 3
ratFe(i2) = cplcFeFehhL(i2,i2,i1)*1._dp*vev/MFe(i2) 
End Do 
Do i2=1, 3
ratFu(i2) = cplcFuFuhhL(i2,i2,i1)*1._dp*vev/MFu(i2) 
End Do 
Do i2=1, 2
ratHm(i2) = 0.5_dp*cplhhHmcHm(i1,i2,i2)*vev/MHm2(i2) 
End Do 
ratVWm = -0.5_dp*cplhhcVWmVWm(i1)*vev/MVWm2 
If (HigherOrderDiboson) Then 
  gNLO = Sqrt(AlphaSQhlf*4._dp*Pi) 
Else  
  gNLO = -1._dp 
End if 
Call CoupHiggsToPhoton(m_in,i1,ratFd,ratFe,ratFu,ratHm,ratVWm,MFd,MFe,MFu,            & 
& MHm,MVWm,gNLO,coup)

cplHiggsPP(i1) = coup*Alpha 
CoupHPP(i1) = coup 
Call CoupHiggsToPhotonSM(m_in,MFd,MFe,MFu,MHm,MVWm,gNLO,coup)

ratioPP(i1) = Abs(cplHiggsPP(i1)/(coup*Alpha)) 
  gNLO = -1._dp 
Call CoupHiggsToGluon(m_in,i1,ratFd,ratFu,MFd,MFu,gNLO,coup)

cplHiggsGG(i1) = coup*AlphaSQ 
CoupHGG(i1) = coup 
Call CoupHiggsToGluonSM(m_in,MFd,MFu,gNLO,coup)

If (HigherOrderDiboson) Then 
  NLOqcd = 12._dp*oo48pi2*(95._dp/4._dp - 7._dp/6._dp*NFlav(m_in))*g3**2 
  NNLOqcd = 0.0005785973353112832_dp*(410.52103034222284_dp - 52.326413200014684_dp*NFlav(m_in)+NFlav(m_in)**2 & 
 & +(2.6337085360233763_dp +0.7392866066030529_dp *NFlav(m_in))*Log(m_in**2/mf_u(3)**2))*g3**4 
  NNNLOqcd = 0.00017781840290519607_dp*(42.74607514668917_dp + 11.191050460173795_dp*Log(m_in**2/mf_u(3)**2) + Log(m_in**2/mf_u(3)**2)**2)*g3**6 
Else 
  NLOqcd = 0._dp 
  NNLOqcd = 0._dp 
  NNNLOqcd = 0._dp 
End if 
coup = coup*Sqrt(1._dp + NLOqcd+NNLOqcd+NNNLOqcd) 
cplHiggsGG(i1) = cplHiggsGG(i1)*Sqrt(1._dp + NLOqcd+NNLOqcd+NNNLOqcd) 
CoupHGG(i1)=cplHiggsGG(i1) 
ratioGG(i1) = Abs(cplHiggsGG(i1)/(coup*AlphaSQ)) 
If (i1.eq.1) Then 
CPL_H_H_Z = Abs(cplhhhhVZ**2/(g2**2/(cos(TW)*4._dp)))
End if 
cplhhhhhh = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 6
  Do gt3 = 1, 6
Call CouplinghhhhhhT(gt1,gt2,gt3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,            & 
& Lam2p,L3pp,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,            & 
& Lam3p,eta,zeta,vd,vu,vS,ZH,cplhhhhhh(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplhhHmcHm = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 2
  Do gt3 = 1, 2
Call CouplinghhHmcHmT(gt1,gt2,gt3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,           & 
& Lam2p,mu11,mu12,mu21,mu22,Lam4p,Lam6p,Lam7p,Lam5p,Lam3p,eta,zeta,vd,vu,vS,             & 
& ZH,ZP,cplhhHmcHm(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplhhhhVZ = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 6
Call CouplinghhhhVZT(gt1,gt2,g1,g2,ZH,TW,cplhhhhVZ(gt1,gt2))

 End Do 
End Do 


cplhhHmcVWm = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 2
Call CouplinghhHmcVWmT(gt1,gt2,g2,ZH,ZP,cplhhHmcVWm(gt1,gt2))

 End Do 
End Do 


cplhhcVWmVWm = 0._dp 
Do gt1 = 1, 6
Call CouplinghhcVWmVWmT(gt1,g2,vd,vu,ZH,cplhhcVWmVWm(gt1))

End Do 


cplhhVZVZ = 0._dp 
Do gt1 = 1, 6
Call CouplinghhVZVZT(gt1,g1,g2,vd,vu,ZH,TW,cplhhVZVZ(gt1))

End Do 


cplcFdFdhhL = 0._dp 
cplcFdFdhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFdFdhhT(gt1,gt2,gt3,Yd,epsD,eta,ZH,ZDL,ZDR,cplcFdFdhhL(gt1,gt2,gt3)     & 
& ,cplcFdFdhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFeFehhL = 0._dp 
cplcFeFehhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFeFehhT(gt1,gt2,gt3,Ye,epsE,eta,ZH,ZEL,ZER,cplcFeFehhL(gt1,gt2,gt3)     & 
& ,cplcFeFehhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFuFuhhL = 0._dp 
cplcFuFuhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFuFuhhT(gt1,gt2,gt3,Yu,epsU,eta,ZH,ZUL,ZUR,cplcFuFuhhL(gt1,gt2,gt3)     & 
& ,cplcFuFuhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


Iname = Iname - 1 
 
End subroutine CouplingsFor_hh_decays_2B
 
Subroutine CouplingsFor_Hm_decays_2B(m_in,i1,MFdinput,MFd2input,MFeinput,             & 
& MFe2input,MFuinput,MFu2input,Mhhinput,Mhh2input,MHminput,MHm2input,MVWminput,          & 
& MVWm2input,MVZinput,MVZ2input,TWinput,ZDRinput,ZERinput,ZURinput,vinput,               & 
& ZDLinput,ZELinput,ZULinput,ZHinput,ZPinput,ZWinput,ZZinput,betaHinput,g1input,         & 
& g2input,g3input,Lam6input,Lam5input,Lam7input,Lam1input,Lam4input,Lam3input,           & 
& Lam2input,Lam1pinput,Lam2pinput,L3ppinput,L1ppinput,Lam4pinput,Lam6pinput,             & 
& Lam7pinput,Lam5pinput,L2ppinput,Lam3pinput,Yuinput,epsUinput,Ydinput,Yeinput,          & 
& epsDinput,epsEinput,mus1input,mu11input,mu12input,mu21input,mu22input,mus2input,       & 
& M122input,M112input,M222input,mS2input,mSp2input,vdinput,vuinput,vSinput,              & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplhhHmcHm,cplhhcHmVWm,            & 
& cplHmcHmVZ,cplcHmVWmVZ,deltaM)

Implicit None 

Real(dp), Intent(in) :: m_in 
Real(dp), Intent(in) :: deltaM 
Integer, Intent(in) :: i1 
Real(dp),Intent(in) :: g1input,g2input,g3input,Lam1input,Lam4input,Lam3input,Lam2input,Lam1pinput,           & 
& Lam2pinput,L3ppinput,M112input,M222input,mS2input,vdinput,vuinput,vSinput

Complex(dp),Intent(in) :: Lam6input,Lam5input,Lam7input,L1ppinput,Lam4pinput,Lam6pinput,Lam7pinput,             & 
& Lam5pinput,L2ppinput,Lam3pinput,Yuinput(3,3),epsUinput(3,3),Ydinput(3,3),              & 
& Yeinput(3,3),epsDinput(3,3),epsEinput(3,3),mus1input,mu11input,mu12input,              & 
& mu21input,mu22input,mus2input,M122input,mSp2input

Real(dp),Intent(in) :: MFdinput(3),MFd2input(3),MFeinput(3),MFe2input(3),MFuinput(3),MFu2input(3),           & 
& Mhhinput(6),Mhh2input(6),MHminput(2),MHm2input(2),MVWminput,MVWm2input,MVZinput,       & 
& MVZ2input,TWinput,vinput,ZHinput(6,6),ZPinput(2,2),ZZinput(2,2),betaHinput

Complex(dp),Intent(in) :: ZDRinput(3,3),ZERinput(3,3),ZURinput(3,3),ZDLinput(3,3),ZELinput(3,3),ZULinput(3,3),  & 
& ZWinput(2,2)

Real(dp) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Complex(dp),Intent(out) :: cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),      & 
& cplhhHmcHm(6,2,2),cplhhcHmVWm(6,2),cplHmcHmVZ(2,2),cplcHmVWmVZ(2)

Integer :: i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp) :: gSM(11), sinW2, dt, tz, Qin 
Iname = Iname + 1 
NameOfUnit(Iname) = 'Couplings_Hm_2B'
 
sinW2=1._dp-mW2/mZ2 
g1 = g1input 
g2 = g2input 
g3 = g3input 
Lam6 = Lam6input 
Lam5 = Lam5input 
Lam7 = Lam7input 
Lam1 = Lam1input 
Lam4 = Lam4input 
Lam3 = Lam3input 
Lam2 = Lam2input 
Lam1p = Lam1pinput 
Lam2p = Lam2pinput 
L3pp = L3ppinput 
L1pp = L1ppinput 
Lam4p = Lam4pinput 
Lam6p = Lam6pinput 
Lam7p = Lam7pinput 
Lam5p = Lam5pinput 
L2pp = L2ppinput 
Lam3p = Lam3pinput 
Yu = Yuinput 
epsU = epsUinput 
Yd = Ydinput 
Ye = Yeinput 
epsD = epsDinput 
epsE = epsEinput 
mus1 = mus1input 
mu11 = mu11input 
mu12 = mu12input 
mu21 = mu21input 
mu22 = mu22input 
mus2 = mus2input 
M122 = M122input 
M112 = M112input 
M222 = M222input 
mS2 = mS2input 
mSp2 = mSp2input 
vd = vdinput 
vu = vuinput 
vS = vSinput 
Qin=sqrt(getRenormalizationScale()) 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

! --- Calculate running tree-level masses for loop induced couplings and Quark mixing matrices --- 
Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,.True.,kont)

If (ExternalZfactors) Then 
! --- Use the 1-loop mixing matrices calculated at M_SUSY in the vertices --- 
ZH = ZHinput 
ZP = ZPinput 
ZW = ZWinput 
ZZ = ZZinput 
End if 
If (PoleMassesInLoops) Then 
! --- Use the pole masses --- 
MFd = MFdinput 
MFd2 = MFd2input 
MFe = MFeinput 
MFe2 = MFe2input 
MFu = MFuinput 
MFu2 = MFu2input 
Mhh = Mhhinput 
Mhh2 = Mhh2input 
MHm = MHminput 
MHm2 = MHm2input 
MVWm = MVWminput 
MVWm2 = MVWm2input 
MVZ = MVZinput 
MVZ2 = MVZ2input 
v = vinput 
betaH = betaHinput 
End if 
cplhhHmcHm = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 2
  Do gt3 = 1, 2
Call CouplinghhHmcHmT(gt1,gt2,gt3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,           & 
& Lam2p,mu11,mu12,mu21,mu22,Lam4p,Lam6p,Lam7p,Lam5p,Lam3p,eta,zeta,vd,vu,vS,             & 
& ZH,ZP,cplhhHmcHm(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplhhcHmVWm = 0._dp 
Do gt1 = 1, 6
 Do gt2 = 1, 2
Call CouplinghhcHmVWmT(gt1,gt2,g2,ZH,ZP,cplhhcHmVWm(gt1,gt2))

 End Do 
End Do 


cplHmcHmVZ = 0._dp 
Do gt1 = 1, 2
 Do gt2 = 1, 2
Call CouplingHmcHmVZT(gt1,gt2,g1,g2,ZP,TW,cplHmcHmVZ(gt1,gt2))

 End Do 
End Do 


cplcHmVWmVZ = 0._dp 
Do gt1 = 1, 2
Call CouplingcHmVWmVZT(gt1,g1,g2,vd,vu,ZP,TW,cplcHmVWmVZ(gt1))

End Do 


cplcFuFdcHmL = 0._dp 
cplcFuFdcHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFuFdcHmT(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,ZUL,ZUR,            & 
& cplcFuFdcHmL(gt1,gt2,gt3),cplcFuFdcHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFvFecHmL = 0._dp 
cplcFvFecHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFvFecHmT(gt1,gt2,gt3,Ye,epsE,eta,ZP,ZER,cplcFvFecHmL(gt1,gt2,gt3)       & 
& ,cplcFvFecHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


Iname = Iname - 1 
 
End subroutine CouplingsFor_Hm_decays_2B
 
Subroutine CouplingsFor_Fu_decays_3B(m_in,i1,MFdinput,MFd2input,MFeinput,             & 
& MFe2input,MFuinput,MFu2input,Mhhinput,Mhh2input,MHminput,MHm2input,MVWminput,          & 
& MVWm2input,MVZinput,MVZ2input,TWinput,ZDRinput,ZERinput,ZURinput,vinput,               & 
& ZDLinput,ZELinput,ZULinput,ZHinput,ZPinput,ZWinput,ZZinput,betaHinput,g1input,         & 
& g2input,g3input,Lam6input,Lam5input,Lam7input,Lam1input,Lam4input,Lam3input,           & 
& Lam2input,Lam1pinput,Lam2pinput,L3ppinput,L1ppinput,Lam4pinput,Lam6pinput,             & 
& Lam7pinput,Lam5pinput,L2ppinput,Lam3pinput,Yuinput,epsUinput,Ydinput,Yeinput,          & 
& epsDinput,epsEinput,mus1input,mu11input,mu12input,mu21input,mu22input,mus2input,       & 
& M122input,M112input,M222input,mS2input,mSp2input,vdinput,vuinput,vSinput,              & 
& cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,               & 
& cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,             & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFuFdcHmL,cplcFuFdcHmR,           & 
& cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,           & 
& cplcFvFvVZL,cplcFvFvVZR,deltaM)

Implicit None 

Real(dp), Intent(in) :: m_in 
Real(dp), Intent(in) :: deltaM 
Integer, Intent(in) :: i1 
Real(dp),Intent(in) :: g1input,g2input,g3input,Lam1input,Lam4input,Lam3input,Lam2input,Lam1pinput,           & 
& Lam2pinput,L3ppinput,M112input,M222input,mS2input,vdinput,vuinput,vSinput

Complex(dp),Intent(in) :: Lam6input,Lam5input,Lam7input,L1ppinput,Lam4pinput,Lam6pinput,Lam7pinput,             & 
& Lam5pinput,L2ppinput,Lam3pinput,Yuinput(3,3),epsUinput(3,3),Ydinput(3,3),              & 
& Yeinput(3,3),epsDinput(3,3),epsEinput(3,3),mus1input,mu11input,mu12input,              & 
& mu21input,mu22input,mus2input,M122input,mSp2input

Real(dp),Intent(in) :: MFdinput(3),MFd2input(3),MFeinput(3),MFe2input(3),MFuinput(3),MFu2input(3),           & 
& Mhhinput(6),Mhh2input(6),MHminput(2),MHm2input(2),MVWminput,MVWm2input,MVZinput,       & 
& MVZ2input,TWinput,vinput,ZHinput(6,6),ZPinput(2,2),ZZinput(2,2),betaHinput

Complex(dp),Intent(in) :: ZDRinput(3,3),ZERinput(3,3),ZURinput(3,3),ZDLinput(3,3),ZELinput(3,3),ZULinput(3,3),  & 
& ZWinput(2,2)

Real(dp) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Complex(dp),Intent(out) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),              & 
& cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),             & 
& cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),               & 
& cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),             & 
& cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),         & 
& cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),               & 
& cplcFvFvVZL(3,3),cplcFvFvVZR(3,3)

Integer :: i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp) :: gSM(11), sinW2, dt, tz, Qin 
Iname = Iname + 1 
NameOfUnit(Iname) = 'Couplings_Fu_3B'
 
sinW2=1._dp-mW2/mZ2 
g1 = g1input 
g2 = g2input 
g3 = g3input 
Lam6 = Lam6input 
Lam5 = Lam5input 
Lam7 = Lam7input 
Lam1 = Lam1input 
Lam4 = Lam4input 
Lam3 = Lam3input 
Lam2 = Lam2input 
Lam1p = Lam1pinput 
Lam2p = Lam2pinput 
L3pp = L3ppinput 
L1pp = L1ppinput 
Lam4p = Lam4pinput 
Lam6p = Lam6pinput 
Lam7p = Lam7pinput 
Lam5p = Lam5pinput 
L2pp = L2ppinput 
Lam3p = Lam3pinput 
Yu = Yuinput 
epsU = epsUinput 
Yd = Ydinput 
Ye = Yeinput 
epsD = epsDinput 
epsE = epsEinput 
mus1 = mus1input 
mu11 = mu11input 
mu12 = mu12input 
mu21 = mu21input 
mu22 = mu22input 
mus2 = mus2input 
M122 = M122input 
M112 = M112input 
M222 = M222input 
mS2 = mS2input 
mSp2 = mSp2input 
vd = vdinput 
vu = vuinput 
vS = vSinput 
Qin=sqrt(getRenormalizationScale()) 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

! --- Calculate running tree-level masses for loop induced couplings and Quark mixing matrices --- 
Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,.True.,kont)

If (ExternalZfactors) Then 
! --- Use the 1-loop mixing matrices calculated at M_SUSY in the vertices --- 
ZH = ZHinput 
ZP = ZPinput 
ZW = ZWinput 
ZZ = ZZinput 
End if 
If (PoleMassesInLoops) Then 
! --- Use the pole masses --- 
MFd = MFdinput 
MFd2 = MFd2input 
MFe = MFeinput 
MFe2 = MFe2input 
MFu = MFuinput 
MFu2 = MFu2input 
Mhh = Mhhinput 
Mhh2 = Mhh2input 
MHm = MHminput 
MHm2 = MHm2input 
MVWm = MVWminput 
MVWm2 = MVWm2input 
MVZ = MVZinput 
MVZ2 = MVZ2input 
v = vinput 
betaH = betaHinput 
End if 
cplcFdFdhhL = 0._dp 
cplcFdFdhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFdFdhhT(gt1,gt2,gt3,Yd,epsD,eta,ZH,ZDL,ZDR,cplcFdFdhhL(gt1,gt2,gt3)     & 
& ,cplcFdFdhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFuFdcHmL = 0._dp 
cplcFuFdcHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFuFdcHmT(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,ZUL,ZUR,            & 
& cplcFuFdcHmL(gt1,gt2,gt3),cplcFuFdcHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFeFehhL = 0._dp 
cplcFeFehhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFeFehhT(gt1,gt2,gt3,Ye,epsE,eta,ZH,ZEL,ZER,cplcFeFehhL(gt1,gt2,gt3)     & 
& ,cplcFeFehhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFuFuhhL = 0._dp 
cplcFuFuhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFuFuhhT(gt1,gt2,gt3,Yu,epsU,eta,ZH,ZUL,ZUR,cplcFuFuhhL(gt1,gt2,gt3)     & 
& ,cplcFuFuhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFdFuHmL = 0._dp 
cplcFdFuHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFdFuHmT(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,ZUL,ZUR,             & 
& cplcFdFuHmL(gt1,gt2,gt3),cplcFdFuHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFeFvHmL = 0._dp 
cplcFeFvHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFeFvHmT(gt1,gt2,gt3,Ye,epsE,eta,ZP,ZER,cplcFeFvHmL(gt1,gt2,gt3)         & 
& ,cplcFeFvHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFdFdVZL = 0._dp 
cplcFdFdVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFdFdVZT(gt1,gt2,g1,g2,TW,cplcFdFdVZL(gt1,gt2),cplcFdFdVZR(gt1,gt2))

 End Do 
End Do 


cplcFuFdcVWmL = 0._dp 
cplcFuFdcVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFuFdcVWmT(gt1,gt2,g2,ZDL,ZUL,cplcFuFdcVWmL(gt1,gt2),cplcFuFdcVWmR(gt1,gt2))

 End Do 
End Do 


cplcFeFeVZL = 0._dp 
cplcFeFeVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFeFeVZT(gt1,gt2,g1,g2,TW,cplcFeFeVZL(gt1,gt2),cplcFeFeVZR(gt1,gt2))

 End Do 
End Do 


cplcFdFuVWmL = 0._dp 
cplcFdFuVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFdFuVWmT(gt1,gt2,g2,ZDL,ZUL,cplcFdFuVWmL(gt1,gt2),cplcFdFuVWmR(gt1,gt2))

 End Do 
End Do 


cplcFuFuVZL = 0._dp 
cplcFuFuVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFuFuVZT(gt1,gt2,g1,g2,TW,cplcFuFuVZL(gt1,gt2),cplcFuFuVZR(gt1,gt2))

 End Do 
End Do 


cplcFeFvVWmL = 0._dp 
cplcFeFvVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFeFvVWmT(gt1,gt2,g2,ZEL,cplcFeFvVWmL(gt1,gt2),cplcFeFvVWmR(gt1,gt2))

 End Do 
End Do 


cplcFvFvVZL = 0._dp 
cplcFvFvVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFvFvVZT(gt1,gt2,g1,g2,TW,cplcFvFvVZL(gt1,gt2),cplcFvFvVZR(gt1,gt2))

 End Do 
End Do 


Iname = Iname - 1 
 
End subroutine CouplingsFor_Fu_decays_3B
 
Subroutine CouplingsFor_Fe_decays_3B(m_in,i1,MFdinput,MFd2input,MFeinput,             & 
& MFe2input,MFuinput,MFu2input,Mhhinput,Mhh2input,MHminput,MHm2input,MVWminput,          & 
& MVWm2input,MVZinput,MVZ2input,TWinput,ZDRinput,ZERinput,ZURinput,vinput,               & 
& ZDLinput,ZELinput,ZULinput,ZHinput,ZPinput,ZWinput,ZZinput,betaHinput,g1input,         & 
& g2input,g3input,Lam6input,Lam5input,Lam7input,Lam1input,Lam4input,Lam3input,           & 
& Lam2input,Lam1pinput,Lam2pinput,L3ppinput,L1ppinput,Lam4pinput,Lam6pinput,             & 
& Lam7pinput,Lam5pinput,L2ppinput,Lam3pinput,Yuinput,epsUinput,Ydinput,Yeinput,          & 
& epsDinput,epsEinput,mus1input,mu11input,mu12input,mu21input,mu22input,mus2input,       & 
& M122input,M112input,M222input,mS2input,mSp2input,vdinput,vuinput,vSinput,              & 
& cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,               & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFuFuVZL,cplcFuFuVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFvFvVZL,cplcFvFvVZR,deltaM)

Implicit None 

Real(dp), Intent(in) :: m_in 
Real(dp), Intent(in) :: deltaM 
Integer, Intent(in) :: i1 
Real(dp),Intent(in) :: g1input,g2input,g3input,Lam1input,Lam4input,Lam3input,Lam2input,Lam1pinput,           & 
& Lam2pinput,L3ppinput,M112input,M222input,mS2input,vdinput,vuinput,vSinput

Complex(dp),Intent(in) :: Lam6input,Lam5input,Lam7input,L1ppinput,Lam4pinput,Lam6pinput,Lam7pinput,             & 
& Lam5pinput,L2ppinput,Lam3pinput,Yuinput(3,3),epsUinput(3,3),Ydinput(3,3),              & 
& Yeinput(3,3),epsDinput(3,3),epsEinput(3,3),mus1input,mu11input,mu12input,              & 
& mu21input,mu22input,mus2input,M122input,mSp2input

Real(dp),Intent(in) :: MFdinput(3),MFd2input(3),MFeinput(3),MFe2input(3),MFuinput(3),MFu2input(3),           & 
& Mhhinput(6),Mhh2input(6),MHminput(2),MHm2input(2),MVWminput,MVWm2input,MVZinput,       & 
& MVZ2input,TWinput,vinput,ZHinput(6,6),ZPinput(2,2),ZZinput(2,2),betaHinput

Complex(dp),Intent(in) :: ZDRinput(3,3),ZERinput(3,3),ZURinput(3,3),ZDLinput(3,3),ZELinput(3,3),ZULinput(3,3),  & 
& ZWinput(2,2)

Real(dp) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Complex(dp),Intent(out) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),              & 
& cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),               & 
& cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),             & 
& cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),         & 
& cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),               & 
& cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),         & 
& cplcFvFvVZL(3,3),cplcFvFvVZR(3,3)

Integer :: i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp) :: gSM(11), sinW2, dt, tz, Qin 
Iname = Iname + 1 
NameOfUnit(Iname) = 'Couplings_Fe_3B'
 
sinW2=1._dp-mW2/mZ2 
g1 = g1input 
g2 = g2input 
g3 = g3input 
Lam6 = Lam6input 
Lam5 = Lam5input 
Lam7 = Lam7input 
Lam1 = Lam1input 
Lam4 = Lam4input 
Lam3 = Lam3input 
Lam2 = Lam2input 
Lam1p = Lam1pinput 
Lam2p = Lam2pinput 
L3pp = L3ppinput 
L1pp = L1ppinput 
Lam4p = Lam4pinput 
Lam6p = Lam6pinput 
Lam7p = Lam7pinput 
Lam5p = Lam5pinput 
L2pp = L2ppinput 
Lam3p = Lam3pinput 
Yu = Yuinput 
epsU = epsUinput 
Yd = Ydinput 
Ye = Yeinput 
epsD = epsDinput 
epsE = epsEinput 
mus1 = mus1input 
mu11 = mu11input 
mu12 = mu12input 
mu21 = mu21input 
mu22 = mu22input 
mus2 = mus2input 
M122 = M122input 
M112 = M112input 
M222 = M222input 
mS2 = mS2input 
mSp2 = mSp2input 
vd = vdinput 
vu = vuinput 
vS = vSinput 
Qin=sqrt(getRenormalizationScale()) 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

! --- Calculate running tree-level masses for loop induced couplings and Quark mixing matrices --- 
Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,.True.,kont)

If (ExternalZfactors) Then 
! --- Use the 1-loop mixing matrices calculated at M_SUSY in the vertices --- 
ZH = ZHinput 
ZP = ZPinput 
ZW = ZWinput 
ZZ = ZZinput 
End if 
If (PoleMassesInLoops) Then 
! --- Use the pole masses --- 
MFd = MFdinput 
MFd2 = MFd2input 
MFe = MFeinput 
MFe2 = MFe2input 
MFu = MFuinput 
MFu2 = MFu2input 
Mhh = Mhhinput 
Mhh2 = Mhh2input 
MHm = MHminput 
MHm2 = MHm2input 
MVWm = MVWminput 
MVWm2 = MVWm2input 
MVZ = MVZinput 
MVZ2 = MVZ2input 
v = vinput 
betaH = betaHinput 
End if 
cplcFdFdhhL = 0._dp 
cplcFdFdhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFdFdhhT(gt1,gt2,gt3,Yd,epsD,eta,ZH,ZDL,ZDR,cplcFdFdhhL(gt1,gt2,gt3)     & 
& ,cplcFdFdhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFuFdcHmL = 0._dp 
cplcFuFdcHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFuFdcHmT(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,ZUL,ZUR,            & 
& cplcFuFdcHmL(gt1,gt2,gt3),cplcFuFdcHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFeFehhL = 0._dp 
cplcFeFehhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFeFehhT(gt1,gt2,gt3,Ye,epsE,eta,ZH,ZEL,ZER,cplcFeFehhL(gt1,gt2,gt3)     & 
& ,cplcFeFehhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFvFecHmL = 0._dp 
cplcFvFecHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFvFecHmT(gt1,gt2,gt3,Ye,epsE,eta,ZP,ZER,cplcFvFecHmL(gt1,gt2,gt3)       & 
& ,cplcFvFecHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFuFuhhL = 0._dp 
cplcFuFuhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFuFuhhT(gt1,gt2,gt3,Yu,epsU,eta,ZH,ZUL,ZUR,cplcFuFuhhL(gt1,gt2,gt3)     & 
& ,cplcFuFuhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFeFvHmL = 0._dp 
cplcFeFvHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFeFvHmT(gt1,gt2,gt3,Ye,epsE,eta,ZP,ZER,cplcFeFvHmL(gt1,gt2,gt3)         & 
& ,cplcFeFvHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFdFdVZL = 0._dp 
cplcFdFdVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFdFdVZT(gt1,gt2,g1,g2,TW,cplcFdFdVZL(gt1,gt2),cplcFdFdVZR(gt1,gt2))

 End Do 
End Do 


cplcFuFdcVWmL = 0._dp 
cplcFuFdcVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFuFdcVWmT(gt1,gt2,g2,ZDL,ZUL,cplcFuFdcVWmL(gt1,gt2),cplcFuFdcVWmR(gt1,gt2))

 End Do 
End Do 


cplcFeFeVZL = 0._dp 
cplcFeFeVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFeFeVZT(gt1,gt2,g1,g2,TW,cplcFeFeVZL(gt1,gt2),cplcFeFeVZR(gt1,gt2))

 End Do 
End Do 


cplcFvFecVWmL = 0._dp 
cplcFvFecVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFvFecVWmT(gt1,gt2,g2,ZEL,cplcFvFecVWmL(gt1,gt2),cplcFvFecVWmR(gt1,gt2))

 End Do 
End Do 


cplcFuFuVZL = 0._dp 
cplcFuFuVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFuFuVZT(gt1,gt2,g1,g2,TW,cplcFuFuVZL(gt1,gt2),cplcFuFuVZR(gt1,gt2))

 End Do 
End Do 


cplcFeFvVWmL = 0._dp 
cplcFeFvVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFeFvVWmT(gt1,gt2,g2,ZEL,cplcFeFvVWmL(gt1,gt2),cplcFeFvVWmR(gt1,gt2))

 End Do 
End Do 


cplcFvFvVZL = 0._dp 
cplcFvFvVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFvFvVZT(gt1,gt2,g1,g2,TW,cplcFvFvVZL(gt1,gt2),cplcFvFvVZR(gt1,gt2))

 End Do 
End Do 


Iname = Iname - 1 
 
End subroutine CouplingsFor_Fe_decays_3B
 
Subroutine CouplingsFor_Fd_decays_3B(m_in,i1,MFdinput,MFd2input,MFeinput,             & 
& MFe2input,MFuinput,MFu2input,Mhhinput,Mhh2input,MHminput,MHm2input,MVWminput,          & 
& MVWm2input,MVZinput,MVZ2input,TWinput,ZDRinput,ZERinput,ZURinput,vinput,               & 
& ZDLinput,ZELinput,ZULinput,ZHinput,ZPinput,ZWinput,ZZinput,betaHinput,g1input,         & 
& g2input,g3input,Lam6input,Lam5input,Lam7input,Lam1input,Lam4input,Lam3input,           & 
& Lam2input,Lam1pinput,Lam2pinput,L3ppinput,L1ppinput,Lam4pinput,Lam6pinput,             & 
& Lam7pinput,Lam5pinput,L2ppinput,Lam3pinput,Yuinput,epsUinput,Ydinput,Yeinput,          & 
& epsDinput,epsEinput,mus1input,mu11input,mu12input,mu21input,mu22input,mus2input,       & 
& M122input,M112input,M222input,mS2input,mSp2input,vdinput,vuinput,vSinput,              & 
& cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,               & 
& cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFuFuVZL,cplcFuFuVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFvFvVZL,cplcFvFvVZR,deltaM)

Implicit None 

Real(dp), Intent(in) :: m_in 
Real(dp), Intent(in) :: deltaM 
Integer, Intent(in) :: i1 
Real(dp),Intent(in) :: g1input,g2input,g3input,Lam1input,Lam4input,Lam3input,Lam2input,Lam1pinput,           & 
& Lam2pinput,L3ppinput,M112input,M222input,mS2input,vdinput,vuinput,vSinput

Complex(dp),Intent(in) :: Lam6input,Lam5input,Lam7input,L1ppinput,Lam4pinput,Lam6pinput,Lam7pinput,             & 
& Lam5pinput,L2ppinput,Lam3pinput,Yuinput(3,3),epsUinput(3,3),Ydinput(3,3),              & 
& Yeinput(3,3),epsDinput(3,3),epsEinput(3,3),mus1input,mu11input,mu12input,              & 
& mu21input,mu22input,mus2input,M122input,mSp2input

Real(dp),Intent(in) :: MFdinput(3),MFd2input(3),MFeinput(3),MFe2input(3),MFuinput(3),MFu2input(3),           & 
& Mhhinput(6),Mhh2input(6),MHminput(2),MHm2input(2),MVWminput,MVWm2input,MVZinput,       & 
& MVZ2input,TWinput,vinput,ZHinput(6,6),ZPinput(2,2),ZZinput(2,2),betaHinput

Complex(dp),Intent(in) :: ZDRinput(3,3),ZERinput(3,3),ZURinput(3,3),ZDLinput(3,3),ZELinput(3,3),ZULinput(3,3),  & 
& ZWinput(2,2)

Real(dp) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Complex(dp),Intent(out) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),              & 
& cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),             & 
& cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),               & 
& cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),         & 
& cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),               & 
& cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),         & 
& cplcFvFvVZL(3,3),cplcFvFvVZR(3,3)

Integer :: i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp) :: gSM(11), sinW2, dt, tz, Qin 
Iname = Iname + 1 
NameOfUnit(Iname) = 'Couplings_Fd_3B'
 
sinW2=1._dp-mW2/mZ2 
g1 = g1input 
g2 = g2input 
g3 = g3input 
Lam6 = Lam6input 
Lam5 = Lam5input 
Lam7 = Lam7input 
Lam1 = Lam1input 
Lam4 = Lam4input 
Lam3 = Lam3input 
Lam2 = Lam2input 
Lam1p = Lam1pinput 
Lam2p = Lam2pinput 
L3pp = L3ppinput 
L1pp = L1ppinput 
Lam4p = Lam4pinput 
Lam6p = Lam6pinput 
Lam7p = Lam7pinput 
Lam5p = Lam5pinput 
L2pp = L2ppinput 
Lam3p = Lam3pinput 
Yu = Yuinput 
epsU = epsUinput 
Yd = Ydinput 
Ye = Yeinput 
epsD = epsDinput 
epsE = epsEinput 
mus1 = mus1input 
mu11 = mu11input 
mu12 = mu12input 
mu21 = mu21input 
mu22 = mu22input 
mus2 = mus2input 
M122 = M122input 
M112 = M112input 
M222 = M222input 
mS2 = mS2input 
mSp2 = mSp2input 
vd = vdinput 
vu = vuinput 
vS = vSinput 
Qin=sqrt(getRenormalizationScale()) 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

! --- Calculate running tree-level masses for loop induced couplings and Quark mixing matrices --- 
Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,.True.,kont)

If (ExternalZfactors) Then 
! --- Use the 1-loop mixing matrices calculated at M_SUSY in the vertices --- 
ZH = ZHinput 
ZP = ZPinput 
ZW = ZWinput 
ZZ = ZZinput 
End if 
If (PoleMassesInLoops) Then 
! --- Use the pole masses --- 
MFd = MFdinput 
MFd2 = MFd2input 
MFe = MFeinput 
MFe2 = MFe2input 
MFu = MFuinput 
MFu2 = MFu2input 
Mhh = Mhhinput 
Mhh2 = Mhh2input 
MHm = MHminput 
MHm2 = MHm2input 
MVWm = MVWminput 
MVWm2 = MVWm2input 
MVZ = MVZinput 
MVZ2 = MVZ2input 
v = vinput 
betaH = betaHinput 
End if 
cplcFdFdhhL = 0._dp 
cplcFdFdhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFdFdhhT(gt1,gt2,gt3,Yd,epsD,eta,ZH,ZDL,ZDR,cplcFdFdhhL(gt1,gt2,gt3)     & 
& ,cplcFdFdhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFuFdcHmL = 0._dp 
cplcFuFdcHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFuFdcHmT(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,ZUL,ZUR,            & 
& cplcFuFdcHmL(gt1,gt2,gt3),cplcFuFdcHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFeFehhL = 0._dp 
cplcFeFehhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFeFehhT(gt1,gt2,gt3,Ye,epsE,eta,ZH,ZEL,ZER,cplcFeFehhL(gt1,gt2,gt3)     & 
& ,cplcFeFehhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFvFecHmL = 0._dp 
cplcFvFecHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFvFecHmT(gt1,gt2,gt3,Ye,epsE,eta,ZP,ZER,cplcFvFecHmL(gt1,gt2,gt3)       & 
& ,cplcFvFecHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFuFuhhL = 0._dp 
cplcFuFuhhR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 6
Call CouplingcFuFuhhT(gt1,gt2,gt3,Yu,epsU,eta,ZH,ZUL,ZUR,cplcFuFuhhL(gt1,gt2,gt3)     & 
& ,cplcFuFuhhR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFdFuHmL = 0._dp 
cplcFdFuHmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
  Do gt3 = 1, 2
Call CouplingcFdFuHmT(gt1,gt2,gt3,Yu,epsU,Yd,epsD,eta,ZP,ZDL,ZDR,ZUL,ZUR,             & 
& cplcFdFuHmL(gt1,gt2,gt3),cplcFdFuHmR(gt1,gt2,gt3))

  End Do 
 End Do 
End Do 


cplcFdFdVZL = 0._dp 
cplcFdFdVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFdFdVZT(gt1,gt2,g1,g2,TW,cplcFdFdVZL(gt1,gt2),cplcFdFdVZR(gt1,gt2))

 End Do 
End Do 


cplcFuFdcVWmL = 0._dp 
cplcFuFdcVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFuFdcVWmT(gt1,gt2,g2,ZDL,ZUL,cplcFuFdcVWmL(gt1,gt2),cplcFuFdcVWmR(gt1,gt2))

 End Do 
End Do 


cplcFeFeVZL = 0._dp 
cplcFeFeVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFeFeVZT(gt1,gt2,g1,g2,TW,cplcFeFeVZL(gt1,gt2),cplcFeFeVZR(gt1,gt2))

 End Do 
End Do 


cplcFvFecVWmL = 0._dp 
cplcFvFecVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFvFecVWmT(gt1,gt2,g2,ZEL,cplcFvFecVWmL(gt1,gt2),cplcFvFecVWmR(gt1,gt2))

 End Do 
End Do 


cplcFdFuVWmL = 0._dp 
cplcFdFuVWmR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFdFuVWmT(gt1,gt2,g2,ZDL,ZUL,cplcFdFuVWmL(gt1,gt2),cplcFdFuVWmR(gt1,gt2))

 End Do 
End Do 


cplcFuFuVZL = 0._dp 
cplcFuFuVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFuFuVZT(gt1,gt2,g1,g2,TW,cplcFuFuVZL(gt1,gt2),cplcFuFuVZR(gt1,gt2))

 End Do 
End Do 


cplcFvFvVZL = 0._dp 
cplcFvFvVZR = 0._dp 
Do gt1 = 1, 3
 Do gt2 = 1, 3
Call CouplingcFvFvVZT(gt1,gt2,g1,g2,TW,cplcFvFvVZL(gt1,gt2),cplcFvFvVZR(gt1,gt2))

 End Do 
End Do 


Iname = Iname - 1 
 
End subroutine CouplingsFor_Fd_decays_3B
 
Function NFlav(m_in) 
Implicit None 
Real(dp), Intent(in) :: m_in 
Real(dp) :: NFlav 
If (m_in.lt.mf_d(3)) Then 
  NFlav = 4._dp 
Else If (m_in.lt.mf_u(3)) Then 
  NFlav = 5._dp 
Else 
  NFlav = 6._dp 
End if 
End Function

Subroutine RunSM(scale_out,deltaM,tb,g1,g2,g3,Yu, Yd, Ye, vd, vu) 
Implicit None
Real(dp), Intent(in) :: scale_out,deltaM, tb
Real(dp), Intent(out) :: g1, g2, g3, vd, vu
Complex(dp), Intent(out) :: Yu(3,3), Yd(3,3), Ye(3,3)
Real(dp) :: dt, gSM(14), gSM2(2), gSM3(3), mtopMS,  sinw2, vev, tz, alphaStop 
Integer :: kont

RunningTopMZ = .false.

Yd = 0._dp
Ye = 0._dp
Yu = 0._dp

If (.not.RunningTopMZ) Then

! Calculating alpha_S(m_top)
gSM2(1)=sqrt(Alpha_mZ*4*Pi) 
gSM2(2)=sqrt(AlphaS_mZ*4*Pi) 


tz=Log(sqrt(mz2)/mf_u(3)) 
dt=tz/50._dp 
Call odeint(gSM2,2,tz,0._dp,deltaM,dt,0._dp,RGEAlphaS,kont)



alphaStop = gSM2(2)**2/4._dp/Pi



! m_top^pole to m_top^MS(m_top) 

mtopMS = mf_u(3)*(1._dp - 4._dp/3._dp*alphaStop/Pi)


! Running m_top^MS(m_top) to M_Z 

gSM3(1)=gSM2(1) 
gSM3(2)=gSM2(2)
gSM3(3)=mtopMS

tz=Log(sqrt(mz2)/mf_u(3)) 
dt=tz/50._dp 
Call odeint(gSM3,3,0._dp,tz,deltaM,dt,0._dp,RGEtop,kont)


mf_u_mz_running = gSM3(3)


RunningTopMZ = .True.

End if

! Starting values at MZ

gSM(1)=sqrt(Alpha_mZ*4*Pi) 
gSM(2)=sqrt(AlphaS_mZ*4*Pi) 
gSM(3)= 0.486E-03_dp ! mf_l_mz(1) 
gSM(4)= 0.10272 !mf_l_mz(2) 
gSM(5)= 1.74624 !mf_l_mz(3) 
gSM(6)= 1.27E-03_dp ! mf_u_mz(1) 
gSM(7)= 0.619  ! mf_u_mz(2) 
gSM(8)= mf_u_mz_running ! m_top 
gSM(9)= 2.9E-03_dp !mf_d_mz(1) 
gSM(10)= 0.055 !mf_d_mz(2) 
gSM(11)= 2.85 ! mf_d_mz(3) 
 

! To get the running sin(w2) 
SinW2 = 0.22290_dp
gSM(12) = 5._dp/3._dp*Alpha_MZ/(1-sinW2)
gSM(13) = Alpha_MZ/Sinw2
gSM(14) = AlphaS_mZ

  nUp =2._dp 
  nDown =3._dp 
  nLep =3._dp 
 

If (scale_out.gt.sqrt(mz2)) Then

 ! From M_Z to Min(M_top,scale_out) 
 If (scale_out.gt.mf_u(3)) Then 
  tz=Log(sqrt(mz2)/mf_u(3)) 
  dt=tz/50._dp 
 Else 
  tz=Log(sqrt(mz2)/scale_out) 
  dt=tz/50._dp 
 End if 

  Call odeint(gSM,14,tz,0._dp,deltaM,dt,0._dp,rge11,kont)


 ! From M_top to M_SUSY if M_top < M_SUSY 
 If (scale_out.gt.mf_u(3)) Then 
  tz=Log(mf_u(3)/scale_out) 
  dt=tz/50._dp 
  nUp =3._dp 
  Call odeint(gSM,14,tz,0._dp,deltaM,dt,0._dp,rge11,kont)
 End if 
Else

 ! From M_Z down to scale_out
  tz=Log(scale_out/sqrt(mz2)) 
  dt=tz/50._dp 
  Call odeint(gSM,14,0._dp,tz,deltaM,dt,0._dp,rge11_SMa,kont)

End if

! Calculating Couplings 

 sinW2=1._dp-mW2/mZ2 
 vev=Sqrt(mZ2*(1._dp-sinW2)*SinW2/(gSM(1)**2/4._dp))
 vd=vev/Sqrt(1._dp+tb**2)
 vu=tb*vd
 
Yd(1,1) =gSM(9)*sqrt(2._dp)/vd 
Yd(2,2) =gSM(10)*sqrt(2._dp)/vd 
Yd(3,3) =gSM(11)*sqrt(2._dp)/vd 
Ye(1,1) =gSM(3)*sqrt(2._dp)/vd 
Ye(2,2)=gSM(4)*sqrt(2._dp)/vd 
Ye(3,3)=gSM(5)*sqrt(2._dp)/vd 
Yu(1,1)=gSM(6)*sqrt(2._dp)/vu 
Yu(2,2)=gSM(7)*sqrt(2._dp)/vu 
Yu(3,3)=gSM(8)*sqrt(2._dp)/vu 


g3 =gSM(2) 
g3running=gSM(2) 

g1 = sqrt(gSM(12)*4._dp*Pi*3._dp/5._dp)
g2 = sqrt(gSM(13)*4._dp*Pi)
! g3 = sqrt(gSM(3)*4._dp*Pi)

sinw2 = g1**2/(g1**2 + g2**2)

!g2=gSM(1)/sqrt(sinW2) 
!g1 = g2*Sqrt(sinW2/(1._dp-sinW2)) 

If (GenerationMixing) Then 

If (YukawaScheme.Eq.1) Then ! CKM into Yu
 If (TransposedYukawa) Then ! check, if superpotential is Yu Hu u q  or Yu Hu q u
   Yu= Matmul(Transpose(CKM),Transpose(Yu))
 Else 
   Yu=Transpose(Matmul(Transpose(CKM),Transpose(Yu)))
 End if 

Else ! CKM into Yd 
 
 If (TransposedYukawa) Then ! 
  Yd= Matmul(Conjg(CKM),Transpose(Yd))
 Else 
  Yd=Transpose(Matmul(Conjg(CKM),Transpose(Yd)))
 End if 

End if ! Yukawa scheme
End If ! Generatoin mixing


End Subroutine RunSM


Subroutine RunSMohdm(scale_out,deltaM,g1,g2,g3,Yu, Yd, Ye, v) 
Implicit None
Real(dp), Intent(in) :: scale_out,deltaM
Real(dp), Intent(out) :: g1, g2, g3, v
Complex(dp), Intent(out) :: Yu(3,3), Yd(3,3), Ye(3,3)
Real(dp) :: dt, gSM(14), gSM2(2), gSM3(3), mtopMS,  sinw2, vev, tz, alphaStop 
Integer :: kont

Yd = 0._dp
Ye = 0._dp
Yu = 0._dp

If (.not.RunningTopMZ) Then

! Calculating alpha_S(m_top)
gSM2(1)=sqrt(Alpha_mZ*4*Pi) 
gSM2(2)=sqrt(AlphaS_mZ*4*Pi) 


tz=Log(sqrt(mz2)/mf_u(3)) 
dt=tz/50._dp 
Call odeint(gSM2,2,tz,0._dp,deltaM,dt,0._dp,RGEAlphaS,kont)



alphaStop = gSM2(2)**2/4._dp/Pi



! m_top^pole to m_top^MS(m_top) 

mtopMS = mf_u(3)*(1._dp - 4._dp/3._dp*alphaStop/Pi)


! Running m_top^MS(m_top) to M_Z 

gSM3(1)=gSM2(1) 
gSM3(2)=gSM2(2)
gSM3(3)=mtopMS

tz=Log(sqrt(mz2)/mf_u(3)) 
dt=tz/50._dp 
Call odeint(gSM3,3,0._dp,tz,deltaM,dt,0._dp,RGEtop,kont)


mf_u_mz_running = gSM3(3)


RunningTopMZ = .True.

End if

! Starting values at MZ

gSM(1)=sqrt(Alpha_mZ*4*Pi) 
gSM(2)=sqrt(AlphaS_mZ*4*Pi) 
gSM(3)= 0.486E-03_dp ! mf_l_mz(1) 
gSM(4)= 0.10272 !mf_l_mz(2) 
gSM(5)= 1.74624 !mf_l_mz(3) 
gSM(6)= 1.27E-03_dp ! mf_u_mz(1) 
gSM(7)= 0.619  ! mf_u_mz(2) 
gSM(8)= mf_u_mz_running ! m_top 
gSM(9)= 2.9E-03_dp !mf_d_mz(1) 
gSM(10)= 0.055 !mf_d_mz(2) 
gSM(11)= 2.85 ! mf_d_mz(3) 
 

! To get the running sin(w2) 
SinW2 = 0.22290_dp
gSM(12) = 5._dp/3._dp*Alpha_MZ/(1-sinW2)
gSM(13) = Alpha_MZ/Sinw2
gSM(14) = AlphaS_mZ

  nUp =2._dp 
  nDown =3._dp 
  nLep =3._dp 
 

If (scale_out.gt.sqrt(mz2)) Then

 ! From M_Z to Min(M_top,scale_out) 
 If (scale_out.gt.mf_u(3)) Then 
  tz=Log(sqrt(mz2)/mf_u(3)) 
  dt=tz/50._dp 
 Else 
  tz=Log(sqrt(mz2)/scale_out) 
  dt=tz/50._dp 
 End if 

  Call odeint(gSM,14,tz,0._dp,deltaM,dt,0._dp,rge11,kont)


 ! From M_top to M_SUSY if M_top < M_SUSY 
 If (scale_out.gt.mf_u(3)) Then 
  tz=Log(mf_u(3)/scale_out) 
  dt=tz/50._dp 
  nUp =3._dp 
  Call odeint(gSM,14,tz,0._dp,deltaM,dt,0._dp,rge11,kont)
 End if 
Else

 ! From M_Z down to scale_out
  If (abs(scale_out - sqrt(mz2)).gt.1.0E-3_dp) Then 
   tz=Log(scale_out/sqrt(mz2)) 
   dt=tz/50._dp 
   Call odeint(gSM,14,0._dp,tz,deltaM,dt,0._dp,rge11_SMa,kont)
  End if
End if

! Calculating Couplings 

 sinW2=1._dp-mW2/mZ2 
 vev=Sqrt(mZ2*(1._dp-sinW2)*SinW2/(gSM(1)**2/4._dp))
 v = vev
 
Yd(1,1) =gSM(9)*sqrt(2._dp)/v 
Yd(2,2) =gSM(10)*sqrt(2._dp)/v 
Yd(3,3) =gSM(11)*sqrt(2._dp)/v 
Ye(1,1) =gSM(3)*sqrt(2._dp)/v 
Ye(2,2)=gSM(4)*sqrt(2._dp)/v 
Ye(3,3)=gSM(5)*sqrt(2._dp)/v 
Yu(1,1)=gSM(6)*sqrt(2._dp)/v 
Yu(2,2)=gSM(7)*sqrt(2._dp)/v 
Yu(3,3)=gSM(8)*sqrt(2._dp)/v 


g3 =gSM(2) 
g3running=gSM(2) 

g1 = sqrt(gSM(12)*4._dp*Pi*3._dp/5._dp)
g2 = sqrt(gSM(13)*4._dp*Pi)
! g3 = sqrt(gSM(3)*4._dp*Pi)

sinw2 = g1**2/(g1**2 + g2**2)

g2=gSM(1)/sqrt(sinW2) 
g1 = g2*Sqrt(sinW2/(1._dp-sinW2)) 

If (GenerationMixing) Then 

If (YukawaScheme.Eq.1) Then ! CKM into Yu
 If (TransposedYukawa) Then ! check, if superpotential is Yu Hu u q  or Yu Hu q u
   Yu= Matmul(Transpose(CKM),Transpose(Yu))
 Else 
   Yu=Transpose(Matmul(Transpose(CKM),Transpose(Yu)))
 End if 

Else ! CKM into Yd 
 
 If (TransposedYukawa) Then ! 
  Yd= Matmul(Conjg(CKM),Transpose(Yd))
 Else 
  Yd=Transpose(Matmul(Conjg(CKM),Transpose(Yd)))
 End if 

End if ! Yukawa scheme
End If ! Generation mixing



End Subroutine RunSMohdm

Subroutine RunSMgauge(scale_out,deltaM,g1,g2,g3) 
Implicit None
Real(dp), Intent(in) :: scale_out,deltaM
Real(dp), Intent(out) :: g1, g2, g3
Complex(dp) :: Yu(3,3), Yd(3,3), Ye(3,3)
Real(dp) :: v, dt, gSM(14), gSM2(2), gSM3(3), mtopMS,  sinw2, vev, tz, alphaStop 
Integer :: kont

Yd = 0._dp
Ye = 0._dp
Yu = 0._dp

RunningTopMZ = .false.

If (.not.RunningTopMZ) Then

! Calculating alpha_S(m_top)
gSM2(1)=sqrt(Alpha_mZ*4*Pi) 
gSM2(2)=sqrt(AlphaS_mZ*4*Pi) 


tz=Log(sqrt(mz2)/mf_u(3)) 
dt=tz/50._dp 
Call odeint(gSM2,2,tz,0._dp,deltaM,dt,0._dp,RGEAlphaS,kont)



alphaStop = gSM2(2)**2/4._dp/Pi



! m_top^pole to m_top^MS(m_top) 

mtopMS = mf_u(3)*(1._dp - 4._dp/3._dp*alphaStop/Pi)


! Running m_top^MS(m_top) to M_Z 

gSM3(1)=gSM2(1) 
gSM3(2)=gSM2(2)
gSM3(3)=mtopMS

tz=Log(sqrt(mz2)/mf_u(3)) 
dt=tz/50._dp 
Call odeint(gSM3,3,0._dp,tz,deltaM,dt,0._dp,RGEtop,kont)


mf_u_mz_running = gSM3(3)


RunningTopMZ = .True.

End if

! Starting values at MZ

gSM(1)=sqrt(Alpha_mZ*4*Pi) 
gSM(2)=sqrt(AlphaS_mZ*4*Pi) 
gSM(3)= 0.486E-03_dp ! mf_l_mz(1) 
gSM(4)= 0.10272 !mf_l_mz(2) 
gSM(5)= 1.74624 !mf_l_mz(3) 
gSM(6)= 1.27E-03_dp ! mf_u_mz(1) 
gSM(7)= 0.619  ! mf_u_mz(2) 
gSM(8)= mf_u_mz_running ! m_top 
gSM(9)= 2.9E-03_dp !mf_d_mz(1) 
gSM(10)= 0.055 !mf_d_mz(2) 
gSM(11)= 2.85 ! mf_d_mz(3) 
 

! To get the running sin(w2) 
SinW2 = 0.22290_dp
gSM(12) = 5._dp/3._dp*Alpha_MZ/(1-sinW2)
gSM(13) = Alpha_MZ/Sinw2
gSM(14) = AlphaS_mZ

  nUp =2._dp 
  nDown =3._dp 
  nLep =3._dp 
 

If (scale_out.gt.sqrt(mz2)) Then

 ! From M_Z to Min(M_top,scale_out) 
 If (scale_out.gt.mf_u(3)) Then 
  tz=Log(sqrt(mz2)/mf_u(3)) 
  dt=tz/50._dp 
 Else 
  tz=Log(sqrt(mz2)/scale_out) 
  dt=tz/50._dp 
 End if 

  Call odeint(gSM,14,tz,0._dp,deltaM,dt,0._dp,rge11,kont)


 ! From M_top to M_SUSY if M_top < M_SUSY 
 If (scale_out.gt.mf_u(3)) Then 
  tz=Log(mf_u(3)/scale_out) 
  dt=tz/50._dp 
  nUp =3._dp 
  Call odeint(gSM,14,tz,0._dp,deltaM,dt,0._dp,rge11,kont)
 End if 
Else

 ! From M_Z down to scale_out
  tz=Log(scale_out/sqrt(mz2)) 
  dt=tz/50._dp 
  Call odeint(gSM,14,0._dp,tz,deltaM,dt,0._dp,rge11_SMa,kont)

End if

! Calculating Couplings 

 sinW2=1._dp-mW2/mZ2 
 vev=Sqrt(mZ2*(1._dp-sinW2)*SinW2/(gSM(1)**2/4._dp))
 v = vev
 
Yd(1,1) =gSM(9)*sqrt(2._dp)/v 
Yd(2,2) =gSM(10)*sqrt(2._dp)/v 
Yd(3,3) =gSM(11)*sqrt(2._dp)/v 
Ye(1,1) =gSM(3)*sqrt(2._dp)/v 
Ye(2,2)=gSM(4)*sqrt(2._dp)/v 
Ye(3,3)=gSM(5)*sqrt(2._dp)/v 
Yu(1,1)=gSM(6)*sqrt(2._dp)/v 
Yu(2,2)=gSM(7)*sqrt(2._dp)/v 
Yu(3,3)=gSM(8)*sqrt(2._dp)/v 


g3 =gSM(2) 
g3running=gSM(2) 

g1 = sqrt(gSM(12)*4._dp*Pi*3._dp/5._dp)
g2 = sqrt(gSM(13)*4._dp*Pi)
! g3 = sqrt(gSM(3)*4._dp*Pi)

sinw2 = g1**2/(g1**2 + g2**2)

g2=gSM(1)/sqrt(sinW2) 
g1 = g2*Sqrt(sinW2/(1._dp-sinW2)) 

If (GenerationMixing) Then 
If (TransposedYukawa) Then ! check, if superpotential is Yu Hu u q  or Yu Hu q u
 Yu= Matmul(Transpose(CKM),Transpose(Yu))
Else 
 Yu=Transpose(Matmul(Transpose(CKM),Transpose(Yu)))
End if 
End If


End Subroutine RunSMgauge
End Module CouplingsForDecays_C2HDMS
