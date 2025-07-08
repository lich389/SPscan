! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.1 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 13:04 on 9.6.2025   
! ----------------------------------------------------------------------  
 
 
Module LoopMasses_2HDMSCPV 
 
Use Control 
Use Settings 
Use Couplings_2HDMSCPV 
Use LoopFunctions 
Use AddLoopFunctions 
Use Mathematics 
Use MathematicsQP 
Use Model_Data_2HDMSCPV 
Use StandardModel 
Use Tadpoles_2HDMSCPV 
 Use Pole2L_2HDMSCPV 
 Use TreeLevelMasses_2HDMSCPV 
 
Real(dp), Private :: Mhh_1L(6), Mhh2_1L(6)  
Complex(dp), Private :: ZH_1L(6,6)  
Real(dp), Private :: MHm_1L(2), MHm2_1L(2)  
Complex(dp), Private :: ZP_1L(2,2)  
Real(dp), Private :: MFd_1L(3), MFd2_1L(3)  
Complex(dp), Private :: ZDL_1L(3,3),ZDR_1L(3,3)
Real(dp), Private :: MFu_1L(3), MFu2_1L(3)  
Complex(dp), Private :: ZUL_1L(3,3),ZUR_1L(3,3)
Real(dp), Private :: MFe_1L(3), MFe2_1L(3)  
Complex(dp), Private :: ZEL_1L(3,3),ZER_1L(3,3)
Real(dp), Private :: MVZ_1L, MVZ2_1L  
Real(dp), Private :: MVWm_1L, MVWm2_1L  
Real(dp) :: pi2A0  
Real(dp) :: ti_ep2L(6)  
Real(dp) :: pi_ep2L(6,6)
Real(dp) :: Pi2S_EffPot(6,6)
Real(dp) :: PiP2S_EffPot(99,99)
Contains 
 
Subroutine OneLoopMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,           & 
& MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,kont)

Implicit None 
Real(dp),Intent(inout) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp),Intent(inout) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Real(dp),Intent(inout) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp),Intent(inout) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp),Intent(inout) :: vd,vu,vS

Complex(dp) :: cplcFdFdUhhL(3,3,6),cplcFdFdUhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),            & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFeFeUhhL(3,3,6),& 
& cplcFeFeUhhR(3,3,6),cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),& 
& cplcFuFdcUHmL(3,3,2),cplcFuFdcUHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),       & 
& cplcFuFuUhhL(3,3,6),cplcFuFuUhhR(3,3,6),cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),             & 
& cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplcFvFecUHmL(3,3,2),& 
& cplcFvFecUHmR(3,3,2),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),cplcFvFvVZL(3,3),           & 
& cplcFvFvVZR(3,3),cplcgAgWmcVWm,cplcgGgGVG,cplcgWmgWmUhh(6),cplcgWmgWmVP,               & 
& cplcgWmgWmVZ,cplcgWmgZUHm(2),cplcgWpCgAcVWm,cplcgWpCgWpCUhh(6),cplcgWpCgWpCVP,         & 
& cplcgWpCgWpCVZ,cplcgWpCgZcUHm(2),cplcgWpCgZcVWm,cplcgZgWmcUHm(2),cplcgZgWmcVWm,        & 
& cplcgZgWpCUHm(2),cplcgZgZUhh(6),cplcHmVPVWm(2),cplcHmVWmVZ(2),cplcUFdFdhhL(3,3,6),     & 
& cplcUFdFdhhR(3,3,6),cplcUFdFdVGL(3,3),cplcUFdFdVGR(3,3),cplcUFdFdVPL(3,3),             & 
& cplcUFdFdVPR(3,3),cplcUFdFdVZL(3,3),cplcUFdFdVZR(3,3),cplcUFdFuHmL(3,3,2),             & 
& cplcUFdFuHmR(3,3,2),cplcUFdFuVWmL(3,3),cplcUFdFuVWmR(3,3),cplcUFeFehhL(3,3,6),         & 
& cplcUFeFehhR(3,3,6),cplcUFeFeVPL(3,3),cplcUFeFeVPR(3,3),cplcUFeFeVZL(3,3),             & 
& cplcUFeFeVZR(3,3),cplcUFeFvHmL(3,3,2),cplcUFeFvHmR(3,3,2),cplcUFeFvVWmL(3,3),          & 
& cplcUFeFvVWmR(3,3),cplcUFuFdcHmL(3,3,2),cplcUFuFdcHmR(3,3,2),cplcUFuFdcVWmL(3,3),      & 
& cplcUFuFdcVWmR(3,3),cplcUFuFuhhL(3,3,6),cplcUFuFuhhR(3,3,6),cplcUFuFuVGL(3,3),         & 
& cplcUFuFuVGR(3,3),cplcUFuFuVPL(3,3),cplcUFuFuVPR(3,3),cplcUFuFuVZL(3,3),               & 
& cplcUFuFuVZR(3,3),cplcUFvFecHmL(3,3,2),cplcUFvFecHmR(3,3,2),cplcUFvFecVWmL(3,3),       & 
& cplcUFvFecVWmR(3,3),cplcUFvFvVZL(3,3),cplcUFvFvVZR(3,3),cplcUHmVPVWm(2),               & 
& cplcUHmVWmVZ(2),cplcVWmcVWmVWmVWm1,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,              & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcVWmVPVWm,cplcVWmVPVWmVZ1,          & 
& cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmVWmVZ,cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,          & 
& cplcVWmVWmVZVZ3,cplhhcUHmVWm(6,2),cplhhcVWmVWm(6),cplhhhhcVWmVWm(6,6),cplhhhhUHmcUHm(6,6,2,2),& 
& cplhhhhVZ(6,6),cplhhhhVZVZ(6,6),cplhhHmcUHm(6,2,2),cplhhHmcVWm(6,2),cplhhVZVZ(6),      & 
& cplHmcHmcVWmVWm(2,2),cplHmcHmVP(2,2),cplHmcHmVPVP(2,2),cplHmcHmVPVZ(2,2),              & 
& cplHmcHmVZ(2,2),cplHmcHmVZVZ(2,2),cplHmcUHmVP(2,2),cplHmcUHmVZ(2,2),cplHmcVWmVP(2),    & 
& cplHmcVWmVZ(2),cplUhhcVWmVWm(6),cplUhhhhhh(6,6,6),cplUhhhhVZ(6,6),cplUhhHmcHm(6,2,2),  & 
& cplUhhHmcVWm(6,2),cplUhhUhhcVWmVWm(6,6),cplUhhUhhhhhh(6,6,6,6),cplUhhUhhHmcHm(6,6,2,2),& 
& cplUhhUhhVZVZ(6,6),cplUhhVZVZ(6),cplUHmcUHmcVWmVWm(2,2),cplUHmcUHmVPVP(2,2),           & 
& cplUHmcUHmVZVZ(2,2),cplUHmHmcUHmcHm(2,2,2,2),cplVGVGVG,cplVGVGVGVG1,cplVGVGVGVG2,      & 
& cplVGVGVGVG3

Integer , Intent(inout):: kont 
Integer :: i1,i2,i3,i4,j1, j2, j3, j4, il, i_count, ierr 
Integer :: i2L, iFin 
Logical :: Convergence2L 
Real(dp) :: Pi2S_EffPot_save(6,6), diff(6,6)
Complex(dp) :: Tad1Loop(6), dmz2  
Real(dp) :: comp(5), tanbQ, vev2, vSM
Iname = Iname + 1 
NameOfUnit(Iname) = 'OneLoopMasses' 
 
kont = 0 
 
! Set Gauge fixing parameters 
RXi= RXiNew 
RXiG = RXi 
RXiP = RXi 
RXiWm = RXi 
RXiZ = RXi 

 ! Running angles 
TanBetaQ = vu/vd

 
Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,GenerationMixing,kont)

M112Tree  = M112
M122Tree  = M122
M222Tree  = M222
mS2Tree  = mS2
mSp2Tree  = mSp2

 
 If (CalculateOneLoopMasses) Then 
 
If ((DecoupleAtRenScale).and.(Abs(1._dp-RXiNew).lt.0.01_dp)) Then 
vSM=vSM_Q 
vd=vSM/Sqrt(1 + TanBetaQ**2) 
vu=(TanBetaQ*vSM)/Sqrt(1 + TanBetaQ**2) 
Else 
Call CouplingsForVectorBosons(g1,g2,TW,ZP,vd,vu,ZH,ZDL,ZUL,ZEL,cplcFdFdVPL,           & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm1,       & 
& cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,       & 
& cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,           & 
& cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,      & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcFuFdcVWmL,cplcFuFdcVWmR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm, & 
& cplhhHmcVWm,cplhhcVWmVWm,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmcVWmVWmVWm1,            & 
& cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcHmVWmVZ,cplcHmVPVWm,cplHmcHmVPVZ,            & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3)

Call Pi1LoopVZ(mZ2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,             & 
& MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,    & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,               & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,          & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,dmZ2)

vev2=4._dp*Real(mZ2+dmz2,dp)/(g1**2+g2**2) -0 
vSM=sqrt(vev2) 
vd=vSM/Sqrt(1 + TanBetaQ**2) 
vu=(TanBetaQ*vSM)/Sqrt(1 + TanBetaQ**2) 
End if 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,GenerationMixing,kont)

Call CouplingsForLoopMasses(Yd,epsD,eta,ZDL,ZDR,Ye,epsE,ZEL,ZER,Yu,epsU,              & 
& ZUL,ZUR,g2,vd,vu,g1,TW,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,            & 
& mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,zeta,            & 
& vS,ZH,ZP,g3,cplcFdFdUhhL,cplcFdFdUhhR,cplcFeFeUhhL,cplcFeFeUhhR,cplcFuFuUhhL,          & 
& cplcFuFuUhhR,cplcgWmgWmUhh,cplcgWpCgWpCUhh,cplcgZgZUhh,cplUhhhhhh,cplUhhhhVZ,          & 
& cplUhhHmcHm,cplUhhHmcVWm,cplUhhcVWmVWm,cplUhhVZVZ,cplUhhUhhhhhh,cplUhhUhhHmcHm,        & 
& cplUhhUhhcVWmVWm,cplUhhUhhVZVZ,cplcFuFdcUHmL,cplcFuFdcUHmR,cplcFvFecUHmL,              & 
& cplcFvFecUHmR,cplcgZgWmcUHm,cplcgWmgZUHm,cplcgWpCgZcUHm,cplcgZgWpCUHm,cplhhHmcUHm,     & 
& cplhhcUHmVWm,cplHmcUHmVP,cplHmcUHmVZ,cplcUHmVPVWm,cplcUHmVWmVZ,cplhhhhUHmcUHm,         & 
& cplUHmHmcUHmcHm,cplUHmcUHmVPVP,cplUHmcUHmcVWmVWm,cplUHmcUHmVZVZ,cplcUFdFdhhL,          & 
& cplcUFdFdhhR,cplcUFdFdVGL,cplcUFdFdVGR,cplcUFdFdVPL,cplcUFdFdVPR,cplcUFdFdVZL,         & 
& cplcUFdFdVZR,cplcUFdFuHmL,cplcUFdFuHmR,cplcUFdFuVWmL,cplcUFdFuVWmR,cplcUFuFdcHmL,      & 
& cplcUFuFdcHmR,cplcUFuFdcVWmL,cplcUFuFdcVWmR,cplcUFuFuhhL,cplcUFuFuhhR,cplcUFuFuVGL,    & 
& cplcUFuFuVGR,cplcUFuFuVPL,cplcUFuFuVPR,cplcUFuFuVZL,cplcUFuFuVZR,cplcUFeFehhL,         & 
& cplcUFeFehhR,cplcUFeFeVPL,cplcUFeFeVPR,cplcUFeFeVZL,cplcUFeFeVZR,cplcUFeFvHmL,         & 
& cplcUFeFvHmR,cplcUFeFvVWmL,cplcUFeFvVWmR,cplcUFvFecHmL,cplcUFvFecHmR,cplcUFvFecVWmL,   & 
& cplcUFvFecVWmR,cplcUFvFvVZL,cplcUFvFvVZR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,          & 
& cplcFuFuVGR,cplcgGgGVG,cplVGVGVG,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,               & 
& cplcFdFdVPL,cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,               & 
& cplcgWmgWmVP,cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,          & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,               & 
& cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,   & 
& cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,              & 
& cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm,cplcgAgWmcVWm,  & 
& cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,  & 
& cplcVWmcVWmVWmVWm1,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcHmVWmVZ,cplcHmVPVWm,      & 
& cplHmcHmVPVZ,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3)

Call OneLoopTadpoleshh(vd,vu,vS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,              & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,cplcFdFdUhhL,cplcFdFdUhhR,cplcFeFeUhhL,cplcFeFeUhhR,          & 
& cplcFuFuUhhL,cplcFuFuUhhR,cplcgWmgWmUhh,cplcgWpCgWpCUhh,cplcgZgZUhh,cplUhhhhhh,        & 
& cplUhhHmcHm,cplUhhcVWmVWm,cplUhhVZVZ,Tad1Loop(1:6))

M112Tree  = M112
M122Tree  = M122
M222Tree  = M222
mS2Tree  = mS2
mSp2Tree  = mSp2
If (CalculateTwoLoopHiggsMasses) Then 
    If(GaugelessLimit) Then 
  vdFix = 0._dp 
  vuFix = 0._dp 
  vSFix = 0._dp 
   g1_saveEP =g1
   g1 = 0._dp 
   g2_saveEP =g2
   g2 = 0._dp 
     Else 
  vdFix = vd 
  vuFix = vu 
  vSFix = vS 
     End if 

SELECT CASE (TwoLoopMethod) 
CASE ( 1 , 2 ) 


 CASE ( 3 ) ! Diagrammatic method 
  ! Make sure that there are no exactly degenerated masses! 
   Yu_saveEP =Yu
   where (aint(Abs(Yu)).eq.Yu) Yu=Yu*(1 + 1*1.0E-12_dp)
   epsU_saveEP =epsU
   where (aint(Abs(epsU)).eq.epsU) epsU=epsU*(1 + 2*1.0E-12_dp)
   Yd_saveEP =Yd
   where (aint(Abs(Yd)).eq.Yd) Yd=Yd*(1 + 3*1.0E-12_dp)
   Ye_saveEP =Ye
   where (aint(Abs(Ye)).eq.Ye) Ye=Ye*(1 + 4*1.0E-12_dp)
   epsD_saveEP =epsD
   where (aint(Abs(epsD)).eq.epsD) epsD=epsD*(1 + 5*1.0E-12_dp)
   epsE_saveEP =epsE
   where (aint(Abs(epsE)).eq.epsE) epsE=epsE*(1 + 6*1.0E-12_dp)

If (NewGBC) Then 
Call CalculatePi2S(125._dp**2,vd,vu,vS,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,             & 
& Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,            & 
& Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,kont,            & 
& ti_ep2L,Pi2S_EffPot,PiP2S_EffPot)

Else 
Call CalculatePi2S(0._dp,vd,vu,vS,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,             & 
& Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,              & 
& Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,kont,               & 
& ti_ep2L,Pi2S_EffPot,PiP2S_EffPot)

End if 
   Yu =Yu_saveEP 
   epsU =epsU_saveEP 
   Yd =Yd_saveEP 
   Ye =Ye_saveEP 
   epsD =epsD_saveEP 
   epsE =epsE_saveEP 


 CASE ( 8 , 9 ) ! Hard-coded routines 
  
 END SELECT
 
   If(GaugelessLimit) Then 
   g1 =g1_saveEP 
   g2 =g2_saveEP 
   End if 

Else ! Two loop turned off 
Pi2S_EffPot = 0._dp 

Pi2A0 = 0._dp 

ti_ep2L = 0._dp 

End if 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,Tad1Loop)

M1121L = M112
M1221L = M122
M2221L = M222
mS21L = mS2
mSp21L = mSp2
Tad1Loop(1:6) = Tad1Loop(1:6) - ti_ep2L 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,Tad1Loop)

M1122L = M112
M1222L = M122
M2222L = M222
mS22L = mS2
mSp22L = mSp2
Call OneLoophh(g1,g2,M1222L,Lam6,Lam5,Lam7,M1122L,M2222L,Lam1,Lam4,Lam3,              & 
& Lam2,mS22L,Lam1p,Lam2p,L3pp,mSp22L,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,           & 
& Lam6p,Lam7p,Lam5p,L2pp,Lam3p,eta,zeta,vd,vu,vS,TW,MFd,MFd2,MFe,MFe2,MFu,               & 
& MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,cplcFdFdUhhL,cplcFdFdUhhR,cplcFeFeUhhL,     & 
& cplcFeFeUhhR,cplcFuFuUhhL,cplcFuFuUhhR,cplcgWmgWmUhh,cplcgWpCgWpCUhh,cplcgZgZUhh,      & 
& cplUhhhhhh,cplUhhhhVZ,cplUhhHmcHm,cplUhhHmcVWm,cplUhhcVWmVWm,cplUhhVZVZ,               & 
& cplUhhUhhhhhh,cplUhhUhhHmcHm,cplUhhUhhcVWmVWm,cplUhhUhhVZVZ,0.1_dp*delta_mass,         & 
& Mhh_1L,Mhh2_1L,ZH_1L,kont)

Call OneLoopHm(g2,M1221L,Lam6,Lam5,Lam7,M1121L,M2221L,Lam1,Lam4,Lam3,Lam2,            & 
& Lam1p,Lam2p,mu11,mu12,mu21,mu22,Lam4p,Lam6p,Lam7p,Lam5p,Lam3p,eta,zeta,vd,             & 
& vu,vS,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,MVWm2,MVZ,MVZ2,cplcFuFdcUHmL,  & 
& cplcFuFdcUHmR,cplcFvFecUHmL,cplcFvFecUHmR,cplcgZgWmcUHm,cplcgWmgZUHm,cplcgWpCgZcUHm,   & 
& cplcgZgWpCUHm,cplhhHmcUHm,cplhhcUHmVWm,cplHmcUHmVP,cplHmcUHmVZ,cplcUHmVPVWm,           & 
& cplcUHmVWmVZ,cplhhhhUHmcUHm,cplUHmHmcUHmcHm,cplUHmcUHmVPVP,cplUHmcUHmcVWmVWm,          & 
& cplUHmcUHmVZVZ,0.1_dp*delta_mass,MHm_1L,MHm2_1L,ZP_1L,kont)

Call OneLoopFd(Yd,epsD,eta,vd,vu,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,MFu,             & 
& MFu2,MVWm,MVWm2,cplcUFdFdhhL,cplcUFdFdhhR,cplcUFdFdVGL,cplcUFdFdVGR,cplcUFdFdVPL,      & 
& cplcUFdFdVPR,cplcUFdFdVZL,cplcUFdFdVZR,cplcUFdFuHmL,cplcUFdFuHmR,cplcUFdFuVWmL,        & 
& cplcUFdFuVWmR,0.1_dp*delta_mass,MFd_1L,MFd2_1L,ZDL_1L,ZDR_1L,kont)

Call OneLoopFu(Yu,epsU,eta,vd,vu,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,Mhh2,               & 
& MFu,MFu2,MVZ,MVZ2,cplcUFuFdcHmL,cplcUFuFdcHmR,cplcUFuFdcVWmL,cplcUFuFdcVWmR,           & 
& cplcUFuFuhhL,cplcUFuFuhhR,cplcUFuFuVGL,cplcUFuFuVGR,cplcUFuFuVPL,cplcUFuFuVPR,         & 
& cplcUFuFuVZL,cplcUFuFuVZR,0.1_dp*delta_mass,MFu_1L,MFu2_1L,ZUL_1L,ZUR_1L,kont)

Call OneLoopFe(Ye,epsE,eta,vd,vu,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,MVWm,            & 
& MVWm2,cplcUFeFehhL,cplcUFeFehhR,cplcUFeFeVPL,cplcUFeFeVPR,cplcUFeFeVZL,cplcUFeFeVZR,   & 
& cplcUFeFvHmL,cplcUFeFvHmR,cplcUFeFvVWmL,cplcUFeFvVWmR,0.1_dp*delta_mass,               & 
& MFe_1L,MFe2_1L,ZEL_1L,ZER_1L,kont)

Mhh = Mhh_1L 
Mhh2 = Mhh2_1L 
ZH = ZH_1L 
MHm = MHm_1L 
MHm2 = MHm2_1L 
ZP = ZP_1L 
End If 
 
Call SortGoldstones(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,          & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,kont)

! Set pole masses 
MVWm = mW 
MVWm2 = mW2 
MVZ = mZ 
MVZ2 = mZ2 
MFe(1:3) = mf_l 
MFe2(1:3) = mf_l**2 
MFu(1:3) = mf_u 
MFu2(1:3) = mf_u**2 
MFd(1:3) = mf_d 
MFd2(1:3) = mf_d**2 
! Shift Everything to t'Hooft Gauge
RXi=  1._dp 
RXiG = 1._dp 
RXiP = 1._dp 
RXiWm = 1._dp 
RXiZ = 1._dp 
Mhh(1)=MVZ
Mhh2(1)=MVZ2
MHm(1)=MVWm
MHm2(1)=MVWm2
mf_u2 = mf_u**2 
mf_d2 = mf_d**2 
mf_l2 = mf_l**2 
 

 If (WriteTreeLevelTadpoleSolutions) Then 
! Saving tree-level parameters for output
M112  = M112Tree 
M122  = M122Tree 
M222  = M222Tree 
mS2  = mS2Tree 
mSp2  = mSp2Tree 
End if 


Iname = Iname -1 
End Subroutine OneLoopMasses 
 
Subroutine OneLoopTadpoleshh(vd,vu,vS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,            & 
& MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,cplcFdFdUhhL,cplcFdFdUhhR,cplcFeFeUhhL,cplcFeFeUhhR,      & 
& cplcFuFuUhhL,cplcFuFuUhhR,cplcgWmgWmUhh,cplcgWpCgWpCUhh,cplcgZgZUhh,cplUhhhhhh,        & 
& cplUhhHmcHm,cplUhhcVWmVWm,cplUhhVZVZ,tadpoles)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcFdFdUhhL(3,3,6),cplcFdFdUhhR(3,3,6),cplcFeFeUhhL(3,3,6),cplcFeFeUhhR(3,3,6),      & 
& cplcFuFuUhhL(3,3,6),cplcFuFuUhhR(3,3,6),cplcgWmgWmUhh(6),cplcgWpCgWpCUhh(6),           & 
& cplcgZgZUhh(6),cplUhhhhhh(6,6,6),cplUhhHmcHm(6,2,2),cplUhhcVWmVWm(6),cplUhhVZVZ(6)

Real(dp), Intent(in) :: vd,vu,vS

Integer :: i1,i2, gO1, gO2 
Complex(dp) :: coupL, coupR, coup, temp, res, A0m, sumI(6)  
Real(dp) :: m1 
Complex(dp), Intent(out) :: tadpoles(6) 
Iname = Iname + 1 
NameOfUnit(Iname) = 'OneLoopTadpoleshh'
 
tadpoles = 0._dp 
 
!------------------------ 
! bar[Fd] 
!------------------------ 
Do i1 = 1, 3
 A0m = 2._dp*MFd(i1)*SA_A0(MFd2(i1)) 
  Do gO1 = 1, 6
   coupL = cplcFdFdUhhL(i1,i1,gO1)
   coupR = cplcFdFdUhhR(i1,i1,gO1)
   sumI(gO1) = (coupL+coupR)*A0m 
  End Do 
 
tadpoles =  tadpoles + 3._dp*sumI 
End Do 
 !------------------------ 
! bar[Fe] 
!------------------------ 
Do i1 = 1, 3
 A0m = 2._dp*MFe(i1)*SA_A0(MFe2(i1)) 
  Do gO1 = 1, 6
   coupL = cplcFeFeUhhL(i1,i1,gO1)
   coupR = cplcFeFeUhhR(i1,i1,gO1)
   sumI(gO1) = (coupL+coupR)*A0m 
  End Do 
 
tadpoles =  tadpoles + 1._dp*sumI 
End Do 
 !------------------------ 
! bar[Fu] 
!------------------------ 
Do i1 = 1, 3
 A0m = 2._dp*MFu(i1)*SA_A0(MFu2(i1)) 
  Do gO1 = 1, 6
   coupL = cplcFuFuUhhL(i1,i1,gO1)
   coupR = cplcFuFuUhhR(i1,i1,gO1)
   sumI(gO1) = (coupL+coupR)*A0m 
  End Do 
 
tadpoles =  tadpoles + 3._dp*sumI 
End Do 
 !------------------------ 
! bar[gWm] 
!------------------------ 
A0m = 1._dp*SA_A0(MVWm2*RXi) 
  Do gO1 = 1, 6
    coup = cplcgWmgWmUhh(gO1)
    sumI(gO1) = coup*A0m 
  End Do 
 
tadpoles =  tadpoles + 1._dp*sumI 
!------------------------ 
! bar[gWmC] 
!------------------------ 
A0m = 1._dp*SA_A0(MVWm2*RXi) 
  Do gO1 = 1, 6
    coup = cplcgWpCgWpCUhh(gO1)
    sumI(gO1) = coup*A0m 
  End Do 
 
tadpoles =  tadpoles + 1._dp*sumI 
!------------------------ 
! bar[gZ] 
!------------------------ 
A0m = 1._dp*SA_A0(MVZ2*RXi) 
  Do gO1 = 1, 6
    coup = cplcgZgZUhh(gO1)
    sumI(gO1) = coup*A0m 
  End Do 
 
tadpoles =  tadpoles + 1._dp*sumI 
!------------------------ 
! hh 
!------------------------ 
Do i1 = 1, 6
 A0m = SA_A0(Mhh2(i1)) 
  Do gO1 = 1, 6
   coup = cplUhhhhhh(gO1,i1,i1)
   sumI(gO1) = -coup*A0m 
  End Do 
 
tadpoles =  tadpoles + 1._dp/2._dp*sumI 
End Do 
 !------------------------ 
! conj[Hm] 
!------------------------ 
Do i1 = 1, 2
 A0m = SA_A0(MHm2(i1)) 
  Do gO1 = 1, 6
   coup = cplUhhHmcHm(gO1,i1,i1)
   sumI(gO1) = -coup*A0m 
  End Do 
 
tadpoles =  tadpoles + 1._dp*sumI 
End Do 
 !------------------------ 
! conj[VWm] 
!------------------------ 
A0m = 3._dp*SA_A0(MVWm2)+RXi*SA_A0(MVWm2*RXi) - 2._dp*MVWm2*rMS 
  Do gO1 = 1, 6
    coup = cplUhhcVWmVWm(gO1)
    sumI(gO1) = coup*A0m 
  End Do 
 
tadpoles =  tadpoles + 1._dp*sumI 
!------------------------ 
! VZ 
!------------------------ 
A0m = 3._dp*SA_A0(MVZ2)+RXi*SA_A0(MVZ2*RXi) - 2._dp*MVZ2*rMS 
  Do gO1 = 1, 6
    coup = cplUhhVZVZ(gO1)
    sumI(gO1) = coup*A0m 
  End Do 
 
tadpoles =  tadpoles + 1._dp/2._dp*sumI 



tadpoles = oo16pi2*tadpoles 
Iname = Iname - 1 
End Subroutine OneLoopTadpoleshh 
 
Subroutine OneLoophh(g1,g2,M122,Lam6,Lam5,Lam7,M112,M222,Lam1,Lam4,Lam3,              & 
& Lam2,mS2,Lam1p,Lam2p,L3pp,mSp2,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,               & 
& Lam6p,Lam7p,Lam5p,L2pp,Lam3p,eta,zeta,vd,vu,vS,TW,MFd,MFd2,MFe,MFe2,MFu,               & 
& MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,cplcFdFdUhhL,cplcFdFdUhhR,cplcFeFeUhhL,     & 
& cplcFeFeUhhR,cplcFuFuUhhL,cplcFuFuUhhR,cplcgWmgWmUhh,cplcgWpCgWpCUhh,cplcgZgZUhh,      & 
& cplUhhhhhh,cplUhhhhVZ,cplUhhHmcHm,cplUhhHmcVWm,cplUhhcVWmVWm,cplUhhVZVZ,               & 
& cplUhhUhhhhhh,cplUhhUhhHmcHm,cplUhhUhhcVWmVWm,cplUhhUhhVZVZ,delta,mass,mass2,RS,kont)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MVZ,MVZ2,MHm(2),          & 
& MHm2(2),MVWm,MVWm2

Real(dp), Intent(in) :: g1,g2,M112,M222,Lam1,Lam4,Lam3,Lam2,mS2,Lam1p,Lam2p,L3pp,eta,zeta,vd,vu,vS,TW

Complex(dp), Intent(in) :: M122,Lam6,Lam5,Lam7,mSp2,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,              & 
& Lam7p,Lam5p,L2pp,Lam3p

Complex(dp), Intent(in) :: cplcFdFdUhhL(3,3,6),cplcFdFdUhhR(3,3,6),cplcFeFeUhhL(3,3,6),cplcFeFeUhhR(3,3,6),      & 
& cplcFuFuUhhL(3,3,6),cplcFuFuUhhR(3,3,6),cplcgWmgWmUhh(6),cplcgWpCgWpCUhh(6),           & 
& cplcgZgZUhh(6),cplUhhhhhh(6,6,6),cplUhhhhVZ(6,6),cplUhhHmcHm(6,2,2),cplUhhHmcVWm(6,2), & 
& cplUhhcVWmVWm(6),cplUhhVZVZ(6),cplUhhUhhhhhh(6,6,6,6),cplUhhUhhHmcHm(6,6,2,2),         & 
& cplUhhUhhcVWmVWm(6,6),cplUhhUhhVZVZ(6,6)

Complex(dp) :: mat2a(6,6), mat2(6,6),  PiSf(6,6,6)
Integer , Intent(inout):: kont 
Integer :: i1,i2,i3,i4,j1,j2,j3,j4,il,i_count, ierr 
Real(dp), Intent(in) :: delta 
Real(dp) :: mi2(6), test_m2(6),p2, test(6) 
Real(dp), Intent(out) :: mass(6), mass2(6) 
Complex(dp), Intent(out) ::  RS(6,6) 
Iname = Iname + 1 
NameOfUnit(Iname) = 'OneLoophh'
 
mat2a(1,1) = 0._dp 
mat2a(1,1) = mat2a(1,1)+M112
mat2a(1,1) = mat2a(1,1)+(3*Lam1*vd**2)/2._dp
mat2a(1,1) = mat2a(1,1)+(3*Lam6*vd*vu)/(2._dp*exp((0._dp,1._dp)*eta))
mat2a(1,1) = mat2a(1,1)+(Lam3*vu**2)/2._dp
mat2a(1,1) = mat2a(1,1)+(Lam4*vu**2)/2._dp
mat2a(1,1) = mat2a(1,1)+(Lam5*vu**2)/(4._dp*exp(2*(0.,1._dp)*eta))
mat2a(1,1) = mat2a(1,1)+exp((0._dp,1._dp)*zeta)*mu11*vS
mat2a(1,1) = mat2a(1,1)+Lam1p*vS**2
mat2a(1,1) = mat2a(1,1)+exp(2*(0.,1._dp)*zeta)*Lam4p*vS**2
mat2a(1,1) = mat2a(1,1)+(vS**2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta)
mat2a(1,1) = mat2a(1,1)+(exp(2*(0.,1._dp)*eta)*vu**2*Conjg(Lam5))/4._dp
mat2a(1,1) = mat2a(1,1)+(3*exp((0._dp,1._dp)*eta)*vd*vu*Conjg(Lam6))/2._dp
mat2a(1,1) = mat2a(1,1)+(vS*Conjg(mu11))/exp((0._dp,1._dp)*zeta)
mat2a(1,2) = 0._dp 
mat2a(1,2) = mat2a(1,2)-1._dp/2._dp*M122/exp((0._dp,1._dp)*eta)
mat2a(1,2) = mat2a(1,2)+(3*Lam6*vd**2)/(4._dp*exp((0._dp,1._dp)*eta))
mat2a(1,2) = mat2a(1,2)+Lam3*vd*vu
mat2a(1,2) = mat2a(1,2)+Lam4*vd*vu
mat2a(1,2) = mat2a(1,2)+(Lam5*vd*vu)/(2._dp*exp(2*(0.,1._dp)*eta))
mat2a(1,2) = mat2a(1,2)+(3*Lam7*vu**2)/(4._dp*exp((0._dp,1._dp)*eta))
mat2a(1,2) = mat2a(1,2)+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vS)/2._dp
mat2a(1,2) = mat2a(1,2)+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vS)/2._dp
mat2a(1,2) = mat2a(1,2)+(Lam3p*vS**2)/(2._dp*exp((0._dp,1._dp)*eta))
mat2a(1,2) = mat2a(1,2)+(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS**2)/2._dp
mat2a(1,2) = mat2a(1,2)+(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS**2)/2._dp
mat2a(1,2) = mat2a(1,2)+(exp((0._dp,1._dp)*eta)*vS**2*Conjg(Lam3p))/2._dp
mat2a(1,2) = mat2a(1,2)+(exp(2*(0.,1._dp)*eta)*vd*vu*Conjg(Lam5))/2._dp
mat2a(1,2) = mat2a(1,2)+(3*exp((0._dp,1._dp)*eta)*vd**2*Conjg(Lam6))/4._dp
mat2a(1,2) = mat2a(1,2)+(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS**2*Conjg(Lam6p))/2._dp
mat2a(1,2) = mat2a(1,2)+(3*exp((0._dp,1._dp)*eta)*vu**2*Conjg(Lam7))/4._dp
mat2a(1,2) = mat2a(1,2)+(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS**2*Conjg(Lam7p))/2._dp
mat2a(1,2) = mat2a(1,2)-1._dp/2._dp*(exp((0._dp,1._dp)*eta)*Conjg(M122))
mat2a(1,2) = mat2a(1,2)+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vS*Conjg(mu12))/2._dp
mat2a(1,2) = mat2a(1,2)+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vS*Conjg(mu21))/2._dp
mat2a(1,3) = 0._dp 
mat2a(1,3) = mat2a(1,3)+exp((0._dp,1._dp)*zeta)*mu11*vd
mat2a(1,3) = mat2a(1,3)+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vu)/2._dp
mat2a(1,3) = mat2a(1,3)+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vu)/2._dp
mat2a(1,3) = mat2a(1,3)+2*Lam1p*vd*vS
mat2a(1,3) = mat2a(1,3)+2*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*vS
mat2a(1,3) = mat2a(1,3)+(Lam3p*vu*vS)/exp((0._dp,1._dp)*eta)
mat2a(1,3) = mat2a(1,3)+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*vS
mat2a(1,3) = mat2a(1,3)+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*vS
mat2a(1,3) = mat2a(1,3)+exp((0._dp,1._dp)*eta)*vu*vS*Conjg(Lam3p)
mat2a(1,3) = mat2a(1,3)+(2*vd*vS*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta)
mat2a(1,3) = mat2a(1,3)+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*vS*Conjg(Lam6p)
mat2a(1,3) = mat2a(1,3)+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*vS*Conjg(Lam7p)
mat2a(1,3) = mat2a(1,3)+(vd*Conjg(mu11))/exp((0._dp,1._dp)*zeta)
mat2a(1,3) = mat2a(1,3)+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vu*Conjg(mu12))/2._dp
mat2a(1,3) = mat2a(1,3)+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vu*Conjg(mu21))/2._dp
mat2a(1,4) = 0._dp 
mat2a(1,4) = mat2a(1,4)+(-1._dp/2._dp*(0.,1._dp)*Lam6*vd*vu)/exp((0._dp,1._dp)*eta)
mat2a(1,4) = mat2a(1,4)+(-1._dp/4._dp*(0.,1._dp)*Lam5*vu**2)/exp(2*(0.,1._dp)*eta)
mat2a(1,4) = mat2a(1,4)+1._dp/4._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu**2*Conjg(Lam5)
mat2a(1,4) = mat2a(1,4)+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*vu*Conjg(Lam6)
mat2a(1,5) = 0._dp 
mat2a(1,5) = mat2a(1,5)+(-1._dp/2._dp*(0.,1._dp)*M122)/exp((0._dp,1._dp)*eta)
mat2a(1,5) = mat2a(1,5)+(3._dp/4._dp*(0.,1._dp)*Lam6*vd**2)/exp((0._dp,1._dp)*eta)
mat2a(1,5) = mat2a(1,5)+(1._dp/2._dp*(0.,1._dp)*Lam5*vd*vu)/exp(2*(0.,1._dp)*eta)
mat2a(1,5) = mat2a(1,5)+(1._dp/4._dp*(0.,1._dp)*Lam7*vu**2)/exp((0._dp,1._dp)*eta)
mat2a(1,5) = mat2a(1,5)+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vS
mat2a(1,5) = mat2a(1,5)-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vS
mat2a(1,5) = mat2a(1,5)+(1._dp/2._dp*(0.,1._dp)*Lam3p*vS**2)/exp((0._dp,1._dp)*eta)
mat2a(1,5) = mat2a(1,5)+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS**2
mat2a(1,5) = mat2a(1,5)-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS**2
mat2a(1,5) = mat2a(1,5)-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vS**2*Conjg(Lam3p)
mat2a(1,5) = mat2a(1,5)-1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*vu*Conjg(Lam5)
mat2a(1,5) = mat2a(1,5)-3._dp/4._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd**2*Conjg(Lam6)
mat2a(1,5) = mat2a(1,5)-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS**2*Conjg(Lam6p)
mat2a(1,5) = mat2a(1,5)-1._dp/4._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu**2*Conjg(Lam7)
mat2a(1,5) = mat2a(1,5)+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS**2*Conjg(Lam7p)
mat2a(1,5) = mat2a(1,5)+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*Conjg(M122)
mat2a(1,5) = mat2a(1,5)-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vS*Conjg(mu12)
mat2a(1,5) = mat2a(1,5)+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vS*Conjg(mu21)
mat2a(1,6) = 0._dp 
mat2a(1,6) = mat2a(1,6)+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu11*vd
mat2a(1,6) = mat2a(1,6)+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vu
mat2a(1,6) = mat2a(1,6)+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vu
mat2a(1,6) = mat2a(1,6)+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*vS
mat2a(1,6) = mat2a(1,6)+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*vS
mat2a(1,6) = mat2a(1,6)+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*vS
mat2a(1,6) = mat2a(1,6)+(-2*(0.,1._dp)*vd*vS*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta)
mat2a(1,6) = mat2a(1,6)-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*vS*Conjg(Lam6p)
mat2a(1,6) = mat2a(1,6)-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*vS*Conjg(Lam7p)
mat2a(1,6) = mat2a(1,6)+(-1*(0.,1._dp)*vd*Conjg(mu11))/exp((0._dp,1._dp)*zeta)
mat2a(1,6) = mat2a(1,6)-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vu*Conjg(mu12)
mat2a(1,6) = mat2a(1,6)-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vu*Conjg(mu21)
mat2a(2,2) = 0._dp 
mat2a(2,2) = mat2a(2,2)+M222
mat2a(2,2) = mat2a(2,2)+(Lam3*vd**2)/2._dp
mat2a(2,2) = mat2a(2,2)+(Lam4*vd**2)/2._dp
mat2a(2,2) = mat2a(2,2)+(Lam5*vd**2)/(4._dp*exp(2*(0.,1._dp)*eta))
mat2a(2,2) = mat2a(2,2)+(3*Lam7*vd*vu)/(2._dp*exp((0._dp,1._dp)*eta))
mat2a(2,2) = mat2a(2,2)+(3*Lam2*vu**2)/2._dp
mat2a(2,2) = mat2a(2,2)+exp((0._dp,1._dp)*zeta)*mu22*vS
mat2a(2,2) = mat2a(2,2)+Lam2p*vS**2
mat2a(2,2) = mat2a(2,2)+exp(2*(0.,1._dp)*zeta)*Lam5p*vS**2
mat2a(2,2) = mat2a(2,2)+(exp(2*(0.,1._dp)*eta)*vd**2*Conjg(Lam5))/4._dp
mat2a(2,2) = mat2a(2,2)+(vS**2*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta)
mat2a(2,2) = mat2a(2,2)+(3*exp((0._dp,1._dp)*eta)*vd*vu*Conjg(Lam7))/2._dp
mat2a(2,2) = mat2a(2,2)+(vS*Conjg(mu22))/exp((0._dp,1._dp)*zeta)
mat2a(2,3) = 0._dp 
mat2a(2,3) = mat2a(2,3)+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vd)/2._dp
mat2a(2,3) = mat2a(2,3)+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vd)/2._dp
mat2a(2,3) = mat2a(2,3)+exp((0._dp,1._dp)*zeta)*mu22*vu
mat2a(2,3) = mat2a(2,3)+(Lam3p*vd*vS)/exp((0._dp,1._dp)*eta)
mat2a(2,3) = mat2a(2,3)+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*vS
mat2a(2,3) = mat2a(2,3)+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*vS
mat2a(2,3) = mat2a(2,3)+2*Lam2p*vu*vS
mat2a(2,3) = mat2a(2,3)+2*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*vS
mat2a(2,3) = mat2a(2,3)+exp((0._dp,1._dp)*eta)*vd*vS*Conjg(Lam3p)
mat2a(2,3) = mat2a(2,3)+(2*vu*vS*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta)
mat2a(2,3) = mat2a(2,3)+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vS*Conjg(Lam6p)
mat2a(2,3) = mat2a(2,3)+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vS*Conjg(Lam7p)
mat2a(2,3) = mat2a(2,3)+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vd*Conjg(mu12))/2._dp
mat2a(2,3) = mat2a(2,3)+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vd*Conjg(mu21))/2._dp
mat2a(2,3) = mat2a(2,3)+(vu*Conjg(mu22))/exp((0._dp,1._dp)*zeta)
mat2a(2,4) = 0._dp 
mat2a(2,4) = mat2a(2,4)+(1._dp/2._dp*(0.,1._dp)*M122)/exp((0._dp,1._dp)*eta)
mat2a(2,4) = mat2a(2,4)+(-1._dp/4._dp*(0.,1._dp)*Lam6*vd**2)/exp((0._dp,1._dp)*eta)
mat2a(2,4) = mat2a(2,4)+(-1._dp/2._dp*(0.,1._dp)*Lam5*vd*vu)/exp(2*(0.,1._dp)*eta)
mat2a(2,4) = mat2a(2,4)+(-3._dp/4._dp*(0.,1._dp)*Lam7*vu**2)/exp((0._dp,1._dp)*eta)
mat2a(2,4) = mat2a(2,4)-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vS
mat2a(2,4) = mat2a(2,4)+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vS
mat2a(2,4) = mat2a(2,4)+(-1._dp/2._dp*(0.,1._dp)*Lam3p*vS**2)/exp((0._dp,1._dp)*eta)
mat2a(2,4) = mat2a(2,4)-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS**2
mat2a(2,4) = mat2a(2,4)+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS**2
mat2a(2,4) = mat2a(2,4)+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vS**2*Conjg(Lam3p)
mat2a(2,4) = mat2a(2,4)+1._dp/2._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd*vu*Conjg(Lam5)
mat2a(2,4) = mat2a(2,4)+1._dp/4._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd**2*Conjg(Lam6)
mat2a(2,4) = mat2a(2,4)+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS**2*Conjg(Lam6p)
mat2a(2,4) = mat2a(2,4)+3._dp/4._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vu**2*Conjg(Lam7)
mat2a(2,4) = mat2a(2,4)-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS**2*Conjg(Lam7p)
mat2a(2,4) = mat2a(2,4)-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*Conjg(M122)
mat2a(2,4) = mat2a(2,4)+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vS*Conjg(mu12)
mat2a(2,4) = mat2a(2,4)-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vS*Conjg(mu21)
mat2a(2,5) = 0._dp 
mat2a(2,5) = mat2a(2,5)+(1._dp/4._dp*(0.,1._dp)*Lam5*vd**2)/exp(2*(0.,1._dp)*eta)
mat2a(2,5) = mat2a(2,5)+(1._dp/2._dp*(0.,1._dp)*Lam7*vd*vu)/exp((0._dp,1._dp)*eta)
mat2a(2,5) = mat2a(2,5)-1._dp/4._dp*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vd**2*Conjg(Lam5)
mat2a(2,5) = mat2a(2,5)-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*vu*Conjg(Lam7)
mat2a(2,6) = 0._dp 
mat2a(2,6) = mat2a(2,6)+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vd
mat2a(2,6) = mat2a(2,6)+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vd
mat2a(2,6) = mat2a(2,6)+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mu22*vu
mat2a(2,6) = mat2a(2,6)+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*vS
mat2a(2,6) = mat2a(2,6)+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*vS
mat2a(2,6) = mat2a(2,6)+2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vu*vS
mat2a(2,6) = mat2a(2,6)+(-2*(0.,1._dp)*vu*vS*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta)
mat2a(2,6) = mat2a(2,6)-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vS*Conjg(Lam6p)
mat2a(2,6) = mat2a(2,6)-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vS*Conjg(Lam7p)
mat2a(2,6) = mat2a(2,6)-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vd*Conjg(mu12)
mat2a(2,6) = mat2a(2,6)-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vd*Conjg(mu21)
mat2a(2,6) = mat2a(2,6)+(-1*(0.,1._dp)*vu*Conjg(mu22))/exp((0._dp,1._dp)*zeta)
mat2a(3,3) = 0._dp 
mat2a(3,3) = mat2a(3,3)+2._dp*(mS2)
mat2a(3,3) = mat2a(3,3)+exp(2*(0.,1._dp)*zeta)*mSp2
mat2a(3,3) = mat2a(3,3)+Lam1p*vd**2
mat2a(3,3) = mat2a(3,3)+exp(2*(0.,1._dp)*zeta)*Lam4p*vd**2
mat2a(3,3) = mat2a(3,3)+(Lam3p*vd*vu)/exp((0._dp,1._dp)*eta)
mat2a(3,3) = mat2a(3,3)+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*vu
mat2a(3,3) = mat2a(3,3)+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*vu
mat2a(3,3) = mat2a(3,3)+Lam2p*vu**2
mat2a(3,3) = mat2a(3,3)+exp(2*(0.,1._dp)*zeta)*Lam5p*vu**2
mat2a(3,3) = mat2a(3,3)+exp(3*(0.,1._dp)*zeta)*mus1*vS
mat2a(3,3) = mat2a(3,3)+3*exp((0._dp,1._dp)*zeta)*mus2*vS
mat2a(3,3) = mat2a(3,3)+(exp(4*(0.,1._dp)*zeta)*L1pp*vS**2)/2._dp
mat2a(3,3) = mat2a(3,3)+2*exp(2*(0.,1._dp)*zeta)*L2pp*vS**2
mat2a(3,3) = mat2a(3,3)+3*L3pp*vS**2
mat2a(3,3) = mat2a(3,3)+(vS**2*Conjg(L1pp))/(2._dp*exp(4*(0.,1._dp)*zeta))
mat2a(3,3) = mat2a(3,3)+(2*vS**2*Conjg(L2pp))/exp(2*(0.,1._dp)*zeta)
mat2a(3,3) = mat2a(3,3)+exp((0._dp,1._dp)*eta)*vd*vu*Conjg(Lam3p)
mat2a(3,3) = mat2a(3,3)+(vd**2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta)
mat2a(3,3) = mat2a(3,3)+(vu**2*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta)
mat2a(3,3) = mat2a(3,3)+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vu*Conjg(Lam6p)
mat2a(3,3) = mat2a(3,3)+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vu*Conjg(Lam7p)
mat2a(3,3) = mat2a(3,3)+Conjg(mSp2)/exp(2*(0.,1._dp)*zeta)
mat2a(3,3) = mat2a(3,3)+(vS*Conjg(mus1))/exp(3*(0.,1._dp)*zeta)
mat2a(3,3) = mat2a(3,3)+(3*vS*Conjg(mus2))/exp((0._dp,1._dp)*zeta)
mat2a(3,4) = 0._dp 
mat2a(3,4) = mat2a(3,4)-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vu
mat2a(3,4) = mat2a(3,4)+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vu
mat2a(3,4) = mat2a(3,4)+(-1*(0.,1._dp)*Lam3p*vu*vS)/exp((0._dp,1._dp)*eta)
mat2a(3,4) = mat2a(3,4)-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*vS
mat2a(3,4) = mat2a(3,4)+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*vS
mat2a(3,4) = mat2a(3,4)+(0._dp,1._dp)*exp((0._dp,1._dp)*eta)*vu*vS*Conjg(Lam3p)
mat2a(3,4) = mat2a(3,4)+(0._dp,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*vS*Conjg(Lam6p)
mat2a(3,4) = mat2a(3,4)-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*vS*Conjg(Lam7p)
mat2a(3,4) = mat2a(3,4)+1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vu*Conjg(mu12)
mat2a(3,4) = mat2a(3,4)-1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vu*Conjg(mu21)
mat2a(3,5) = 0._dp 
mat2a(3,5) = mat2a(3,5)+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vd
mat2a(3,5) = mat2a(3,5)-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vd
mat2a(3,5) = mat2a(3,5)+((0._dp,1._dp)*Lam3p*vd*vS)/exp((0._dp,1._dp)*eta)
mat2a(3,5) = mat2a(3,5)+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*vS
mat2a(3,5) = mat2a(3,5)-1*(0.,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*vS
mat2a(3,5) = mat2a(3,5)-1*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*vS*Conjg(Lam3p)
mat2a(3,5) = mat2a(3,5)-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vS*Conjg(Lam6p)
mat2a(3,5) = mat2a(3,5)+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vS*Conjg(Lam7p)
mat2a(3,5) = mat2a(3,5)-1._dp/2._dp*(0.,1._dp)*exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vd*Conjg(mu12)
mat2a(3,5) = mat2a(3,5)+1._dp/2._dp*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vd*Conjg(mu21)
mat2a(3,6) = 0._dp 
mat2a(3,6) = mat2a(3,6)+(0._dp,1._dp)*exp(2*(0.,1._dp)*zeta)*mSp2
mat2a(3,6) = mat2a(3,6)+(0._dp,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p*vd**2
mat2a(3,6) = mat2a(3,6)+(0._dp,1._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*vu
mat2a(3,6) = mat2a(3,6)+(0._dp,1._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*vu
mat2a(3,6) = mat2a(3,6)+(0._dp,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p*vu**2
mat2a(3,6) = mat2a(3,6)+(0._dp,1._dp)*exp(3*(0.,1._dp)*zeta)*mus1*vS
mat2a(3,6) = mat2a(3,6)+(0._dp,1._dp)*exp((0._dp,1._dp)*zeta)*mus2*vS
mat2a(3,6) = mat2a(3,6)+1._dp/2._dp*(0.,1._dp)*exp(4*(0.,1._dp)*zeta)*L1pp*vS**2
mat2a(3,6) = mat2a(3,6)+(0._dp,1._dp)*exp(2*(0.,1._dp)*zeta)*L2pp*vS**2
mat2a(3,6) = mat2a(3,6)+(-1._dp/2._dp*(0.,1._dp)*vS**2*Conjg(L1pp))/exp(4*(0.,1._dp)*zeta)
mat2a(3,6) = mat2a(3,6)+(-1*(0.,1._dp)*vS**2*Conjg(L2pp))/exp(2*(0.,1._dp)*zeta)
mat2a(3,6) = mat2a(3,6)+(-1*(0.,1._dp)*vd**2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta)
mat2a(3,6) = mat2a(3,6)+(-1*(0.,1._dp)*vu**2*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta)
mat2a(3,6) = mat2a(3,6)-1*(0.,1._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vu*Conjg(Lam6p)
mat2a(3,6) = mat2a(3,6)-1*(0.,1._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vu*Conjg(Lam7p)
mat2a(3,6) = mat2a(3,6)+(-1*(0.,1._dp)*Conjg(mSp2))/exp(2*(0.,1._dp)*zeta)
mat2a(3,6) = mat2a(3,6)+(-1*(0.,1._dp)*vS*Conjg(mus1))/exp(3*(0.,1._dp)*zeta)
mat2a(3,6) = mat2a(3,6)+(-1*(0.,1._dp)*vS*Conjg(mus2))/exp((0._dp,1._dp)*zeta)
mat2a(4,4) = 0._dp 
mat2a(4,4) = mat2a(4,4)+M112
mat2a(4,4) = mat2a(4,4)+(Lam1*vd**2)/2._dp
mat2a(4,4) = mat2a(4,4)+(Lam6*vd*vu)/(2._dp*exp((0._dp,1._dp)*eta))
mat2a(4,4) = mat2a(4,4)+(Lam3*vu**2)/2._dp
mat2a(4,4) = mat2a(4,4)+(Lam4*vu**2)/2._dp
mat2a(4,4) = mat2a(4,4)-1._dp/4._dp*(Lam5*vu**2)/exp(2*(0.,1._dp)*eta)
mat2a(4,4) = mat2a(4,4)+exp((0._dp,1._dp)*zeta)*mu11*vS
mat2a(4,4) = mat2a(4,4)+Lam1p*vS**2
mat2a(4,4) = mat2a(4,4)+exp(2*(0.,1._dp)*zeta)*Lam4p*vS**2
mat2a(4,4) = mat2a(4,4)+(vS**2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta)
mat2a(4,4) = mat2a(4,4)-1._dp/4._dp*(exp(2*(0.,1._dp)*eta)*vu**2*Conjg(Lam5))
mat2a(4,4) = mat2a(4,4)+(exp((0._dp,1._dp)*eta)*vd*vu*Conjg(Lam6))/2._dp
mat2a(4,4) = mat2a(4,4)+(vS*Conjg(mu11))/exp((0._dp,1._dp)*zeta)
mat2a(4,4) = mat2a(4,4)+(g2**2*vd**2*Cos(TW)**2*RXiZ)/4._dp
mat2a(4,4) = mat2a(4,4)+(g1*g2*vd**2*Cos(TW)*RXiZ*Sin(TW))/2._dp
mat2a(4,4) = mat2a(4,4)+(g1**2*vd**2*RXiZ*Sin(TW)**2)/4._dp
mat2a(4,5) = 0._dp 
mat2a(4,5) = mat2a(4,5)-1._dp/2._dp*M122/exp((0._dp,1._dp)*eta)
mat2a(4,5) = mat2a(4,5)+(Lam6*vd**2)/(4._dp*exp((0._dp,1._dp)*eta))
mat2a(4,5) = mat2a(4,5)+(Lam5*vd*vu)/(2._dp*exp(2*(0.,1._dp)*eta))
mat2a(4,5) = mat2a(4,5)+(Lam7*vu**2)/(4._dp*exp((0._dp,1._dp)*eta))
mat2a(4,5) = mat2a(4,5)+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vS)/2._dp
mat2a(4,5) = mat2a(4,5)+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vS)/2._dp
mat2a(4,5) = mat2a(4,5)+(Lam3p*vS**2)/(2._dp*exp((0._dp,1._dp)*eta))
mat2a(4,5) = mat2a(4,5)+(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vS**2)/2._dp
mat2a(4,5) = mat2a(4,5)+(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS**2)/2._dp
mat2a(4,5) = mat2a(4,5)+(exp((0._dp,1._dp)*eta)*vS**2*Conjg(Lam3p))/2._dp
mat2a(4,5) = mat2a(4,5)+(exp(2*(0.,1._dp)*eta)*vd*vu*Conjg(Lam5))/2._dp
mat2a(4,5) = mat2a(4,5)+(exp((0._dp,1._dp)*eta)*vd**2*Conjg(Lam6))/4._dp
mat2a(4,5) = mat2a(4,5)+(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS**2*Conjg(Lam6p))/2._dp
mat2a(4,5) = mat2a(4,5)+(exp((0._dp,1._dp)*eta)*vu**2*Conjg(Lam7))/4._dp
mat2a(4,5) = mat2a(4,5)+(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS**2*Conjg(Lam7p))/2._dp
mat2a(4,5) = mat2a(4,5)-1._dp/2._dp*(exp((0._dp,1._dp)*eta)*Conjg(M122))
mat2a(4,5) = mat2a(4,5)+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vS*Conjg(mu12))/2._dp
mat2a(4,5) = mat2a(4,5)+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vS*Conjg(mu21))/2._dp
mat2a(4,5) = mat2a(4,5)+(g2**2*vd*vu*Cos(TW)**2*RXiZ)/4._dp
mat2a(4,5) = mat2a(4,5)+(g1*g2*vd*vu*Cos(TW)*RXiZ*Sin(TW))/2._dp
mat2a(4,5) = mat2a(4,5)+(g1**2*vd*vu*RXiZ*Sin(TW)**2)/4._dp
mat2a(4,6) = 0._dp 
mat2a(4,6) = mat2a(4,6)+(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vu)/2._dp
mat2a(4,6) = mat2a(4,6)-1._dp/2._dp*(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vu)
mat2a(4,6) = mat2a(4,6)+exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vu*vS
mat2a(4,6) = mat2a(4,6)-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vu*vS)
mat2a(4,6) = mat2a(4,6)+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*vS*Conjg(Lam6p)
mat2a(4,6) = mat2a(4,6)-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vu*vS*Conjg(Lam7p))
mat2a(4,6) = mat2a(4,6)+(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vu*Conjg(mu12))/2._dp
mat2a(4,6) = mat2a(4,6)-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vu*Conjg(mu21))
mat2a(5,5) = 0._dp 
mat2a(5,5) = mat2a(5,5)+M222
mat2a(5,5) = mat2a(5,5)+(Lam3*vd**2)/2._dp
mat2a(5,5) = mat2a(5,5)+(Lam4*vd**2)/2._dp
mat2a(5,5) = mat2a(5,5)-1._dp/4._dp*(Lam5*vd**2)/exp(2*(0.,1._dp)*eta)
mat2a(5,5) = mat2a(5,5)+(Lam7*vd*vu)/(2._dp*exp((0._dp,1._dp)*eta))
mat2a(5,5) = mat2a(5,5)+(Lam2*vu**2)/2._dp
mat2a(5,5) = mat2a(5,5)+exp((0._dp,1._dp)*zeta)*mu22*vS
mat2a(5,5) = mat2a(5,5)+Lam2p*vS**2
mat2a(5,5) = mat2a(5,5)+exp(2*(0.,1._dp)*zeta)*Lam5p*vS**2
mat2a(5,5) = mat2a(5,5)-1._dp/4._dp*(exp(2*(0.,1._dp)*eta)*vd**2*Conjg(Lam5))
mat2a(5,5) = mat2a(5,5)+(vS**2*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta)
mat2a(5,5) = mat2a(5,5)+(exp((0._dp,1._dp)*eta)*vd*vu*Conjg(Lam7))/2._dp
mat2a(5,5) = mat2a(5,5)+(vS*Conjg(mu22))/exp((0._dp,1._dp)*zeta)
mat2a(5,5) = mat2a(5,5)+(g2**2*vu**2*Cos(TW)**2*RXiZ)/4._dp
mat2a(5,5) = mat2a(5,5)+(g1*g2*vu**2*Cos(TW)*RXiZ*Sin(TW))/2._dp
mat2a(5,5) = mat2a(5,5)+(g1**2*vu**2*RXiZ*Sin(TW)**2)/4._dp
mat2a(5,6) = 0._dp 
mat2a(5,6) = mat2a(5,6)-1._dp/2._dp*(exp(-1*(0.,1._dp)*eta + (0._dp,1._dp)*zeta)*mu12*vd)
mat2a(5,6) = mat2a(5,6)+(exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vd)/2._dp
mat2a(5,6) = mat2a(5,6)-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*vS)
mat2a(5,6) = mat2a(5,6)+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*vS
mat2a(5,6) = mat2a(5,6)-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vS*Conjg(Lam6p))
mat2a(5,6) = mat2a(5,6)+exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vS*Conjg(Lam7p)
mat2a(5,6) = mat2a(5,6)-1._dp/2._dp*(exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vd*Conjg(mu12))
mat2a(5,6) = mat2a(5,6)+(exp(-1*(0.,1._dp)*eta - (0._dp,1._dp)*zeta)*vd*Conjg(mu21))/2._dp
mat2a(6,6) = 0._dp 
mat2a(6,6) = mat2a(6,6)+2._dp*(mS2)
mat2a(6,6) = mat2a(6,6)-(exp(2*(0.,1._dp)*zeta)*mSp2)
mat2a(6,6) = mat2a(6,6)+Lam1p*vd**2
mat2a(6,6) = mat2a(6,6)-(exp(2*(0.,1._dp)*zeta)*Lam4p*vd**2)
mat2a(6,6) = mat2a(6,6)+(Lam3p*vd*vu)/exp((0._dp,1._dp)*eta)
mat2a(6,6) = mat2a(6,6)-(exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p*vd*vu)
mat2a(6,6) = mat2a(6,6)-(exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vd*vu)
mat2a(6,6) = mat2a(6,6)+Lam2p*vu**2
mat2a(6,6) = mat2a(6,6)-(exp(2*(0.,1._dp)*zeta)*Lam5p*vu**2)
mat2a(6,6) = mat2a(6,6)-(exp(3*(0.,1._dp)*zeta)*mus1*vS)
mat2a(6,6) = mat2a(6,6)+exp((0._dp,1._dp)*zeta)*mus2*vS
mat2a(6,6) = mat2a(6,6)-1._dp/2._dp*(exp(4*(0.,1._dp)*zeta)*L1pp*vS**2)
mat2a(6,6) = mat2a(6,6)+L3pp*vS**2
mat2a(6,6) = mat2a(6,6)-1._dp/2._dp*(vS**2*Conjg(L1pp))/exp(4*(0.,1._dp)*zeta)
mat2a(6,6) = mat2a(6,6)+exp((0._dp,1._dp)*eta)*vd*vu*Conjg(Lam3p)
mat2a(6,6) = mat2a(6,6)-((vd**2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta))
mat2a(6,6) = mat2a(6,6)-((vu**2*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta))
mat2a(6,6) = mat2a(6,6)-(exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vu*Conjg(Lam6p))
mat2a(6,6) = mat2a(6,6)-(exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*vd*vu*Conjg(Lam7p))
mat2a(6,6) = mat2a(6,6)-(Conjg(mSp2)/exp(2*(0.,1._dp)*zeta))
mat2a(6,6) = mat2a(6,6)-((vS*Conjg(mus1))/exp(3*(0.,1._dp)*zeta))
mat2a(6,6) = mat2a(6,6)+(vS*Conjg(mus2))/exp((0._dp,1._dp)*zeta)

 
 Do i1=2,6
  Do i2 = 1, i1-1 
  mat2a(i1,i2) = (mat2a(i2,i1)) 
  End do 
End do 

 
! Rotation matrix for p2=0 
PiSf(1,:,:) = ZeroC 
p2 = 0._dp 
If (i1.eq.1) p2 = 0._dp 
Call Pi1Loophh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,              & 
& MVWm,MVWm2,cplcFdFdUhhL,cplcFdFdUhhR,cplcFeFeUhhL,cplcFeFeUhhR,cplcFuFuUhhL,           & 
& cplcFuFuUhhR,cplcgWmgWmUhh,cplcgWpCgWpCUhh,cplcgZgZUhh,cplUhhhhhh,cplUhhhhVZ,          & 
& cplUhhHmcHm,cplUhhHmcVWm,cplUhhcVWmVWm,cplUhhVZVZ,cplUhhUhhhhhh,cplUhhUhhHmcHm,        & 
& cplUhhUhhcVWmVWm,cplUhhUhhVZVZ,kont,PiSf(1,:,:))

PiSf(1,:,:) = PiSf(1,:,:) - Pi2S_EffPot 
mat2 = mat2a - Real(PiSf(1,:,:),dp) 
Call Chop(mat2) 
Call Eigensystem(mat2,mi2,RS,kont,test) 
ZHOS_0 = RS 
 
 
! Now with momenta 
Do i1=1,6
PiSf(i1,:,:) = ZeroC 
p2 = Mhh2(i1)
If (i1.eq.1) p2 = 0._dp 
Call Pi1Loophh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,              & 
& MVWm,MVWm2,cplcFdFdUhhL,cplcFdFdUhhR,cplcFeFeUhhL,cplcFeFeUhhR,cplcFuFuUhhL,           & 
& cplcFuFuUhhR,cplcgWmgWmUhh,cplcgWpCgWpCUhh,cplcgZgZUhh,cplUhhhhhh,cplUhhhhVZ,          & 
& cplUhhHmcHm,cplUhhHmcVWm,cplUhhcVWmVWm,cplUhhVZVZ,cplUhhUhhhhhh,cplUhhUhhHmcHm,        & 
& cplUhhUhhcVWmVWm,cplUhhUhhVZVZ,kont,PiSf(i1,:,:))

End Do 
Do i1=6,1,-1 
PiSf(i1,:,:) = PiSf(i1,:,:) - Pi2S_EffPot 
mat2 = mat2a - Real(PiSf(i1,:,:),dp) 
Call Chop(mat2) 
Call Eigensystem(mat2,mi2,RS,kont,test) 
If ((kont.Eq.-8).Or.(kont.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  kont = 0 
End If 
If ((kont.Ne.0).And.(ErrorLevel.Ge.0)) Then 
  Write(ErrCan,*) "Diagonalization did not work in routine "//NameOfUnit(Iname) 
  Write(*,*) "Diagonalization did not work in routine "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
End If 
mass2(i1) = mi2(i1) 
End do 
 
Do i1=1,6
  If (Abs(mass2(i1)).Le.MaxMassNumericalZero**2) mass2(i1) = 0._dp 
  If (mass2(i1).Ge.0._dp) Then 
    mass(i1) = Sqrt(mass2(i1)) 
  Else 
   If (ErrorLevel.Ge.0) Then 
   If ((i1.Gt.1).or.(Abs(mass2(i1)).gt.MaxVal(Abs(mass2)))) Then 
     Write(*,*) 'Warning from routine '//NameOfUnit(Iname) 
     Write(*,*) 'in the calculation of the masses' 
     Write(*,*) 'occurred a negative mass squared!' 
   Call TerminateProgram 
   End If 
   End If 
   kont = -301 
   mass(i1) = 0._dp 
  End If 
End Do 
 
i_count = 0 
Do  
i_count = i_count + 1 
test_m2 = mass2 
Do i1=1,6
PiSf(i1,:,:) = ZeroC 
p2 =  mass2(i1) 
If (i1.eq.1) p2 = 0._dp 
Call Pi1Loophh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,              & 
& MVWm,MVWm2,cplcFdFdUhhL,cplcFdFdUhhR,cplcFeFeUhhL,cplcFeFeUhhR,cplcFuFuUhhL,           & 
& cplcFuFuUhhR,cplcgWmgWmUhh,cplcgWpCgWpCUhh,cplcgZgZUhh,cplUhhhhhh,cplUhhhhVZ,          & 
& cplUhhHmcHm,cplUhhHmcVWm,cplUhhcVWmVWm,cplUhhVZVZ,cplUhhUhhhhhh,cplUhhUhhHmcHm,        & 
& cplUhhUhhcVWmVWm,cplUhhUhhVZVZ,kont,PiSf(i1,:,:))

End Do 
Do i1=6,1,-1 
PiSf(i1,:,:) = PiSf(i1,:,:) - Pi2S_EffPot 
mat2 = mat2a - Real(PiSf(i1,:,:),dp) 
Call Chop(mat2) 
Call Eigensystem(mat2,mi2,RS,kont,test) 
ZHOS_p2(i1,:) = RS(i1,:) 
 If ((kont.Eq.-8).Or.(kont.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  kont = 0 
End If 
If ((kont.Ne.0).And.(ErrorLevel.Ge.0)) Then 
  Write(ErrCan,*) "Diagonalization did not work in routine "//NameOfUnit(Iname) 
  Write(*,*) "Diagonalization did not work in routine "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
End If 
mass2(i1) = mi2(i1) 
End do 
Do i1=1,6
 If (Abs(mass2(i1)).Le.MaxMassNumericalZero**2) mass2(i1) = 0._dp 
 If (test_m2(i1).Ne.0._dp) Then 
    test_m2(i1) = Abs(test_m2(i1) - mass2(i1)) / test_m2(i1) 
 Else 
    test_m2(i1) = Abs(mass2(i1)) 
 End If 
 If (Abs(mass2(i1)).lt.1.0E-30_dp) test_m2(i1) = 0._dp 
 If (mass2(i1).Ge.0._dp) Then 
    mass(i1) = sqrt(mass2(i1)) 
  Else 
     Write(*,*) 'Warning from routine '//NameOfUnit(Iname) 
     Write(*,*) 'in the calculation of the masses occurred a negative mass squared!' 
     Write(*,*) 'generation: ',i1 
     Write(*,*) 'mass: ',mass2(i1) 
   SignOfMassChanged = .True. 
   mass(i1) = 0._dp 
  End If 
End Do 
 
If (Maxval(test_m2).LT.0.1_dp*delta) Exit 
If (i_count.Gt.30) Then 
  Write(*,*) "Problem in "//NameOfUnit(Iname), test_m2, mass2 
  kont = -510 
  Call AddError(510) 
 Exit 
End If 
End Do 
 
 
Iname = Iname -1 
End Subroutine OneLoophh
 
 
Subroutine Pi1Loophh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,             & 
& MHm2,MVWm,MVWm2,cplcFdFdUhhL,cplcFdFdUhhR,cplcFeFeUhhL,cplcFeFeUhhR,cplcFuFuUhhL,      & 
& cplcFuFuUhhR,cplcgWmgWmUhh,cplcgWpCgWpCUhh,cplcgZgZUhh,cplUhhhhhh,cplUhhhhVZ,          & 
& cplUhhHmcHm,cplUhhHmcVWm,cplUhhcVWmVWm,cplUhhVZVZ,cplUhhUhhhhhh,cplUhhUhhHmcHm,        & 
& cplUhhUhhcVWmVWm,cplUhhUhhVZVZ,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MVZ,MVZ2,MHm(2),          & 
& MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcFdFdUhhL(3,3,6),cplcFdFdUhhR(3,3,6),cplcFeFeUhhL(3,3,6),cplcFeFeUhhR(3,3,6),      & 
& cplcFuFuUhhL(3,3,6),cplcFuFuUhhR(3,3,6),cplcgWmgWmUhh(6),cplcgWpCgWpCUhh(6),           & 
& cplcgZgZUhh(6),cplUhhhhhh(6,6,6),cplUhhhhVZ(6,6),cplUhhHmcHm(6,2,2),cplUhhHmcVWm(6,2), & 
& cplUhhcVWmVWm(6),cplUhhVZVZ(6),cplUhhUhhhhhh(6,6,6,6),cplUhhUhhHmcHm(6,6,2,2),         & 
& cplUhhUhhcVWmVWm(6,6),cplUhhUhhVZVZ(6,6)

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Complex(dp), Intent(inout) :: res(6,6) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumI(6,6) 
Integer :: i1,i2,i3,i4,j1,j2,j3,j4, gO1, gO2, ierr 
 
 
res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 G0m2 = Real(SA_Gloop(p2,MFd2(i1),MFd2(i2)),dp) 
B0m2 = -2._dp*MFd(i1)*MFd(i2)*Real(SA_B0(p2,MFd2(i1),MFd2(i2)),dp) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coupL1 = cplcFdFdUhhL(i1,i2,gO1)
coupR1 = cplcFdFdUhhR(i1,i2,gO1)
coupL2 =  Conjg(cplcFdFdUhhL(i1,i2,gO2))
coupR2 =  Conjg(cplcFdFdUhhR(i1,i2,gO2))
    SumI(gO1,gO2) = (coupL1*coupL2+coupR1*coupR2)*G0m2 & 
                & + (coupL1*coupR2+coupR1*coupL2)*B0m2 
   End Do 
End Do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 G0m2 = Real(SA_Gloop(p2,MFe2(i1),MFe2(i2)),dp) 
B0m2 = -2._dp*MFe(i1)*MFe(i2)*Real(SA_B0(p2,MFe2(i1),MFe2(i2)),dp) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coupL1 = cplcFeFeUhhL(i1,i2,gO1)
coupR1 = cplcFeFeUhhR(i1,i2,gO1)
coupL2 =  Conjg(cplcFeFeUhhL(i1,i2,gO2))
coupR2 =  Conjg(cplcFeFeUhhR(i1,i2,gO2))
    SumI(gO1,gO2) = (coupL1*coupL2+coupR1*coupR2)*G0m2 & 
                & + (coupL1*coupR2+coupR1*coupL2)*B0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 G0m2 = Real(SA_Gloop(p2,MFu2(i1),MFu2(i2)),dp) 
B0m2 = -2._dp*MFu(i1)*MFu(i2)*Real(SA_B0(p2,MFu2(i1),MFu2(i2)),dp) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coupL1 = cplcFuFuUhhL(i1,i2,gO1)
coupR1 = cplcFuFuUhhR(i1,i2,gO1)
coupL2 =  Conjg(cplcFuFuUhhL(i1,i2,gO2))
coupR2 =  Conjg(cplcFuFuUhhR(i1,i2,gO2))
    SumI(gO1,gO2) = (coupL1*coupL2+coupR1*coupR2)*G0m2 & 
                & + (coupL1*coupR2+coupR1*coupL2)*B0m2 
   End Do 
End Do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gWm], gWm 
!------------------------ 
sumI = 0._dp 
 
F0m2 = -Real(SA_B0(p2,MVWm2*RXi,MVWm2*RXi),dp) 
 Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplcgWmgWmUhh(gO1)
coup2 =  cplcgWmgWmUhh(gO2) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gWmC 
!------------------------ 
sumI = 0._dp 
 
F0m2 = -Real(SA_B0(p2,MVWm2*RXi,MVWm2*RXi),dp) 
 Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplcgWpCgWpCUhh(gO1)
coup2 =  cplcgWpCgWpCUhh(gO2) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gZ], gZ 
!------------------------ 
sumI = 0._dp 
 
F0m2 = -Real(SA_B0(p2,MVZ2*RXi,MVZ2*RXi),dp) 
 Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplcgZgZUhh(gO1)
coup2 =  cplcgZgZUhh(gO2) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! hh, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 6
       Do i2 = 1, 6
 B0m2 = Real(SA_B0(p2,Mhh2(i1),Mhh2(i2)),dp) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhhhhh(gO1,i1,i2)
coup2 = Conjg(cplUhhhhhh(gO2,i1,i2))
    SumI(gO1,gO2) = coup1*coup2*B0m2 
   End Do 
End Do 
res = res +1._dp/2._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! VZ, hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 F0m2 = FloopRXi(p2,Mhh2(i2),MVZ2) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhhhVZ(gO1,i2)
coup2 =  Conjg(cplUhhhhVZ(gO2,i2))
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 2
 B0m2 = Real(SA_B0(p2,MHm2(i1),MHm2(i2)),dp) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhHmcHm(gO1,i2,i1)
coup2 = Conjg(cplUhhHmcHm(gO2,i2,i1))
    SumI(gO1,gO2) = coup1*coup2*B0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 F0m2 = FloopRXi(p2,MHm2(i2),MVWm2) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhHmcVWm(gO1,i2)
coup2 =  Conjg(cplUhhHmcVWm(gO2,i2))
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +2._dp* SumI  
    End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
F0m2 = Real(SVVloop(p2,MVWm2,MVWm2),dp)   
 Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhcVWmVWm(gO1)
coup2 =  Conjg(cplUhhcVWmVWm(gO2)) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! VZ, VZ 
!------------------------ 
sumI = 0._dp 
 
F0m2 = Real(SVVloop(p2,MVZ2,MVZ2),dp)   
 Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhVZVZ(gO1)
coup2 =  Conjg(cplUhhVZVZ(gO2)) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp/2._dp* SumI  
!------------------------ 
! hh, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 6
 A0m2 = SA_A0(Mhh2(i1)) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhUhhhhhh(gO1,gO2,i1,i1)
    SumI(gO1,gO2) = -coup1*A0m2 
   End Do 
End Do 
res = res +1._dp/2._dp* SumI  
      End Do 
 !------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 A0m2 = SA_A0(MHm2(i1)) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhUhhHmcHm(gO1,gO2,i1,i1)
    SumI(gO1,gO2) = -coup1*A0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
A0m2 = 0.75_dp*SA_A0(MVWm2) + 0.25_dp*RXi*SA_A0(MVWm2*RXi) - 0.5_dp*MVWm2*rMS 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhUhhcVWmVWm(gO1,gO2)
    SumI(gO1,gO2) = coup1*A0m2 
   End Do 
End Do 
res = res +4._dp* SumI  
!------------------------ 
! VZ, VZ 
!------------------------ 
sumI = 0._dp 
 
A0m2 = 0.75_dp*SA_A0(MVZ2) + 0.25_dp*RXi*SA_A0(MVZ2*RXi) - 0.5_dp*MVZ2*rMS 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhUhhVZVZ(gO1,gO2)
    SumI(gO1,gO2) = coup1*A0m2 
   End Do 
End Do 
res = res +2._dp* SumI  


Do gO2 = 1, 6
  Do gO1 = gO2+1, 6
     res(gO1,gO2) = (res(gO2,gO1))  
   End Do 
End Do 
 
res = oo16pi2*res 
 
End Subroutine Pi1Loophh 
 
Subroutine DerPi1Loophh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,              & 
& MHm,MHm2,MVWm,MVWm2,cplcFdFdUhhL,cplcFdFdUhhR,cplcFeFeUhhL,cplcFeFeUhhR,               & 
& cplcFuFuUhhL,cplcFuFuUhhR,cplcgWmgWmUhh,cplcgWpCgWpCUhh,cplcgZgZUhh,cplUhhhhhh,        & 
& cplUhhhhVZ,cplUhhHmcHm,cplUhhHmcVWm,cplUhhcVWmVWm,cplUhhVZVZ,cplUhhUhhhhhh,            & 
& cplUhhUhhHmcHm,cplUhhUhhcVWmVWm,cplUhhUhhVZVZ,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MVZ,MVZ2,MHm(2),          & 
& MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcFdFdUhhL(3,3,6),cplcFdFdUhhR(3,3,6),cplcFeFeUhhL(3,3,6),cplcFeFeUhhR(3,3,6),      & 
& cplcFuFuUhhL(3,3,6),cplcFuFuUhhR(3,3,6),cplcgWmgWmUhh(6),cplcgWpCgWpCUhh(6),           & 
& cplcgZgZUhh(6),cplUhhhhhh(6,6,6),cplUhhhhVZ(6,6),cplUhhHmcHm(6,2,2),cplUhhHmcVWm(6,2), & 
& cplUhhcVWmVWm(6),cplUhhVZVZ(6),cplUhhUhhhhhh(6,6,6,6),cplUhhUhhHmcHm(6,6,2,2),         & 
& cplUhhUhhcVWmVWm(6,6),cplUhhUhhVZVZ(6,6)

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Complex(dp), Intent(inout) :: res(6,6) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumI(6,6) 
Integer :: i1,i2,i3,i4,j1,j2,j3,j4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 G0m2 = Real(SA_DerGloop(p2,MFd2(i1),MFd2(i2)),dp) 
B0m2 = -2._dp*MFd(i1)*MFd(i2)*Real(SA_DerB0(p2,MFd2(i1),MFd2(i2)),dp) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coupL1 = cplcFdFdUhhL(i1,i2,gO1)
coupR1 = cplcFdFdUhhR(i1,i2,gO1)
coupL2 =  Conjg(cplcFdFdUhhL(i1,i2,gO2))
coupR2 =  Conjg(cplcFdFdUhhR(i1,i2,gO2))
    SumI(gO1,gO2) = (coupL1*coupL2+coupR1*coupR2)*G0m2 & 
                & + (coupL1*coupR2+coupR1*coupL2)*B0m2 
   End Do 
End Do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 G0m2 = Real(SA_DerGloop(p2,MFe2(i1),MFe2(i2)),dp) 
B0m2 = -2._dp*MFe(i1)*MFe(i2)*Real(SA_DerB0(p2,MFe2(i1),MFe2(i2)),dp) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coupL1 = cplcFeFeUhhL(i1,i2,gO1)
coupR1 = cplcFeFeUhhR(i1,i2,gO1)
coupL2 =  Conjg(cplcFeFeUhhL(i1,i2,gO2))
coupR2 =  Conjg(cplcFeFeUhhR(i1,i2,gO2))
    SumI(gO1,gO2) = (coupL1*coupL2+coupR1*coupR2)*G0m2 & 
                & + (coupL1*coupR2+coupR1*coupL2)*B0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 G0m2 = Real(SA_DerGloop(p2,MFu2(i1),MFu2(i2)),dp) 
B0m2 = -2._dp*MFu(i1)*MFu(i2)*Real(SA_DerB0(p2,MFu2(i1),MFu2(i2)),dp) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coupL1 = cplcFuFuUhhL(i1,i2,gO1)
coupR1 = cplcFuFuUhhR(i1,i2,gO1)
coupL2 =  Conjg(cplcFuFuUhhL(i1,i2,gO2))
coupR2 =  Conjg(cplcFuFuUhhR(i1,i2,gO2))
    SumI(gO1,gO2) = (coupL1*coupL2+coupR1*coupR2)*G0m2 & 
                & + (coupL1*coupR2+coupR1*coupL2)*B0m2 
   End Do 
End Do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gWm], gWm 
!------------------------ 
sumI = 0._dp 
 
F0m2 = -Real(SA_DerB0(p2,MVWm2*RXi,MVWm2*RXi),dp) 
 Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplcgWmgWmUhh(gO1)
coup2 =  cplcgWmgWmUhh(gO2) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gWmC 
!------------------------ 
sumI = 0._dp 
 
F0m2 = -Real(SA_DerB0(p2,MVWm2*RXi,MVWm2*RXi),dp) 
 Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplcgWpCgWpCUhh(gO1)
coup2 =  cplcgWpCgWpCUhh(gO2) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gZ], gZ 
!------------------------ 
sumI = 0._dp 
 
F0m2 = -Real(SA_DerB0(p2,MVZ2*RXi,MVZ2*RXi),dp) 
 Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplcgZgZUhh(gO1)
coup2 =  cplcgZgZUhh(gO2) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! hh, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 6
       Do i2 = 1, 6
 B0m2 = Real(SA_DerB0(p2,Mhh2(i1),Mhh2(i2)),dp) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhhhhh(gO1,i1,i2)
coup2 = Conjg(cplUhhhhhh(gO2,i1,i2))
    SumI(gO1,gO2) = coup1*coup2*B0m2 
   End Do 
End Do 
res = res +1._dp/2._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! VZ, hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 F0m2 = DerFloopRXi(p2,Mhh2(i2),MVZ2) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhhhVZ(gO1,i2)
coup2 =  Conjg(cplUhhhhVZ(gO2,i2))
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 2
 B0m2 = Real(SA_DerB0(p2,MHm2(i1),MHm2(i2)),dp) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhHmcHm(gO1,i2,i1)
coup2 = Conjg(cplUhhHmcHm(gO2,i2,i1))
    SumI(gO1,gO2) = coup1*coup2*B0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 F0m2 = DerFloopRXi(p2,MHm2(i2),MVWm2) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhHmcVWm(gO1,i2)
coup2 =  Conjg(cplUhhHmcVWm(gO2,i2))
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +2._dp* SumI  
    End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
F0m2 = Real(DerSVVloop(p2,MVWm2,MVWm2),dp)   
 Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhcVWmVWm(gO1)
coup2 =  Conjg(cplUhhcVWmVWm(gO2)) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! VZ, VZ 
!------------------------ 
sumI = 0._dp 
 
F0m2 = Real(DerSVVloop(p2,MVZ2,MVZ2),dp)   
 Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhVZVZ(gO1)
coup2 =  Conjg(cplUhhVZVZ(gO2)) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp/2._dp* SumI  
!------------------------ 
! hh, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 6
 A0m2 = SA_DerA0(Mhh2(i1)) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhUhhhhhh(gO1,gO2,i1,i1)
    SumI(gO1,gO2) = -coup1*A0m2 
   End Do 
End Do 
res = res +1._dp/2._dp* SumI  
      End Do 
 !------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 A0m2 = SA_DerA0(MHm2(i1)) 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhUhhHmcHm(gO1,gO2,i1,i1)
    SumI(gO1,gO2) = -coup1*A0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
A0m2 = 0.75_dp*SA_DerA0(MVWm2) + 0.25_dp*RXi*SA_DerA0(MVWm2*RXi) - 0.5_dp*MVWm2*DerrMS 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhUhhcVWmVWm(gO1,gO2)
    SumI(gO1,gO2) = coup1*A0m2 
   End Do 
End Do 
res = res +4._dp* SumI  
!------------------------ 
! VZ, VZ 
!------------------------ 
sumI = 0._dp 
 
A0m2 = 0.75_dp*SA_DerA0(MVZ2) + 0.25_dp*RXi*SA_DerA0(MVZ2*RXi) - 0.5_dp*MVZ2*DerrMS 
Do gO1 = 1, 6
  Do gO2 = gO1, 6
coup1 = cplUhhUhhVZVZ(gO1,gO2)
    SumI(gO1,gO2) = coup1*A0m2 
   End Do 
End Do 
res = res +2._dp* SumI  


Do gO2 = 1, 6
  Do gO1 = gO2+1, 6
     res(gO1,gO2) = (res(gO2,gO1))  
   End Do 
End Do 
 
res = oo16pi2*res 
 
End Subroutine DerPi1Loophh 
 
Subroutine OneLoopHm(g2,M122,Lam6,Lam5,Lam7,M112,M222,Lam1,Lam4,Lam3,Lam2,            & 
& Lam1p,Lam2p,mu11,mu12,mu21,mu22,Lam4p,Lam6p,Lam7p,Lam5p,Lam3p,eta,zeta,vd,             & 
& vu,vS,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,MVWm2,MVZ,MVZ2,cplcFuFdcUHmL,  & 
& cplcFuFdcUHmR,cplcFvFecUHmL,cplcFvFecUHmR,cplcgZgWmcUHm,cplcgWmgZUHm,cplcgWpCgZcUHm,   & 
& cplcgZgWpCUHm,cplhhHmcUHm,cplhhcUHmVWm,cplHmcUHmVP,cplHmcUHmVZ,cplcUHmVPVWm,           & 
& cplcUHmVWmVZ,cplhhhhUHmcUHm,cplUHmHmcUHmcHm,cplUHmcUHmVPVP,cplUHmcUHmcVWmVWm,          & 
& cplUHmcUHmVZVZ,delta,mass,mass2,RS,kont)

Implicit None 
Real(dp), Intent(in) :: MFu(3),MFu2(3),MFd(3),MFd2(3),MFe(3),MFe2(3),MHm(2),MHm2(2),Mhh(6),Mhh2(6),           & 
& MVWm,MVWm2,MVZ,MVZ2

Real(dp), Intent(in) :: g2,M112,M222,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,eta,zeta,vd,vu,vS

Complex(dp), Intent(in) :: M122,Lam6,Lam5,Lam7,mu11,mu12,mu21,mu22,Lam4p,Lam6p,Lam7p,Lam5p,Lam3p

Complex(dp), Intent(in) :: cplcFuFdcUHmL(3,3,2),cplcFuFdcUHmR(3,3,2),cplcFvFecUHmL(3,3,2),cplcFvFecUHmR(3,3,2),  & 
& cplcgZgWmcUHm(2),cplcgWmgZUHm(2),cplcgWpCgZcUHm(2),cplcgZgWpCUHm(2),cplhhHmcUHm(6,2,2),& 
& cplhhcUHmVWm(6,2),cplHmcUHmVP(2,2),cplHmcUHmVZ(2,2),cplcUHmVPVWm(2),cplcUHmVWmVZ(2),   & 
& cplhhhhUHmcUHm(6,6,2,2),cplUHmHmcUHmcHm(2,2,2,2),cplUHmcUHmVPVP(2,2),cplUHmcUHmcVWmVWm(2,2),& 
& cplUHmcUHmVZVZ(2,2)

Complex(dp) :: mat2a(2,2), mat2(2,2),  PiSf(2,2,2)
Integer , Intent(inout):: kont 
Integer :: i1,i2,i3,i4,j1,j2,j3,j4,il,i_count, ierr 
Real(dp), Intent(in) :: delta 
Real(dp) :: mi2(2), test_m2(2),p2, test(2) 
Real(dp), Intent(out) :: mass(2), mass2(2) 
Complex(dp), Intent(out) ::  RS(2,2) 
Iname = Iname + 1 
NameOfUnit(Iname) = 'OneLoopHm'
 
mat2a(1,1) = 0._dp 
mat2a(1,1) = mat2a(1,1)+M112
mat2a(1,1) = mat2a(1,1)+(Lam1*vd**2)/2._dp
mat2a(1,1) = mat2a(1,1)+(Lam6*vd*vu)/(2._dp*exp((0._dp,1._dp)*eta))
mat2a(1,1) = mat2a(1,1)+(Lam3*vu**2)/2._dp
mat2a(1,1) = mat2a(1,1)+exp((0._dp,1._dp)*zeta)*mu11*vS
mat2a(1,1) = mat2a(1,1)+Lam1p*vS**2
mat2a(1,1) = mat2a(1,1)+exp(2*(0.,1._dp)*zeta)*Lam4p*vS**2
mat2a(1,1) = mat2a(1,1)+(vS**2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta)
mat2a(1,1) = mat2a(1,1)+(exp((0._dp,1._dp)*eta)*vd*vu*Conjg(Lam6))/2._dp
mat2a(1,1) = mat2a(1,1)+(vS*Conjg(mu11))/exp((0._dp,1._dp)*zeta)
mat2a(1,1) = mat2a(1,1)+(g2**2*vd**2*RXiWm)/4._dp
mat2a(1,2) = 0._dp 
mat2a(1,2) = mat2a(1,2)+(Lam4*vd*vu)/2._dp
mat2a(1,2) = mat2a(1,2)+exp((0._dp,1._dp)*eta + (0._dp,1._dp)*zeta)*mu21*vS
mat2a(1,2) = mat2a(1,2)+exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p*vS**2
mat2a(1,2) = mat2a(1,2)+exp((0._dp,1._dp)*eta)*vS**2*Conjg(Lam3p)
mat2a(1,2) = mat2a(1,2)+(exp(2*(0.,1._dp)*eta)*vd*vu*Conjg(Lam5))/2._dp
mat2a(1,2) = mat2a(1,2)+(exp((0._dp,1._dp)*eta)*vd**2*Conjg(Lam6))/2._dp
mat2a(1,2) = mat2a(1,2)+exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*vS**2*Conjg(Lam6p)
mat2a(1,2) = mat2a(1,2)+(exp((0._dp,1._dp)*eta)*vu**2*Conjg(Lam7))/2._dp
mat2a(1,2) = mat2a(1,2)-(exp((0._dp,1._dp)*eta)*Conjg(M122))
mat2a(1,2) = mat2a(1,2)+exp((0._dp,1._dp)*eta - (0._dp,1._dp)*zeta)*vS*Conjg(mu12)
mat2a(1,2) = mat2a(1,2)+(g2**2*vd*vu*RXiWm)/4._dp
mat2a(2,2) = 0._dp 
mat2a(2,2) = mat2a(2,2)+M222
mat2a(2,2) = mat2a(2,2)+(Lam3*vd**2)/2._dp
mat2a(2,2) = mat2a(2,2)+(Lam7*vd*vu)/(2._dp*exp((0._dp,1._dp)*eta))
mat2a(2,2) = mat2a(2,2)+(Lam2*vu**2)/2._dp
mat2a(2,2) = mat2a(2,2)+exp((0._dp,1._dp)*zeta)*mu22*vS
mat2a(2,2) = mat2a(2,2)+Lam2p*vS**2
mat2a(2,2) = mat2a(2,2)+exp(2*(0.,1._dp)*zeta)*Lam5p*vS**2
mat2a(2,2) = mat2a(2,2)+(vS**2*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta)
mat2a(2,2) = mat2a(2,2)+(exp((0._dp,1._dp)*eta)*vd*vu*Conjg(Lam7))/2._dp
mat2a(2,2) = mat2a(2,2)+(vS*Conjg(mu22))/exp((0._dp,1._dp)*zeta)
mat2a(2,2) = mat2a(2,2)+(g2**2*vu**2*RXiWm)/4._dp

 
 Do i1=2,2
  Do i2 = 1, i1-1 
  mat2a(i1,i2) = Conjg(mat2a(i2,i1)) 
  End do 
End do 

 
! Rotation matrix for p2=0 
PiSf(1,:,:) = ZeroC 
p2 = 0._dp 
If (i1.eq.1) p2 = 0._dp 
Call Pi1LoopHm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,MVWm2,            & 
& MVZ,MVZ2,cplcFuFdcUHmL,cplcFuFdcUHmR,cplcFvFecUHmL,cplcFvFecUHmR,cplcgZgWmcUHm,        & 
& cplcgWmgZUHm,cplcgWpCgZcUHm,cplcgZgWpCUHm,cplhhHmcUHm,cplhhcUHmVWm,cplHmcUHmVP,        & 
& cplHmcUHmVZ,cplcUHmVPVWm,cplcUHmVWmVZ,cplhhhhUHmcUHm,cplUHmHmcUHmcHm,cplUHmcUHmVPVP,   & 
& cplUHmcUHmcVWmVWm,cplUHmcUHmVZVZ,kont,PiSf(1,:,:))

mat2 = mat2a - Real(PiSf(1,:,:),dp) 
Call Chop(mat2) 
Call Eigensystem(mat2,mi2,RS,kont,test) 
ZPOS_0 = RS 
 
 
! Now with momenta 
Do i1=1,2
PiSf(i1,:,:) = ZeroC 
p2 = MHm2(i1)
If (i1.eq.1) p2 = 0._dp 
Call Pi1LoopHm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,MVWm2,            & 
& MVZ,MVZ2,cplcFuFdcUHmL,cplcFuFdcUHmR,cplcFvFecUHmL,cplcFvFecUHmR,cplcgZgWmcUHm,        & 
& cplcgWmgZUHm,cplcgWpCgZcUHm,cplcgZgWpCUHm,cplhhHmcUHm,cplhhcUHmVWm,cplHmcUHmVP,        & 
& cplHmcUHmVZ,cplcUHmVPVWm,cplcUHmVWmVZ,cplhhhhUHmcUHm,cplUHmHmcUHmcHm,cplUHmcUHmVPVP,   & 
& cplUHmcUHmcVWmVWm,cplUHmcUHmVZVZ,kont,PiSf(i1,:,:))

End Do 
Do i1=2,1,-1 
mat2 = mat2a - Real(PiSf(i1,:,:),dp) 
Call Chop(mat2) 
Call Eigensystem(mat2,mi2,RS,kont,test) 
If ((kont.Eq.-8).Or.(kont.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  kont = 0 
End If 
If ((kont.Ne.0).And.(ErrorLevel.Ge.0)) Then 
  Write(ErrCan,*) "Diagonalization did not work in routine "//NameOfUnit(Iname) 
  Write(*,*) "Diagonalization did not work in routine "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
End If 
mass2(i1) = mi2(i1) 
End do 
 
Do i1=1,2
  If (Abs(mass2(i1)).Le.MaxMassNumericalZero**2) mass2(i1) = 0._dp 
  If (mass2(i1).Ge.0._dp) Then 
    mass(i1) = Sqrt(mass2(i1)) 
  Else 
   If (ErrorLevel.Ge.0) Then 
   If ((i1.Gt.1).or.(Abs(mass2(i1)).gt.MaxVal(Abs(mass2)))) Then 
     Write(*,*) 'Warning from routine '//NameOfUnit(Iname) 
     Write(*,*) 'in the calculation of the masses' 
     Write(*,*) 'occurred a negative mass squared!' 
   Call TerminateProgram 
   End If 
   End If 
   kont = -301 
   mass(i1) = 0._dp 
  End If 
End Do 
 
i_count = 0 
Do  
i_count = i_count + 1 
test_m2 = mass2 
Do i1=1,2
PiSf(i1,:,:) = ZeroC 
p2 =  mass2(i1) 
If (i1.eq.1) p2 = 0._dp 
Call Pi1LoopHm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,MVWm2,            & 
& MVZ,MVZ2,cplcFuFdcUHmL,cplcFuFdcUHmR,cplcFvFecUHmL,cplcFvFecUHmR,cplcgZgWmcUHm,        & 
& cplcgWmgZUHm,cplcgWpCgZcUHm,cplcgZgWpCUHm,cplhhHmcUHm,cplhhcUHmVWm,cplHmcUHmVP,        & 
& cplHmcUHmVZ,cplcUHmVPVWm,cplcUHmVWmVZ,cplhhhhUHmcUHm,cplUHmHmcUHmcHm,cplUHmcUHmVPVP,   & 
& cplUHmcUHmcVWmVWm,cplUHmcUHmVZVZ,kont,PiSf(i1,:,:))

End Do 
Do i1=2,1,-1 
mat2 = mat2a - Real(PiSf(i1,:,:),dp) 
Call Chop(mat2) 
Call Eigensystem(mat2,mi2,RS,kont,test) 
ZPOS_p2(i1,:) = RS(i1,:) 
 If ((kont.Eq.-8).Or.(kont.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  kont = 0 
End If 
If ((kont.Ne.0).And.(ErrorLevel.Ge.0)) Then 
  Write(ErrCan,*) "Diagonalization did not work in routine "//NameOfUnit(Iname) 
  Write(*,*) "Diagonalization did not work in routine "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
End If 
mass2(i1) = mi2(i1) 
End do 
Do i1=1,2
 If (Abs(mass2(i1)).Le.MaxMassNumericalZero**2) mass2(i1) = 0._dp 
 If (test_m2(i1).Ne.0._dp) Then 
    test_m2(i1) = Abs(test_m2(i1) - mass2(i1)) / test_m2(i1) 
 Else 
    test_m2(i1) = Abs(mass2(i1)) 
 End If 
 If (Abs(mass2(i1)).lt.1.0E-30_dp) test_m2(i1) = 0._dp 
 If (mass2(i1).Ge.0._dp) Then 
    mass(i1) = sqrt(mass2(i1)) 
  Else 
     Write(*,*) 'Warning from routine '//NameOfUnit(Iname) 
     Write(*,*) 'in the calculation of the masses occurred a negative mass squared!' 
     Write(*,*) 'generation: ',i1 
     Write(*,*) 'mass: ',mass2(i1) 
   SignOfMassChanged = .True. 
   mass(i1) = 0._dp 
  End If 
End Do 
 
If (Maxval(test_m2).LT.0.1_dp*delta) Exit 
If (i_count.Gt.30) Then 
  Write(*,*) "Problem in "//NameOfUnit(Iname), test_m2, mass2 
  kont = -510 
  Call AddError(510) 
 Exit 
End If 
End Do 
 
 
Iname = Iname -1 
End Subroutine OneLoopHm
 
 
Subroutine Pi1LoopHm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,            & 
& MVWm2,MVZ,MVZ2,cplcFuFdcUHmL,cplcFuFdcUHmR,cplcFvFecUHmL,cplcFvFecUHmR,cplcgZgWmcUHm,  & 
& cplcgWmgZUHm,cplcgWpCgZcUHm,cplcgZgWpCUHm,cplhhHmcUHm,cplhhcUHmVWm,cplHmcUHmVP,        & 
& cplHmcUHmVZ,cplcUHmVPVWm,cplcUHmVWmVZ,cplhhhhUHmcUHm,cplUHmHmcUHmcHm,cplUHmcUHmVPVP,   & 
& cplUHmcUHmcVWmVWm,cplUHmcUHmVZVZ,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFu(3),MFu2(3),MFd(3),MFd2(3),MFe(3),MFe2(3),MHm(2),MHm2(2),Mhh(6),Mhh2(6),           & 
& MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcFuFdcUHmL(3,3,2),cplcFuFdcUHmR(3,3,2),cplcFvFecUHmL(3,3,2),cplcFvFecUHmR(3,3,2),  & 
& cplcgZgWmcUHm(2),cplcgWmgZUHm(2),cplcgWpCgZcUHm(2),cplcgZgWpCUHm(2),cplhhHmcUHm(6,2,2),& 
& cplhhcUHmVWm(6,2),cplHmcUHmVP(2,2),cplHmcUHmVZ(2,2),cplcUHmVPVWm(2),cplcUHmVWmVZ(2),   & 
& cplhhhhUHmcUHm(6,6,2,2),cplUHmHmcUHmcHm(2,2,2,2),cplUHmcUHmVPVP(2,2),cplUHmcUHmcVWmVWm(2,2),& 
& cplUHmcUHmVZVZ(2,2)

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Complex(dp), Intent(inout) :: res(2,2) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumI(2,2) 
Integer :: i1,i2,i3,i4,j1,j2,j3,j4, gO1, gO2, ierr 
 
 
res = 0._dp 
 
!------------------------ 
! bar[Fu], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 G0m2 = Real(SA_Gloop(p2,MFu2(i1),MFd2(i2)),dp) 
B0m2 = -2._dp*MFu(i1)*MFd(i2)*Real(SA_B0(p2,MFu2(i1),MFd2(i2)),dp) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coupL1 = cplcFuFdcUHmL(i1,i2,gO1)
coupR1 = cplcFuFdcUHmR(i1,i2,gO1)
coupL2 =  Conjg(cplcFuFdcUHmL(i1,i2,gO2))
coupR2 =  Conjg(cplcFuFdcUHmR(i1,i2,gO2))
    SumI(gO1,gO2) = (coupL1*coupL2+coupR1*coupR2)*G0m2 & 
                & + (coupL1*coupR2+coupR1*coupL2)*B0m2 
   End Do 
End Do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fv], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 G0m2 = Real(SA_Gloop(p2,0._dp,MFe2(i2)),dp) 
B0m2 = -2._dp*0._dp*MFe(i2)*Real(SA_B0(p2,0._dp,MFe2(i2)),dp) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coupL1 = cplcFvFecUHmL(i1,i2,gO1)
coupR1 = cplcFvFecUHmR(i1,i2,gO1)
coupL2 =  Conjg(cplcFvFecUHmL(i1,i2,gO2))
coupR2 =  Conjg(cplcFvFecUHmR(i1,i2,gO2))
    SumI(gO1,gO2) = (coupL1*coupL2+coupR1*coupR2)*G0m2 & 
                & + (coupL1*coupR2+coupR1*coupL2)*B0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gZ], gWm 
!------------------------ 
sumI = 0._dp 
 
F0m2 = -Real(SA_B0(p2,MVWm2*RXi,MVZ2*RXi),dp) 
 Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplcgZgWmcUHm(gO1)
coup2 =  cplcgWmgZUHm(gO2) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gZ 
!------------------------ 
sumI = 0._dp 
 
F0m2 = -Real(SA_B0(p2,MVZ2*RXi,MVWm2*RXi),dp) 
 Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplcgWpCgZcUHm(gO1)
coup2 =  cplcgZgWpCUHm(gO2) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! Hm, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 6
 B0m2 = Real(SA_B0(p2,MHm2(i1),Mhh2(i2)),dp) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplhhHmcUHm(i2,i1,gO1)
coup2 = Conjg(cplhhHmcUHm(i2,i1,gO2))
    SumI(gO1,gO2) = coup1*coup2*B0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! VWm, hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 F0m2 = FloopRXi(p2,Mhh2(i2),MVWm2) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplhhcUHmVWm(i2,gO1)
coup2 =  Conjg(cplhhcUHmVWm(i2,gO2))
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VP, Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 F0m2 = FloopRXi(p2,MHm2(i2),0._dp) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplHmcUHmVP(i2,gO1)
coup2 =  Conjg(cplHmcUHmVP(i2,gO2))
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VZ, Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 F0m2 = FloopRXi(p2,MHm2(i2),MVZ2) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplHmcUHmVZ(i2,gO1)
coup2 =  Conjg(cplHmcUHmVZ(i2,gO2))
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VWm, VP 
!------------------------ 
sumI = 0._dp 
 
F0m2 = Real(SVVloop(p2,0._dp,MVWm2),dp)   
 Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplcUHmVPVWm(gO1)
coup2 =  Conjg(cplcUHmVPVWm(gO2)) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! VZ, VWm 
!------------------------ 
sumI = 0._dp 
 
F0m2 = Real(SVVloop(p2,MVWm2,MVZ2),dp)   
 Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplcUHmVWmVZ(gO1)
coup2 =  Conjg(cplcUHmVWmVZ(gO2)) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! hh, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 6
 A0m2 = SA_A0(Mhh2(i1)) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplhhhhUHmcUHm(i1,i1,gO2,gO1)
    SumI(gO1,gO2) = -coup1*A0m2 
   End Do 
End Do 
res = res +1._dp/2._dp* SumI  
      End Do 
 !------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 A0m2 = SA_A0(MHm2(i1)) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplUHmHmcUHmcHm(gO2,i1,gO1,i1)
    SumI(gO1,gO2) = -coup1*A0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! VP, VP 
!------------------------ 
sumI = 0._dp 
 
!------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
A0m2 = 0.75_dp*SA_A0(MVWm2) + 0.25_dp*RXi*SA_A0(MVWm2*RXi) - 0.5_dp*MVWm2*rMS 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplUHmcUHmcVWmVWm(gO2,gO1)
    SumI(gO1,gO2) = coup1*A0m2 
   End Do 
End Do 
res = res +4._dp* SumI  
!------------------------ 
! VZ, VZ 
!------------------------ 
sumI = 0._dp 
 
A0m2 = 0.75_dp*SA_A0(MVZ2) + 0.25_dp*RXi*SA_A0(MVZ2*RXi) - 0.5_dp*MVZ2*rMS 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplUHmcUHmVZVZ(gO2,gO1)
    SumI(gO1,gO2) = coup1*A0m2 
   End Do 
End Do 
res = res +2._dp* SumI  


Do gO2 = 1, 2
  Do gO1 = gO2+1, 2
     res(gO1,gO2) = Conjg(res(gO2,gO1))  
   End Do 
End Do 
 
res = oo16pi2*res 
 
End Subroutine Pi1LoopHm 
 
Subroutine DerPi1LoopHm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,              & 
& MVWm,MVWm2,MVZ,MVZ2,cplcFuFdcUHmL,cplcFuFdcUHmR,cplcFvFecUHmL,cplcFvFecUHmR,           & 
& cplcgZgWmcUHm,cplcgWmgZUHm,cplcgWpCgZcUHm,cplcgZgWpCUHm,cplhhHmcUHm,cplhhcUHmVWm,      & 
& cplHmcUHmVP,cplHmcUHmVZ,cplcUHmVPVWm,cplcUHmVWmVZ,cplhhhhUHmcUHm,cplUHmHmcUHmcHm,      & 
& cplUHmcUHmVPVP,cplUHmcUHmcVWmVWm,cplUHmcUHmVZVZ,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFu(3),MFu2(3),MFd(3),MFd2(3),MFe(3),MFe2(3),MHm(2),MHm2(2),Mhh(6),Mhh2(6),           & 
& MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcFuFdcUHmL(3,3,2),cplcFuFdcUHmR(3,3,2),cplcFvFecUHmL(3,3,2),cplcFvFecUHmR(3,3,2),  & 
& cplcgZgWmcUHm(2),cplcgWmgZUHm(2),cplcgWpCgZcUHm(2),cplcgZgWpCUHm(2),cplhhHmcUHm(6,2,2),& 
& cplhhcUHmVWm(6,2),cplHmcUHmVP(2,2),cplHmcUHmVZ(2,2),cplcUHmVPVWm(2),cplcUHmVWmVZ(2),   & 
& cplhhhhUHmcUHm(6,6,2,2),cplUHmHmcUHmcHm(2,2,2,2),cplUHmcUHmVPVP(2,2),cplUHmcUHmcVWmVWm(2,2),& 
& cplUHmcUHmVZVZ(2,2)

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Complex(dp), Intent(inout) :: res(2,2) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumI(2,2) 
Integer :: i1,i2,i3,i4,j1,j2,j3,j4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

res = 0._dp 
 
!------------------------ 
! bar[Fu], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 G0m2 = Real(SA_DerGloop(p2,MFu2(i1),MFd2(i2)),dp) 
B0m2 = -2._dp*MFu(i1)*MFd(i2)*Real(SA_DerB0(p2,MFu2(i1),MFd2(i2)),dp) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coupL1 = cplcFuFdcUHmL(i1,i2,gO1)
coupR1 = cplcFuFdcUHmR(i1,i2,gO1)
coupL2 =  Conjg(cplcFuFdcUHmL(i1,i2,gO2))
coupR2 =  Conjg(cplcFuFdcUHmR(i1,i2,gO2))
    SumI(gO1,gO2) = (coupL1*coupL2+coupR1*coupR2)*G0m2 & 
                & + (coupL1*coupR2+coupR1*coupL2)*B0m2 
   End Do 
End Do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fv], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 G0m2 = Real(SA_DerGloop(p2,0._dp,MFe2(i2)),dp) 
B0m2 = -2._dp*0._dp*MFe(i2)*Real(SA_DerB0(p2,0._dp,MFe2(i2)),dp) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coupL1 = cplcFvFecUHmL(i1,i2,gO1)
coupR1 = cplcFvFecUHmR(i1,i2,gO1)
coupL2 =  Conjg(cplcFvFecUHmL(i1,i2,gO2))
coupR2 =  Conjg(cplcFvFecUHmR(i1,i2,gO2))
    SumI(gO1,gO2) = (coupL1*coupL2+coupR1*coupR2)*G0m2 & 
                & + (coupL1*coupR2+coupR1*coupL2)*B0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gZ], gWm 
!------------------------ 
sumI = 0._dp 
 
F0m2 = -Real(SA_DerB0(p2,MVWm2*RXi,MVZ2*RXi),dp) 
 Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplcgZgWmcUHm(gO1)
coup2 =  cplcgWmgZUHm(gO2) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gZ 
!------------------------ 
sumI = 0._dp 
 
F0m2 = -Real(SA_DerB0(p2,MVZ2*RXi,MVWm2*RXi),dp) 
 Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplcgWpCgZcUHm(gO1)
coup2 =  cplcgZgWpCUHm(gO2) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! Hm, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 6
 B0m2 = Real(SA_DerB0(p2,MHm2(i1),Mhh2(i2)),dp) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplhhHmcUHm(i2,i1,gO1)
coup2 = Conjg(cplhhHmcUHm(i2,i1,gO2))
    SumI(gO1,gO2) = coup1*coup2*B0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! VWm, hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 F0m2 = DerFloopRXi(p2,Mhh2(i2),MVWm2) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplhhcUHmVWm(i2,gO1)
coup2 =  Conjg(cplhhcUHmVWm(i2,gO2))
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VP, Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 F0m2 = DerFloopRXi(p2,MHm2(i2),MVP2) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplHmcUHmVP(i2,gO1)
coup2 =  Conjg(cplHmcUHmVP(i2,gO2))
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VZ, Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 F0m2 = DerFloopRXi(p2,MHm2(i2),MVZ2) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplHmcUHmVZ(i2,gO1)
coup2 =  Conjg(cplHmcUHmVZ(i2,gO2))
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VWm, VP 
!------------------------ 
sumI = 0._dp 
 
F0m2 = Real(DerSVVloop(p2,MVP2,MVWm2),dp)   
 Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplcUHmVPVWm(gO1)
coup2 =  Conjg(cplcUHmVPVWm(gO2)) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! VZ, VWm 
!------------------------ 
sumI = 0._dp 
 
F0m2 = Real(DerSVVloop(p2,MVWm2,MVZ2),dp)   
 Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplcUHmVWmVZ(gO1)
coup2 =  Conjg(cplcUHmVWmVZ(gO2)) 
    SumI(gO1,gO2) = coup1*coup2*F0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
!------------------------ 
! hh, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 6
 A0m2 = SA_DerA0(Mhh2(i1)) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplhhhhUHmcUHm(i1,i1,gO2,gO1)
    SumI(gO1,gO2) = -coup1*A0m2 
   End Do 
End Do 
res = res +1._dp/2._dp* SumI  
      End Do 
 !------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 A0m2 = SA_DerA0(MHm2(i1)) 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplUHmHmcUHmcHm(gO2,i1,gO1,i1)
    SumI(gO1,gO2) = -coup1*A0m2 
   End Do 
End Do 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! VP, VP 
!------------------------ 
sumI = 0._dp 
 
A0m2 = 0.75_dp*SA_DerA0(MVP2) + 0.25_dp*RXi*SA_DerA0(MVP2*RXi) - 0.5_dp*MVP2*DerrMS 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplUHmcUHmVPVP(gO2,gO1)
    SumI(gO1,gO2) = coup1*A0m2 
   End Do 
End Do 
res = res +2._dp* SumI  
!------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
A0m2 = 0.75_dp*SA_DerA0(MVWm2) + 0.25_dp*RXi*SA_DerA0(MVWm2*RXi) - 0.5_dp*MVWm2*DerrMS 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplUHmcUHmcVWmVWm(gO2,gO1)
    SumI(gO1,gO2) = coup1*A0m2 
   End Do 
End Do 
res = res +4._dp* SumI  
!------------------------ 
! VZ, VZ 
!------------------------ 
sumI = 0._dp 
 
A0m2 = 0.75_dp*SA_DerA0(MVZ2) + 0.25_dp*RXi*SA_DerA0(MVZ2*RXi) - 0.5_dp*MVZ2*DerrMS 
Do gO1 = 1, 2
  Do gO2 = gO1, 2
coup1 = cplUHmcUHmVZVZ(gO2,gO1)
    SumI(gO1,gO2) = coup1*A0m2 
   End Do 
End Do 
res = res +2._dp* SumI  


Do gO2 = 1, 2
  Do gO1 = gO2+1, 2
     res(gO1,gO2) = Conjg(res(gO2,gO1))  
   End Do 
End Do 
 
res = oo16pi2*res 
 
End Subroutine DerPi1LoopHm 
 
Subroutine OneLoopFd(Yd,epsD,eta,vd,vu,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,           & 
& MFu,MFu2,MVWm,MVWm2,cplcUFdFdhhL,cplcUFdFdhhR,cplcUFdFdVGL,cplcUFdFdVGR,               & 
& cplcUFdFdVPL,cplcUFdFdVPR,cplcUFdFdVZL,cplcUFdFdVZR,cplcUFdFuHmL,cplcUFdFuHmR,         & 
& cplcUFdFuVWmL,cplcUFdFuVWmR,delta,MFd_1L,MFd2_1L,ZDL_1L,ZDR_1L,ierr)

Implicit None 
Real(dp), Intent(in) :: Mhh(6),Mhh2(6),MFd(3),MFd2(3),MVZ,MVZ2,MHm(2),MHm2(2),MFu(3),MFu2(3),MVWm,MVWm2

Real(dp), Intent(in) :: eta,vd,vu

Complex(dp), Intent(in) :: Yd(3,3),epsD(3,3)

Complex(dp), Intent(in) :: cplcUFdFdhhL(3,3,6),cplcUFdFdhhR(3,3,6),cplcUFdFdVGL(3,3),cplcUFdFdVGR(3,3),          & 
& cplcUFdFdVPL(3,3),cplcUFdFdVPR(3,3),cplcUFdFdVZL(3,3),cplcUFdFdVZR(3,3),               & 
& cplcUFdFuHmL(3,3,2),cplcUFdFuHmR(3,3,2),cplcUFdFuVWmL(3,3),cplcUFdFuVWmR(3,3)

Complex(dp) :: mat1a(3,3), mat1(3,3) 
Integer , Intent(inout):: ierr 
Integer :: i1,i2,i3,i4,j1,j2,j3,j4,il,i_count 
Real(dp), Intent(in) :: delta 
Real(dp) :: mi2(3), test_m2(3), p2 
Real(dp), Intent(out) :: MFd_1L(3),MFd2_1L(3) 
 Complex(dp), Intent(out) :: ZDL_1L(3,3), ZDR_1L(3,3) 
 
 Real(dp) :: MFd_t(3),MFd2_t(3) 
 Complex(dp) :: ZDL_t(3,3), ZDR_t(3,3), sigL(3,3), sigR(3,3), sigSL(3,3), sigSR(3,3) 
 
 Complex(dp) :: mat(3,3)=0._dp, mat2(3,3)=0._dp, phaseM 

Complex(dp) :: ZDL2(3,3), ZDR2(3,3) 
 
 Real(dp) :: ZDL1(3,3), ZDR1(3,3), test(2) 
 
 Iname = Iname + 1 
NameOfUnit(Iname) = 'OneLoopMFd'
 
mat1a(1,1) = 0._dp 
mat1a(1,1) = mat1a(1,1)+(vu*epsD(1,1))/sqrt(2._dp)
mat1a(1,1) = mat1a(1,1)+(vd*Yd(1,1))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(1,2) = 0._dp 
mat1a(1,2) = mat1a(1,2)+(vu*epsD(2,1))/sqrt(2._dp)
mat1a(1,2) = mat1a(1,2)+(vd*Yd(2,1))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(1,3) = 0._dp 
mat1a(1,3) = mat1a(1,3)+(vu*epsD(3,1))/sqrt(2._dp)
mat1a(1,3) = mat1a(1,3)+(vd*Yd(3,1))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(2,1) = 0._dp 
mat1a(2,1) = mat1a(2,1)+(vu*epsD(1,2))/sqrt(2._dp)
mat1a(2,1) = mat1a(2,1)+(vd*Yd(1,2))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(2,2) = 0._dp 
mat1a(2,2) = mat1a(2,2)+(vu*epsD(2,2))/sqrt(2._dp)
mat1a(2,2) = mat1a(2,2)+(vd*Yd(2,2))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(2,3) = 0._dp 
mat1a(2,3) = mat1a(2,3)+(vu*epsD(3,2))/sqrt(2._dp)
mat1a(2,3) = mat1a(2,3)+(vd*Yd(3,2))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(3,1) = 0._dp 
mat1a(3,1) = mat1a(3,1)+(vu*epsD(1,3))/sqrt(2._dp)
mat1a(3,1) = mat1a(3,1)+(vd*Yd(1,3))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(3,2) = 0._dp 
mat1a(3,2) = mat1a(3,2)+(vu*epsD(2,3))/sqrt(2._dp)
mat1a(3,2) = mat1a(3,2)+(vd*Yd(2,3))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(3,3) = 0._dp 
mat1a(3,3) = mat1a(3,3)+(vu*epsD(3,3))/sqrt(2._dp)
mat1a(3,3) = mat1a(3,3)+(vd*Yd(3,3))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))

 
 !---------------------------------------- 
! Rotation matrix for p2=0 
!----------------------------------------- 
 
sigL=0._dp 
sigR=0._dp 
sigSL=0._dp 
sigSR=0._dp 
p2 = 0._dp 
Call Sigma1LoopFd(p2,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,MFu,MFu2,MVWm,               & 
& MVWm2,cplcUFdFdhhL,cplcUFdFdhhR,cplcUFdFdVGL,cplcUFdFdVGR,cplcUFdFdVPL,cplcUFdFdVPR,   & 
& cplcUFdFdVZL,cplcUFdFdVZR,cplcUFdFuHmL,cplcUFdFuHmR,cplcUFdFuVWmL,cplcUFdFuVWmR,       & 
& sigL,sigR,sigSL,sigSR)

mat1 = mat1a - SigSL - 0.5_dp*(MatMul(SigR,mat1a) + MatMul(mat1a,SigL)) 
 
mat2 = Matmul(Transpose(Conjg(mat1)),mat1) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFd2_t,ZDR1,ierr,test) 
ZDR2 = ZDR1 
Else 
Call EigenSystem(mat2,MFd2_t,ZDR2,ierr,test) 
 End If 
 
ZDROS_0 = ZDR2 
 mat2 = Matmul(mat1,Transpose(Conjg(mat1))) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFd2_t,ZDL1,ierr,test) 
 
 
ZDL2 = ZDL1 
Else 
Call EigenSystem(mat2,MFd2_t,ZDL2,ierr,test) 
 
 
End If 
ZDL2 = Conjg(ZDL2) 
ZDLOS_0 = ZDL2 
 
!---------------------------------------- 
! Now, with momenta
!----------------------------------------- 
 
Do il=3,1,-1
sigL=0._dp 
sigR=0._dp 
sigSL=0._dp 
sigSR=0._dp 
p2 = MFd2(il) 
Call Sigma1LoopFd(p2,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,MFu,MFu2,MVWm,               & 
& MVWm2,cplcUFdFdhhL,cplcUFdFdhhR,cplcUFdFdVGL,cplcUFdFdVGR,cplcUFdFdVPL,cplcUFdFdVPR,   & 
& cplcUFdFdVZL,cplcUFdFdVZR,cplcUFdFuHmL,cplcUFdFuHmR,cplcUFdFuVWmL,cplcUFdFuVWmR,       & 
& sigL,sigR,sigSL,sigSR)

mat1 = mat1a - SigSL - 0.5_dp*(MatMul(SigR,mat1a) + MatMul(mat1a,SigL)) 
 
mat2 = Matmul(Transpose(Conjg(mat1)),mat1) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFd2_t,ZDR1,ierr,test) 
ZDR2 = ZDR1 
Else 
Call EigenSystem(mat2,MFd2_t,ZDR2,ierr,test) 
 End If 
 
If ((ierr.Eq.-8).Or.(ierr.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  ierr = 0 
End If 
 
!---------------------------------------- 
! Redoing Calculation using redefined p2 
!----------------------------------------- 
 
i_count = 0 
p2_loop: Do  
i_count = i_count + 1 
sigL=0._dp 
sigR=0._dp 
sigSL=0._dp 
sigSR=0._dp 
p2 = MFd2_t(iL)
Call Sigma1LoopFd(p2,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,MFu,MFu2,MVWm,               & 
& MVWm2,cplcUFdFdhhL,cplcUFdFdhhR,cplcUFdFdVGL,cplcUFdFdVGR,cplcUFdFdVPL,cplcUFdFdVPR,   & 
& cplcUFdFdVZL,cplcUFdFdVZR,cplcUFdFuHmL,cplcUFdFuHmR,cplcUFdFuVWmL,cplcUFdFuVWmR,       & 
& sigL,sigR,sigSL,sigSR)

mat1 = mat1a - SigSL - 0.5_dp*(MatMul(SigR,mat1a) + MatMul(mat1a,SigL)) 
 
mat2 = Matmul(Transpose(Conjg(mat1)),mat1) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFd2_t,ZDR1,ierr,test) 
ZDR2 = ZDR1 
Else 
Call EigenSystem(mat2,MFd2_t,ZDR2,ierr,test) 
 End If 
 
If ((ierr.Eq.-8).Or.(ierr.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  ierr = 0 
End If 
 
MFd2_1L(il) = MFd2_t(il) 
MFd_1L(il) = Sqrt(MFd2_1L(il)) 
 
If (p2.Ne.0._dp) Then 
  test(1) = Abs(MFd2_1L(il)-p2)/p2
Else 
  test(2) = Abs(MFd2_1L(il))
End If 
If (Abs(MFd2_1L(il)).lt.1.0E-30_dp) Exit p2_loop 
If (test(1).lt.0.1_dp*delta) Exit p2_loop 
If(i_count.gt.30) then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Exit p2_loop 
End if
End Do p2_loop 
mat2 = Matmul(mat1,Transpose(Conjg(mat1))) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFd2_t,ZDL1,ierr,test) 
 
 
ZDL2 = ZDL1 
Else 
Call EigenSystem(mat2,MFd2_t,ZDL2,ierr,test) 
 
 
End If 
ZDL2 = Conjg(ZDL2) 
 
If ((ierr.Eq.-8).Or.(ierr.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  ierr = 0 
End If 
 
mat2 = Matmul(Matmul( Conjg(ZDL2),mat1),Transpose( Conjg(ZDR2))) 
Do i1=1,3
If (Abs(mat2(i1,i1)).gt.0._dp) Then 
phaseM = mat2(i1,i1) / Abs(mat2(i1,i1)) 
ZDR2(i1,:) = phaseM *ZDR2(i1,:) 
 End if 
End Do 
 
ZDLOS_p2(il,:) = ZDL2(il,:) 
 ZDROS_p2(il,:) = ZDR2(il,:) 
 ZDL_1L = ZDL2 
 ZDR_1L = ZDR2 
 End Do  
 
Iname = Iname -1 
End Subroutine OneLoopFd
 
 
Subroutine Sigma1LoopFd(p2,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,MFu,MFu2,              & 
& MVWm,MVWm2,cplcUFdFdhhL,cplcUFdFdhhR,cplcUFdFdVGL,cplcUFdFdVGR,cplcUFdFdVPL,           & 
& cplcUFdFdVPR,cplcUFdFdVZL,cplcUFdFdVZR,cplcUFdFuHmL,cplcUFdFuHmR,cplcUFdFuVWmL,        & 
& cplcUFdFuVWmR,sigL,sigR,sigSL,sigSR)

Implicit None 
Real(dp), Intent(in) :: Mhh(6),Mhh2(6),MFd(3),MFd2(3),MVZ,MVZ2,MHm(2),MHm2(2),MFu(3),MFu2(3),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcUFdFdhhL(3,3,6),cplcUFdFdhhR(3,3,6),cplcUFdFdVGL(3,3),cplcUFdFdVGR(3,3),          & 
& cplcUFdFdVPL(3,3),cplcUFdFdVPR(3,3),cplcUFdFdVZL(3,3),cplcUFdFdVZR(3,3),               & 
& cplcUFdFuHmL(3,3,2),cplcUFdFuHmR(3,3,2),cplcUFdFuVWmL(3,3),cplcUFdFuVWmR(3,3)

Complex(dp), Intent(out) :: SigL(3,3),SigR(3,3), SigSL(3,3), SigSR(3,3) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumL(3,3), sumR(3,3), sumSL(3,3), sumSR(3,3) 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
SigL = Cmplx(0._dp,0._dp,dp) 
SigR = Cmplx(0._dp,0._dp,dp) 
SigSL = Cmplx(0._dp,0._dp,dp) 
 SigSR = Cmplx(0._dp,0._dp,dp) 
 
!------------------------ 
! hh, Fd 
!------------------------ 
    Do i1 = 1, 6
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_B1(p2,MFd2(i2),Mhh2(i1)),dp) 
B0m2 = MFd(i2)*Real(SA_B0(p2,MFd2(i2),Mhh2(i1)),dp) 
coupL1 = cplcUFdFdhhL(gO1,i2,i1)
coupR1 = cplcUFdFdhhR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFdFdhhL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFdFdhhR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VG, Fd 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,MFd2(i2),0._dp)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_B0(p2,MFd2(i2),0._dp)-0.5_dp*rMS,dp) 
coupL1 = cplcUFdFdVGL(gO1,i2)
coupR1 = cplcUFdFdVGR(gO1,i2)
coupL2 =  Conjg(cplcUFdFdVGL(gO2,i2))
coupR2 =  Conjg(cplcUFdFdVGR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +4._dp/3._dp* sumL
SigR = SigR +4._dp/3._dp* sumR 
SigSL = SigSL +4._dp/3._dp* sumSL 
SigSR = SigSR +4._dp/3._dp* sumSR 
    End Do 
 !------------------------ 
! VP, Fd 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,MFd2(i2),0._dp)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_B0(p2,MFd2(i2),0._dp)-0.5_dp*rMS,dp) 
coupL1 = cplcUFdFdVPL(gO1,i2)
coupR1 = cplcUFdFdVPR(gO1,i2)
coupL2 =  Conjg(cplcUFdFdVPL(gO2,i2))
coupR2 =  Conjg(cplcUFdFdVPR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! VZ, Fd 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,MFd2(i2),MVZ2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_B0(p2,MFd2(i2),MVZ2)-0.5_dp*rMS,dp) 
coupL1 = cplcUFdFdVZL(gO1,i2)
coupR1 = cplcUFdFdVZR(gO1,i2)
coupL2 =  Conjg(cplcUFdFdVZL(gO2,i2))
coupR2 =  Conjg(cplcUFdFdVZR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! Hm, Fu 
!------------------------ 
    Do i1 = 1, 2
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_B1(p2,MFu2(i2),MHm2(i1)),dp) 
B0m2 = MFu(i2)*Real(SA_B0(p2,MFu2(i2),MHm2(i1)),dp) 
coupL1 = cplcUFdFuHmL(gO1,i2,i1)
coupR1 = cplcUFdFuHmR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFdFuHmL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFdFuHmR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VWm, Fu 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,MFu2(i2),MVWm2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_B0(p2,MFu2(i2),MVWm2)-0.5_dp*rMS,dp) 
coupL1 = cplcUFdFuVWmL(gO1,i2)
coupR1 = cplcUFdFuVWmR(gO1,i2)
coupL2 =  Conjg(cplcUFdFuVWmL(gO2,i2))
coupR2 =  Conjg(cplcUFdFuVWmR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 SigL = oo16pi2*SigL 
SigR = oo16pi2*SigR 
SigSL = oo16pi2*SigSL 
SigSR = oo16pi2*SigSR 
 
End Subroutine Sigma1LoopFd 
 
Subroutine DerSigma1LoopFd(p2,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,MFu,MFu2,           & 
& MVWm,MVWm2,cplcUFdFdhhL,cplcUFdFdhhR,cplcUFdFdVGL,cplcUFdFdVGR,cplcUFdFdVPL,           & 
& cplcUFdFdVPR,cplcUFdFdVZL,cplcUFdFdVZR,cplcUFdFuHmL,cplcUFdFuHmR,cplcUFdFuVWmL,        & 
& cplcUFdFuVWmR,sigL,sigR,sigSL,sigSR)

Implicit None 
Real(dp), Intent(in) :: Mhh(6),Mhh2(6),MFd(3),MFd2(3),MVZ,MVZ2,MHm(2),MHm2(2),MFu(3),MFu2(3),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcUFdFdhhL(3,3,6),cplcUFdFdhhR(3,3,6),cplcUFdFdVGL(3,3),cplcUFdFdVGR(3,3),          & 
& cplcUFdFdVPL(3,3),cplcUFdFdVPR(3,3),cplcUFdFdVZL(3,3),cplcUFdFdVZR(3,3),               & 
& cplcUFdFuHmL(3,3,2),cplcUFdFuHmR(3,3,2),cplcUFdFuVWmL(3,3),cplcUFdFuVWmR(3,3)

Complex(dp), Intent(out) :: SigL(3,3),SigR(3,3), SigSL(3,3), SigSR(3,3) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumL(3,3), sumR(3,3), sumSL(3,3), sumSR(3,3) 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

SigL = Cmplx(0._dp,0._dp,dp) 
SigR = Cmplx(0._dp,0._dp,dp) 
SigSL = Cmplx(0._dp,0._dp,dp) 
 SigSR = Cmplx(0._dp,0._dp,dp) 
 
!------------------------ 
! hh, Fd 
!------------------------ 
    Do i1 = 1, 6
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_DerB1(p2,MFd2(i2),Mhh2(i1)),dp) 
B0m2 = MFd(i2)*Real(SA_DerB0(p2,MFd2(i2),Mhh2(i1)),dp) 
coupL1 = cplcUFdFdhhL(gO1,i2,i1)
coupR1 = cplcUFdFdhhR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFdFdhhL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFdFdhhR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VG, Fd 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,MFd2(i2),MVG2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_DerB0(p2,MFd2(i2),MVG2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFdFdVGL(gO1,i2)
coupR1 = cplcUFdFdVGR(gO1,i2)
coupL2 =  Conjg(cplcUFdFdVGL(gO2,i2))
coupR2 =  Conjg(cplcUFdFdVGR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +4._dp/3._dp* sumL
SigR = SigR +4._dp/3._dp* sumR 
SigSL = SigSL +4._dp/3._dp* sumSL 
SigSR = SigSR +4._dp/3._dp* sumSR 
    End Do 
 !------------------------ 
! VP, Fd 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,MFd2(i2),MVP2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_DerB0(p2,MFd2(i2),MVP2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFdFdVPL(gO1,i2)
coupR1 = cplcUFdFdVPR(gO1,i2)
coupL2 =  Conjg(cplcUFdFdVPL(gO2,i2))
coupR2 =  Conjg(cplcUFdFdVPR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! VZ, Fd 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,MFd2(i2),MVZ2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_DerB0(p2,MFd2(i2),MVZ2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFdFdVZL(gO1,i2)
coupR1 = cplcUFdFdVZR(gO1,i2)
coupL2 =  Conjg(cplcUFdFdVZL(gO2,i2))
coupR2 =  Conjg(cplcUFdFdVZR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! Hm, Fu 
!------------------------ 
    Do i1 = 1, 2
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_DerB1(p2,MFu2(i2),MHm2(i1)),dp) 
B0m2 = MFu(i2)*Real(SA_DerB0(p2,MFu2(i2),MHm2(i1)),dp) 
coupL1 = cplcUFdFuHmL(gO1,i2,i1)
coupR1 = cplcUFdFuHmR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFdFuHmL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFdFuHmR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VWm, Fu 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,MFu2(i2),MVWm2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_DerB0(p2,MFu2(i2),MVWm2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFdFuVWmL(gO1,i2)
coupR1 = cplcUFdFuVWmR(gO1,i2)
coupL2 =  Conjg(cplcUFdFuVWmL(gO2,i2))
coupR2 =  Conjg(cplcUFdFuVWmR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 SigL = oo16pi2*SigL 
SigR = oo16pi2*SigR 
SigSL = oo16pi2*SigSL 
SigSR = oo16pi2*SigSR 
 
End Subroutine DerSigma1LoopFd 
 
Subroutine OneLoopFu(Yu,epsU,eta,vd,vu,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,              & 
& Mhh2,MFu,MFu2,MVZ,MVZ2,cplcUFuFdcHmL,cplcUFuFdcHmR,cplcUFuFdcVWmL,cplcUFuFdcVWmR,      & 
& cplcUFuFuhhL,cplcUFuFuhhR,cplcUFuFuVGL,cplcUFuFuVGR,cplcUFuFuVPL,cplcUFuFuVPR,         & 
& cplcUFuFuVZL,cplcUFuFuVZR,delta,MFu_1L,MFu2_1L,ZUL_1L,ZUR_1L,ierr)

Implicit None 
Real(dp), Intent(in) :: MHm(2),MHm2(2),MFd(3),MFd2(3),MVWm,MVWm2,Mhh(6),Mhh2(6),MFu(3),MFu2(3),MVZ,MVZ2

Real(dp), Intent(in) :: eta,vd,vu

Complex(dp), Intent(in) :: Yu(3,3),epsU(3,3)

Complex(dp), Intent(in) :: cplcUFuFdcHmL(3,3,2),cplcUFuFdcHmR(3,3,2),cplcUFuFdcVWmL(3,3),cplcUFuFdcVWmR(3,3),    & 
& cplcUFuFuhhL(3,3,6),cplcUFuFuhhR(3,3,6),cplcUFuFuVGL(3,3),cplcUFuFuVGR(3,3),           & 
& cplcUFuFuVPL(3,3),cplcUFuFuVPR(3,3),cplcUFuFuVZL(3,3),cplcUFuFuVZR(3,3)

Complex(dp) :: mat1a(3,3), mat1(3,3) 
Integer , Intent(inout):: ierr 
Integer :: i1,i2,i3,i4,j1,j2,j3,j4,il,i_count 
Real(dp), Intent(in) :: delta 
Real(dp) :: mi2(3), test_m2(3), p2 
Real(dp), Intent(out) :: MFu_1L(3),MFu2_1L(3) 
 Complex(dp), Intent(out) :: ZUL_1L(3,3), ZUR_1L(3,3) 
 
 Real(dp) :: MFu_t(3),MFu2_t(3) 
 Complex(dp) :: ZUL_t(3,3), ZUR_t(3,3), sigL(3,3), sigR(3,3), sigSL(3,3), sigSR(3,3) 
 
 Complex(dp) :: mat(3,3)=0._dp, mat2(3,3)=0._dp, phaseM 

Complex(dp) :: ZUL2(3,3), ZUR2(3,3) 
 
 Real(dp) :: ZUL1(3,3), ZUR1(3,3), test(2) 
 
 Iname = Iname + 1 
NameOfUnit(Iname) = 'OneLoopMFu'
 
mat1a(1,1) = 0._dp 
mat1a(1,1) = mat1a(1,1)+(vu*epsU(1,1))/sqrt(2._dp)
mat1a(1,1) = mat1a(1,1)+(exp((0._dp,1._dp)*eta)*vd*Yu(1,1))/sqrt(2._dp)
mat1a(1,2) = 0._dp 
mat1a(1,2) = mat1a(1,2)+(vu*epsU(2,1))/sqrt(2._dp)
mat1a(1,2) = mat1a(1,2)+(exp((0._dp,1._dp)*eta)*vd*Yu(2,1))/sqrt(2._dp)
mat1a(1,3) = 0._dp 
mat1a(1,3) = mat1a(1,3)+(vu*epsU(3,1))/sqrt(2._dp)
mat1a(1,3) = mat1a(1,3)+(exp((0._dp,1._dp)*eta)*vd*Yu(3,1))/sqrt(2._dp)
mat1a(2,1) = 0._dp 
mat1a(2,1) = mat1a(2,1)+(vu*epsU(1,2))/sqrt(2._dp)
mat1a(2,1) = mat1a(2,1)+(exp((0._dp,1._dp)*eta)*vd*Yu(1,2))/sqrt(2._dp)
mat1a(2,2) = 0._dp 
mat1a(2,2) = mat1a(2,2)+(vu*epsU(2,2))/sqrt(2._dp)
mat1a(2,2) = mat1a(2,2)+(exp((0._dp,1._dp)*eta)*vd*Yu(2,2))/sqrt(2._dp)
mat1a(2,3) = 0._dp 
mat1a(2,3) = mat1a(2,3)+(vu*epsU(3,2))/sqrt(2._dp)
mat1a(2,3) = mat1a(2,3)+(exp((0._dp,1._dp)*eta)*vd*Yu(3,2))/sqrt(2._dp)
mat1a(3,1) = 0._dp 
mat1a(3,1) = mat1a(3,1)+(vu*epsU(1,3))/sqrt(2._dp)
mat1a(3,1) = mat1a(3,1)+(exp((0._dp,1._dp)*eta)*vd*Yu(1,3))/sqrt(2._dp)
mat1a(3,2) = 0._dp 
mat1a(3,2) = mat1a(3,2)+(vu*epsU(2,3))/sqrt(2._dp)
mat1a(3,2) = mat1a(3,2)+(exp((0._dp,1._dp)*eta)*vd*Yu(2,3))/sqrt(2._dp)
mat1a(3,3) = 0._dp 
mat1a(3,3) = mat1a(3,3)+(vu*epsU(3,3))/sqrt(2._dp)
mat1a(3,3) = mat1a(3,3)+(exp((0._dp,1._dp)*eta)*vd*Yu(3,3))/sqrt(2._dp)

 
 !---------------------------------------- 
! Rotation matrix for p2=0 
!----------------------------------------- 
 
sigL=0._dp 
sigR=0._dp 
sigSL=0._dp 
sigSR=0._dp 
p2 = 0._dp 
Call Sigma1LoopFu(p2,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,Mhh2,MFu,MFu2,MVZ,              & 
& MVZ2,cplcUFuFdcHmL,cplcUFuFdcHmR,cplcUFuFdcVWmL,cplcUFuFdcVWmR,cplcUFuFuhhL,           & 
& cplcUFuFuhhR,cplcUFuFuVGL,cplcUFuFuVGR,cplcUFuFuVPL,cplcUFuFuVPR,cplcUFuFuVZL,         & 
& cplcUFuFuVZR,sigL,sigR,sigSL,sigSR)

mat1 = mat1a - SigSL - 0.5_dp*(MatMul(SigR,mat1a) + MatMul(mat1a,SigL)) 
 
mat2 = Matmul(Transpose(Conjg(mat1)),mat1) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFu2_t,ZUR1,ierr,test) 
ZUR2 = ZUR1 
Else 
Call EigenSystem(mat2,MFu2_t,ZUR2,ierr,test) 
 End If 
 
ZUROS_0 = ZUR2 
 mat2 = Matmul(mat1,Transpose(Conjg(mat1))) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFu2_t,ZUL1,ierr,test) 
 
 
ZUL2 = ZUL1 
Else 
Call EigenSystem(mat2,MFu2_t,ZUL2,ierr,test) 
 
 
End If 
ZUL2 = Conjg(ZUL2) 
ZULOS_0 = ZUL2 
 
!---------------------------------------- 
! Now, with momenta
!----------------------------------------- 
 
Do il=3,1,-1
sigL=0._dp 
sigR=0._dp 
sigSL=0._dp 
sigSR=0._dp 
p2 = MFu2(il) 
Call Sigma1LoopFu(p2,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,Mhh2,MFu,MFu2,MVZ,              & 
& MVZ2,cplcUFuFdcHmL,cplcUFuFdcHmR,cplcUFuFdcVWmL,cplcUFuFdcVWmR,cplcUFuFuhhL,           & 
& cplcUFuFuhhR,cplcUFuFuVGL,cplcUFuFuVGR,cplcUFuFuVPL,cplcUFuFuVPR,cplcUFuFuVZL,         & 
& cplcUFuFuVZR,sigL,sigR,sigSL,sigSR)

mat1 = mat1a - SigSL - 0.5_dp*(MatMul(SigR,mat1a) + MatMul(mat1a,SigL)) 
 
mat2 = Matmul(Transpose(Conjg(mat1)),mat1) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFu2_t,ZUR1,ierr,test) 
ZUR2 = ZUR1 
Else 
Call EigenSystem(mat2,MFu2_t,ZUR2,ierr,test) 
 End If 
 
If ((ierr.Eq.-8).Or.(ierr.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  ierr = 0 
End If 
 
!---------------------------------------- 
! Redoing Calculation using redefined p2 
!----------------------------------------- 
 
i_count = 0 
p2_loop: Do  
i_count = i_count + 1 
sigL=0._dp 
sigR=0._dp 
sigSL=0._dp 
sigSR=0._dp 
p2 = MFu2_t(iL)
Call Sigma1LoopFu(p2,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,Mhh2,MFu,MFu2,MVZ,              & 
& MVZ2,cplcUFuFdcHmL,cplcUFuFdcHmR,cplcUFuFdcVWmL,cplcUFuFdcVWmR,cplcUFuFuhhL,           & 
& cplcUFuFuhhR,cplcUFuFuVGL,cplcUFuFuVGR,cplcUFuFuVPL,cplcUFuFuVPR,cplcUFuFuVZL,         & 
& cplcUFuFuVZR,sigL,sigR,sigSL,sigSR)

mat1 = mat1a - SigSL - 0.5_dp*(MatMul(SigR,mat1a) + MatMul(mat1a,SigL)) 
 
mat2 = Matmul(Transpose(Conjg(mat1)),mat1) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFu2_t,ZUR1,ierr,test) 
ZUR2 = ZUR1 
Else 
Call EigenSystem(mat2,MFu2_t,ZUR2,ierr,test) 
 End If 
 
If ((ierr.Eq.-8).Or.(ierr.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  ierr = 0 
End If 
 
MFu2_1L(il) = MFu2_t(il) 
MFu_1L(il) = Sqrt(MFu2_1L(il)) 
 
If (p2.Ne.0._dp) Then 
  test(1) = Abs(MFu2_1L(il)-p2)/p2
Else 
  test(2) = Abs(MFu2_1L(il))
End If 
If (Abs(MFu2_1L(il)).lt.1.0E-30_dp) Exit p2_loop 
If (test(1).lt.0.1_dp*delta) Exit p2_loop 
If(i_count.gt.30) then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Exit p2_loop 
End if
End Do p2_loop 
mat2 = Matmul(mat1,Transpose(Conjg(mat1))) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFu2_t,ZUL1,ierr,test) 
 
 
ZUL2 = ZUL1 
Else 
Call EigenSystem(mat2,MFu2_t,ZUL2,ierr,test) 
 
 
End If 
ZUL2 = Conjg(ZUL2) 
 
If ((ierr.Eq.-8).Or.(ierr.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  ierr = 0 
End If 
 
mat2 = Matmul(Matmul( Conjg(ZUL2),mat1),Transpose( Conjg(ZUR2))) 
Do i1=1,3
If (Abs(mat2(i1,i1)).gt.0._dp) Then 
phaseM = mat2(i1,i1) / Abs(mat2(i1,i1)) 
ZUR2(i1,:) = phaseM *ZUR2(i1,:) 
 End if 
End Do 
 
ZULOS_p2(il,:) = ZUL2(il,:) 
 ZUROS_p2(il,:) = ZUR2(il,:) 
 ZUL_1L = ZUL2 
 ZUR_1L = ZUR2 
 End Do  
 
Iname = Iname -1 
End Subroutine OneLoopFu
 
 
Subroutine Sigma1LoopFu(p2,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,Mhh2,MFu,MFu2,            & 
& MVZ,MVZ2,cplcUFuFdcHmL,cplcUFuFdcHmR,cplcUFuFdcVWmL,cplcUFuFdcVWmR,cplcUFuFuhhL,       & 
& cplcUFuFuhhR,cplcUFuFuVGL,cplcUFuFuVGR,cplcUFuFuVPL,cplcUFuFuVPR,cplcUFuFuVZL,         & 
& cplcUFuFuVZR,sigL,sigR,sigSL,sigSR)

Implicit None 
Real(dp), Intent(in) :: MHm(2),MHm2(2),MFd(3),MFd2(3),MVWm,MVWm2,Mhh(6),Mhh2(6),MFu(3),MFu2(3),MVZ,MVZ2

Complex(dp), Intent(in) :: cplcUFuFdcHmL(3,3,2),cplcUFuFdcHmR(3,3,2),cplcUFuFdcVWmL(3,3),cplcUFuFdcVWmR(3,3),    & 
& cplcUFuFuhhL(3,3,6),cplcUFuFuhhR(3,3,6),cplcUFuFuVGL(3,3),cplcUFuFuVGR(3,3),           & 
& cplcUFuFuVPL(3,3),cplcUFuFuVPR(3,3),cplcUFuFuVZL(3,3),cplcUFuFuVZR(3,3)

Complex(dp), Intent(out) :: SigL(3,3),SigR(3,3), SigSL(3,3), SigSR(3,3) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumL(3,3), sumR(3,3), sumSL(3,3), sumSR(3,3) 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
SigL = Cmplx(0._dp,0._dp,dp) 
SigR = Cmplx(0._dp,0._dp,dp) 
SigSL = Cmplx(0._dp,0._dp,dp) 
 SigSR = Cmplx(0._dp,0._dp,dp) 
 
!------------------------ 
! conj[Hm], Fd 
!------------------------ 
    Do i1 = 1, 2
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_B1(p2,MFd2(i2),MHm2(i1)),dp) 
B0m2 = MFd(i2)*Real(SA_B0(p2,MFd2(i2),MHm2(i1)),dp) 
coupL1 = cplcUFuFdcHmL(gO1,i2,i1)
coupR1 = cplcUFuFdcHmR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFuFdcHmL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFuFdcHmR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Fd 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,MFd2(i2),MVWm2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_B0(p2,MFd2(i2),MVWm2)-0.5_dp*rMS,dp) 
coupL1 = cplcUFuFdcVWmL(gO1,i2)
coupR1 = cplcUFuFdcVWmR(gO1,i2)
coupL2 =  Conjg(cplcUFuFdcVWmL(gO2,i2))
coupR2 =  Conjg(cplcUFuFdcVWmR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! hh, Fu 
!------------------------ 
    Do i1 = 1, 6
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_B1(p2,MFu2(i2),Mhh2(i1)),dp) 
B0m2 = MFu(i2)*Real(SA_B0(p2,MFu2(i2),Mhh2(i1)),dp) 
coupL1 = cplcUFuFuhhL(gO1,i2,i1)
coupR1 = cplcUFuFuhhR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFuFuhhL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFuFuhhR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VG, Fu 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,MFu2(i2),0._dp)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_B0(p2,MFu2(i2),0._dp)-0.5_dp*rMS,dp) 
coupL1 = cplcUFuFuVGL(gO1,i2)
coupR1 = cplcUFuFuVGR(gO1,i2)
coupL2 =  Conjg(cplcUFuFuVGL(gO2,i2))
coupR2 =  Conjg(cplcUFuFuVGR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +4._dp/3._dp* sumL
SigR = SigR +4._dp/3._dp* sumR 
SigSL = SigSL +4._dp/3._dp* sumSL 
SigSR = SigSR +4._dp/3._dp* sumSR 
    End Do 
 !------------------------ 
! VP, Fu 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,MFu2(i2),0._dp)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_B0(p2,MFu2(i2),0._dp)-0.5_dp*rMS,dp) 
coupL1 = cplcUFuFuVPL(gO1,i2)
coupR1 = cplcUFuFuVPR(gO1,i2)
coupL2 =  Conjg(cplcUFuFuVPL(gO2,i2))
coupR2 =  Conjg(cplcUFuFuVPR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! VZ, Fu 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,MFu2(i2),MVZ2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_B0(p2,MFu2(i2),MVZ2)-0.5_dp*rMS,dp) 
coupL1 = cplcUFuFuVZL(gO1,i2)
coupR1 = cplcUFuFuVZR(gO1,i2)
coupL2 =  Conjg(cplcUFuFuVZL(gO2,i2))
coupR2 =  Conjg(cplcUFuFuVZR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 SigL = oo16pi2*SigL 
SigR = oo16pi2*SigR 
SigSL = oo16pi2*SigSL 
SigSR = oo16pi2*SigSR 
 
End Subroutine Sigma1LoopFu 
 
Subroutine DerSigma1LoopFu(p2,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,Mhh2,MFu,              & 
& MFu2,MVZ,MVZ2,cplcUFuFdcHmL,cplcUFuFdcHmR,cplcUFuFdcVWmL,cplcUFuFdcVWmR,               & 
& cplcUFuFuhhL,cplcUFuFuhhR,cplcUFuFuVGL,cplcUFuFuVGR,cplcUFuFuVPL,cplcUFuFuVPR,         & 
& cplcUFuFuVZL,cplcUFuFuVZR,sigL,sigR,sigSL,sigSR)

Implicit None 
Real(dp), Intent(in) :: MHm(2),MHm2(2),MFd(3),MFd2(3),MVWm,MVWm2,Mhh(6),Mhh2(6),MFu(3),MFu2(3),MVZ,MVZ2

Complex(dp), Intent(in) :: cplcUFuFdcHmL(3,3,2),cplcUFuFdcHmR(3,3,2),cplcUFuFdcVWmL(3,3),cplcUFuFdcVWmR(3,3),    & 
& cplcUFuFuhhL(3,3,6),cplcUFuFuhhR(3,3,6),cplcUFuFuVGL(3,3),cplcUFuFuVGR(3,3),           & 
& cplcUFuFuVPL(3,3),cplcUFuFuVPR(3,3),cplcUFuFuVZL(3,3),cplcUFuFuVZR(3,3)

Complex(dp), Intent(out) :: SigL(3,3),SigR(3,3), SigSL(3,3), SigSR(3,3) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumL(3,3), sumR(3,3), sumSL(3,3), sumSR(3,3) 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

SigL = Cmplx(0._dp,0._dp,dp) 
SigR = Cmplx(0._dp,0._dp,dp) 
SigSL = Cmplx(0._dp,0._dp,dp) 
 SigSR = Cmplx(0._dp,0._dp,dp) 
 
!------------------------ 
! conj[Hm], Fd 
!------------------------ 
    Do i1 = 1, 2
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_DerB1(p2,MFd2(i2),MHm2(i1)),dp) 
B0m2 = MFd(i2)*Real(SA_DerB0(p2,MFd2(i2),MHm2(i1)),dp) 
coupL1 = cplcUFuFdcHmL(gO1,i2,i1)
coupR1 = cplcUFuFdcHmR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFuFdcHmL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFuFdcHmR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Fd 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,MFd2(i2),MVWm2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_DerB0(p2,MFd2(i2),MVWm2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFuFdcVWmL(gO1,i2)
coupR1 = cplcUFuFdcVWmR(gO1,i2)
coupL2 =  Conjg(cplcUFuFdcVWmL(gO2,i2))
coupR2 =  Conjg(cplcUFuFdcVWmR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! hh, Fu 
!------------------------ 
    Do i1 = 1, 6
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_DerB1(p2,MFu2(i2),Mhh2(i1)),dp) 
B0m2 = MFu(i2)*Real(SA_DerB0(p2,MFu2(i2),Mhh2(i1)),dp) 
coupL1 = cplcUFuFuhhL(gO1,i2,i1)
coupR1 = cplcUFuFuhhR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFuFuhhL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFuFuhhR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VG, Fu 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,MFu2(i2),MVG2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_DerB0(p2,MFu2(i2),MVG2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFuFuVGL(gO1,i2)
coupR1 = cplcUFuFuVGR(gO1,i2)
coupL2 =  Conjg(cplcUFuFuVGL(gO2,i2))
coupR2 =  Conjg(cplcUFuFuVGR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +4._dp/3._dp* sumL
SigR = SigR +4._dp/3._dp* sumR 
SigSL = SigSL +4._dp/3._dp* sumSL 
SigSR = SigSR +4._dp/3._dp* sumSR 
    End Do 
 !------------------------ 
! VP, Fu 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,MFu2(i2),MVP2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_DerB0(p2,MFu2(i2),MVP2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFuFuVPL(gO1,i2)
coupR1 = cplcUFuFuVPR(gO1,i2)
coupL2 =  Conjg(cplcUFuFuVPL(gO2,i2))
coupR2 =  Conjg(cplcUFuFuVPR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! VZ, Fu 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,MFu2(i2),MVZ2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_DerB0(p2,MFu2(i2),MVZ2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFuFuVZL(gO1,i2)
coupR1 = cplcUFuFuVZR(gO1,i2)
coupL2 =  Conjg(cplcUFuFuVZL(gO2,i2))
coupR2 =  Conjg(cplcUFuFuVZR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 SigL = oo16pi2*SigL 
SigR = oo16pi2*SigR 
SigSL = oo16pi2*SigSL 
SigSR = oo16pi2*SigSR 
 
End Subroutine DerSigma1LoopFu 
 
Subroutine OneLoopFe(Ye,epsE,eta,vd,vu,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,           & 
& MVWm,MVWm2,cplcUFeFehhL,cplcUFeFehhR,cplcUFeFeVPL,cplcUFeFeVPR,cplcUFeFeVZL,           & 
& cplcUFeFeVZR,cplcUFeFvHmL,cplcUFeFvHmR,cplcUFeFvVWmL,cplcUFeFvVWmR,delta,              & 
& MFe_1L,MFe2_1L,ZEL_1L,ZER_1L,ierr)

Implicit None 
Real(dp), Intent(in) :: Mhh(6),Mhh2(6),MFe(3),MFe2(3),MVZ,MVZ2,MHm(2),MHm2(2),MVWm,MVWm2

Real(dp), Intent(in) :: eta,vd,vu

Complex(dp), Intent(in) :: Ye(3,3),epsE(3,3)

Complex(dp), Intent(in) :: cplcUFeFehhL(3,3,6),cplcUFeFehhR(3,3,6),cplcUFeFeVPL(3,3),cplcUFeFeVPR(3,3),          & 
& cplcUFeFeVZL(3,3),cplcUFeFeVZR(3,3),cplcUFeFvHmL(3,3,2),cplcUFeFvHmR(3,3,2),           & 
& cplcUFeFvVWmL(3,3),cplcUFeFvVWmR(3,3)

Complex(dp) :: mat1a(3,3), mat1(3,3) 
Integer , Intent(inout):: ierr 
Integer :: i1,i2,i3,i4,j1,j2,j3,j4,il,i_count 
Real(dp), Intent(in) :: delta 
Real(dp) :: mi2(3), test_m2(3), p2 
Real(dp), Intent(out) :: MFe_1L(3),MFe2_1L(3) 
 Complex(dp), Intent(out) :: ZEL_1L(3,3), ZER_1L(3,3) 
 
 Real(dp) :: MFe_t(3),MFe2_t(3) 
 Complex(dp) :: ZEL_t(3,3), ZER_t(3,3), sigL(3,3), sigR(3,3), sigSL(3,3), sigSR(3,3) 
 
 Complex(dp) :: mat(3,3)=0._dp, mat2(3,3)=0._dp, phaseM 

Complex(dp) :: ZEL2(3,3), ZER2(3,3) 
 
 Real(dp) :: ZEL1(3,3), ZER1(3,3), test(2) 
 
 Iname = Iname + 1 
NameOfUnit(Iname) = 'OneLoopMFe'
 
mat1a(1,1) = 0._dp 
mat1a(1,1) = mat1a(1,1)+(vu*epsE(1,1))/sqrt(2._dp)
mat1a(1,1) = mat1a(1,1)+(vd*Ye(1,1))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(1,2) = 0._dp 
mat1a(1,2) = mat1a(1,2)+(vu*epsE(2,1))/sqrt(2._dp)
mat1a(1,2) = mat1a(1,2)+(vd*Ye(2,1))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(1,3) = 0._dp 
mat1a(1,3) = mat1a(1,3)+(vu*epsE(3,1))/sqrt(2._dp)
mat1a(1,3) = mat1a(1,3)+(vd*Ye(3,1))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(2,1) = 0._dp 
mat1a(2,1) = mat1a(2,1)+(vu*epsE(1,2))/sqrt(2._dp)
mat1a(2,1) = mat1a(2,1)+(vd*Ye(1,2))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(2,2) = 0._dp 
mat1a(2,2) = mat1a(2,2)+(vu*epsE(2,2))/sqrt(2._dp)
mat1a(2,2) = mat1a(2,2)+(vd*Ye(2,2))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(2,3) = 0._dp 
mat1a(2,3) = mat1a(2,3)+(vu*epsE(3,2))/sqrt(2._dp)
mat1a(2,3) = mat1a(2,3)+(vd*Ye(3,2))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(3,1) = 0._dp 
mat1a(3,1) = mat1a(3,1)+(vu*epsE(1,3))/sqrt(2._dp)
mat1a(3,1) = mat1a(3,1)+(vd*Ye(1,3))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(3,2) = 0._dp 
mat1a(3,2) = mat1a(3,2)+(vu*epsE(2,3))/sqrt(2._dp)
mat1a(3,2) = mat1a(3,2)+(vd*Ye(2,3))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))
mat1a(3,3) = 0._dp 
mat1a(3,3) = mat1a(3,3)+(vu*epsE(3,3))/sqrt(2._dp)
mat1a(3,3) = mat1a(3,3)+(vd*Ye(3,3))/(sqrt(2._dp)*exp((0._dp,1._dp)*eta))

 
 !---------------------------------------- 
! Rotation matrix for p2=0 
!----------------------------------------- 
 
sigL=0._dp 
sigR=0._dp 
sigSL=0._dp 
sigSR=0._dp 
p2 = 0._dp 
Call Sigma1LoopFe(p2,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,cplcUFeFehhL,     & 
& cplcUFeFehhR,cplcUFeFeVPL,cplcUFeFeVPR,cplcUFeFeVZL,cplcUFeFeVZR,cplcUFeFvHmL,         & 
& cplcUFeFvHmR,cplcUFeFvVWmL,cplcUFeFvVWmR,sigL,sigR,sigSL,sigSR)

mat1 = mat1a - SigSL - 0.5_dp*(MatMul(SigR,mat1a) + MatMul(mat1a,SigL)) 
 
mat2 = Matmul(Transpose(Conjg(mat1)),mat1) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFe2_t,ZER1,ierr,test) 
ZER2 = ZER1 
Else 
Call EigenSystem(mat2,MFe2_t,ZER2,ierr,test) 
 End If 
 
ZEROS_0 = ZER2 
 mat2 = Matmul(mat1,Transpose(Conjg(mat1))) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFe2_t,ZEL1,ierr,test) 
 
 
ZEL2 = ZEL1 
Else 
Call EigenSystem(mat2,MFe2_t,ZEL2,ierr,test) 
 
 
End If 
ZEL2 = Conjg(ZEL2) 
ZELOS_0 = ZEL2 
 
!---------------------------------------- 
! Now, with momenta
!----------------------------------------- 
 
Do il=3,1,-1
sigL=0._dp 
sigR=0._dp 
sigSL=0._dp 
sigSR=0._dp 
p2 = MFe2(il) 
Call Sigma1LoopFe(p2,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,cplcUFeFehhL,     & 
& cplcUFeFehhR,cplcUFeFeVPL,cplcUFeFeVPR,cplcUFeFeVZL,cplcUFeFeVZR,cplcUFeFvHmL,         & 
& cplcUFeFvHmR,cplcUFeFvVWmL,cplcUFeFvVWmR,sigL,sigR,sigSL,sigSR)

mat1 = mat1a - SigSL - 0.5_dp*(MatMul(SigR,mat1a) + MatMul(mat1a,SigL)) 
 
mat2 = Matmul(Transpose(Conjg(mat1)),mat1) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFe2_t,ZER1,ierr,test) 
ZER2 = ZER1 
Else 
Call EigenSystem(mat2,MFe2_t,ZER2,ierr,test) 
 End If 
 
If ((ierr.Eq.-8).Or.(ierr.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  ierr = 0 
End If 
 
!---------------------------------------- 
! Redoing Calculation using redefined p2 
!----------------------------------------- 
 
i_count = 0 
p2_loop: Do  
i_count = i_count + 1 
sigL=0._dp 
sigR=0._dp 
sigSL=0._dp 
sigSR=0._dp 
p2 = MFe2_t(iL)
Call Sigma1LoopFe(p2,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,cplcUFeFehhL,     & 
& cplcUFeFehhR,cplcUFeFeVPL,cplcUFeFeVPR,cplcUFeFeVZL,cplcUFeFeVZR,cplcUFeFvHmL,         & 
& cplcUFeFvHmR,cplcUFeFvVWmL,cplcUFeFvVWmR,sigL,sigR,sigSL,sigSR)

mat1 = mat1a - SigSL - 0.5_dp*(MatMul(SigR,mat1a) + MatMul(mat1a,SigL)) 
 
mat2 = Matmul(Transpose(Conjg(mat1)),mat1) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFe2_t,ZER1,ierr,test) 
ZER2 = ZER1 
Else 
Call EigenSystem(mat2,MFe2_t,ZER2,ierr,test) 
 End If 
 
If ((ierr.Eq.-8).Or.(ierr.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  ierr = 0 
End If 
 
MFe2_1L(il) = MFe2_t(il) 
MFe_1L(il) = Sqrt(MFe2_1L(il)) 
 
If (p2.Ne.0._dp) Then 
  test(1) = Abs(MFe2_1L(il)-p2)/p2
Else 
  test(2) = Abs(MFe2_1L(il))
End If 
If (Abs(MFe2_1L(il)).lt.1.0E-30_dp) Exit p2_loop 
If (test(1).lt.0.1_dp*delta) Exit p2_loop 
If(i_count.gt.30) then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Exit p2_loop 
End if
End Do p2_loop 
mat2 = Matmul(mat1,Transpose(Conjg(mat1))) 
If (ForceRealMatrices) mat2 = Real(mat2,dp) 
If (Maxval(Abs(Aimag(mat2))).Eq.0._dp) Then 
Call EigenSystem(Real(mat2,dp),MFe2_t,ZEL1,ierr,test) 
 
 
ZEL2 = ZEL1 
Else 
Call EigenSystem(mat2,MFe2_t,ZEL2,ierr,test) 
 
 
End If 
ZEL2 = Conjg(ZEL2) 
 
If ((ierr.Eq.-8).Or.(ierr.Eq.-9)) Then 
  Write(ErrCan,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  Write(*,*) "Possible numerical problem in "//NameOfUnit(Iname) 
  If (ErrorLevel.Eq.2) Call TerminateProgram 
  ierr = 0 
End If 
 
mat2 = Matmul(Matmul( Conjg(ZEL2),mat1),Transpose( Conjg(ZER2))) 
Do i1=1,3
If (Abs(mat2(i1,i1)).gt.0._dp) Then 
phaseM = mat2(i1,i1) / Abs(mat2(i1,i1)) 
ZER2(i1,:) = phaseM *ZER2(i1,:) 
 End if 
End Do 
 
ZELOS_p2(il,:) = ZEL2(il,:) 
 ZEROS_p2(il,:) = ZER2(il,:) 
 ZEL_1L = ZEL2 
 ZER_1L = ZER2 
 End Do  
 
Iname = Iname -1 
End Subroutine OneLoopFe
 
 
Subroutine Sigma1LoopFe(p2,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,            & 
& cplcUFeFehhL,cplcUFeFehhR,cplcUFeFeVPL,cplcUFeFeVPR,cplcUFeFeVZL,cplcUFeFeVZR,         & 
& cplcUFeFvHmL,cplcUFeFvHmR,cplcUFeFvVWmL,cplcUFeFvVWmR,sigL,sigR,sigSL,sigSR)

Implicit None 
Real(dp), Intent(in) :: Mhh(6),Mhh2(6),MFe(3),MFe2(3),MVZ,MVZ2,MHm(2),MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcUFeFehhL(3,3,6),cplcUFeFehhR(3,3,6),cplcUFeFeVPL(3,3),cplcUFeFeVPR(3,3),          & 
& cplcUFeFeVZL(3,3),cplcUFeFeVZR(3,3),cplcUFeFvHmL(3,3,2),cplcUFeFvHmR(3,3,2),           & 
& cplcUFeFvVWmL(3,3),cplcUFeFvVWmR(3,3)

Complex(dp), Intent(out) :: SigL(3,3),SigR(3,3), SigSL(3,3), SigSR(3,3) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumL(3,3), sumR(3,3), sumSL(3,3), sumSR(3,3) 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
SigL = Cmplx(0._dp,0._dp,dp) 
SigR = Cmplx(0._dp,0._dp,dp) 
SigSL = Cmplx(0._dp,0._dp,dp) 
 SigSR = Cmplx(0._dp,0._dp,dp) 
 
!------------------------ 
! hh, Fe 
!------------------------ 
    Do i1 = 1, 6
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_B1(p2,MFe2(i2),Mhh2(i1)),dp) 
B0m2 = MFe(i2)*Real(SA_B0(p2,MFe2(i2),Mhh2(i1)),dp) 
coupL1 = cplcUFeFehhL(gO1,i2,i1)
coupR1 = cplcUFeFehhR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFeFehhL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFeFehhR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VP, Fe 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,MFe2(i2),0._dp)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFe(i2)*Real(SA_B0(p2,MFe2(i2),0._dp)-0.5_dp*rMS,dp) 
coupL1 = cplcUFeFeVPL(gO1,i2)
coupR1 = cplcUFeFeVPR(gO1,i2)
coupL2 =  Conjg(cplcUFeFeVPL(gO2,i2))
coupR2 =  Conjg(cplcUFeFeVPR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! VZ, Fe 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,MFe2(i2),MVZ2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFe(i2)*Real(SA_B0(p2,MFe2(i2),MVZ2)-0.5_dp*rMS,dp) 
coupL1 = cplcUFeFeVZL(gO1,i2)
coupR1 = cplcUFeFeVZR(gO1,i2)
coupL2 =  Conjg(cplcUFeFeVZL(gO2,i2))
coupR2 =  Conjg(cplcUFeFeVZR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! Hm, Fv 
!------------------------ 
    Do i1 = 1, 2
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_B1(p2,0._dp,MHm2(i1)),dp) 
B0m2 = 0._dp*Real(SA_B0(p2,0._dp,MHm2(i1)),dp) 
coupL1 = cplcUFeFvHmL(gO1,i2,i1)
coupR1 = cplcUFeFvHmR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFeFvHmL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFeFvHmR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VWm, Fv 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,0._dp,MVWm2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*0._dp*Real(SA_B0(p2,0._dp,MVWm2)-0.5_dp*rMS,dp) 
coupL1 = cplcUFeFvVWmL(gO1,i2)
coupR1 = cplcUFeFvVWmR(gO1,i2)
coupL2 =  Conjg(cplcUFeFvVWmL(gO2,i2))
coupR2 =  Conjg(cplcUFeFvVWmR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 SigL = oo16pi2*SigL 
SigR = oo16pi2*SigR 
SigSL = oo16pi2*SigSL 
SigSR = oo16pi2*SigSR 
 
End Subroutine Sigma1LoopFe 
 
Subroutine DerSigma1LoopFe(p2,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,MVWm,               & 
& MVWm2,cplcUFeFehhL,cplcUFeFehhR,cplcUFeFeVPL,cplcUFeFeVPR,cplcUFeFeVZL,cplcUFeFeVZR,   & 
& cplcUFeFvHmL,cplcUFeFvHmR,cplcUFeFvVWmL,cplcUFeFvVWmR,sigL,sigR,sigSL,sigSR)

Implicit None 
Real(dp), Intent(in) :: Mhh(6),Mhh2(6),MFe(3),MFe2(3),MVZ,MVZ2,MHm(2),MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcUFeFehhL(3,3,6),cplcUFeFehhR(3,3,6),cplcUFeFeVPL(3,3),cplcUFeFeVPR(3,3),          & 
& cplcUFeFeVZL(3,3),cplcUFeFeVZR(3,3),cplcUFeFvHmL(3,3,2),cplcUFeFvHmR(3,3,2),           & 
& cplcUFeFvVWmL(3,3),cplcUFeFvVWmR(3,3)

Complex(dp), Intent(out) :: SigL(3,3),SigR(3,3), SigSL(3,3), SigSR(3,3) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumL(3,3), sumR(3,3), sumSL(3,3), sumSR(3,3) 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

SigL = Cmplx(0._dp,0._dp,dp) 
SigR = Cmplx(0._dp,0._dp,dp) 
SigSL = Cmplx(0._dp,0._dp,dp) 
 SigSR = Cmplx(0._dp,0._dp,dp) 
 
!------------------------ 
! hh, Fe 
!------------------------ 
    Do i1 = 1, 6
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_DerB1(p2,MFe2(i2),Mhh2(i1)),dp) 
B0m2 = MFe(i2)*Real(SA_DerB0(p2,MFe2(i2),Mhh2(i1)),dp) 
coupL1 = cplcUFeFehhL(gO1,i2,i1)
coupR1 = cplcUFeFehhR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFeFehhL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFeFehhR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VP, Fe 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,MFe2(i2),MVP2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*MFe(i2)*Real(SA_DerB0(p2,MFe2(i2),MVP2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFeFeVPL(gO1,i2)
coupR1 = cplcUFeFeVPR(gO1,i2)
coupL2 =  Conjg(cplcUFeFeVPL(gO2,i2))
coupR2 =  Conjg(cplcUFeFeVPR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! VZ, Fe 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,MFe2(i2),MVZ2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*MFe(i2)*Real(SA_DerB0(p2,MFe2(i2),MVZ2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFeFeVZL(gO1,i2)
coupR1 = cplcUFeFeVZR(gO1,i2)
coupL2 =  Conjg(cplcUFeFeVZL(gO2,i2))
coupR2 =  Conjg(cplcUFeFeVZR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! Hm, Fv 
!------------------------ 
    Do i1 = 1, 2
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_DerB1(p2,0._dp,MHm2(i1)),dp) 
B0m2 = 0._dp*Real(SA_DerB0(p2,0._dp,MHm2(i1)),dp) 
coupL1 = cplcUFeFvHmL(gO1,i2,i1)
coupR1 = cplcUFeFvHmR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFeFvHmL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFeFvHmR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VWm, Fv 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,0._dp,MVWm2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*0._dp*Real(SA_DerB0(p2,0._dp,MVWm2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFeFvVWmL(gO1,i2)
coupR1 = cplcUFeFvVWmR(gO1,i2)
coupL2 =  Conjg(cplcUFeFvVWmL(gO2,i2))
coupR2 =  Conjg(cplcUFeFvVWmR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 SigL = oo16pi2*SigL 
SigR = oo16pi2*SigR 
SigSL = oo16pi2*SigSL 
SigSR = oo16pi2*SigSR 
 
End Subroutine DerSigma1LoopFe 
 
Subroutine Sigma1LoopFv(p2,MHm,MHm2,MFe,MFe2,MVWm,MVWm2,MVZ,MVZ2,cplcUFvFecHmL,       & 
& cplcUFvFecHmR,cplcUFvFecVWmL,cplcUFvFecVWmR,cplcUFvFvVZL,cplcUFvFvVZR,sigL,            & 
& sigR,sigSL,sigSR)

Implicit None 
Real(dp), Intent(in) :: MHm(2),MHm2(2),MFe(3),MFe2(3),MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcUFvFecHmL(3,3,2),cplcUFvFecHmR(3,3,2),cplcUFvFecVWmL(3,3),cplcUFvFecVWmR(3,3),    & 
& cplcUFvFvVZL(3,3),cplcUFvFvVZR(3,3)

Complex(dp), Intent(out) :: SigL(3,3),SigR(3,3), SigSL(3,3), SigSR(3,3) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumL(3,3), sumR(3,3), sumSL(3,3), sumSR(3,3) 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
SigL = Cmplx(0._dp,0._dp,dp) 
SigR = Cmplx(0._dp,0._dp,dp) 
SigSL = Cmplx(0._dp,0._dp,dp) 
 SigSR = Cmplx(0._dp,0._dp,dp) 
 
!------------------------ 
! conj[Hm], Fe 
!------------------------ 
    Do i1 = 1, 2
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_B1(p2,MFe2(i2),MHm2(i1)),dp) 
B0m2 = MFe(i2)*Real(SA_B0(p2,MFe2(i2),MHm2(i1)),dp) 
coupL1 = cplcUFvFecHmL(gO1,i2,i1)
coupR1 = cplcUFvFecHmR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFvFecHmL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFvFecHmR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Fe 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,MFe2(i2),MVWm2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFe(i2)*Real(SA_B0(p2,MFe2(i2),MVWm2)-0.5_dp*rMS,dp) 
coupL1 = cplcUFvFecVWmL(gO1,i2)
coupR1 = cplcUFvFecVWmR(gO1,i2)
coupL2 =  Conjg(cplcUFvFecVWmL(gO2,i2))
coupR2 =  Conjg(cplcUFvFecVWmR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! VZ, Fv 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_B1(p2,0._dp,MVZ2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*0._dp*Real(SA_B0(p2,0._dp,MVZ2)-0.5_dp*rMS,dp) 
coupL1 = cplcUFvFvVZL(gO1,i2)
coupR1 = cplcUFvFvVZR(gO1,i2)
coupL2 =  Conjg(cplcUFvFvVZL(gO2,i2))
coupR2 =  Conjg(cplcUFvFvVZR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 SigL = oo16pi2*SigL 
SigR = oo16pi2*SigR 
SigSL = oo16pi2*SigSL 
SigSR = oo16pi2*SigSR 
 
End Subroutine Sigma1LoopFv 
 
Subroutine DerSigma1LoopFv(p2,MHm,MHm2,MFe,MFe2,MVWm,MVWm2,MVZ,MVZ2,cplcUFvFecHmL,    & 
& cplcUFvFecHmR,cplcUFvFecVWmL,cplcUFvFecVWmR,cplcUFvFvVZL,cplcUFvFvVZR,sigL,            & 
& sigR,sigSL,sigSR)

Implicit None 
Real(dp), Intent(in) :: MHm(2),MHm2(2),MFe(3),MFe2(3),MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcUFvFecHmL(3,3,2),cplcUFvFecHmR(3,3,2),cplcUFvFecVWmL(3,3),cplcUFvFecVWmR(3,3),    & 
& cplcUFvFvVZL(3,3),cplcUFvFvVZR(3,3)

Complex(dp), Intent(out) :: SigL(3,3),SigR(3,3), SigSL(3,3), SigSR(3,3) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumL(3,3), sumR(3,3), sumSL(3,3), sumSR(3,3) 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

SigL = Cmplx(0._dp,0._dp,dp) 
SigR = Cmplx(0._dp,0._dp,dp) 
SigSL = Cmplx(0._dp,0._dp,dp) 
 SigSR = Cmplx(0._dp,0._dp,dp) 
 
!------------------------ 
! conj[Hm], Fe 
!------------------------ 
    Do i1 = 1, 2
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -Real(SA_DerB1(p2,MFe2(i2),MHm2(i1)),dp) 
B0m2 = MFe(i2)*Real(SA_DerB0(p2,MFe2(i2),MHm2(i1)),dp) 
coupL1 = cplcUFvFecHmL(gO1,i2,i1)
coupR1 = cplcUFvFecHmR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFvFecHmL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFvFecHmR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Fe 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,MFe2(i2),MVWm2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*MFe(i2)*Real(SA_DerB0(p2,MFe2(i2),MVWm2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFvFecVWmL(gO1,i2)
coupR1 = cplcUFvFecVWmR(gO1,i2)
coupL2 =  Conjg(cplcUFvFecVWmL(gO2,i2))
coupR2 =  Conjg(cplcUFvFecVWmR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! VZ, Fv 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
B1m2 = -2._dp*Real(SA_DerB1(p2,0._dp,MVZ2)+ 0.5_dp*DerrMS,dp) 
B0m2 = -4._dp*0._dp*Real(SA_DerB0(p2,0._dp,MVZ2)-0.5_dp*DerrMS,dp) 
coupL1 = cplcUFvFvVZL(gO1,i2)
coupR1 = cplcUFvFvVZR(gO1,i2)
coupL2 =  Conjg(cplcUFvFvVZL(gO2,i2))
coupR2 =  Conjg(cplcUFvFvVZR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 SigL = oo16pi2*SigL 
SigR = oo16pi2*SigR 
SigSL = oo16pi2*SigSL 
SigSR = oo16pi2*SigSR 
 
End Subroutine DerSigma1LoopFv 
 
Subroutine Pi1LoopVG(p2,MFd,MFd2,MFu,MFu2,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,        & 
& cplcFuFuVGR,cplcgGgGVG,cplVGVGVG,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFu(3),MFu2(3)

Complex(dp), Intent(in) :: cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),cplcgGgGVG,       & 
& cplVGVGVG,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2, A0m12, A0m22 
Complex(dp), Intent(inout) :: res 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_Hloop(p2,MFd2(i1),MFd2(i2)),dp) 
B0m2 = 4._dp*MFd(i1)*MFd(i2)*Real(SA_B0(p2,MFd2(i1),MFd2(i2)),dp) 
coupL1 = cplcFdFdVGL(i1,i2)
coupR1 = cplcFdFdVGR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +0.5_dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_Hloop(p2,MFu2(i1),MFu2(i2)),dp) 
B0m2 = 4._dp*MFu(i1)*MFu(i2)*Real(SA_B0(p2,MFu2(i1),MFu2(i2)),dp) 
coupL1 = cplcFuFuVGL(i1,i2)
coupR1 = cplcFuFuVGR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +0.5_dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gG], gG 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(VGGloop(p2,0._dp,0._dp),dp)
coup1 = cplcgGgGVG
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +3._dp* SumI  
!------------------------ 
! VG, VG 
!------------------------ 
sumI = 0._dp 
 
coup1 = cplVGVGVG
coup2 = Conjg(coup1) 
    SumI = -VVVloop(p2,0._dp,0._dp)*coup1*coup2 
res = res +1.5_dp* SumI  
!------------------------ 
! VG 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_A0(0._dp) +RXi/4._dp*SA_A0(0._dp*RXi) 
coup1 = cplVGVGVGVG1
coup2 = cplVGVGVGVG2
coup3 = cplVGVGVGVG3
SumI = ((2._dp*rMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*0._dp-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1._dp/2._dp* SumI  
res = oo16pi2*res 
 
End Subroutine Pi1LoopVG 
 
Subroutine DerPi1LoopVG(p2,MFd,MFd2,MFu,MFu2,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,     & 
& cplcFuFuVGR,cplcgGgGVG,cplVGVGVG,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFu(3),MFu2(3)

Complex(dp), Intent(in) :: cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),cplcgGgGVG,       & 
& cplVGVGVG,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2, A0m12, A0m22 
Complex(dp), Intent(inout) :: res 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_DerHloop(p2,MFd2(i1),MFd2(i2)),dp) 
B0m2 = 4._dp*MFd(i1)*MFd(i2)*Real(SA_DerB0(p2,MFd2(i1),MFd2(i2)),dp) 
coupL1 = cplcFdFdVGL(i1,i2)
coupR1 = cplcFdFdVGR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +0.5_dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_DerHloop(p2,MFu2(i1),MFu2(i2)),dp) 
B0m2 = 4._dp*MFu(i1)*MFu(i2)*Real(SA_DerB0(p2,MFu2(i1),MFu2(i2)),dp) 
coupL1 = cplcFuFuVGL(i1,i2)
coupR1 = cplcFuFuVGR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +0.5_dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gG], gG 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(DerVGGloop(p2,MVG2,MVG2),dp)
coup1 = cplcgGgGVG
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +3._dp* SumI  
!------------------------ 
! VG, VG 
!------------------------ 
sumI = 0._dp 
 
coup1 = cplVGVGVG
coup2 = Conjg(coup1) 
    SumI = -DerVVVloop(p2,MVG2,MVG2)*coup1*coup2 
res = res +1.5_dp* SumI  
!------------------------ 
! VG 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_DerA0(MVG2) +RXi/4._dp*SA_DerA0(MVG2*RXi) 
coup1 = cplVGVGVGVG1
coup2 = cplVGVGVGVG2
coup3 = cplVGVGVGVG3
SumI = ((2._dp*DerrMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVG2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1._dp/2._dp* SumI  
res = oo16pi2*res 
 
End Subroutine DerPi1LoopVG 
 
Subroutine Pi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,               & 
& cplcFdFdVPL,cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,               & 
& cplcgWmgWmVP,cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,          & 
& cplcVWmVPVPVWm3,cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),MHm(2),MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),cplcFuFuVPL(3,3), & 
& cplcFuFuVPR(3,3),cplcgWmgWmVP,cplcgWpCgWpCVP,cplHmcHmVP(2,2),cplHmcVWmVP(2),           & 
& cplcVWmVPVWm,cplHmcHmVPVP(2,2),cplcVWmVPVPVWm3,cplcVWmVPVPVWm1,cplcVWmVPVPVWm2

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2, A0m12, A0m22 
Complex(dp), Intent(inout) :: res 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MFd2(i1).gt.50._dp**2).and.(MFd2(i2).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MFd2(i1).lt.50._dp**2).and.(MFd2(i2).lt.50._dp**2)) )   Then 
H0m2 = Real(SA_Hloop(p2,MFd2(i1),MFd2(i2)),dp) 
B0m2 = 4._dp*MFd(i1)*MFd(i2)*Real(SA_B0(p2,MFd2(i1),MFd2(i2)),dp) 
coupL1 = cplcFdFdVPL(i1,i2)
coupR1 = cplcFdFdVPR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +3._dp* SumI  
End If 
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MFe2(i1).gt.50._dp**2).and.(MFe2(i2).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MFe2(i1).lt.50._dp**2).and.(MFe2(i2).lt.50._dp**2)) )   Then 
H0m2 = Real(SA_Hloop(p2,MFe2(i1),MFe2(i2)),dp) 
B0m2 = 4._dp*MFe(i1)*MFe(i2)*Real(SA_B0(p2,MFe2(i1),MFe2(i2)),dp) 
coupL1 = cplcFeFeVPL(i1,i2)
coupR1 = cplcFeFeVPR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +1._dp* SumI  
End If 
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MFu2(i1).gt.50._dp**2).and.(MFu2(i2).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MFu2(i1).lt.50._dp**2).and.(MFu2(i2).lt.50._dp**2)) )   Then 
H0m2 = Real(SA_Hloop(p2,MFu2(i1),MFu2(i2)),dp) 
B0m2 = 4._dp*MFu(i1)*MFu(i2)*Real(SA_B0(p2,MFu2(i1),MFu2(i2)),dp) 
coupL1 = cplcFuFuVPL(i1,i2)
coupR1 = cplcFuFuVPR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +3._dp* SumI  
End If 
      End Do 
     End Do 
 !------------------------ 
! bar[gWm], gWm 
!------------------------ 
sumI = 0._dp 
 
If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MVWm2.gt.50._dp**2).and.(MVWm2.gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MVWm2.lt.50._dp**2).and.(MVWm2.lt.50._dp**2)) )   Then 
SumI = 0._dp 
B0m2 = Real(VGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWmgWmVP
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
End If 
!------------------------ 
! bar[gWmC], gWmC 
!------------------------ 
sumI = 0._dp 
 
If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MVWm2.gt.50._dp**2).and.(MVWm2.gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MVWm2.lt.50._dp**2).and.(MVWm2.lt.50._dp**2)) )   Then 
SumI = 0._dp 
B0m2 = Real(VGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWpCgWpCVP
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
End If 
!------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 2
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MHm2(i2).gt.50._dp**2).and.(MHm2(i1).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MHm2(i2).lt.50._dp**2).and.(MHm2(i1).lt.50._dp**2)) )   Then 
B22m2 = Real(VSSloop(p2,MHm2(i2),MHm2(i1)),dp)  
coup1 = cplHmcHmVP(i2,i1)
    SumI = Abs(coup1)**2*B22m2 
res = res +1._dp* SumI  
End If 
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MVWm2.gt.50._dp**2).and.(MHm2(i2).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MVWm2.lt.50._dp**2).and.(MHm2(i2).lt.50._dp**2)) )   Then 
B0m2 = Real(VVSloop(p2,MVWm2,MHm2(i2)),dp)
coup1 = cplHmcVWmVP(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +2._dp* SumI  
End If 
    End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MVWm2.gt.50._dp**2).and.(MVWm2.gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MVWm2.lt.50._dp**2).and.(MVWm2.lt.50._dp**2)) )   Then 
coup1 = cplcVWmVPVWm
coup2 = Conjg(coup1) 
    SumI = -VVVloop(p2,MVWm2,MVWm2)*coup1*coup2 
res = res +1._dp* SumI  
End If 
!------------------------ 
! conj[Hm] 
!------------------------ 
    Do i1 = 1, 2
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MHm2(i1).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MHm2(i1).lt.50._dp**2)) )   Then 
SumI = 0._dp 
 A0m2 = SA_A0(MHm2(i1))
 coup1 = cplHmcHmVPVP(i1,i1)
 SumI = coup1*A0m2 
res = res +1* SumI  
End If 
      End Do 
 !------------------------ 
! conj[VWm] 
!------------------------ 
If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MVWm2.gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MVWm2.lt.50._dp**2)) )   Then 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_A0(MVWm2) +RXi/4._dp*SA_A0(MVWm2*RXi) 
coup1 = cplcVWmVPVPVWm3
coup2 = cplcVWmVPVPVWm1
coup3 = cplcVWmVPVPVWm2
SumI = ((2._dp*rMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVWm2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1* SumI  
End If 
res = oo16pi2*res 
 
End Subroutine Pi1LoopVP 
 
Subroutine DerPi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,            & 
& cplcFdFdVPL,cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,               & 
& cplcgWmgWmVP,cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,          & 
& cplcVWmVPVPVWm3,cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),MHm(2),MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),cplcFuFuVPL(3,3), & 
& cplcFuFuVPR(3,3),cplcgWmgWmVP,cplcgWpCgWpCVP,cplHmcHmVP(2,2),cplHmcVWmVP(2),           & 
& cplcVWmVPVWm,cplHmcHmVPVP(2,2),cplcVWmVPVPVWm3,cplcVWmVPVPVWm1,cplcVWmVPVPVWm2

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2, A0m12, A0m22 
Complex(dp), Intent(inout) :: res 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MFd2(i1).gt.50._dp**2).and.(MFd2(i2).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MFd2(i1).lt.50._dp**2).and.(MFd2(i2).lt.50._dp**2)) )   Then 
H0m2 = Real(SA_DerHloop(p2,MFd2(i1),MFd2(i2)),dp) 
B0m2 = 4._dp*MFd(i1)*MFd(i2)*Real(SA_DerB0(p2,MFd2(i1),MFd2(i2)),dp) 
coupL1 = cplcFdFdVPL(i1,i2)
coupR1 = cplcFdFdVPR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +3._dp* SumI  
End If 
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MFe2(i1).gt.50._dp**2).and.(MFe2(i2).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MFe2(i1).lt.50._dp**2).and.(MFe2(i2).lt.50._dp**2)) )   Then 
H0m2 = Real(SA_DerHloop(p2,MFe2(i1),MFe2(i2)),dp) 
B0m2 = 4._dp*MFe(i1)*MFe(i2)*Real(SA_DerB0(p2,MFe2(i1),MFe2(i2)),dp) 
coupL1 = cplcFeFeVPL(i1,i2)
coupR1 = cplcFeFeVPR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +1._dp* SumI  
End If 
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MFu2(i1).gt.50._dp**2).and.(MFu2(i2).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MFu2(i1).lt.50._dp**2).and.(MFu2(i2).lt.50._dp**2)) )   Then 
H0m2 = Real(SA_DerHloop(p2,MFu2(i1),MFu2(i2)),dp) 
B0m2 = 4._dp*MFu(i1)*MFu(i2)*Real(SA_DerB0(p2,MFu2(i1),MFu2(i2)),dp) 
coupL1 = cplcFuFuVPL(i1,i2)
coupR1 = cplcFuFuVPR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +3._dp* SumI  
End If 
      End Do 
     End Do 
 !------------------------ 
! bar[gWm], gWm 
!------------------------ 
sumI = 0._dp 
 
If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MVWm2.gt.50._dp**2).and.(MVWm2.gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MVWm2.lt.50._dp**2).and.(MVWm2.lt.50._dp**2)) )   Then 
SumI = 0._dp 
B0m2 = Real(DerVGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWmgWmVP
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
End If 
!------------------------ 
! bar[gWmC], gWmC 
!------------------------ 
sumI = 0._dp 
 
If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MVWm2.gt.50._dp**2).and.(MVWm2.gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MVWm2.lt.50._dp**2).and.(MVWm2.lt.50._dp**2)) )   Then 
SumI = 0._dp 
B0m2 = Real(DerVGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWpCgWpCVP
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
End If 
!------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 2
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MHm2(i2).gt.50._dp**2).and.(MHm2(i1).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MHm2(i2).lt.50._dp**2).and.(MHm2(i1).lt.50._dp**2)) )   Then 
B22m2 = Real(DerVSSloop(p2,MHm2(i2),MHm2(i1)),dp)  
coup1 = cplHmcHmVP(i2,i1)
    SumI = Abs(coup1)**2*B22m2 
res = res +1._dp* SumI  
End If 
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MVWm2.gt.50._dp**2).and.(MHm2(i2).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MVWm2.lt.50._dp**2).and.(MHm2(i2).lt.50._dp**2)) )   Then 
B0m2 = Real(DerVVSloop(p2,MVWm2,MHm2(i2)),dp)
coup1 = cplHmcVWmVP(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +2._dp* SumI  
End If 
    End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MVWm2.gt.50._dp**2).and.(MVWm2.gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MVWm2.lt.50._dp**2).and.(MVWm2.lt.50._dp**2)) )   Then 
coup1 = cplcVWmVPVWm
coup2 = Conjg(coup1) 
    SumI = -DerVVVloop(p2,MVWm2,MVWm2)*coup1*coup2 
res = res +1._dp* SumI  
End If 
!------------------------ 
! conj[Hm] 
!------------------------ 
    Do i1 = 1, 2
 If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MHm2(i1).gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MHm2(i1).lt.50._dp**2)) )   Then 
SumI = 0._dp 
 A0m2 = SA_DerA0(MHm2(i1))
 coup1 = cplHmcHmVPVP(i1,i1)
 SumI = coup1*A0m2 
res = res +1* SumI  
End If 
      End Do 
 !------------------------ 
! conj[VWm] 
!------------------------ 
If (((.not.OnlyHeavyStates).and.(.not.OnlyLightStates)) & 
  & .or.((OnlyHeavyStates).and.(MVWm2.gt.50._dp**2))   & 
  & .or.((OnlyLightStates).and.(MVWm2.lt.50._dp**2)) )   Then 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_DerA0(MVWm2) +RXi/4._dp*SA_DerA0(MVWm2*RXi) 
coup1 = cplcVWmVPVPVWm3
coup2 = cplcVWmVPVPVWm1
coup3 = cplcVWmVPVPVWm2
SumI = ((2._dp*DerrMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVWm2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1* SumI  
End If 
res = oo16pi2*res 
 
End Subroutine DerPi1LoopVP 
 
Subroutine OneLoopVZ(g1,g2,vd,vu,TW,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,              & 
& MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,          & 
& cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,           & 
& cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,      & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,delta,mass,mass2,kont)

Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MVZ,MVZ2,MHm(2),          & 
& MHm2(2),MVWm,MVWm2

Real(dp), Intent(in) :: g1,g2,vd,vu,TW

Complex(dp), Intent(in) :: cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFuFuVZL(3,3), & 
& cplcFuFuVZR(3,3),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),cplcgWmgWmVZ,cplcgWpCgWpCVZ,        & 
& cplhhhhVZ(6,6),cplhhVZVZ(6),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),cplcVWmVWmVZ,               & 
& cplhhhhVZVZ(6,6),cplHmcHmVZVZ(2,2),cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3

Integer , Intent(inout):: kont 
Integer :: i1,i2,i3,i4,j1,j2,j3,j4,il,i_count, ierr 
Real(dp), Intent(in) :: delta 
Real(dp) :: mi, mi2, p2, test_m2 
Complex(dp) :: PiSf, SigL, SigR, SigSL, SigSR 
Real(dp), Intent(out) :: mass, mass2 
Iname = Iname + 1 
NameOfUnit(Iname) = 'OneLoopVZ'
 
mi2 = MVZ2 

 
p2 = MVZ2
PiSf = ZeroC 
Call Pi1LoopVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,              & 
& MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,    & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,               & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,          & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,PiSf)

mass2 = mi2 + Real(PiSf,dp) 
mass = sqrt(mass2) 
i_count = 0 
Do  
i_count = i_count + 1 
test_m2 = mass2 
p2 =  mass2 
PiSf = ZeroC 
Call Pi1LoopVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,              & 
& MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,    & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,               & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,          & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,PiSf)

mass2 = mi2 + Real(PiSf,dp) 
mass = sqrt(mass2) 
 If (test_m2.Ne.0._dp) Then 
    test_m2 = Abs(test_m2 - mass2) / test_m2 
 Else 
    test_m2 = Abs(mass2) 
 End If 
 If (mass2.Ge.0._dp) Then 
   If (RotateNegativeFermionMasses) Then 
    mass = sqrt(mass2) 
   End if 
  Else 
 If (Abs(mass2).lt.1.0E-30_dp) test_m2 = 0._dp 
     Write(ErrCan,*) 'Warning from routine'//NameOfUnit(Iname) 
     Write(ErrCan,*) 'in the calculation of the masses' 
     Write(ErrCan,*) 'occurred a negative mass squared!' 
   SignOfMassChanged = .True. 
   mass = 0._dp 
  End If 
If (test_m2.LT.0.1_dp*delta) Exit 
If (i_count.Gt.30) Then 
  Write(*,*) "Problem in "//NameOfUnit(Iname), test_m2, mass2 
  kont = -510 
  Call AddError(510) 
 Exit 
End If 
End Do 
 
 
Iname = Iname -1 
End Subroutine OneLoopVZ
 
 
Subroutine Pi1LoopVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,             & 
& MHm2,MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,           & 
& cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,             & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,& 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MVZ,MVZ2,MHm(2),          & 
& MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFuFuVZL(3,3), & 
& cplcFuFuVZR(3,3),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),cplcgWmgWmVZ,cplcgWpCgWpCVZ,        & 
& cplhhhhVZ(6,6),cplhhVZVZ(6),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),cplcVWmVWmVZ,               & 
& cplhhhhVZVZ(6,6),cplHmcHmVZVZ(2,2),cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2, A0m12, A0m22 
Complex(dp), Intent(inout) :: res 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_Hloop(p2,MFd2(i1),MFd2(i2)),dp) 
B0m2 = 4._dp*MFd(i1)*MFd(i2)*Real(SA_B0(p2,MFd2(i1),MFd2(i2)),dp) 
coupL1 = cplcFdFdVZL(i1,i2)
coupR1 = cplcFdFdVZR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_Hloop(p2,MFe2(i1),MFe2(i2)),dp) 
B0m2 = 4._dp*MFe(i1)*MFe(i2)*Real(SA_B0(p2,MFe2(i1),MFe2(i2)),dp) 
coupL1 = cplcFeFeVZL(i1,i2)
coupR1 = cplcFeFeVZR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_Hloop(p2,MFu2(i1),MFu2(i2)),dp) 
B0m2 = 4._dp*MFu(i1)*MFu(i2)*Real(SA_B0(p2,MFu2(i1),MFu2(i2)),dp) 
coupL1 = cplcFuFuVZL(i1,i2)
coupR1 = cplcFuFuVZR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fv], Fv 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_Hloop(p2,0._dp,0._dp),dp) 
B0m2 = 4._dp*0._dp*0._dp*Real(SA_B0(p2,0._dp,0._dp),dp) 
coupL1 = cplcFvFvVZL(i1,i2)
coupR1 = cplcFvFvVZR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gWm], gWm 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(VGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWmgWmVZ
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gWmC 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(VGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWpCgWpCVZ
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! hh, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 6
       Do i2 = 1, 6
 B22m2 = Real(VSSloop(p2,Mhh2(i2),Mhh2(i1)),dp)  
coup1 = cplhhhhVZ(i1,i2)
    SumI = Abs(coup1)**2*B22m2 
res = res +0.5_dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! VZ, hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 B0m2 = Real(VVSloop(p2,MVZ2,Mhh2(i2)),dp)
coup1 = cplhhVZVZ(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 2
 B22m2 = Real(VSSloop(p2,MHm2(i2),MHm2(i1)),dp)  
coup1 = cplHmcHmVZ(i2,i1)
    SumI = Abs(coup1)**2*B22m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 B0m2 = Real(VVSloop(p2,MVWm2,MHm2(i2)),dp)
coup1 = cplHmcVWmVZ(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +2._dp* SumI  
    End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
coup1 = cplcVWmVWmVZ
coup2 = Conjg(coup1) 
    SumI = -VVVloop(p2,MVWm2,MVWm2)*coup1*coup2 
res = res +1._dp* SumI  
!------------------------ 
! hh 
!------------------------ 
    Do i1 = 1, 6
 SumI = 0._dp 
 A0m2 = SA_A0(Mhh2(i1))
 coup1 = cplhhhhVZVZ(i1,i1)
 SumI = coup1*A0m2 
res = res +1._dp/2._dp* SumI  
      End Do 
 !------------------------ 
! conj[Hm] 
!------------------------ 
    Do i1 = 1, 2
 SumI = 0._dp 
 A0m2 = SA_A0(MHm2(i1))
 coup1 = cplHmcHmVZVZ(i1,i1)
 SumI = coup1*A0m2 
res = res +1* SumI  
      End Do 
 !------------------------ 
! conj[VWm] 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_A0(MVWm2) +RXi/4._dp*SA_A0(MVWm2*RXi) 
coup1 = cplcVWmVWmVZVZ1
coup2 = cplcVWmVWmVZVZ2
coup3 = cplcVWmVWmVZVZ3
SumI = ((2._dp*rMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVWm2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1* SumI  
res = oo16pi2*res 
 
End Subroutine Pi1LoopVZ 
 
Subroutine DerPi1LoopVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,              & 
& MHm,MHm2,MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,       & 
& cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,             & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,& 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MVZ,MVZ2,MHm(2),          & 
& MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFuFuVZL(3,3), & 
& cplcFuFuVZR(3,3),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),cplcgWmgWmVZ,cplcgWpCgWpCVZ,        & 
& cplhhhhVZ(6,6),cplhhVZVZ(6),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),cplcVWmVWmVZ,               & 
& cplhhhhVZVZ(6,6),cplHmcHmVZVZ(2,2),cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2, A0m12, A0m22 
Complex(dp), Intent(inout) :: res 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_DerHloop(p2,MFd2(i1),MFd2(i2)),dp) 
B0m2 = 4._dp*MFd(i1)*MFd(i2)*Real(SA_DerB0(p2,MFd2(i1),MFd2(i2)),dp) 
coupL1 = cplcFdFdVZL(i1,i2)
coupR1 = cplcFdFdVZR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_DerHloop(p2,MFe2(i1),MFe2(i2)),dp) 
B0m2 = 4._dp*MFe(i1)*MFe(i2)*Real(SA_DerB0(p2,MFe2(i1),MFe2(i2)),dp) 
coupL1 = cplcFeFeVZL(i1,i2)
coupR1 = cplcFeFeVZR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_DerHloop(p2,MFu2(i1),MFu2(i2)),dp) 
B0m2 = 4._dp*MFu(i1)*MFu(i2)*Real(SA_DerB0(p2,MFu2(i1),MFu2(i2)),dp) 
coupL1 = cplcFuFuVZL(i1,i2)
coupR1 = cplcFuFuVZR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fv], Fv 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_DerHloop(p2,0._dp,0._dp),dp) 
B0m2 = 4._dp*0._dp*0._dp*Real(SA_DerB0(p2,0._dp,0._dp),dp) 
coupL1 = cplcFvFvVZL(i1,i2)
coupR1 = cplcFvFvVZR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gWm], gWm 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(DerVGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWmgWmVZ
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gWmC 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(DerVGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWpCgWpCVZ
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! hh, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 6
       Do i2 = 1, 6
 B22m2 = Real(DerVSSloop(p2,Mhh2(i2),Mhh2(i1)),dp)  
coup1 = cplhhhhVZ(i1,i2)
    SumI = Abs(coup1)**2*B22m2 
res = res +0.5_dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! VZ, hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 B0m2 = Real(DerVVSloop(p2,MVZ2,Mhh2(i2)),dp)
coup1 = cplhhVZVZ(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 2
 B22m2 = Real(DerVSSloop(p2,MHm2(i2),MHm2(i1)),dp)  
coup1 = cplHmcHmVZ(i2,i1)
    SumI = Abs(coup1)**2*B22m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 B0m2 = Real(DerVVSloop(p2,MVWm2,MHm2(i2)),dp)
coup1 = cplHmcVWmVZ(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +2._dp* SumI  
    End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
coup1 = cplcVWmVWmVZ
coup2 = Conjg(coup1) 
    SumI = -DerVVVloop(p2,MVWm2,MVWm2)*coup1*coup2 
res = res +1._dp* SumI  
!------------------------ 
! hh 
!------------------------ 
    Do i1 = 1, 6
 SumI = 0._dp 
 A0m2 = SA_DerA0(Mhh2(i1))
 coup1 = cplhhhhVZVZ(i1,i1)
 SumI = coup1*A0m2 
res = res +1._dp/2._dp* SumI  
      End Do 
 !------------------------ 
! conj[Hm] 
!------------------------ 
    Do i1 = 1, 2
 SumI = 0._dp 
 A0m2 = SA_DerA0(MHm2(i1))
 coup1 = cplHmcHmVZVZ(i1,i1)
 SumI = coup1*A0m2 
res = res +1* SumI  
      End Do 
 !------------------------ 
! conj[VWm] 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_DerA0(MVWm2) +RXi/4._dp*SA_DerA0(MVWm2*RXi) 
coup1 = cplcVWmVWmVZVZ1
coup2 = cplcVWmVWmVZVZ2
coup3 = cplcVWmVWmVZVZ3
SumI = ((2._dp*DerrMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVWm2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1* SumI  
res = oo16pi2*res 
 
End Subroutine DerPi1LoopVZ 
 
Subroutine OneLoopVWm(g2,vd,vu,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,               & 
& Mhh2,MVWm,MVWm2,MVZ,MVZ2,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,      & 
& cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,    & 
& cplHmcVWmVP,cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,      & 
& cplcVWmVPVPVWm3,cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3, & 
& cplcVWmcVWmVWmVWm1,cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,delta,              & 
& mass,mass2,kont)

Real(dp), Intent(in) :: MFu(3),MFu2(3),MFd(3),MFd2(3),MFe(3),MFe2(3),MHm(2),MHm2(2),Mhh(6),Mhh2(6),           & 
& MVWm,MVWm2,MVZ,MVZ2

Real(dp), Intent(in) :: g2,vd,vu

Complex(dp), Intent(in) :: cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),          & 
& cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm(6,2),            & 
& cplhhcVWmVWm(6),cplHmcVWmVP(2),cplHmcVWmVZ(2),cplcVWmVPVWm,cplcVWmVWmVZ,               & 
& cplhhhhcVWmVWm(6,6),cplHmcHmcVWmVWm(2,2),cplcVWmVPVPVWm3,cplcVWmVPVPVWm1,              & 
& cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,              & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3

Integer , Intent(inout):: kont 
Integer :: i1,i2,i3,i4,j1,j2,j3,j4,il,i_count, ierr 
Real(dp), Intent(in) :: delta 
Real(dp) :: mi, mi2, p2, test_m2 
Complex(dp) :: PiSf, SigL, SigR, SigSL, SigSR 
Real(dp), Intent(out) :: mass, mass2 
Iname = Iname + 1 
NameOfUnit(Iname) = 'OneLoopVWm'
 
mi2 = MVWm2 

 
p2 = MVWm2
PiSf = ZeroC 
Call Pi1LoopVWm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,MVWm2,           & 
& MVZ,MVZ2,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm,       & 
& cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmVPVPVWm3,  & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,& 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,PiSf)

mass2 = mi2 + Real(PiSf,dp) 
mass = sqrt(mass2) 
i_count = 0 
Do  
i_count = i_count + 1 
test_m2 = mass2 
p2 =  mass2 
PiSf = ZeroC 
Call Pi1LoopVWm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,MVWm2,           & 
& MVZ,MVZ2,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm,       & 
& cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmVPVPVWm3,  & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,& 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,PiSf)

mass2 = mi2 + Real(PiSf,dp) 
mass = sqrt(mass2) 
 If (test_m2.Ne.0._dp) Then 
    test_m2 = Abs(test_m2 - mass2) / test_m2 
 Else 
    test_m2 = Abs(mass2) 
 End If 
 If (mass2.Ge.0._dp) Then 
   If (RotateNegativeFermionMasses) Then 
    mass = sqrt(mass2) 
   End if 
  Else 
 If (Abs(mass2).lt.1.0E-30_dp) test_m2 = 0._dp 
     Write(ErrCan,*) 'Warning from routine'//NameOfUnit(Iname) 
     Write(ErrCan,*) 'in the calculation of the masses' 
     Write(ErrCan,*) 'occurred a negative mass squared!' 
   SignOfMassChanged = .True. 
   mass = 0._dp 
  End If 
If (test_m2.LT.0.1_dp*delta) Exit 
If (i_count.Gt.30) Then 
  Write(*,*) "Problem in "//NameOfUnit(Iname), test_m2, mass2 
  kont = -510 
  Call AddError(510) 
 Exit 
End If 
End Do 
 
 
Iname = Iname -1 
End Subroutine OneLoopVWm
 
 
Subroutine Pi1LoopVWm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,           & 
& MVWm2,MVZ,MVZ2,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm, & 
& cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmVPVPVWm3,  & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,& 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFu(3),MFu2(3),MFd(3),MFd2(3),MFe(3),MFe2(3),MHm(2),MHm2(2),Mhh(6),Mhh2(6),           & 
& MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),          & 
& cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm(6,2),            & 
& cplhhcVWmVWm(6),cplHmcVWmVP(2),cplHmcVWmVZ(2),cplcVWmVPVWm,cplcVWmVWmVZ,               & 
& cplhhhhcVWmVWm(6,6),cplHmcHmcVWmVWm(2,2),cplcVWmVPVPVWm3,cplcVWmVPVPVWm1,              & 
& cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,              & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2, A0m12, A0m22 
Complex(dp), Intent(inout) :: res 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
res = 0._dp 
 
!------------------------ 
! bar[Fu], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_Hloop(p2,MFu2(i1),MFd2(i2)),dp) 
B0m2 = 4._dp*MFu(i1)*MFd(i2)*Real(SA_B0(p2,MFu2(i1),MFd2(i2)),dp) 
coupL1 = cplcFuFdcVWmL(i1,i2)
coupR1 = cplcFuFdcVWmR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fv], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_Hloop(p2,0._dp,MFe2(i2)),dp) 
B0m2 = 4._dp*0._dp*MFe(i2)*Real(SA_B0(p2,0._dp,MFe2(i2)),dp) 
coupL1 = cplcFvFecVWmL(i1,i2)
coupR1 = cplcFvFecVWmR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gWmC], gP 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(VGGloop(p2,0._dp,MVWm2),dp)
coup1 = cplcgWpCgAcVWm
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! bar[gP], gWm 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(VGGloop(p2,MVWm2,0._dp),dp)
coup1 = cplcgAgWmcVWm
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! bar[gZ], gWm 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(VGGloop(p2,MVWm2,MVZ2),dp)
coup1 = cplcgZgWmcVWm
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gZ 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(VGGloop(p2,MVZ2,MVWm2),dp)
coup1 = cplcgWpCgZcVWm
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! Hm, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 6
 B22m2 = Real(VSSloop(p2,Mhh2(i2),MHm2(i1)),dp)  
coup1 = cplhhHmcVWm(i2,i1)
    SumI = Abs(coup1)**2*B22m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! VWm, hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 B0m2 = Real(VVSloop(p2,MVWm2,Mhh2(i2)),dp)
coup1 = cplhhcVWmVWm(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VP, Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 B0m2 = Real(VVSloop(p2,0._dp,MHm2(i2)),dp)
coup1 = cplHmcVWmVP(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VZ, Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 B0m2 = Real(VVSloop(p2,MVZ2,MHm2(i2)),dp)
coup1 = cplHmcVWmVZ(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VWm, VP 
!------------------------ 
sumI = 0._dp 
 
coup1 = cplcVWmVPVWm
coup2 = Conjg(coup1) 
    SumI = -VVVloop(p2,MVWm2,0._dp)*coup1*coup2 
res = res +1._dp* SumI  
!------------------------ 
! VZ, VWm 
!------------------------ 
sumI = 0._dp 
 
coup1 = cplcVWmVWmVZ
coup2 = Conjg(coup1) 
    SumI = -VVVloop(p2,MVZ2,MVWm2)*coup1*coup2 
res = res +1._dp* SumI  
!------------------------ 
! hh 
!------------------------ 
    Do i1 = 1, 6
 SumI = 0._dp 
 A0m2 = SA_A0(Mhh2(i1))
 coup1 = cplhhhhcVWmVWm(i1,i1)
 SumI = coup1*A0m2 
res = res +1._dp/2._dp* SumI  
      End Do 
 !------------------------ 
! conj[Hm] 
!------------------------ 
    Do i1 = 1, 2
 SumI = 0._dp 
 A0m2 = SA_A0(MHm2(i1))
 coup1 = cplHmcHmcVWmVWm(i1,i1)
 SumI = coup1*A0m2 
res = res +1* SumI  
      End Do 
 !------------------------ 
! VP 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_A0(0._dp) +RXi/4._dp*SA_A0(0._dp*RXi) 
coup1 = cplcVWmVPVPVWm3
coup2 = cplcVWmVPVPVWm1
coup3 = cplcVWmVPVPVWm2
SumI = ((2._dp*rMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*0._dp-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1._dp/2._dp* SumI  
!------------------------ 
! conj[VWm] 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_A0(MVWm2) +RXi/4._dp*SA_A0(MVWm2*RXi) 
coup1 = cplcVWmcVWmVWmVWm2
coup2 = cplcVWmcVWmVWmVWm3
coup3 = cplcVWmcVWmVWmVWm1
SumI = ((2._dp*rMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVWm2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1* SumI  
!------------------------ 
! VZ 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_A0(MVZ2) +RXi/4._dp*SA_A0(MVZ2*RXi) 
coup1 = cplcVWmVWmVZVZ1
coup2 = cplcVWmVWmVZVZ2
coup3 = cplcVWmVWmVZVZ3
SumI = ((2._dp*rMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVZ2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1._dp/2._dp* SumI  
res = oo16pi2*res 
 
End Subroutine Pi1LoopVWm 
 
Subroutine DerPi1LoopVWm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,             & 
& MVWm,MVWm2,MVZ,MVZ2,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,           & 
& cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,    & 
& cplHmcVWmVP,cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,      & 
& cplcVWmVPVPVWm3,cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3, & 
& cplcVWmcVWmVWmVWm1,cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFu(3),MFu2(3),MFd(3),MFd2(3),MFe(3),MFe2(3),MHm(2),MHm2(2),Mhh(6),Mhh2(6),           & 
& MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),          & 
& cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm(6,2),            & 
& cplhhcVWmVWm(6),cplHmcVWmVP(2),cplHmcVWmVZ(2),cplcVWmVPVWm,cplcVWmVWmVZ,               & 
& cplhhhhcVWmVWm(6,6),cplHmcHmcVWmVWm(2,2),cplcVWmVPVPVWm3,cplcVWmVPVPVWm1,              & 
& cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,              & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2, A0m12, A0m22 
Complex(dp), Intent(inout) :: res 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

res = 0._dp 
 
!------------------------ 
! bar[Fu], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_DerHloop(p2,MFu2(i1),MFd2(i2)),dp) 
B0m2 = 4._dp*MFu(i1)*MFd(i2)*Real(SA_DerB0(p2,MFu2(i1),MFd2(i2)),dp) 
coupL1 = cplcFuFdcVWmL(i1,i2)
coupR1 = cplcFuFdcVWmR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fv], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_DerHloop(p2,0._dp,MFe2(i2)),dp) 
B0m2 = 4._dp*0._dp*MFe(i2)*Real(SA_DerB0(p2,0._dp,MFe2(i2)),dp) 
coupL1 = cplcFvFecVWmL(i1,i2)
coupR1 = cplcFvFecVWmR(i1,i2)
    SumI = (Abs(coupL1)**2+Abs(coupR1)**2)*H0m2 & 
                & + (Real(Conjg(coupL1)*coupR1,dp))*B0m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gWmC], gP 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(DerVGGloop(p2,MVP2,MVWm2),dp)
coup1 = cplcgWpCgAcVWm
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! bar[gP], gWm 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(DerVGGloop(p2,MVWm2,MVP2),dp)
coup1 = cplcgAgWmcVWm
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! bar[gZ], gWm 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(DerVGGloop(p2,MVWm2,MVZ2),dp)
coup1 = cplcgZgWmcVWm
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gZ 
!------------------------ 
sumI = 0._dp 
 
SumI = 0._dp 
B0m2 = Real(DerVGGloop(p2,MVZ2,MVWm2),dp)
coup1 = cplcgWpCgZcVWm
coup2 = Conjg(coup1) 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! Hm, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 6
 B22m2 = Real(DerVSSloop(p2,Mhh2(i2),MHm2(i1)),dp)  
coup1 = cplhhHmcVWm(i2,i1)
    SumI = Abs(coup1)**2*B22m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! VWm, hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 B0m2 = Real(DerVVSloop(p2,MVWm2,Mhh2(i2)),dp)
coup1 = cplhhcVWmVWm(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VP, Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 B0m2 = Real(DerVVSloop(p2,MVP2,MHm2(i2)),dp)
coup1 = cplHmcVWmVP(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VZ, Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 B0m2 = Real(DerVVSloop(p2,MVZ2,MHm2(i2)),dp)
coup1 = cplHmcVWmVZ(i2)
    SumI = Abs(coup1)**2*B0m2 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! VWm, VP 
!------------------------ 
sumI = 0._dp 
 
coup1 = cplcVWmVPVWm
coup2 = Conjg(coup1) 
    SumI = -DerVVVloop(p2,MVWm2,MVP2)*coup1*coup2 
res = res +1._dp* SumI  
!------------------------ 
! VZ, VWm 
!------------------------ 
sumI = 0._dp 
 
coup1 = cplcVWmVWmVZ
coup2 = Conjg(coup1) 
    SumI = -DerVVVloop(p2,MVZ2,MVWm2)*coup1*coup2 
res = res +1._dp* SumI  
!------------------------ 
! hh 
!------------------------ 
    Do i1 = 1, 6
 SumI = 0._dp 
 A0m2 = SA_DerA0(Mhh2(i1))
 coup1 = cplhhhhcVWmVWm(i1,i1)
 SumI = coup1*A0m2 
res = res +1._dp/2._dp* SumI  
      End Do 
 !------------------------ 
! conj[Hm] 
!------------------------ 
    Do i1 = 1, 2
 SumI = 0._dp 
 A0m2 = SA_DerA0(MHm2(i1))
 coup1 = cplHmcHmcVWmVWm(i1,i1)
 SumI = coup1*A0m2 
res = res +1* SumI  
      End Do 
 !------------------------ 
! VP 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_DerA0(MVP2) +RXi/4._dp*SA_DerA0(MVP2*RXi) 
coup1 = cplcVWmVPVPVWm3
coup2 = cplcVWmVPVPVWm1
coup3 = cplcVWmVPVPVWm2
SumI = ((2._dp*DerrMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVP2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1._dp/2._dp* SumI  
!------------------------ 
! conj[VWm] 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_DerA0(MVWm2) +RXi/4._dp*SA_DerA0(MVWm2*RXi) 
coup1 = cplcVWmcVWmVWmVWm2
coup2 = cplcVWmcVWmVWmVWm3
coup3 = cplcVWmcVWmVWmVWm1
SumI = ((2._dp*DerrMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVWm2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1* SumI  
!------------------------ 
! VZ 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_DerA0(MVZ2) +RXi/4._dp*SA_DerA0(MVZ2*RXi) 
coup1 = cplcVWmVWmVZVZ1
coup2 = cplcVWmVWmVZVZ2
coup3 = cplcVWmVWmVZVZ3
SumI = ((2._dp*DerrMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVZ2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1._dp/2._dp* SumI  
res = oo16pi2*res 
 
End Subroutine DerPi1LoopVWm 
 
Subroutine Sigma1LoopFeMZ(p2,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,          & 
& cplcUFeFehhL,cplcUFeFehhR,cplcUFeFeVPL,cplcUFeFeVPR,cplcUFeFeVZL,cplcUFeFeVZR,         & 
& cplcUFeFvHmL,cplcUFeFvHmR,cplcUFeFvVWmL,cplcUFeFvVWmR,sigL,sigR,sigSL,sigSR)

Implicit None 
Real(dp), Intent(in) :: Mhh(6),Mhh2(6),MFe(3),MFe2(3),MVZ,MVZ2,MHm(2),MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcUFeFehhL(3,3,6),cplcUFeFehhR(3,3,6),cplcUFeFeVPL(3,3),cplcUFeFeVPR(3,3),          & 
& cplcUFeFeVZL(3,3),cplcUFeFeVZR(3,3),cplcUFeFvHmL(3,3,2),cplcUFeFvHmR(3,3,2),           & 
& cplcUFeFvVWmL(3,3),cplcUFeFvVWmR(3,3)

Complex(dp), Intent(out) :: SigL(3,3),SigR(3,3), SigSL(3,3), SigSR(3,3) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumL(3,3), sumR(3,3), sumSL(3,3), sumSR(3,3) 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
SigL = Cmplx(0._dp,0._dp,dp) 
SigR = Cmplx(0._dp,0._dp,dp) 
SigSL = Cmplx(0._dp,0._dp,dp) 
 SigSR = Cmplx(0._dp,0._dp,dp) 
 
!------------------------ 
! hh, Fe 
!------------------------ 
    Do i1 = 1, 6
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -Real(SA_B1(MFe2(gO1),MFe2(i2),Mhh2(i1)),dp) 
B0m2 = MFe(i2)*Real(SA_B0(MFe2(gO1),MFe2(i2),Mhh2(i1)),dp) 
Else 
B1m2 = -Real(SA_B1(p2,MFe2(i2),Mhh2(i1)),dp) 
B0m2 = MFe(i2)*Real(SA_B0(p2,MFe2(i2),Mhh2(i1)),dp) 
End If 
coupL1 = cplcUFeFehhL(gO1,i2,i1)
coupR1 = cplcUFeFehhR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFeFehhL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFeFehhR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VZ, Fe 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -2._dp*Real(SA_B1(MFe2(gO1),MFe2(i2),MVZ2),dp) 
B0m2 = -4._dp*MFe(i2)*Real(SA_B0(MFe2(gO1),MFe2(i2),MVZ2)-0.5_dp*rMS,dp) 
Else 
B1m2 = -2._dp*Real(SA_B1(p2,MFe2(i2),MVZ2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFe(i2)*Real(SA_B0(p2,MFe2(i2),MVZ2)-0.5_dp*rMS,dp) 
End If 
coupL1 = cplcUFeFeVZL(gO1,i2)
coupR1 = cplcUFeFeVZR(gO1,i2)
coupL2 =  Conjg(cplcUFeFeVZL(gO2,i2))
coupR2 =  Conjg(cplcUFeFeVZR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! Hm, Fv 
!------------------------ 
    Do i1 = 1, 2
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -Real(SA_B1(MFe2(gO1),0._dp,MHm2(i1)),dp) 
B0m2 = 0._dp*Real(SA_B0(MFe2(gO1),0._dp,MHm2(i1)),dp) 
Else 
B1m2 = -Real(SA_B1(p2,0._dp,MHm2(i1)),dp) 
B0m2 = 0._dp*Real(SA_B0(p2,0._dp,MHm2(i1)),dp) 
End If 
coupL1 = cplcUFeFvHmL(gO1,i2,i1)
coupR1 = cplcUFeFvHmR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFeFvHmL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFeFvHmR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VWm, Fv 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -2._dp*Real(SA_B1(MFe2(gO1),0._dp,MVWm2),dp) 
B0m2 = -4._dp*0._dp*Real(SA_B0(MFe2(gO1),0._dp,MVWm2)-0.5_dp*rMS,dp) 
Else 
B1m2 = -2._dp*Real(SA_B1(p2,0._dp,MVWm2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*0._dp*Real(SA_B0(p2,0._dp,MVWm2)-0.5_dp*rMS,dp) 
End If 
coupL1 = cplcUFeFvVWmL(gO1,i2)
coupR1 = cplcUFeFvVWmR(gO1,i2)
coupL2 =  Conjg(cplcUFeFvVWmL(gO2,i2))
coupR2 =  Conjg(cplcUFeFvVWmR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 SigL = oo16pi2*SigL 
SigR = oo16pi2*SigR 
SigSL = oo16pi2*SigSL 
SigSR = oo16pi2*SigSR 
 
End Subroutine Sigma1LoopFeMZ 
 
Subroutine Sigma1LoopFdMZ(p2,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,MFu,MFu2,            & 
& MVWm,MVWm2,cplcUFdFdhhL,cplcUFdFdhhR,cplcUFdFdVGL,cplcUFdFdVGR,cplcUFdFdVPL,           & 
& cplcUFdFdVPR,cplcUFdFdVZL,cplcUFdFdVZR,cplcUFdFuHmL,cplcUFdFuHmR,cplcUFdFuVWmL,        & 
& cplcUFdFuVWmR,sigL,sigR,sigSL,sigSR)

Implicit None 
Real(dp), Intent(in) :: Mhh(6),Mhh2(6),MFd(3),MFd2(3),MVZ,MVZ2,MHm(2),MHm2(2),MFu(3),MFu2(3),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcUFdFdhhL(3,3,6),cplcUFdFdhhR(3,3,6),cplcUFdFdVGL(3,3),cplcUFdFdVGR(3,3),          & 
& cplcUFdFdVPL(3,3),cplcUFdFdVPR(3,3),cplcUFdFdVZL(3,3),cplcUFdFdVZR(3,3),               & 
& cplcUFdFuHmL(3,3,2),cplcUFdFuHmR(3,3,2),cplcUFdFuVWmL(3,3),cplcUFdFuVWmR(3,3)

Complex(dp), Intent(out) :: SigL(3,3),SigR(3,3), SigSL(3,3), SigSR(3,3) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumL(3,3), sumR(3,3), sumSL(3,3), sumSR(3,3) 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
SigL = Cmplx(0._dp,0._dp,dp) 
SigR = Cmplx(0._dp,0._dp,dp) 
SigSL = Cmplx(0._dp,0._dp,dp) 
 SigSR = Cmplx(0._dp,0._dp,dp) 
 
!------------------------ 
! hh, Fd 
!------------------------ 
    Do i1 = 1, 6
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -Real(SA_B1(MFd2(gO1),MFd2(i2),Mhh2(i1)),dp) 
B0m2 = MFd(i2)*Real(SA_B0(MFd2(gO1),MFd2(i2),Mhh2(i1)),dp) 
Else 
B1m2 = -Real(SA_B1(p2,MFd2(i2),Mhh2(i1)),dp) 
B0m2 = MFd(i2)*Real(SA_B0(p2,MFd2(i2),Mhh2(i1)),dp) 
End If 
coupL1 = cplcUFdFdhhL(gO1,i2,i1)
coupR1 = cplcUFdFdhhR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFdFdhhL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFdFdhhR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VZ, Fd 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -2._dp*Real(SA_B1(MFd2(gO1),MFd2(i2),MVZ2),dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_B0(MFd2(gO1),MFd2(i2),MVZ2)-0.5_dp*rMS,dp) 
Else 
B1m2 = -2._dp*Real(SA_B1(p2,MFd2(i2),MVZ2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_B0(p2,MFd2(i2),MVZ2)-0.5_dp*rMS,dp) 
End If 
coupL1 = cplcUFdFdVZL(gO1,i2)
coupR1 = cplcUFdFdVZR(gO1,i2)
coupL2 =  Conjg(cplcUFdFdVZL(gO2,i2))
coupR2 =  Conjg(cplcUFdFdVZR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! Hm, Fu 
!------------------------ 
    Do i1 = 1, 2
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -Real(SA_B1(MFd2(gO1),MFu2(i2),MHm2(i1)),dp) 
B0m2 = MFu(i2)*Real(SA_B0(MFd2(gO1),MFu2(i2),MHm2(i1)),dp) 
Else 
B1m2 = -Real(SA_B1(p2,MFu2(i2),MHm2(i1)),dp) 
B0m2 = MFu(i2)*Real(SA_B0(p2,MFu2(i2),MHm2(i1)),dp) 
End If 
coupL1 = cplcUFdFuHmL(gO1,i2,i1)
coupR1 = cplcUFdFuHmR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFdFuHmL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFdFuHmR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VWm, Fu 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -2._dp*Real(SA_B1(MFd2(gO1),MFu2(i2),MVWm2),dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_B0(MFd2(gO1),MFu2(i2),MVWm2)-0.5_dp*rMS,dp) 
Else 
B1m2 = -2._dp*Real(SA_B1(p2,MFu2(i2),MVWm2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_B0(p2,MFu2(i2),MVWm2)-0.5_dp*rMS,dp) 
End If 
coupL1 = cplcUFdFuVWmL(gO1,i2)
coupR1 = cplcUFdFuVWmR(gO1,i2)
coupL2 =  Conjg(cplcUFdFuVWmL(gO2,i2))
coupR2 =  Conjg(cplcUFdFuVWmR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 SigL = oo16pi2*SigL 
SigR = oo16pi2*SigR 
SigSL = oo16pi2*SigSL 
SigSR = oo16pi2*SigSR 
 
End Subroutine Sigma1LoopFdMZ 
 
Subroutine Sigma1LoopFuMZ(p2,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,Mhh2,MFu,               & 
& MFu2,MVZ,MVZ2,cplcUFuFdcHmL,cplcUFuFdcHmR,cplcUFuFdcVWmL,cplcUFuFdcVWmR,               & 
& cplcUFuFuhhL,cplcUFuFuhhR,cplcUFuFuVGL,cplcUFuFuVGR,cplcUFuFuVPL,cplcUFuFuVPR,         & 
& cplcUFuFuVZL,cplcUFuFuVZR,sigL,sigR,sigSL,sigSR)

Implicit None 
Real(dp), Intent(in) :: MHm(2),MHm2(2),MFd(3),MFd2(3),MVWm,MVWm2,Mhh(6),Mhh2(6),MFu(3),MFu2(3),MVZ,MVZ2

Complex(dp), Intent(in) :: cplcUFuFdcHmL(3,3,2),cplcUFuFdcHmR(3,3,2),cplcUFuFdcVWmL(3,3),cplcUFuFdcVWmR(3,3),    & 
& cplcUFuFuhhL(3,3,6),cplcUFuFuhhR(3,3,6),cplcUFuFuVGL(3,3),cplcUFuFuVGR(3,3),           & 
& cplcUFuFuVPL(3,3),cplcUFuFuVPR(3,3),cplcUFuFuVZL(3,3),cplcUFuFuVZR(3,3)

Complex(dp), Intent(out) :: SigL(3,3),SigR(3,3), SigSL(3,3), SigSR(3,3) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2,temp, sumL(3,3), sumR(3,3), sumSL(3,3), sumSR(3,3) 
Real(dp) :: B0m2, F0m2, G0m2,B1m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
SigL = Cmplx(0._dp,0._dp,dp) 
SigR = Cmplx(0._dp,0._dp,dp) 
SigSL = Cmplx(0._dp,0._dp,dp) 
 SigSR = Cmplx(0._dp,0._dp,dp) 
 
!------------------------ 
! conj[Hm], Fd 
!------------------------ 
    Do i1 = 1, 2
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -Real(SA_B1(MFu2(gO1),MFd2(i2),MHm2(i1)),dp) 
B0m2 = MFd(i2)*Real(SA_B0(MFu2(gO1),MFd2(i2),MHm2(i1)),dp) 
Else 
B1m2 = -Real(SA_B1(p2,MFd2(i2),MHm2(i1)),dp) 
B0m2 = MFd(i2)*Real(SA_B0(p2,MFd2(i2),MHm2(i1)),dp) 
End If 
coupL1 = cplcUFuFdcHmL(gO1,i2,i1)
coupR1 = cplcUFuFdcHmR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFuFdcHmL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFuFdcHmR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Fd 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -2._dp*Real(SA_B1(MFu2(gO1),MFd2(i2),MVWm2),dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_B0(MFu2(gO1),MFd2(i2),MVWm2)-0.5_dp*rMS,dp) 
Else 
B1m2 = -2._dp*Real(SA_B1(p2,MFd2(i2),MVWm2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFd(i2)*Real(SA_B0(p2,MFd2(i2),MVWm2)-0.5_dp*rMS,dp) 
End If 
coupL1 = cplcUFuFdcVWmL(gO1,i2)
coupR1 = cplcUFuFdcVWmR(gO1,i2)
coupL2 =  Conjg(cplcUFuFdcVWmL(gO2,i2))
coupR2 =  Conjg(cplcUFuFdcVWmR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 !------------------------ 
! hh, Fu 
!------------------------ 
    Do i1 = 1, 6
       Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -Real(SA_B1(MFu2(gO1),MFu2(i2),Mhh2(i1)),dp) 
B0m2 = MFu(i2)*Real(SA_B0(MFu2(gO1),MFu2(i2),Mhh2(i1)),dp) 
Else 
B1m2 = -Real(SA_B1(p2,MFu2(i2),Mhh2(i1)),dp) 
B0m2 = MFu(i2)*Real(SA_B0(p2,MFu2(i2),Mhh2(i1)),dp) 
End If 
coupL1 = cplcUFuFuhhL(gO1,i2,i1)
coupR1 = cplcUFuFuhhR(gO1,i2,i1)
coupL2 =  Conjg(cplcUFuFuhhL(gO2,i2,i1))
coupR2 =  Conjg(cplcUFuFuhhR(gO2,i2,i1))
SumSL(gO1,gO2) = coupR1*coupL2*B0m2 
SumSR(gO1,gO2) = coupL1*coupR2*B0m2 
sumR(gO1,gO2) = coupR1*coupR2*B1m2 
sumL(gO1,gO2) = coupL1*coupL2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
      End Do 
     End Do 
 !------------------------ 
! VZ, Fu 
!------------------------ 
      Do i2 = 1, 3
 SumSL = 0._dp 
SumSR = 0._dp 
sumR = 0._dp 
sumL = 0._dp 
Do gO1 = 1, 3
  Do gO2 = 1, 3
If(gO1.eq.gO2) Then 
B1m2 = -2._dp*Real(SA_B1(MFu2(gO1),MFu2(i2),MVZ2),dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_B0(MFu2(gO1),MFu2(i2),MVZ2)-0.5_dp*rMS,dp) 
Else 
B1m2 = -2._dp*Real(SA_B1(p2,MFu2(i2),MVZ2)+ 0.5_dp*rMS,dp) 
B0m2 = -4._dp*MFu(i2)*Real(SA_B0(p2,MFu2(i2),MVZ2)-0.5_dp*rMS,dp) 
End If 
coupL1 = cplcUFuFuVZL(gO1,i2)
coupR1 = cplcUFuFuVZR(gO1,i2)
coupL2 =  Conjg(cplcUFuFuVZL(gO2,i2))
coupR2 =  Conjg(cplcUFuFuVZR(gO2,i2))
SumSL(gO1,gO2) = coupL1*coupR2*B0m2 
SumSR(gO1,gO2) = coupR1*coupL2*B0m2 
sumR(gO1,gO2) = coupL1*coupL2*B1m2 
sumL(gO1,gO2) = coupR1*coupR2*B1m2 
   End Do 
End Do 
SigL = SigL +1._dp* sumL
SigR = SigR +1._dp* sumR 
SigSL = SigSL +1._dp* sumSL 
SigSR = SigSR +1._dp* sumSR 
    End Do 
 SigL = oo16pi2*SigL 
SigR = oo16pi2*SigR 
SigSL = oo16pi2*SigSL 
SigSR = oo16pi2*SigSR 
 
End Subroutine Sigma1LoopFuMZ 
 
Subroutine Pi1LoopVPVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,             & 
& cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVPL,cplcFeFeVPR,               & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,               & 
& cplcgWmgWmVP,cplcgWmgWmVZ,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplcHmVPVWm,cplcHmVWmVZ,       & 
& cplcVWmVPVWm,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmVWmVZ,             & 
& cplHmcHmVP,cplHmcHmVPVZ,cplHmcHmVZ,cplHmcVWmVP,cplHmcVWmVZ,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),MHm(2),MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFeFeVPL(3,3), & 
& cplcFeFeVPR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),  & 
& cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplcgWmgWmVP,cplcgWmgWmVZ,cplcgWpCgWpCVP,            & 
& cplcgWpCgWpCVZ,cplcHmVPVWm(2),cplcHmVWmVZ(2),cplcVWmVPVWm,cplcVWmVPVWmVZ1,             & 
& cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmVWmVZ,cplHmcHmVP(2,2),cplHmcHmVPVZ(2,2),        & 
& cplHmcHmVZ(2,2),cplHmcVWmVP(2),cplHmcVWmVZ(2)

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Complex(dp), Intent(inout) :: res 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_Hloop(p2,MFd2(i1),MFd2(i2)),dp) 
B0m2 = 4._dp*MFd(i1)*MFd(i2)*Real(SA_B0(p2,MFd2(i1),MFd2(i2)),dp) 
coupL1 = cplcFdFdVPL(i1,i2)
coupR1 = cplcFdFdVPR(i1,i2)
coupL2 = cplcFdFdVZL(i2,i1)
coupR2 = cplcFdFdVZR(i2,i1)
    SumI = (coupL1*coupL2+coupR1*coupR2)*H0m2 & 
                & + 0.5_dp*(coupL1*coupR2 + coupL2*coupR1)*B0m2 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_Hloop(p2,MFe2(i1),MFe2(i2)),dp) 
B0m2 = 4._dp*MFe(i1)*MFe(i2)*Real(SA_B0(p2,MFe2(i1),MFe2(i2)),dp) 
coupL1 = cplcFeFeVPL(i1,i2)
coupR1 = cplcFeFeVPR(i1,i2)
coupL2 = cplcFeFeVZL(i2,i1)
coupR2 = cplcFeFeVZR(i2,i1)
    SumI = (coupL1*coupL2+coupR1*coupR2)*H0m2 & 
                & + 0.5_dp*(coupL1*coupR2 + coupL2*coupR1)*B0m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_Hloop(p2,MFu2(i1),MFu2(i2)),dp) 
B0m2 = 4._dp*MFu(i1)*MFu(i2)*Real(SA_B0(p2,MFu2(i1),MFu2(i2)),dp) 
coupL1 = cplcFuFuVPL(i1,i2)
coupR1 = cplcFuFuVPR(i1,i2)
coupL2 = cplcFuFuVZL(i2,i1)
coupR2 = cplcFuFuVZR(i2,i1)
    SumI = (coupL1*coupL2+coupR1*coupR2)*H0m2 & 
                & + 0.5_dp*(coupL1*coupR2 + coupL2*coupR1)*B0m2 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gWm], gWm 
!------------------------ 
sumI = 0._dp 
 
B0m2 = Real(VGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWmgWmVP
coup2 = cplcgWmgWmVZ 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gWmC 
!------------------------ 
sumI = 0._dp 
 
B0m2 = Real(VGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWpCgWpCVP
coup2 = cplcgWpCgWpCVZ 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 2
 B22m2 = Real(VSSloop(p2,MHm2(i2),MHm2(i1)),dp) 
coup1 = cplHmcHmVP(i2,i1)
coup2 = cplHmcHmVZ(i1,i2)
    SumI = coup1*coup2*B22m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 B0m2 = Real(VVSloop(p2,MVWm2,MHm2(i2)),dp) 
coup1 = cplHmcVWmVP(i2)
coup2 = cplcHmVWmVZ(i2)
    SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], VWm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 B0m2 = Real(VVSloop(p2,MVWm2,MHm2(i1)),dp) 
coup1 = cplcHmVPVWm(i1)
coup2 = cplHmcVWmVZ(i1)
    SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
B0m2 = Real(VVVloop(p2,MVWm2,MVWm2),dp) 
coup1 = cplcVWmVPVWm
coup2 = cplcVWmVWmVZ
    SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! conj[Hm] 
!------------------------ 
    Do i1 = 1, 2
 SumI = 0._dp 
 A0m2 = SA_A0(MHm2(i1))
 coup1 = cplHmcHmVPVZ(i1,i1)
 SumI = coup1*A0m2 
res = res +1* SumI  
      End Do 
 !------------------------ 
! conj[VWm] 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_A0(MVWm2) +RXi/4._dp*SA_A0(MVWm2*RXi) 
coup1 = cplcVWmVPVWmVZ2
coup2 = cplcVWmVPVWmVZ1
coup3 = cplcVWmVPVWmVZ3
SumI = ((2._dp*rMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVWm2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1* SumI  
res = oo16pi2*res 
 
End Subroutine Pi1LoopVPVZ 
 
Subroutine DerPi1LoopVPVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,          & 
& cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVPL,cplcFeFeVPR,               & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,               & 
& cplcgWmgWmVP,cplcgWmgWmVZ,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplcHmVPVWm,cplcHmVWmVZ,       & 
& cplcVWmVPVWm,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmVWmVZ,             & 
& cplHmcHmVP,cplHmcHmVPVZ,cplHmcHmVZ,cplHmcVWmVP,cplHmcVWmVZ,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),MHm(2),MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFeFeVPL(3,3), & 
& cplcFeFeVPR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),  & 
& cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplcgWmgWmVP,cplcgWmgWmVZ,cplcgWpCgWpCVP,            & 
& cplcgWpCgWpCVZ,cplcHmVPVWm(2),cplcHmVWmVZ(2),cplcVWmVPVWm,cplcVWmVPVWmVZ1,             & 
& cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmVWmVZ,cplHmcHmVP(2,2),cplHmcHmVPVZ(2,2),        & 
& cplHmcHmVZ(2,2),cplHmcVWmVP(2),cplHmcVWmVZ(2)

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Complex(dp), Intent(inout) :: res 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_DerHloop(p2,MFd2(i1),MFd2(i2)),dp) 
B0m2 = 2._dp*MFd(i1)*MFd(i2)*Real(SA_DerB0(p2,MFd2(i1),MFd2(i2)),dp) 
coupL1 = cplcFdFdVPL(i1,i2)
coupR1 = cplcFdFdVPR(i1,i2)
coupL2 = cplcFdFdVZL(i2,i1)
coupR2 = cplcFdFdVZR(i2,i1)
    SumI = (coupL1*coupL2+coupR1*coupR2)*H0m2 & 
                & + 0.5_dp*(coupL1*coupR2 + coupL2*coupR1)*B0m2 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_DerHloop(p2,MFe2(i1),MFe2(i2)),dp) 
B0m2 = 2._dp*MFe(i1)*MFe(i2)*Real(SA_DerB0(p2,MFe2(i1),MFe2(i2)),dp) 
coupL1 = cplcFeFeVPL(i1,i2)
coupR1 = cplcFeFeVPR(i1,i2)
coupL2 = cplcFeFeVZL(i2,i1)
coupR2 = cplcFeFeVZR(i2,i1)
    SumI = (coupL1*coupL2+coupR1*coupR2)*H0m2 & 
                & + 0.5_dp*(coupL1*coupR2 + coupL2*coupR1)*B0m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 H0m2 = Real(SA_DerHloop(p2,MFu2(i1),MFu2(i2)),dp) 
B0m2 = 2._dp*MFu(i1)*MFu(i2)*Real(SA_DerB0(p2,MFu2(i1),MFu2(i2)),dp) 
coupL1 = cplcFuFuVPL(i1,i2)
coupR1 = cplcFuFuVPR(i1,i2)
coupL2 = cplcFuFuVZL(i2,i1)
coupR2 = cplcFuFuVZR(i2,i1)
    SumI = (coupL1*coupL2+coupR1*coupR2)*H0m2 & 
                & + 0.5_dp*(coupL1*coupR2 + coupL2*coupR1)*B0m2 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gWm], gWm 
!------------------------ 
sumI = 0._dp 
 
B0m2 = Real(DerVGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWmgWmVP
coup2 = cplcgWmgWmVZ 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gWmC 
!------------------------ 
sumI = 0._dp 
 
B0m2 = Real(DerVGGloop(p2,MVWm2,MVWm2),dp)
coup1 = cplcgWpCgWpCVP
coup2 = cplcgWpCgWpCVZ 
   SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 2
 B22m2 = Real(DerVSSloop(p2,MHm2(i2),MHm2(i1)),dp) 
coup1 = cplHmcHmVP(i2,i1)
coup2 = cplHmcHmVZ(i1,i2)
    SumI = coup1*coup2*B22m2 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 B0m2 = Real(DerVVSloop(p2,MVWm2,MHm2(i2)),dp) 
coup1 = cplHmcVWmVP(i2)
coup2 = cplcHmVWmVZ(i2)
    SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], VWm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 B0m2 = Real(DerVVSloop(p2,MVWm2,MHm2(i1)),dp) 
coup1 = cplcHmVPVWm(i1)
coup2 = cplHmcVWmVZ(i1)
    SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
B0m2 = Real(DerVVVloop(p2,MVWm2,MVWm2),dp) 
coup1 = cplcVWmVPVWm
coup2 = cplcVWmVWmVZ
    SumI = coup1*coup2*B0m2 
res = res +1._dp* SumI  
!------------------------ 
! conj[Hm] 
!------------------------ 
    Do i1 = 1, 2
 SumI = 0._dp 
 A0m2 = SA_DerA0(MHm2(i1))
 coup1 = cplHmcHmVPVZ(i1,i1)
 SumI = coup1*A0m2 
res = res +1* SumI  
      End Do 
 !------------------------ 
! conj[VWm] 
!------------------------ 
SumI = 0._dp 
A0m2 = 3._dp/4._dp*SA_DerA0(MVWm2) +RXi/4._dp*SA_DerA0(MVWm2*RXi) 
coup1 = cplcVWmVPVWmVZ2
coup2 = cplcVWmVPVWmVZ1
coup3 = cplcVWmVPVWmVZ3
SumI = ((2._dp*DerrMS*coup1+(1-RXi**2)/8._dp*(coup2+coup3))*MVWm2-(4._dp*coup1+coup2+coup3)*A0m2)
res = res +1* SumI  
res = oo16pi2*res 
 
End Subroutine DerPi1LoopVPVZ 
 
Subroutine Pi1LoopVZhh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,               & 
& MVWm,MVWm2,MVZ,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,       & 
& cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,               & 
& cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplcHmVWmVZ,       & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),              & 
& cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),               & 
& cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),               & 
& cplcgWmgWmhh(6),cplcgWmgWmVZ,cplcgWpCgWpChh(6),cplcgWpCgWpCVZ,cplcHmVWmVZ(2),          & 
& cplcVWmVWmVZ,cplhhcHmVWm(6,2),cplhhcVWmVWm(6),cplhhhhhh(6,6,6),cplhhhhVZ(6,6),         & 
& cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),cplhhVZVZ(6),cplHmcHmVZ(2,2),cplHmcVWmVZ(2)

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Complex(dp), Intent(inout) :: res(6) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 Do gO2=1,6 
B0m2 = Real(SA_B0(p2,MFd2(i1),MFd2(i2)),dp) 
B1m2 = Real(SA_B1(p2,MFd2(i1),MFd2(i2)),dp) 
coupL1 = cplcFdFdVZL(i1,i2)
coupR1 = cplcFdFdVZR(i1,i2)
coupL2 = cplcFdFdhhL(i2,i1,gO2)
coupR2 = cplcFdFdhhR(i2,i1,gO2)
    SumI = (coupL1*coupL2+coupR1*coupR2)*MFd(i1)*(B0m2+B1m2) & 
  & + (coupL1*coupR2+coupR1*coupL2)*MFd(i2)*B1m2  
End do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 Do gO2=1,6 
B0m2 = Real(SA_B0(p2,MFe2(i1),MFe2(i2)),dp) 
B1m2 = Real(SA_B1(p2,MFe2(i1),MFe2(i2)),dp) 
coupL1 = cplcFeFeVZL(i1,i2)
coupR1 = cplcFeFeVZR(i1,i2)
coupL2 = cplcFeFehhL(i2,i1,gO2)
coupR2 = cplcFeFehhR(i2,i1,gO2)
    SumI = (coupL1*coupL2+coupR1*coupR2)*MFe(i1)*(B0m2+B1m2) & 
  & + (coupL1*coupR2+coupR1*coupL2)*MFe(i2)*B1m2  
End do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 Do gO2=1,6 
B0m2 = Real(SA_B0(p2,MFu2(i1),MFu2(i2)),dp) 
B1m2 = Real(SA_B1(p2,MFu2(i1),MFu2(i2)),dp) 
coupL1 = cplcFuFuVZL(i1,i2)
coupR1 = cplcFuFuVZR(i1,i2)
coupL2 = cplcFuFuhhL(i2,i1,gO2)
coupR2 = cplcFuFuhhR(i2,i1,gO2)
    SumI = (coupL1*coupL2+coupR1*coupR2)*MFu(i1)*(B0m2+B1m2) & 
  & + (coupL1*coupR2+coupR1*coupL2)*MFu(i2)*B1m2  
End do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gWm], gWm 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,6 
B0m2 = Real(SA_B0(p2,MVWm2,MVWm2),dp) 
B1m2 = Real(SA_B1(p2,MVWm2,MVWm2),dp) 
coup1 = cplcgWmgWmVZ
coup2 = cplcgWmgWmhh(gO2) 
   SumI = -0.5_dp*coup1*coup2*(B0m2+B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gWmC 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,6 
B0m2 = Real(SA_B0(p2,MVWm2,MVWm2),dp) 
B1m2 = Real(SA_B1(p2,MVWm2,MVWm2),dp) 
coup1 = cplcgWpCgWpCVZ
coup2 = cplcgWpCgWpChh(gO2) 
   SumI = -0.5_dp*coup1*coup2*(B0m2+B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! hh, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 6
       Do i2 = 1, 6
 Do gO2=1,6 
B0m2 = Real(SA_B0(p2,Mhh2(i2),Mhh2(i1)),dp) 
B1m2 = Real(SA_B1(p2,Mhh2(i2),Mhh2(i1)),dp) 
coup1 = cplhhhhVZ(i1,i2)
coup2 = cplhhhhhh(gO2,i1,i2)
    SumI = -coup1*coup2*(B1m2+0.5_dp*B0m2)
End do 
res = res +0.5_dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! VZ, hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 Do gO2=1,6 
B0m2 = Real(SA_B0(p2,MVZ2,Mhh2(i2)),dp) 
B1m2 = Real(SA_B1(p2,MVZ2,Mhh2(i2)),dp) 
coup1 = cplhhVZVZ(i2)
coup2 = cplhhhhVZ(gO2,i2)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +0.5_dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 2
 Do gO2=1,6 
B0m2 = Real(SA_B0(p2,MHm2(i2),MHm2(i1)),dp) 
B1m2 = Real(SA_B1(p2,MHm2(i2),MHm2(i1)),dp) 
coup1 = cplHmcHmVZ(i2,i1)
coup2 = cplhhHmcHm(gO2,i1,i2)
    SumI = -coup1*coup2*(B1m2+0.5_dp*B0m2)
End do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 Do gO2=1,6 
B0m2 = Real(SA_B0(p2,MVWm2,MHm2(i2)),dp) 
B1m2 = Real(SA_B1(p2,MVWm2,MHm2(i2)),dp) 
coup1 = cplHmcVWmVZ(i2)
coup2 = cplhhcHmVWm(gO2,i2)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], VWm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 Do gO2=1,6 
B0m2 = Real(SA_B0(p2,MVWm2,MHm2(i1)),dp) 
B1m2 = Real(SA_B1(p2,MVWm2,MHm2(i1)),dp) 
coup1 = cplcHmVWmVZ(i1)
coup2 = cplhhHmcVWm(gO2,i1)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,6 
B0m2 = Real(SA_B0(p2,MVWm2,MVWm2),dp)
B1m2 = Real(SA_B1(p2,MVWm2,MVWm2),dp) 
coup1 = cplcVWmVWmVZ
coup2 = cplhhcVWmVWm(gO2)
    SumI = coup1*coup2*(3._dp/2._dp*B0m2+3._dp*B1m2) 
End do 
res = res +1._dp* SumI  
res = oo16pi2*res 
 
End Subroutine Pi1LoopVZhh 
 
Subroutine DerPi1LoopVZhh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,            & 
& MVWm,MVWm2,MVZ,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,       & 
& cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,               & 
& cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplcHmVWmVZ,       & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),              & 
& cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),               & 
& cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),               & 
& cplcgWmgWmhh(6),cplcgWmgWmVZ,cplcgWpCgWpChh(6),cplcgWpCgWpCVZ,cplcHmVWmVZ(2),          & 
& cplcVWmVWmVZ,cplhhcHmVWm(6,2),cplhhcVWmVWm(6),cplhhhhhh(6,6,6),cplhhhhVZ(6,6),         & 
& cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),cplhhVZVZ(6),cplHmcHmVZ(2,2),cplHmcVWmVZ(2)

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Complex(dp), Intent(inout) :: res(6) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

res = 0._dp 
 
!------------------------ 
! bar[Fd], Fd 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 Do gO2=1,6 
B0m2 = Real(SA_DerB0(p2,MFd2(i1),MFd2(i2)),dp) 
B1m2 = Real(SA_DerB1(p2,MFd2(i1),MFd2(i2)),dp) 
coupL1 = cplcFdFdVZL(i1,i2)
coupR1 = cplcFdFdVZR(i1,i2)
coupL2 = cplcFdFdhhL(i2,i1,gO2)
coupR2 = cplcFdFdhhR(i2,i1,gO2)
    SumI = (coupL1*coupL2+coupR1*coupR2)*MFd(i1)*(B0m2+B1m2) & 
  & + (coupL1*coupR2+coupR1*coupL2)*MFd(i2)*B1m2  
End do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fe 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 Do gO2=1,6 
B0m2 = Real(SA_DerB0(p2,MFe2(i1),MFe2(i2)),dp) 
B1m2 = Real(SA_DerB1(p2,MFe2(i1),MFe2(i2)),dp) 
coupL1 = cplcFeFeVZL(i1,i2)
coupR1 = cplcFeFeVZR(i1,i2)
coupL2 = cplcFeFehhL(i2,i1,gO2)
coupR2 = cplcFeFehhR(i2,i1,gO2)
    SumI = (coupL1*coupL2+coupR1*coupR2)*MFe(i1)*(B0m2+B1m2) & 
  & + (coupL1*coupR2+coupR1*coupL2)*MFe(i2)*B1m2  
End do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fu], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 Do gO2=1,6 
B0m2 = Real(SA_DerB0(p2,MFu2(i1),MFu2(i2)),dp) 
B1m2 = Real(SA_DerB1(p2,MFu2(i1),MFu2(i2)),dp) 
coupL1 = cplcFuFuVZL(i1,i2)
coupR1 = cplcFuFuVZR(i1,i2)
coupL2 = cplcFuFuhhL(i2,i1,gO2)
coupR2 = cplcFuFuhhR(i2,i1,gO2)
    SumI = (coupL1*coupL2+coupR1*coupR2)*MFu(i1)*(B0m2+B1m2) & 
  & + (coupL1*coupR2+coupR1*coupL2)*MFu(i2)*B1m2  
End do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gWm], gWm 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,6 
B0m2 = Real(SA_DerB0(p2,MVWm2,MVWm2),dp) 
B1m2 = Real(SA_DerB1(p2,MVWm2,MVWm2),dp) 
coup1 = cplcgWmgWmVZ
coup2 = cplcgWmgWmhh(gO2) 
   SumI = -0.5_dp*coup1*coup2*(B0m2+B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWmC], gWmC 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,6 
B0m2 = Real(SA_DerB0(p2,MVWm2,MVWm2),dp) 
B1m2 = Real(SA_DerB1(p2,MVWm2,MVWm2),dp) 
coup1 = cplcgWpCgWpCVZ
coup2 = cplcgWpCgWpChh(gO2) 
   SumI = -0.5_dp*coup1*coup2*(B0m2+B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! hh, hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 6
       Do i2 = 1, 6
 Do gO2=1,6 
B0m2 = Real(SA_DerB0(p2,Mhh2(i2),Mhh2(i1)),dp) 
B1m2 = Real(SA_DerB1(p2,Mhh2(i2),Mhh2(i1)),dp) 
coup1 = cplhhhhVZ(i1,i2)
coup2 = cplhhhhhh(gO2,i1,i2)
    SumI = -coup1*coup2*(B1m2+0.5_dp*B0m2)
End do 
res = res +0.5_dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! VZ, hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 Do gO2=1,6 
B0m2 = Real(SA_DerB0(p2,MVZ2,Mhh2(i2)),dp) 
B1m2 = Real(SA_DerB1(p2,MVZ2,Mhh2(i2)),dp) 
coup1 = cplhhVZVZ(i2)
coup2 = cplhhhhVZ(gO2,i2)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +0.5_dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], Hm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 2
 Do gO2=1,6 
B0m2 = Real(SA_DerB0(p2,MHm2(i2),MHm2(i1)),dp) 
B1m2 = Real(SA_DerB1(p2,MHm2(i2),MHm2(i1)),dp) 
coup1 = cplHmcHmVZ(i2,i1)
coup2 = cplhhHmcHm(gO2,i1,i2)
    SumI = -coup1*coup2*(B1m2+0.5_dp*B0m2)
End do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], Hm 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 2
 Do gO2=1,6 
B0m2 = Real(SA_DerB0(p2,MVWm2,MHm2(i2)),dp) 
B1m2 = Real(SA_DerB1(p2,MVWm2,MHm2(i2)),dp) 
coup1 = cplHmcVWmVZ(i2)
coup2 = cplhhcHmVWm(gO2,i2)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], VWm 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 Do gO2=1,6 
B0m2 = Real(SA_DerB0(p2,MVWm2,MHm2(i1)),dp) 
B1m2 = Real(SA_DerB1(p2,MVWm2,MHm2(i1)),dp) 
coup1 = cplcHmVWmVZ(i1)
coup2 = cplhhHmcVWm(gO2,i1)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! conj[VWm], VWm 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,6 
B0m2 = Real(SA_DerB0(p2,MVWm2,MVWm2),dp)
B1m2 = Real(SA_DerB1(p2,MVWm2,MVWm2),dp) 
coup1 = cplcVWmVWmVZ
coup2 = cplhhcVWmVWm(gO2)
    SumI = coup1*coup2*(3._dp/2._dp*B0m2+3._dp*B1m2) 
End do 
res = res +1._dp* SumI  
res = oo16pi2*res 
 
End Subroutine DerPi1LoopVZhh 
 
Subroutine Pi1LoopVWmHm(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,              & 
& MVWm,MVWm2,MVZ,MVZ2,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,               & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplcgAgWpCVWm,cplcgWmgZVWm,        & 
& cplcgWpCgAcHm,cplcgWpCgZcHm,cplcgZgWmcHm,cplcgZgWpCVWm,cplcHmVPVWm,cplcHmVWmVZ,        & 
& cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhHmcHm,cplHmcHmVP,              & 
& cplHmcHmVZ,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),              & 
& cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),       & 
& cplcgAgWpCVWm,cplcgWmgZVWm,cplcgWpCgAcHm(2),cplcgWpCgZcHm(2),cplcgZgWmcHm(2),          & 
& cplcgZgWpCVWm,cplcHmVPVWm(2),cplcHmVWmVZ(2),cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm(6,2),& 
& cplhhcVWmVWm(6),cplhhHmcHm(6,2,2),cplHmcHmVP(2,2),cplHmcHmVZ(2,2)

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Complex(dp), Intent(inout) :: res(2) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
res = 0._dp 
 
!------------------------ 
! bar[Fd], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 Do gO2=1,2 
B0m2 = Real(SA_B0(p2,MFd2(i1),MFu2(i2)),dp) 
B1m2 = Real(SA_B1(p2,MFd2(i1),MFu2(i2)),dp) 
coupL1 = cplcFdFuVWmL(i1,i2)
coupR1 = cplcFdFuVWmR(i1,i2)
coupL2 = cplcFuFdcHmL(i2,i1,gO2)
coupR2 = cplcFuFdcHmR(i2,i1,gO2)
    SumI = (coupL1*coupL2+coupR1*coupR2)*MFd(i1)*(B0m2+B1m2) & 
  & + (coupL1*coupR2+coupR1*coupL2)*MFu(i2)*B1m2  
End do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fv 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 Do gO2=1,2 
B0m2 = Real(SA_B0(p2,MFe2(i1),0._dp),dp) 
B1m2 = Real(SA_B1(p2,MFe2(i1),0._dp),dp) 
coupL1 = cplcFeFvVWmL(i1,i2)
coupR1 = cplcFeFvVWmR(i1,i2)
coupL2 = cplcFvFecHmL(i2,i1,gO2)
coupR2 = cplcFvFecHmR(i2,i1,gO2)
    SumI = (coupL1*coupL2+coupR1*coupR2)*MFe(i1)*(B0m2+B1m2) & 
  & + (coupL1*coupR2+coupR1*coupL2)*0._dp*B1m2  
End do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gP], gWmC 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,2 
B0m2 = Real(SA_B0(p2,MVWm2,0._dp),dp) 
B1m2 = Real(SA_B1(p2,MVWm2,0._dp),dp) 
coup1 = cplcgAgWpCVWm
coup2 = cplcgWpCgAcHm(gO2) 
   SumI = -0.5_dp*coup1*coup2*(B0m2+B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gZ], gWmC 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,2 
B0m2 = Real(SA_B0(p2,MVWm2,MVZ2),dp) 
B1m2 = Real(SA_B1(p2,MVWm2,MVZ2),dp) 
coup1 = cplcgZgWpCVWm
coup2 = cplcgWpCgZcHm(gO2) 
   SumI = -0.5_dp*coup1*coup2*(B0m2+B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWm], gZ 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,2 
B0m2 = Real(SA_B0(p2,MVZ2,MVWm2),dp) 
B1m2 = Real(SA_B1(p2,MVZ2,MVWm2),dp) 
coup1 = cplcgWmgZVWm
coup2 = cplcgZgWmcHm(gO2) 
   SumI = -0.5_dp*coup1*coup2*(B0m2+B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! conj[Hm], hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 6
 Do gO2=1,2 
B0m2 = Real(SA_B0(p2,Mhh2(i2),MHm2(i1)),dp) 
B1m2 = Real(SA_B1(p2,Mhh2(i2),MHm2(i1)),dp) 
coup1 = cplhhcHmVWm(i2,i1)
coup2 = cplhhHmcHm(i2,i1,gO2)
    SumI = -coup1*coup2*(B1m2+0.5_dp*B0m2)
End do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 Do gO2=1,2 
B0m2 = Real(SA_B0(p2,MVWm2,Mhh2(i2)),dp) 
B1m2 = Real(SA_B1(p2,MVWm2,Mhh2(i2)),dp) 
coup1 = cplhhcVWmVWm(i2)
coup2 = cplhhcHmVWm(i2,gO2)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], VP 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 Do gO2=1,2 
B0m2 = Real(SA_B0(p2,0._dp,MHm2(i1)),dp) 
B1m2 = Real(SA_B1(p2,0._dp,MHm2(i1)),dp) 
coup1 = cplcHmVPVWm(i1)
coup2 = cplHmcHmVP(i1,gO2)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! conj[VWm], VP 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,2 
B0m2 = Real(SA_B0(p2,MVWm2,0._dp),dp)
B1m2 = Real(SA_B1(p2,MVWm2,0._dp),dp) 
coup1 = cplcVWmVPVWm
coup2 = cplcHmVPVWm(gO2)
    SumI = coup1*coup2*(3._dp/2._dp*B0m2+3._dp*B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! conj[Hm], VZ 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 Do gO2=1,2 
B0m2 = Real(SA_B0(p2,MVZ2,MHm2(i1)),dp) 
B1m2 = Real(SA_B1(p2,MVZ2,MHm2(i1)),dp) 
coup1 = cplcHmVWmVZ(i1)
coup2 = cplHmcHmVZ(i1,gO2)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! conj[VWm], VZ 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,2 
B0m2 = Real(SA_B0(p2,MVWm2,MVZ2),dp)
B1m2 = Real(SA_B1(p2,MVWm2,MVZ2),dp) 
coup1 = cplcVWmVWmVZ
coup2 = cplcHmVWmVZ(gO2)
    SumI = coup1*coup2*(3._dp/2._dp*B0m2+3._dp*B1m2) 
End do 
res = res +1._dp* SumI  
res = oo16pi2*res 
 
End Subroutine Pi1LoopVWmHm 
 
Subroutine DerPi1LoopVWmHm(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,           & 
& MVWm,MVWm2,MVZ,MVZ2,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,               & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplcgAgWpCVWm,cplcgWmgZVWm,        & 
& cplcgWpCgAcHm,cplcgWpCgZcHm,cplcgZgWmcHm,cplcgZgWpCVWm,cplcHmVPVWm,cplcHmVWmVZ,        & 
& cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhHmcHm,cplHmcHmVP,              & 
& cplHmcHmVZ,kont,res)

Implicit None 
Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),              & 
& cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),       & 
& cplcgAgWpCVWm,cplcgWmgZVWm,cplcgWpCgAcHm(2),cplcgWpCgZcHm(2),cplcgZgWmcHm(2),          & 
& cplcgZgWpCVWm,cplcHmVPVWm(2),cplcHmVWmVZ(2),cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm(6,2),& 
& cplhhcVWmVWm(6),cplhhHmcHm(6,2,2),cplHmcHmVP(2,2),cplHmcHmVZ(2,2)

Integer, Intent(inout) :: kont 
Real(dp) :: B0m2, F0m2, G0m2, B1m2, H0m2, B22m2, m1, m2 
Real(dp), Intent(in) :: p2 
Complex(dp) :: A0m2 
Complex(dp), Intent(inout) :: res(2) 
Complex(dp) :: coupL1, coupR1, coupL2,coupR2, coup1,coup2, coup3, temp, sumI 
Integer :: i1,i2,i3,i4, gO1, gO2, ierr 
 
 
Real(dp) ::MVG,MVP,MVG2,MVP2
MVG = Mass_Regulator_PhotonGluon 
MVP = Mass_Regulator_PhotonGluon 
MVG2 = Mass_Regulator_PhotonGluon**2 
MVP2 = Mass_Regulator_PhotonGluon**2 

res = 0._dp 
 
!------------------------ 
! bar[Fd], Fu 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 Do gO2=1,2 
B0m2 = Real(SA_DerB0(p2,MFd2(i1),MFu2(i2)),dp) 
B1m2 = Real(SA_DerB1(p2,MFd2(i1),MFu2(i2)),dp) 
coupL1 = cplcFdFuVWmL(i1,i2)
coupR1 = cplcFdFuVWmR(i1,i2)
coupL2 = cplcFuFdcHmL(i2,i1,gO2)
coupR2 = cplcFuFdcHmR(i2,i1,gO2)
    SumI = (coupL1*coupL2+coupR1*coupR2)*MFd(i1)*(B0m2+B1m2) & 
  & + (coupL1*coupR2+coupR1*coupL2)*MFu(i2)*B1m2  
End do 
res = res +3._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[Fe], Fv 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 3
       Do i2 = 1, 3
 Do gO2=1,2 
B0m2 = Real(SA_DerB0(p2,MFe2(i1),0._dp),dp) 
B1m2 = Real(SA_DerB1(p2,MFe2(i1),0._dp),dp) 
coupL1 = cplcFeFvVWmL(i1,i2)
coupR1 = cplcFeFvVWmR(i1,i2)
coupL2 = cplcFvFecHmL(i2,i1,gO2)
coupR2 = cplcFvFecHmR(i2,i1,gO2)
    SumI = (coupL1*coupL2+coupR1*coupR2)*MFe(i1)*(B0m2+B1m2) & 
  & + (coupL1*coupR2+coupR1*coupL2)*0._dp*B1m2  
End do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! bar[gP], gWmC 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,2 
B0m2 = Real(SA_DerB0(p2,MVWm2,MVP2),dp) 
B1m2 = Real(SA_DerB1(p2,MVWm2,MVP2),dp) 
coup1 = cplcgAgWpCVWm
coup2 = cplcgWpCgAcHm(gO2) 
   SumI = -0.5_dp*coup1*coup2*(B0m2+B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gZ], gWmC 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,2 
B0m2 = Real(SA_DerB0(p2,MVWm2,MVZ2),dp) 
B1m2 = Real(SA_DerB1(p2,MVWm2,MVZ2),dp) 
coup1 = cplcgZgWpCVWm
coup2 = cplcgWpCgZcHm(gO2) 
   SumI = -0.5_dp*coup1*coup2*(B0m2+B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! bar[gWm], gZ 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,2 
B0m2 = Real(SA_DerB0(p2,MVZ2,MVWm2),dp) 
B1m2 = Real(SA_DerB1(p2,MVZ2,MVWm2),dp) 
coup1 = cplcgWmgZVWm
coup2 = cplcgZgWmcHm(gO2) 
   SumI = -0.5_dp*coup1*coup2*(B0m2+B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! conj[Hm], hh 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
       Do i2 = 1, 6
 Do gO2=1,2 
B0m2 = Real(SA_DerB0(p2,Mhh2(i2),MHm2(i1)),dp) 
B1m2 = Real(SA_DerB1(p2,Mhh2(i2),MHm2(i1)),dp) 
coup1 = cplhhcHmVWm(i2,i1)
coup2 = cplhhHmcHm(i2,i1,gO2)
    SumI = -coup1*coup2*(B1m2+0.5_dp*B0m2)
End do 
res = res +1._dp* SumI  
      End Do 
     End Do 
 !------------------------ 
! conj[VWm], hh 
!------------------------ 
sumI = 0._dp 
 
      Do i2 = 1, 6
 Do gO2=1,2 
B0m2 = Real(SA_DerB0(p2,MVWm2,Mhh2(i2)),dp) 
B1m2 = Real(SA_DerB1(p2,MVWm2,Mhh2(i2)),dp) 
coup1 = cplhhcVWmVWm(i2)
coup2 = cplhhcHmVWm(i2,gO2)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +1._dp* SumI  
    End Do 
 !------------------------ 
! conj[Hm], VP 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 Do gO2=1,2 
B0m2 = Real(SA_DerB0(p2,MVP2,MHm2(i1)),dp) 
B1m2 = Real(SA_DerB1(p2,MVP2,MHm2(i1)),dp) 
coup1 = cplcHmVPVWm(i1)
coup2 = cplHmcHmVP(i1,gO2)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! conj[VWm], VP 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,2 
B0m2 = Real(SA_DerB0(p2,MVWm2,MVP2),dp)
B1m2 = Real(SA_DerB1(p2,MVWm2,MVP2),dp) 
coup1 = cplcVWmVPVWm
coup2 = cplcHmVPVWm(gO2)
    SumI = coup1*coup2*(3._dp/2._dp*B0m2+3._dp*B1m2) 
End do 
res = res +1._dp* SumI  
!------------------------ 
! conj[Hm], VZ 
!------------------------ 
sumI = 0._dp 
 
    Do i1 = 1, 2
 Do gO2=1,2 
B0m2 = Real(SA_DerB0(p2,MVZ2,MHm2(i1)),dp) 
B1m2 = Real(SA_DerB1(p2,MVZ2,MHm2(i1)),dp) 
coup1 = cplcHmVWmVZ(i1)
coup2 = cplHmcHmVZ(i1,gO2)
    SumI = coup1*coup2*(B1m2-B0m2) 
End do 
res = res +1._dp* SumI  
      End Do 
 !------------------------ 
! conj[VWm], VZ 
!------------------------ 
sumI = 0._dp 
 
Do gO2=1,2 
B0m2 = Real(SA_DerB0(p2,MVWm2,MVZ2),dp)
B1m2 = Real(SA_DerB1(p2,MVWm2,MVZ2),dp) 
coup1 = cplcVWmVWmVZ
coup2 = cplcHmVWmVZ(gO2)
    SumI = coup1*coup2*(3._dp/2._dp*B0m2+3._dp*B1m2) 
End do 
res = res +1._dp* SumI  
res = oo16pi2*res 
 
End Subroutine DerPi1LoopVWmHm 
 
End Module LoopMasses_2HDMSCPV 
