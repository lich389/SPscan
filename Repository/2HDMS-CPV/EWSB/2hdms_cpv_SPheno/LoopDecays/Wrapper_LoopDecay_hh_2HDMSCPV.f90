! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.1 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 13:09 on 9.6.2025   
! ----------------------------------------------------------------------  
 
 
Module Wrapper_OneLoopDecay_hh_2HDMSCPV
Use Model_Data_2HDMSCPV 
Use Kinematics 
Use OneLoopDecay_hh_2HDMSCPV 
Use Control 
Use Settings 

 
Contains

 
Subroutine OneLoopDecay_hh(MhhOS,Mhh2OS,MHmOS,MHm2OS,MFdOS,MFd2OS,MFuOS,              & 
& MFu2OS,MFeOS,MFe2OS,MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS,ZPOS,ZDLOS,ZDROS,ZULOS,           & 
& ZUROS,ZELOS,ZEROS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,             & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,g1,g2,g3,Lam6,Lam5,            & 
& Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,           & 
& Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,            & 
& mS2,mSp2,vd,vu,vS,dg1,dg2,dg3,dM122,dYu,depsU,dYd,dYe,depsD,depsE,dLam6,               & 
& dLam5,dLam7,dM112,dM222,dLam1,dLam4,dLam3,dLam2,dmS2,dLam1p,dLam2p,dL3pp,              & 
& dmSp2,dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,dLam5p,           & 
& dL2pp,dLam3p,deta,dzeta,dvd,dvu,dvS,dZH,dZP,dZDL,dZDR,dZUL,dZUR,dZEL,dZER,             & 
& dSinTW,dCosTW,dTanTW,ZfVG,ZfvL,ZfVP,ZfVZ,ZfVWm,Zfhh,ZfHm,ZfDL,ZfDR,ZfUL,               & 
& ZfUR,ZfEL,ZfER,ZfVPVZ,ZfVZVP,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,          & 
& cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,               & 
& cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,               & 
& cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFvFvVZL,cplcFvFvVZR,         & 
& cplcgAgWmcVWm,cplcgAgWpCVWm,cplcgWmgAHm,cplcgWmgAVWm,cplcgWmgWmhh,cplcgWmgWmVP,        & 
& cplcgWmgWmVZ,cplcgWmgZHm,cplcgWmgZVWm,cplcgWpCgAcVWm,cplcgWpCgWpChh,cplcgWpCgWpCVP,    & 
& cplcgWpCgWpCVZ,cplcgWpCgZcHm,cplcgWpCgZcVWm,cplcgZgAhh,cplcgZgWmcHm,cplcgZgWmcVWm,     & 
& cplcgZgWpCHm,cplcgZgWpCVWm,cplcgZgZhh,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmcVWmVWmVWm1Q,     & 
& cplcVWmcVWmVWmVWm2Q,cplcVWmcVWmVWmVWm3Q,cplcVWmVPVPVWm1Q,cplcVWmVPVPVWm2Q,             & 
& cplcVWmVPVPVWm3Q,cplcVWmVPVWm,cplcVWmVPVWmVZ1Q,cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ3Q,      & 
& cplcVWmVWmVZ,cplcVWmVWmVZVZ1Q,cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,cplhhcHmVPVWm1,        & 
& cplhhcHmVWm,cplhhcHmVWmVZ1,cplhhcVWmVWm,cplhhhhcVWmVWm1,cplhhhhhh,cplhhhhhhhh1,        & 
& cplhhhhHmcHm1,cplhhhhVZ,cplhhhhVZVZ1,cplhhHmcHm,cplhhHmcVWm,cplhhHmcVWmVP1,            & 
& cplhhHmcVWmVZ1,cplhhVZVZ,cplHmcHmcVWmVWm1,cplHmcHmVP,cplHmcHmVPVP1,cplHmcHmVPVZ1,      & 
& cplHmcHmVZ,cplHmcHmVZVZ1,cplHmcVWmVP,cplHmcVWmVZ,cplHmHmcHmcHm1,ctcplcFdFdhhL,         & 
& ctcplcFdFdhhR,ctcplcFeFehhL,ctcplcFeFehhR,ctcplcFuFuhhL,ctcplcFuFuhhR,ctcplhhcVWmVWm,  & 
& ctcplhhhhhh,ctcplhhhhVZ,ctcplhhHmcHm,ctcplhhHmcVWm,ctcplhhVZVZ,GcplcHmVPVWm,           & 
& GcplhhcHmVWm,GcplhhHmcHm,GcplHmcVWmVP,GosZcplcHmVPVWm,GosZcplhhcHmVWm,GosZcplhhHmcHm,  & 
& GosZcplHmcVWmVP,GZcplcHmVPVWm,GZcplhhcHmVWm,GZcplhhHmcHm,GZcplHmcVWmVP,ZcplcFdFdhhL,   & 
& ZcplcFdFdhhR,ZcplcFeFehhL,ZcplcFeFehhR,ZcplcFuFuhhL,ZcplcFuFuhhR,ZcplhhcVWmVWm,        & 
& Zcplhhhhhh,ZcplhhhhVZ,ZcplhhHmcHm,ZcplhhHmcVWm,ZcplhhVZVZ,ZRUZH,ZRUZP,ZRUVd,           & 
& ZRUUd,ZRUVu,ZRUUu,ZRUVe,ZRUUe,MLambda,em,gs,deltaM,kont,gP1Lhh)

Implicit None 
Real(dp),Intent(in) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp),Intent(in) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Real(dp),Intent(in) :: vd,vu,vS

Real(dp),Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp),Intent(in) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp),Intent(in) :: dg1,dg2,dg3,dM112,dM222,dLam1,dLam4,dLam3,dLam2,dmS2,dLam1p,dLam2p,dL3pp,             & 
& deta,dzeta,dvd,dvu,dvS,dZH(6,6),dZP(2,2),dSinTW,dCosTW,dTanTW

Complex(dp),Intent(in) :: dM122,dYu(3,3),depsU(3,3),dYd(3,3),dYe(3,3),depsD(3,3),depsE(3,3),dLam6,              & 
& dLam5,dLam7,dmSp2,dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,             & 
& dLam7p,dLam5p,dL2pp,dLam3p,dZDL(3,3),dZDR(3,3),dZUL(3,3),dZUR(3,3),dZEL(3,3),dZER(3,3)

Complex(dp),Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFdFuHmL(3,3,2),& 
& cplcFdFuHmR(3,3,2),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplcFeFehhL(3,3,6),             & 
& cplcFeFehhR(3,3,6),cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),& 
& cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),             & 
& cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),         & 
& cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),               & 
& cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplcFvFecHmL(3,3,2),& 
& cplcFvFecHmR(3,3,2),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),cplcFvFvVZL(3,3),            & 
& cplcFvFvVZR(3,3),cplcgAgWmcVWm,cplcgAgWpCVWm,cplcgWmgAHm(2),cplcgWmgAVWm,              & 
& cplcgWmgWmhh(6),cplcgWmgWmVP,cplcgWmgWmVZ,cplcgWmgZHm(2),cplcgWmgZVWm,cplcgWpCgAcVWm,  & 
& cplcgWpCgWpChh(6),cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplcgWpCgZcHm(2),cplcgWpCgZcVWm,       & 
& cplcgZgAhh(6),cplcgZgWmcHm(2),cplcgZgWmcVWm,cplcgZgWpCHm(2),cplcgZgWpCVWm,             & 
& cplcgZgZhh(6),cplcHmVPVWm(2),cplcHmVWmVZ(2),cplcVWmcVWmVWmVWm1Q,cplcVWmcVWmVWmVWm2Q,   & 
& cplcVWmcVWmVWmVWm3Q,cplcVWmVPVPVWm1Q,cplcVWmVPVPVWm2Q,cplcVWmVPVPVWm3Q,cplcVWmVPVWm,   & 
& cplcVWmVPVWmVZ1Q,cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ3Q,cplcVWmVWmVZ,cplcVWmVWmVZVZ1Q,      & 
& cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,cplhhcHmVPVWm1(6,2),cplhhcHmVWm(6,2),cplhhcHmVWmVZ1(6,2),& 
& cplhhcVWmVWm(6),cplhhhhcVWmVWm1(6,6),cplhhhhhh(6,6,6),cplhhhhhhhh1(6,6,6,6),           & 
& cplhhhhHmcHm1(6,6,2,2),cplhhhhVZ(6,6),cplhhhhVZVZ1(6,6),cplhhHmcHm(6,2,2),             & 
& cplhhHmcVWm(6,2),cplhhHmcVWmVP1(6,2),cplhhHmcVWmVZ1(6,2),cplhhVZVZ(6),cplHmcHmcVWmVWm1(2,2),& 
& cplHmcHmVP(2,2),cplHmcHmVPVP1(2,2),cplHmcHmVPVZ1(2,2),cplHmcHmVZ(2,2),cplHmcHmVZVZ1(2,2),& 
& cplHmcVWmVP(2),cplHmcVWmVZ(2),cplHmHmcHmcHm1(2,2,2,2),ctcplcFdFdhhL(3,3,6),            & 
& ctcplcFdFdhhR(3,3,6),ctcplcFeFehhL(3,3,6),ctcplcFeFehhR(3,3,6),ctcplcFuFuhhL(3,3,6),   & 
& ctcplcFuFuhhR(3,3,6),ctcplhhcVWmVWm(6),ctcplhhhhhh(6,6,6),ctcplhhhhVZ(6,6),            & 
& ctcplhhHmcHm(6,2,2),ctcplhhHmcVWm(6,2),ctcplhhVZVZ(6),GcplcHmVPVWm(2),GcplhhcHmVWm(6,2),& 
& GcplhhHmcHm(6,2,2),GcplHmcVWmVP(2),GosZcplcHmVPVWm(2),GosZcplhhcHmVWm(6,2),            & 
& GosZcplhhHmcHm(6,2,2),GosZcplHmcVWmVP(2),GZcplcHmVPVWm(2),GZcplhhcHmVWm(6,2),          & 
& GZcplhhHmcHm(6,2,2),GZcplHmcVWmVP(2),ZcplcFdFdhhL(3,3,6),ZcplcFdFdhhR(3,3,6),          & 
& ZcplcFeFehhL(3,3,6),ZcplcFeFehhR(3,3,6),ZcplcFuFuhhL(3,3,6),ZcplcFuFuhhR(3,3,6),       & 
& ZcplhhcVWmVWm(6),Zcplhhhhhh(6,6,6),ZcplhhhhVZ(6,6),ZcplhhHmcHm(6,2,2),ZcplhhHmcVWm(6,2),& 
& ZcplhhVZVZ(6)

Real(dp), Intent(in) :: em, gs 
Complex(dp),Intent(in) :: ZfVG,ZfvL(3,3),ZfVP,ZfVZ,ZfVWm,Zfhh(6,6),ZfHm(2,2),ZfDL(3,3),ZfDR(3,3),               & 
& ZfUL(3,3),ZfUR(3,3),ZfEL(3,3),ZfER(3,3),ZfVPVZ,ZfVZVP

Real(dp),Intent(in) :: MhhOS(6),Mhh2OS(6),MHmOS(2),MHm2OS(2),MFdOS(3),MFd2OS(3),MFuOS(3),MFu2OS(3),          & 
& MFeOS(3),MFe2OS(3),MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS(6,6),ZPOS(2,2)

Complex(dp),Intent(in) :: ZDLOS(3,3),ZDROS(3,3),ZULOS(3,3),ZUROS(3,3),ZELOS(3,3),ZEROS(3,3)

Complex(dp),Intent(in) :: ZRUZH(6,6),ZRUZP(2,2),ZRUVd(3,3),ZRUUd(3,3),ZRUVu(3,3),ZRUUu(3,3),ZRUVe(3,3),         & 
& ZRUUe(3,3)

Real(dp), Intent(in) :: MLambda, deltaM 
Real(dp), Intent(out) :: gP1Lhh(6,72) 
Integer, Intent(out) :: kont 
Real(dp) :: MVG,MVP,MVG2,MVP2, helfactor, phasespacefactor 
Integer :: i1,i2,i3,i4, isave, gt1, gt2, gt3 

Complex(dp) :: ZRUZHc(6, 6) 
Complex(dp) :: ZRUZPc(2, 2) 
Complex(dp) :: ZRUVdc(3, 3) 
Complex(dp) :: ZRUUdc(3, 3) 
Complex(dp) :: ZRUVuc(3, 3) 
Complex(dp) :: ZRUUuc(3, 3) 
Complex(dp) :: ZRUVec(3, 3) 
Complex(dp) :: ZRUUec(3, 3) 
Real(dp) :: MRPhhTocFdFd(6,3,3),MRGhhTocFdFd(6,3,3), MRPZhhTocFdFd(6,3,3),MRGZhhTocFdFd(6,3,3) 
Real(dp) :: MVPhhTocFdFd(6,3,3) 
Real(dp) :: RMsqTreehhTocFdFd(6,3,3),RMsqWavehhTocFdFd(6,3,3),RMsqVertexhhTocFdFd(6,3,3) 
Complex(dp) :: AmpTreehhTocFdFd(2,6,3,3),AmpWavehhTocFdFd(2,6,3,3)=(0._dp,0._dp),AmpVertexhhTocFdFd(2,6,3,3)& 
 & ,AmpVertexIRoshhTocFdFd(2,6,3,3),AmpVertexIRdrhhTocFdFd(2,6,3,3), AmpSumhhTocFdFd(2,6,3,3), AmpSum2hhTocFdFd(2,6,3,3) 
Complex(dp) :: AmpTreeZhhTocFdFd(2,6,3,3),AmpWaveZhhTocFdFd(2,6,3,3),AmpVertexZhhTocFdFd(2,6,3,3) 
Real(dp) :: AmpSqhhTocFdFd(6,3,3),  AmpSqTreehhTocFdFd(6,3,3) 
Real(dp) :: MRPhhTocFeFe(6,3,3),MRGhhTocFeFe(6,3,3), MRPZhhTocFeFe(6,3,3),MRGZhhTocFeFe(6,3,3) 
Real(dp) :: MVPhhTocFeFe(6,3,3) 
Real(dp) :: RMsqTreehhTocFeFe(6,3,3),RMsqWavehhTocFeFe(6,3,3),RMsqVertexhhTocFeFe(6,3,3) 
Complex(dp) :: AmpTreehhTocFeFe(2,6,3,3),AmpWavehhTocFeFe(2,6,3,3)=(0._dp,0._dp),AmpVertexhhTocFeFe(2,6,3,3)& 
 & ,AmpVertexIRoshhTocFeFe(2,6,3,3),AmpVertexIRdrhhTocFeFe(2,6,3,3), AmpSumhhTocFeFe(2,6,3,3), AmpSum2hhTocFeFe(2,6,3,3) 
Complex(dp) :: AmpTreeZhhTocFeFe(2,6,3,3),AmpWaveZhhTocFeFe(2,6,3,3),AmpVertexZhhTocFeFe(2,6,3,3) 
Real(dp) :: AmpSqhhTocFeFe(6,3,3),  AmpSqTreehhTocFeFe(6,3,3) 
Real(dp) :: MRPhhTocFuFu(6,3,3),MRGhhTocFuFu(6,3,3), MRPZhhTocFuFu(6,3,3),MRGZhhTocFuFu(6,3,3) 
Real(dp) :: MVPhhTocFuFu(6,3,3) 
Real(dp) :: RMsqTreehhTocFuFu(6,3,3),RMsqWavehhTocFuFu(6,3,3),RMsqVertexhhTocFuFu(6,3,3) 
Complex(dp) :: AmpTreehhTocFuFu(2,6,3,3),AmpWavehhTocFuFu(2,6,3,3)=(0._dp,0._dp),AmpVertexhhTocFuFu(2,6,3,3)& 
 & ,AmpVertexIRoshhTocFuFu(2,6,3,3),AmpVertexIRdrhhTocFuFu(2,6,3,3), AmpSumhhTocFuFu(2,6,3,3), AmpSum2hhTocFuFu(2,6,3,3) 
Complex(dp) :: AmpTreeZhhTocFuFu(2,6,3,3),AmpWaveZhhTocFuFu(2,6,3,3),AmpVertexZhhTocFuFu(2,6,3,3) 
Real(dp) :: AmpSqhhTocFuFu(6,3,3),  AmpSqTreehhTocFuFu(6,3,3) 
Real(dp) :: MRPhhTohhhh(6,6,6),MRGhhTohhhh(6,6,6), MRPZhhTohhhh(6,6,6),MRGZhhTohhhh(6,6,6) 
Real(dp) :: MVPhhTohhhh(6,6,6) 
Real(dp) :: RMsqTreehhTohhhh(6,6,6),RMsqWavehhTohhhh(6,6,6),RMsqVertexhhTohhhh(6,6,6) 
Complex(dp) :: AmpTreehhTohhhh(6,6,6),AmpWavehhTohhhh(6,6,6)=(0._dp,0._dp),AmpVertexhhTohhhh(6,6,6)& 
 & ,AmpVertexIRoshhTohhhh(6,6,6),AmpVertexIRdrhhTohhhh(6,6,6), AmpSumhhTohhhh(6,6,6), AmpSum2hhTohhhh(6,6,6) 
Complex(dp) :: AmpTreeZhhTohhhh(6,6,6),AmpWaveZhhTohhhh(6,6,6),AmpVertexZhhTohhhh(6,6,6) 
Real(dp) :: AmpSqhhTohhhh(6,6,6),  AmpSqTreehhTohhhh(6,6,6) 
Real(dp) :: MRPhhTohhVZ(6,6),MRGhhTohhVZ(6,6), MRPZhhTohhVZ(6,6),MRGZhhTohhVZ(6,6) 
Real(dp) :: MVPhhTohhVZ(6,6) 
Real(dp) :: RMsqTreehhTohhVZ(6,6),RMsqWavehhTohhVZ(6,6),RMsqVertexhhTohhVZ(6,6) 
Complex(dp) :: AmpTreehhTohhVZ(2,6,6),AmpWavehhTohhVZ(2,6,6)=(0._dp,0._dp),AmpVertexhhTohhVZ(2,6,6)& 
 & ,AmpVertexIRoshhTohhVZ(2,6,6),AmpVertexIRdrhhTohhVZ(2,6,6), AmpSumhhTohhVZ(2,6,6), AmpSum2hhTohhVZ(2,6,6) 
Complex(dp) :: AmpTreeZhhTohhVZ(2,6,6),AmpWaveZhhTohhVZ(2,6,6),AmpVertexZhhTohhVZ(2,6,6) 
Real(dp) :: AmpSqhhTohhVZ(6,6),  AmpSqTreehhTohhVZ(6,6) 
Real(dp) :: MRPhhTocHmHm(6,2,2),MRGhhTocHmHm(6,2,2), MRPZhhTocHmHm(6,2,2),MRGZhhTocHmHm(6,2,2) 
Real(dp) :: MVPhhTocHmHm(6,2,2) 
Real(dp) :: RMsqTreehhTocHmHm(6,2,2),RMsqWavehhTocHmHm(6,2,2),RMsqVertexhhTocHmHm(6,2,2) 
Complex(dp) :: AmpTreehhTocHmHm(6,2,2),AmpWavehhTocHmHm(6,2,2)=(0._dp,0._dp),AmpVertexhhTocHmHm(6,2,2)& 
 & ,AmpVertexIRoshhTocHmHm(6,2,2),AmpVertexIRdrhhTocHmHm(6,2,2), AmpSumhhTocHmHm(6,2,2), AmpSum2hhTocHmHm(6,2,2) 
Complex(dp) :: AmpTreeZhhTocHmHm(6,2,2),AmpWaveZhhTocHmHm(6,2,2),AmpVertexZhhTocHmHm(6,2,2) 
Real(dp) :: AmpSqhhTocHmHm(6,2,2),  AmpSqTreehhTocHmHm(6,2,2) 
Real(dp) :: MRPhhToHmcVWm(6,2),MRGhhToHmcVWm(6,2), MRPZhhToHmcVWm(6,2),MRGZhhToHmcVWm(6,2) 
Real(dp) :: MVPhhToHmcVWm(6,2) 
Real(dp) :: RMsqTreehhToHmcVWm(6,2),RMsqWavehhToHmcVWm(6,2),RMsqVertexhhToHmcVWm(6,2) 
Complex(dp) :: AmpTreehhToHmcVWm(2,6,2),AmpWavehhToHmcVWm(2,6,2)=(0._dp,0._dp),AmpVertexhhToHmcVWm(2,6,2)& 
 & ,AmpVertexIRoshhToHmcVWm(2,6,2),AmpVertexIRdrhhToHmcVWm(2,6,2), AmpSumhhToHmcVWm(2,6,2), AmpSum2hhToHmcVWm(2,6,2) 
Complex(dp) :: AmpTreeZhhToHmcVWm(2,6,2),AmpWaveZhhToHmcVWm(2,6,2),AmpVertexZhhToHmcVWm(2,6,2) 
Real(dp) :: AmpSqhhToHmcVWm(6,2),  AmpSqTreehhToHmcVWm(6,2) 
Real(dp) :: MRPhhTocVWmVWm(6),MRGhhTocVWmVWm(6), MRPZhhTocVWmVWm(6),MRGZhhTocVWmVWm(6) 
Real(dp) :: MVPhhTocVWmVWm(6) 
Real(dp) :: RMsqTreehhTocVWmVWm(6),RMsqWavehhTocVWmVWm(6),RMsqVertexhhTocVWmVWm(6) 
Complex(dp) :: AmpTreehhTocVWmVWm(2,6),AmpWavehhTocVWmVWm(2,6)=(0._dp,0._dp),AmpVertexhhTocVWmVWm(2,6)& 
 & ,AmpVertexIRoshhTocVWmVWm(2,6),AmpVertexIRdrhhTocVWmVWm(2,6), AmpSumhhTocVWmVWm(2,6), AmpSum2hhTocVWmVWm(2,6) 
Complex(dp) :: AmpTreeZhhTocVWmVWm(2,6),AmpWaveZhhTocVWmVWm(2,6),AmpVertexZhhTocVWmVWm(2,6) 
Real(dp) :: AmpSqhhTocVWmVWm(6),  AmpSqTreehhTocVWmVWm(6) 
Real(dp) :: MRPhhToVZVZ(6),MRGhhToVZVZ(6), MRPZhhToVZVZ(6),MRGZhhToVZVZ(6) 
Real(dp) :: MVPhhToVZVZ(6) 
Real(dp) :: RMsqTreehhToVZVZ(6),RMsqWavehhToVZVZ(6),RMsqVertexhhToVZVZ(6) 
Complex(dp) :: AmpTreehhToVZVZ(2,6),AmpWavehhToVZVZ(2,6)=(0._dp,0._dp),AmpVertexhhToVZVZ(2,6)& 
 & ,AmpVertexIRoshhToVZVZ(2,6),AmpVertexIRdrhhToVZVZ(2,6), AmpSumhhToVZVZ(2,6), AmpSum2hhToVZVZ(2,6) 
Complex(dp) :: AmpTreeZhhToVZVZ(2,6),AmpWaveZhhToVZVZ(2,6),AmpVertexZhhToVZVZ(2,6) 
Real(dp) :: AmpSqhhToVZVZ(6),  AmpSqTreehhToVZVZ(6) 
Real(dp) :: MRPhhToFvcFv(6,3,3),MRGhhToFvcFv(6,3,3), MRPZhhToFvcFv(6,3,3),MRGZhhToFvcFv(6,3,3) 
Real(dp) :: MVPhhToFvcFv(6,3,3) 
Real(dp) :: RMsqTreehhToFvcFv(6,3,3),RMsqWavehhToFvcFv(6,3,3),RMsqVertexhhToFvcFv(6,3,3) 
Complex(dp) :: AmpTreehhToFvcFv(2,6,3,3),AmpWavehhToFvcFv(2,6,3,3)=(0._dp,0._dp),AmpVertexhhToFvcFv(2,6,3,3)& 
 & ,AmpVertexIRoshhToFvcFv(2,6,3,3),AmpVertexIRdrhhToFvcFv(2,6,3,3), AmpSumhhToFvcFv(2,6,3,3), AmpSum2hhToFvcFv(2,6,3,3) 
Complex(dp) :: AmpTreeZhhToFvcFv(2,6,3,3),AmpWaveZhhToFvcFv(2,6,3,3),AmpVertexZhhToFvcFv(2,6,3,3) 
Real(dp) :: AmpSqhhToFvcFv(6,3,3),  AmpSqTreehhToFvcFv(6,3,3) 
Real(dp) :: MRPhhTohhVP(6,6),MRGhhTohhVP(6,6), MRPZhhTohhVP(6,6),MRGZhhTohhVP(6,6) 
Real(dp) :: MVPhhTohhVP(6,6) 
Real(dp) :: RMsqTreehhTohhVP(6,6),RMsqWavehhTohhVP(6,6),RMsqVertexhhTohhVP(6,6) 
Complex(dp) :: AmpTreehhTohhVP(2,6,6),AmpWavehhTohhVP(2,6,6)=(0._dp,0._dp),AmpVertexhhTohhVP(2,6,6)& 
 & ,AmpVertexIRoshhTohhVP(2,6,6),AmpVertexIRdrhhTohhVP(2,6,6), AmpSumhhTohhVP(2,6,6), AmpSum2hhTohhVP(2,6,6) 
Complex(dp) :: AmpTreeZhhTohhVP(2,6,6),AmpWaveZhhTohhVP(2,6,6),AmpVertexZhhTohhVP(2,6,6) 
Real(dp) :: AmpSqhhTohhVP(6,6),  AmpSqTreehhTohhVP(6,6) 
Real(dp) :: MRPhhToVGVG(6),MRGhhToVGVG(6), MRPZhhToVGVG(6),MRGZhhToVGVG(6) 
Real(dp) :: MVPhhToVGVG(6) 
Real(dp) :: RMsqTreehhToVGVG(6),RMsqWavehhToVGVG(6),RMsqVertexhhToVGVG(6) 
Complex(dp) :: AmpTreehhToVGVG(2,6),AmpWavehhToVGVG(2,6)=(0._dp,0._dp),AmpVertexhhToVGVG(2,6)& 
 & ,AmpVertexIRoshhToVGVG(2,6),AmpVertexIRdrhhToVGVG(2,6), AmpSumhhToVGVG(2,6), AmpSum2hhToVGVG(2,6) 
Complex(dp) :: AmpTreeZhhToVGVG(2,6),AmpWaveZhhToVGVG(2,6),AmpVertexZhhToVGVG(2,6) 
Real(dp) :: AmpSqhhToVGVG(6),  AmpSqTreehhToVGVG(6) 
Real(dp) :: MRPhhToVPVP(6),MRGhhToVPVP(6), MRPZhhToVPVP(6),MRGZhhToVPVP(6) 
Real(dp) :: MVPhhToVPVP(6) 
Real(dp) :: RMsqTreehhToVPVP(6),RMsqWavehhToVPVP(6),RMsqVertexhhToVPVP(6) 
Complex(dp) :: AmpTreehhToVPVP(2,6),AmpWavehhToVPVP(2,6)=(0._dp,0._dp),AmpVertexhhToVPVP(2,6)& 
 & ,AmpVertexIRoshhToVPVP(2,6),AmpVertexIRdrhhToVPVP(2,6), AmpSumhhToVPVP(2,6), AmpSum2hhToVPVP(2,6) 
Complex(dp) :: AmpTreeZhhToVPVP(2,6),AmpWaveZhhToVPVP(2,6),AmpVertexZhhToVPVP(2,6) 
Real(dp) :: AmpSqhhToVPVP(6),  AmpSqTreehhToVPVP(6) 
Real(dp) :: MRPhhToVPVZ(6),MRGhhToVPVZ(6), MRPZhhToVPVZ(6),MRGZhhToVPVZ(6) 
Real(dp) :: MVPhhToVPVZ(6) 
Real(dp) :: RMsqTreehhToVPVZ(6),RMsqWavehhToVPVZ(6),RMsqVertexhhToVPVZ(6) 
Complex(dp) :: AmpTreehhToVPVZ(2,6),AmpWavehhToVPVZ(2,6)=(0._dp,0._dp),AmpVertexhhToVPVZ(2,6)& 
 & ,AmpVertexIRoshhToVPVZ(2,6),AmpVertexIRdrhhToVPVZ(2,6), AmpSumhhToVPVZ(2,6), AmpSum2hhToVPVZ(2,6) 
Complex(dp) :: AmpTreeZhhToVPVZ(2,6),AmpWaveZhhToVPVZ(2,6),AmpVertexZhhToVPVZ(2,6) 
Real(dp) :: AmpSqhhToVPVZ(6),  AmpSqTreehhToVPVZ(6) 
Write(*,*) "Calculating one-loop decays of hh " 
kont = 0 
MVG = MLambda 
MVP = MLambda 
MVG2 = MLambda**2 
MVP2 = MLambda**2 

ZRUZHc = Conjg(ZRUZH)
ZRUZPc = Conjg(ZRUZP)
ZRUVdc = Conjg(ZRUVd)
ZRUUdc = Conjg(ZRUUd)
ZRUVuc = Conjg(ZRUVu)
ZRUUuc = Conjg(ZRUUu)
ZRUVec = Conjg(ZRUVe)
ZRUUec = Conjg(ZRUUe)

 ! Counter 
isave = 5

If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! bar(Fd) Fd
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_2HDMSCPV_hhTocFdFd(cplcFdFdhhL,cplcFdFdhhR,MFd,Mhh,               & 
& MFd2,Mhh2,AmpTreehhTocFdFd)

  Else 
Call Amplitude_Tree_2HDMSCPV_hhTocFdFd(ZcplcFdFdhhL,ZcplcFdFdhhR,MFd,Mhh,             & 
& MFd2,Mhh2,AmpTreehhTocFdFd)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocFdFd(MLambda,em,gs,cplcFdFdhhL,cplcFdFdhhR,             & 
& MFdOS,MhhOS,MRPhhTocFdFd,MRGhhTocFdFd)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocFdFd(MLambda,em,gs,ZcplcFdFdhhL,ZcplcFdFdhhR,           & 
& MFdOS,MhhOS,MRPhhTocFdFd,MRGhhTocFdFd)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_2HDMSCPV_hhTocFdFd(MLambda,em,gs,cplcFdFdhhL,cplcFdFdhhR,             & 
& MFd,Mhh,MRPhhTocFdFd,MRGhhTocFdFd)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocFdFd(MLambda,em,gs,ZcplcFdFdhhL,ZcplcFdFdhhR,           & 
& MFd,Mhh,MRPhhTocFdFd,MRGhhTocFdFd)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_2HDMSCPV_hhTocFdFd(cplcFdFdhhL,cplcFdFdhhR,ctcplcFdFdhhL,         & 
& ctcplcFdFdhhR,MFd,MFd2,Mhh,Mhh2,ZfDL,ZfDR,Zfhh,AmpWavehhTocFdFd)



!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhTocFdFd(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,MVZ,            & 
& MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,          & 
& cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFuFdcHmL,              & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,          & 
& cplcFdFuHmR,cplcFdFuVWmL,cplcFdFuVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexhhTocFdFd)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFdFd(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,             & 
& MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,      & 
& cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFuFdcHmL,              & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,          & 
& cplcFdFuHmR,cplcFdFuVWmL,cplcFdFuVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRdrhhTocFdFd)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFdFd(MFdOS,MFuOS,MhhOS,MHmOS,MVG,              & 
& MVP,MVWmOS,MVZOS,MFd2OS,MFu2OS,Mhh2OS,MHm2OS,MVG2,MVP2,MVWm2OS,MVZ2OS,ZcplcFdFdhhL,    & 
& ZcplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,              & 
& cplcFdFdVZR,cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,         & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFdFuVWmL,cplcFdFuVWmR,cplhhhhhh,               & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRoshhTocFdFd)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFdFd(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,             & 
& MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,ZcplcFdFdhhL,ZcplcFdFdhhR,cplcFdFdVGL,    & 
& cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFuFdcHmL,              & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,          & 
& cplcFdFuHmR,cplcFdFuVWmL,cplcFdFuVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRoshhTocFdFd)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFdFd(MFdOS,MFuOS,MhhOS,MHmOS,MVG,              & 
& MVP,MVWmOS,MVZOS,MFd2OS,MFu2OS,Mhh2OS,MHm2OS,MVG2,MVP2,MVWm2OS,MVZ2OS,cplcFdFdhhL,     & 
& cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,               & 
& cplcFdFdVZR,cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,         & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFdFuVWmL,cplcFdFuVWmR,cplhhhhhh,               & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRoshhTocFdFd)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFdFd(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,             & 
& MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,      & 
& cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFuFdcHmL,              & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,          & 
& cplcFdFuHmR,cplcFdFuVWmL,cplcFdFuVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRoshhTocFdFd)

 End if 
 End if 
AmpVertexhhTocFdFd = AmpVertexhhTocFdFd -  AmpVertexIRdrhhTocFdFd! +  AmpVertexIRoshhTocFdFd ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZhhTocFdFd=0._dp 
AmpVertexZhhTocFdFd=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhTocFdFd(:,gt2,:,:) = AmpWaveZhhTocFdFd(:,gt2,:,:)+ZRUZH(gt2,gt1)*AmpWavehhTocFdFd(:,gt1,:,:) 
AmpVertexZhhTocFdFd(:,gt2,:,:)= AmpVertexZhhTocFdFd(:,gt2,:,:) + ZRUZH(gt2,gt1)*AmpVertexhhTocFdFd(:,gt1,:,:) 
 End Do 
End Do 
AmpWavehhTocFdFd=AmpWaveZhhTocFdFd 
AmpVertexhhTocFdFd= AmpVertexZhhTocFdFd
! Final State 1 
AmpWaveZhhTocFdFd=0._dp 
AmpVertexZhhTocFdFd=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZhhTocFdFd(1,:,gt2,:) = AmpWaveZhhTocFdFd(1,:,gt2,:)+ZRUUd(gt2,gt1)*AmpWavehhTocFdFd(1,:,gt1,:) 
AmpVertexZhhTocFdFd(1,:,gt2,:)= AmpVertexZhhTocFdFd(1,:,gt2,:)+ZRUUd(gt2,gt1)*AmpVertexhhTocFdFd(1,:,gt1,:) 
AmpWaveZhhTocFdFd(2,:,gt2,:) = AmpWaveZhhTocFdFd(2,:,gt2,:)+ZRUVdc(gt2,gt1)*AmpWavehhTocFdFd(2,:,gt1,:) 
AmpVertexZhhTocFdFd(2,:,gt2,:)= AmpVertexZhhTocFdFd(2,:,gt2,:)+ZRUVdc(gt2,gt1)*AmpVertexhhTocFdFd(2,:,gt1,:) 
 End Do 
End Do 
AmpWavehhTocFdFd=AmpWaveZhhTocFdFd 
AmpVertexhhTocFdFd= AmpVertexZhhTocFdFd
! Final State 2 
AmpWaveZhhTocFdFd=0._dp 
AmpVertexZhhTocFdFd=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZhhTocFdFd(1,:,:,gt2) = AmpWaveZhhTocFdFd(1,:,:,gt2)+ZRUVd(gt2,gt1)*AmpWavehhTocFdFd(1,:,:,gt1) 
AmpVertexZhhTocFdFd(1,:,:,gt2)= AmpVertexZhhTocFdFd(1,:,:,gt2)+ZRUVd(gt2,gt1)*AmpVertexhhTocFdFd(1,:,:,gt1) 
AmpWaveZhhTocFdFd(2,:,:,gt2) = AmpWaveZhhTocFdFd(2,:,:,gt2)+ZRUUd(gt2,gt1)*AmpWavehhTocFdFd(2,:,:,gt1) 
AmpVertexZhhTocFdFd(2,:,:,gt2)= AmpVertexZhhTocFdFd(2,:,:,gt2)+ZRUUd(gt2,gt1)*AmpVertexhhTocFdFd(2,:,:,gt1) 
 End Do 
End Do 
AmpWavehhTocFdFd=AmpWaveZhhTocFdFd 
AmpVertexhhTocFdFd= AmpVertexZhhTocFdFd
End if
If (ShiftIRdiv) Then 
AmpVertexhhTocFdFd = AmpVertexhhTocFdFd  +  AmpVertexIRoshhTocFdFd
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->bar[Fd] Fd -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumhhTocFdFd = AmpTreehhTocFdFd 
 AmpSum2hhTocFdFd = AmpTreehhTocFdFd + 2._dp*AmpWavehhTocFdFd + 2._dp*AmpVertexhhTocFdFd  
Else 
 AmpSumhhTocFdFd = AmpTreehhTocFdFd + AmpWavehhTocFdFd + AmpVertexhhTocFdFd
 AmpSum2hhTocFdFd = AmpTreehhTocFdFd + AmpWavehhTocFdFd + AmpVertexhhTocFdFd 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhTocFdFd = AmpTreehhTocFdFd
 AmpSum2hhTocFdFd = AmpTreehhTocFdFd 
End if 
Do gt1=1,6
i4 = isave 
  Do gt2=1,3
    Do gt3=1,3
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(MFdOS(gt2))+Abs(MFdOS(gt3))))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(MFd(gt2))+Abs(MFd(gt3)))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1, gt2, gt3 
  AmpSum2hhTocFdFd = AmpTreehhTocFdFd
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFdOS(gt2),MFdOS(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFd(gt2),MFd(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqhhTocFdFd(gt1, gt2, gt3) 
  AmpSum2hhTocFdFd = 2._dp*AmpWavehhTocFdFd
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFdOS(gt2),MFdOS(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFd(gt2),MFd(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqhhTocFdFd(gt1, gt2, gt3) 
  AmpSum2hhTocFdFd = 2._dp*AmpVertexhhTocFdFd
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFdOS(gt2),MFdOS(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFd(gt2),MFd(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqhhTocFdFd(gt1, gt2, gt3) 
  AmpSum2hhTocFdFd = AmpTreehhTocFdFd + 2._dp*AmpWavehhTocFdFd + 2._dp*AmpVertexhhTocFdFd
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFdOS(gt2),MFdOS(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFd(gt2),MFd(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqhhTocFdFd(gt1, gt2, gt3) 
 End if 
If (OSkinematics) Then 
  AmpSum2hhTocFdFd = AmpTreehhTocFdFd
  Call SquareAmp_StoFF(MhhOS(gt1),MFdOS(gt2),MFdOS(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
  AmpSqTreehhTocFdFd(gt1, gt2, gt3) = AmpSqhhTocFdFd(gt1, gt2, gt3)  
  AmpSum2hhTocFdFd = + 2._dp*AmpWavehhTocFdFd + 2._dp*AmpVertexhhTocFdFd
  Call SquareAmp_StoFF(MhhOS(gt1),MFdOS(gt2),MFdOS(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
  AmpSqhhTocFdFd(gt1, gt2, gt3) = AmpSqhhTocFdFd(gt1, gt2, gt3) + AmpSqTreehhTocFdFd(gt1, gt2, gt3)  
Else  
  AmpSum2hhTocFdFd = AmpTreehhTocFdFd
  Call SquareAmp_StoFF(Mhh(gt1),MFd(gt2),MFd(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
  AmpSqTreehhTocFdFd(gt1, gt2, gt3) = AmpSqhhTocFdFd(gt1, gt2, gt3)  
  AmpSum2hhTocFdFd = + 2._dp*AmpWavehhTocFdFd + 2._dp*AmpVertexhhTocFdFd
  Call SquareAmp_StoFF(Mhh(gt1),MFd(gt2),MFd(gt3),AmpSumhhTocFdFd(:,gt1, gt2, gt3),AmpSum2hhTocFdFd(:,gt1, gt2, gt3),AmpSqhhTocFdFd(gt1, gt2, gt3)) 
  AmpSqhhTocFdFd(gt1, gt2, gt3) = AmpSqhhTocFdFd(gt1, gt2, gt3) + AmpSqTreehhTocFdFd(gt1, gt2, gt3)  
End if  
Else  
  AmpSqhhTocFdFd(gt1, gt2, gt3) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 4._dp 
If (AmpSqhhTocFdFd(gt1, gt2, gt3).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 3._dp*GammaTPS(MhhOS(gt1),MFdOS(gt2),MFdOS(gt3),helfactor*AmpSqhhTocFdFd(gt1, gt2, gt3))
Else 
  gP1Lhh(gt1,i4) = 3._dp*GammaTPS(Mhh(gt1),MFd(gt2),MFd(gt3),helfactor*AmpSqhhTocFdFd(gt1, gt2, gt3))
End if 
If ((Abs(MRPhhTocFdFd(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGhhTocFdFd(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPhhTocFdFd(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGhhTocFdFd(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPhhTocFdFd(gt1, gt2, gt3) + MRGhhTocFdFd(gt1, gt2, gt3)) 
  gP1Lhh(gt1,i4) = gP1Lhh(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPhhTocFdFd(gt1, gt2, gt3) + MRGhhTocFdFd(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1Lhh(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4 
End do
End If 
If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! bar(Fe) Fe
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_2HDMSCPV_hhTocFeFe(cplcFeFehhL,cplcFeFehhR,MFe,Mhh,               & 
& MFe2,Mhh2,AmpTreehhTocFeFe)

  Else 
Call Amplitude_Tree_2HDMSCPV_hhTocFeFe(ZcplcFeFehhL,ZcplcFeFehhR,MFe,Mhh,             & 
& MFe2,Mhh2,AmpTreehhTocFeFe)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocFeFe(MLambda,em,gs,cplcFeFehhL,cplcFeFehhR,             & 
& MFeOS,MhhOS,MRPhhTocFeFe,MRGhhTocFeFe)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocFeFe(MLambda,em,gs,ZcplcFeFehhL,ZcplcFeFehhR,           & 
& MFeOS,MhhOS,MRPhhTocFeFe,MRGhhTocFeFe)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_2HDMSCPV_hhTocFeFe(MLambda,em,gs,cplcFeFehhL,cplcFeFehhR,             & 
& MFe,Mhh,MRPhhTocFeFe,MRGhhTocFeFe)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocFeFe(MLambda,em,gs,ZcplcFeFehhL,ZcplcFeFehhR,           & 
& MFe,Mhh,MRPhhTocFeFe,MRGhhTocFeFe)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_2HDMSCPV_hhTocFeFe(cplcFeFehhL,cplcFeFehhR,ctcplcFeFehhL,         & 
& ctcplcFeFehhR,MFe,MFe2,Mhh,Mhh2,ZfEL,ZfER,Zfhh,AmpWavehhTocFeFe)



!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhTocFeFe(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,               & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,      & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexhhTocFeFe)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFeFe(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,            & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,      & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRdrhhTocFeFe)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFeFe(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,             & 
& MVZOS,MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,ZcplcFeFehhL,ZcplcFeFehhR,              & 
& cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,             & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,         & 
& cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,         & 
& AmpVertexIRoshhTocFeFe)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFeFe(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,            & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,ZcplcFeFehhL,ZcplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,           & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,      & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRoshhTocFeFe)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFeFe(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,             & 
& MVZOS,MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,    & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,           & 
& cplcFvFecVWmR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplhhhhhh,             & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRoshhTocFeFe)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFeFe(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,            & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,      & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRoshhTocFeFe)

 End if 
 End if 
AmpVertexhhTocFeFe = AmpVertexhhTocFeFe -  AmpVertexIRdrhhTocFeFe! +  AmpVertexIRoshhTocFeFe ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZhhTocFeFe=0._dp 
AmpVertexZhhTocFeFe=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhTocFeFe(:,gt2,:,:) = AmpWaveZhhTocFeFe(:,gt2,:,:)+ZRUZH(gt2,gt1)*AmpWavehhTocFeFe(:,gt1,:,:) 
AmpVertexZhhTocFeFe(:,gt2,:,:)= AmpVertexZhhTocFeFe(:,gt2,:,:) + ZRUZH(gt2,gt1)*AmpVertexhhTocFeFe(:,gt1,:,:) 
 End Do 
End Do 
AmpWavehhTocFeFe=AmpWaveZhhTocFeFe 
AmpVertexhhTocFeFe= AmpVertexZhhTocFeFe
! Final State 1 
AmpWaveZhhTocFeFe=0._dp 
AmpVertexZhhTocFeFe=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZhhTocFeFe(1,:,gt2,:) = AmpWaveZhhTocFeFe(1,:,gt2,:)+ZRUUe(gt2,gt1)*AmpWavehhTocFeFe(1,:,gt1,:) 
AmpVertexZhhTocFeFe(1,:,gt2,:)= AmpVertexZhhTocFeFe(1,:,gt2,:)+ZRUUe(gt2,gt1)*AmpVertexhhTocFeFe(1,:,gt1,:) 
AmpWaveZhhTocFeFe(2,:,gt2,:) = AmpWaveZhhTocFeFe(2,:,gt2,:)+ZRUVec(gt2,gt1)*AmpWavehhTocFeFe(2,:,gt1,:) 
AmpVertexZhhTocFeFe(2,:,gt2,:)= AmpVertexZhhTocFeFe(2,:,gt2,:)+ZRUVec(gt2,gt1)*AmpVertexhhTocFeFe(2,:,gt1,:) 
 End Do 
End Do 
AmpWavehhTocFeFe=AmpWaveZhhTocFeFe 
AmpVertexhhTocFeFe= AmpVertexZhhTocFeFe
! Final State 2 
AmpWaveZhhTocFeFe=0._dp 
AmpVertexZhhTocFeFe=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZhhTocFeFe(1,:,:,gt2) = AmpWaveZhhTocFeFe(1,:,:,gt2)+ZRUVe(gt2,gt1)*AmpWavehhTocFeFe(1,:,:,gt1) 
AmpVertexZhhTocFeFe(1,:,:,gt2)= AmpVertexZhhTocFeFe(1,:,:,gt2)+ZRUVe(gt2,gt1)*AmpVertexhhTocFeFe(1,:,:,gt1) 
AmpWaveZhhTocFeFe(2,:,:,gt2) = AmpWaveZhhTocFeFe(2,:,:,gt2)+ZRUUe(gt2,gt1)*AmpWavehhTocFeFe(2,:,:,gt1) 
AmpVertexZhhTocFeFe(2,:,:,gt2)= AmpVertexZhhTocFeFe(2,:,:,gt2)+ZRUUe(gt2,gt1)*AmpVertexhhTocFeFe(2,:,:,gt1) 
 End Do 
End Do 
AmpWavehhTocFeFe=AmpWaveZhhTocFeFe 
AmpVertexhhTocFeFe= AmpVertexZhhTocFeFe
End if
If (ShiftIRdiv) Then 
AmpVertexhhTocFeFe = AmpVertexhhTocFeFe  +  AmpVertexIRoshhTocFeFe
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->bar[Fe] Fe -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumhhTocFeFe = AmpTreehhTocFeFe 
 AmpSum2hhTocFeFe = AmpTreehhTocFeFe + 2._dp*AmpWavehhTocFeFe + 2._dp*AmpVertexhhTocFeFe  
Else 
 AmpSumhhTocFeFe = AmpTreehhTocFeFe + AmpWavehhTocFeFe + AmpVertexhhTocFeFe
 AmpSum2hhTocFeFe = AmpTreehhTocFeFe + AmpWavehhTocFeFe + AmpVertexhhTocFeFe 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhTocFeFe = AmpTreehhTocFeFe
 AmpSum2hhTocFeFe = AmpTreehhTocFeFe 
End if 
Do gt1=1,6
i4 = isave 
  Do gt2=1,3
    Do gt3=1,3
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(MFeOS(gt2))+Abs(MFeOS(gt3))))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(MFe(gt2))+Abs(MFe(gt3)))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1, gt2, gt3 
  AmpSum2hhTocFeFe = AmpTreehhTocFeFe
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFeOS(gt2),MFeOS(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFe(gt2),MFe(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqhhTocFeFe(gt1, gt2, gt3) 
  AmpSum2hhTocFeFe = 2._dp*AmpWavehhTocFeFe
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFeOS(gt2),MFeOS(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFe(gt2),MFe(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqhhTocFeFe(gt1, gt2, gt3) 
  AmpSum2hhTocFeFe = 2._dp*AmpVertexhhTocFeFe
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFeOS(gt2),MFeOS(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFe(gt2),MFe(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqhhTocFeFe(gt1, gt2, gt3) 
  AmpSum2hhTocFeFe = AmpTreehhTocFeFe + 2._dp*AmpWavehhTocFeFe + 2._dp*AmpVertexhhTocFeFe
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFeOS(gt2),MFeOS(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFe(gt2),MFe(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqhhTocFeFe(gt1, gt2, gt3) 
 End if 
If (OSkinematics) Then 
  AmpSum2hhTocFeFe = AmpTreehhTocFeFe
  Call SquareAmp_StoFF(MhhOS(gt1),MFeOS(gt2),MFeOS(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
  AmpSqTreehhTocFeFe(gt1, gt2, gt3) = AmpSqhhTocFeFe(gt1, gt2, gt3)  
  AmpSum2hhTocFeFe = + 2._dp*AmpWavehhTocFeFe + 2._dp*AmpVertexhhTocFeFe
  Call SquareAmp_StoFF(MhhOS(gt1),MFeOS(gt2),MFeOS(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
  AmpSqhhTocFeFe(gt1, gt2, gt3) = AmpSqhhTocFeFe(gt1, gt2, gt3) + AmpSqTreehhTocFeFe(gt1, gt2, gt3)  
Else  
  AmpSum2hhTocFeFe = AmpTreehhTocFeFe
  Call SquareAmp_StoFF(Mhh(gt1),MFe(gt2),MFe(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
  AmpSqTreehhTocFeFe(gt1, gt2, gt3) = AmpSqhhTocFeFe(gt1, gt2, gt3)  
  AmpSum2hhTocFeFe = + 2._dp*AmpWavehhTocFeFe + 2._dp*AmpVertexhhTocFeFe
  Call SquareAmp_StoFF(Mhh(gt1),MFe(gt2),MFe(gt3),AmpSumhhTocFeFe(:,gt1, gt2, gt3),AmpSum2hhTocFeFe(:,gt1, gt2, gt3),AmpSqhhTocFeFe(gt1, gt2, gt3)) 
  AmpSqhhTocFeFe(gt1, gt2, gt3) = AmpSqhhTocFeFe(gt1, gt2, gt3) + AmpSqTreehhTocFeFe(gt1, gt2, gt3)  
End if  
Else  
  AmpSqhhTocFeFe(gt1, gt2, gt3) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 4._dp 
If (AmpSqhhTocFeFe(gt1, gt2, gt3).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(MhhOS(gt1),MFeOS(gt2),MFeOS(gt3),helfactor*AmpSqhhTocFeFe(gt1, gt2, gt3))
Else 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(Mhh(gt1),MFe(gt2),MFe(gt3),helfactor*AmpSqhhTocFeFe(gt1, gt2, gt3))
End if 
If ((Abs(MRPhhTocFeFe(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGhhTocFeFe(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPhhTocFeFe(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGhhTocFeFe(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPhhTocFeFe(gt1, gt2, gt3) + MRGhhTocFeFe(gt1, gt2, gt3)) 
  gP1Lhh(gt1,i4) = gP1Lhh(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPhhTocFeFe(gt1, gt2, gt3) + MRGhhTocFeFe(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1Lhh(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4 
End do
End If 
If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! bar(Fu) Fu
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_2HDMSCPV_hhTocFuFu(cplcFuFuhhL,cplcFuFuhhR,MFu,Mhh,               & 
& MFu2,Mhh2,AmpTreehhTocFuFu)

  Else 
Call Amplitude_Tree_2HDMSCPV_hhTocFuFu(ZcplcFuFuhhL,ZcplcFuFuhhR,MFu,Mhh,             & 
& MFu2,Mhh2,AmpTreehhTocFuFu)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocFuFu(MLambda,em,gs,cplcFuFuhhL,cplcFuFuhhR,             & 
& MFuOS,MhhOS,MRPhhTocFuFu,MRGhhTocFuFu)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocFuFu(MLambda,em,gs,ZcplcFuFuhhL,ZcplcFuFuhhR,           & 
& MFuOS,MhhOS,MRPhhTocFuFu,MRGhhTocFuFu)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_2HDMSCPV_hhTocFuFu(MLambda,em,gs,cplcFuFuhhL,cplcFuFuhhR,             & 
& MFu,Mhh,MRPhhTocFuFu,MRGhhTocFuFu)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocFuFu(MLambda,em,gs,ZcplcFuFuhhL,ZcplcFuFuhhR,           & 
& MFu,Mhh,MRPhhTocFuFu,MRGhhTocFuFu)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_2HDMSCPV_hhTocFuFu(cplcFuFuhhL,cplcFuFuhhR,ctcplcFuFuhhL,         & 
& ctcplcFuFuhhR,MFu,MFu2,Mhh,Mhh2,Zfhh,ZfUL,ZfUR,AmpWavehhTocFuFu)



!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhTocFuFu(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,MVZ,            & 
& MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,         & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,          & 
& cplcFdFuHmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,              & 
& cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,       & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexhhTocFuFu)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFuFu(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,             & 
& MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,     & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,          & 
& cplcFdFuHmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,              & 
& cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,       & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRdrhhTocFuFu)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFuFu(MFdOS,MFuOS,MhhOS,MHmOS,MVG,              & 
& MVP,MVWmOS,MVZOS,MFd2OS,MFu2OS,Mhh2OS,MHm2OS,MVG2,MVP2,MVWm2OS,MVZ2OS,cplcFdFdhhL,     & 
& cplcFdFdhhR,cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,ZcplcFuFuhhL,        & 
& ZcplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,              & 
& cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplhhhhhh,               & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRoshhTocFuFu)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFuFu(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,             & 
& MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,     & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,ZcplcFuFuhhL,ZcplcFuFuhhR,cplcFdFuHmL,        & 
& cplcFdFuHmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,              & 
& cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,       & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRoshhTocFuFu)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFuFu(MFdOS,MFuOS,MhhOS,MHmOS,MVG,              & 
& MVP,MVWmOS,MVZOS,MFd2OS,MFu2OS,Mhh2OS,MHm2OS,MVG2,MVP2,MVWm2OS,MVZ2OS,cplcFdFdhhL,     & 
& cplcFdFdhhR,cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,         & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,               & 
& cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplhhhhhh,               & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRoshhTocFuFu)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocFuFu(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,             & 
& MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,     & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,          & 
& cplcFdFuHmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,              & 
& cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,       & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRoshhTocFuFu)

 End if 
 End if 
AmpVertexhhTocFuFu = AmpVertexhhTocFuFu -  AmpVertexIRdrhhTocFuFu! +  AmpVertexIRoshhTocFuFu ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZhhTocFuFu=0._dp 
AmpVertexZhhTocFuFu=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhTocFuFu(:,gt2,:,:) = AmpWaveZhhTocFuFu(:,gt2,:,:)+ZRUZH(gt2,gt1)*AmpWavehhTocFuFu(:,gt1,:,:) 
AmpVertexZhhTocFuFu(:,gt2,:,:)= AmpVertexZhhTocFuFu(:,gt2,:,:) + ZRUZH(gt2,gt1)*AmpVertexhhTocFuFu(:,gt1,:,:) 
 End Do 
End Do 
AmpWavehhTocFuFu=AmpWaveZhhTocFuFu 
AmpVertexhhTocFuFu= AmpVertexZhhTocFuFu
! Final State 1 
AmpWaveZhhTocFuFu=0._dp 
AmpVertexZhhTocFuFu=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZhhTocFuFu(1,:,gt2,:) = AmpWaveZhhTocFuFu(1,:,gt2,:)+ZRUUu(gt2,gt1)*AmpWavehhTocFuFu(1,:,gt1,:) 
AmpVertexZhhTocFuFu(1,:,gt2,:)= AmpVertexZhhTocFuFu(1,:,gt2,:)+ZRUUu(gt2,gt1)*AmpVertexhhTocFuFu(1,:,gt1,:) 
AmpWaveZhhTocFuFu(2,:,gt2,:) = AmpWaveZhhTocFuFu(2,:,gt2,:)+ZRUVuc(gt2,gt1)*AmpWavehhTocFuFu(2,:,gt1,:) 
AmpVertexZhhTocFuFu(2,:,gt2,:)= AmpVertexZhhTocFuFu(2,:,gt2,:)+ZRUVuc(gt2,gt1)*AmpVertexhhTocFuFu(2,:,gt1,:) 
 End Do 
End Do 
AmpWavehhTocFuFu=AmpWaveZhhTocFuFu 
AmpVertexhhTocFuFu= AmpVertexZhhTocFuFu
! Final State 2 
AmpWaveZhhTocFuFu=0._dp 
AmpVertexZhhTocFuFu=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZhhTocFuFu(1,:,:,gt2) = AmpWaveZhhTocFuFu(1,:,:,gt2)+ZRUVu(gt2,gt1)*AmpWavehhTocFuFu(1,:,:,gt1) 
AmpVertexZhhTocFuFu(1,:,:,gt2)= AmpVertexZhhTocFuFu(1,:,:,gt2)+ZRUVu(gt2,gt1)*AmpVertexhhTocFuFu(1,:,:,gt1) 
AmpWaveZhhTocFuFu(2,:,:,gt2) = AmpWaveZhhTocFuFu(2,:,:,gt2)+ZRUUu(gt2,gt1)*AmpWavehhTocFuFu(2,:,:,gt1) 
AmpVertexZhhTocFuFu(2,:,:,gt2)= AmpVertexZhhTocFuFu(2,:,:,gt2)+ZRUUu(gt2,gt1)*AmpVertexhhTocFuFu(2,:,:,gt1) 
 End Do 
End Do 
AmpWavehhTocFuFu=AmpWaveZhhTocFuFu 
AmpVertexhhTocFuFu= AmpVertexZhhTocFuFu
End if
If (ShiftIRdiv) Then 
AmpVertexhhTocFuFu = AmpVertexhhTocFuFu  +  AmpVertexIRoshhTocFuFu
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->bar[Fu] Fu -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumhhTocFuFu = AmpTreehhTocFuFu 
 AmpSum2hhTocFuFu = AmpTreehhTocFuFu + 2._dp*AmpWavehhTocFuFu + 2._dp*AmpVertexhhTocFuFu  
Else 
 AmpSumhhTocFuFu = AmpTreehhTocFuFu + AmpWavehhTocFuFu + AmpVertexhhTocFuFu
 AmpSum2hhTocFuFu = AmpTreehhTocFuFu + AmpWavehhTocFuFu + AmpVertexhhTocFuFu 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhTocFuFu = AmpTreehhTocFuFu
 AmpSum2hhTocFuFu = AmpTreehhTocFuFu 
End if 
Do gt1=1,6
i4 = isave 
  Do gt2=1,3
    Do gt3=1,3
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(MFuOS(gt2))+Abs(MFuOS(gt3))))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(MFu(gt2))+Abs(MFu(gt3)))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1, gt2, gt3 
  AmpSum2hhTocFuFu = AmpTreehhTocFuFu
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFuOS(gt2),MFuOS(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFu(gt2),MFu(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqhhTocFuFu(gt1, gt2, gt3) 
  AmpSum2hhTocFuFu = 2._dp*AmpWavehhTocFuFu
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFuOS(gt2),MFuOS(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFu(gt2),MFu(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqhhTocFuFu(gt1, gt2, gt3) 
  AmpSum2hhTocFuFu = 2._dp*AmpVertexhhTocFuFu
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFuOS(gt2),MFuOS(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFu(gt2),MFu(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqhhTocFuFu(gt1, gt2, gt3) 
  AmpSum2hhTocFuFu = AmpTreehhTocFuFu + 2._dp*AmpWavehhTocFuFu + 2._dp*AmpVertexhhTocFuFu
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),MFuOS(gt2),MFuOS(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),MFu(gt2),MFu(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqhhTocFuFu(gt1, gt2, gt3) 
 End if 
If (OSkinematics) Then 
  AmpSum2hhTocFuFu = AmpTreehhTocFuFu
  Call SquareAmp_StoFF(MhhOS(gt1),MFuOS(gt2),MFuOS(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
  AmpSqTreehhTocFuFu(gt1, gt2, gt3) = AmpSqhhTocFuFu(gt1, gt2, gt3)  
  AmpSum2hhTocFuFu = + 2._dp*AmpWavehhTocFuFu + 2._dp*AmpVertexhhTocFuFu
  Call SquareAmp_StoFF(MhhOS(gt1),MFuOS(gt2),MFuOS(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
  AmpSqhhTocFuFu(gt1, gt2, gt3) = AmpSqhhTocFuFu(gt1, gt2, gt3) + AmpSqTreehhTocFuFu(gt1, gt2, gt3)  
Else  
  AmpSum2hhTocFuFu = AmpTreehhTocFuFu
  Call SquareAmp_StoFF(Mhh(gt1),MFu(gt2),MFu(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
  AmpSqTreehhTocFuFu(gt1, gt2, gt3) = AmpSqhhTocFuFu(gt1, gt2, gt3)  
  AmpSum2hhTocFuFu = + 2._dp*AmpWavehhTocFuFu + 2._dp*AmpVertexhhTocFuFu
  Call SquareAmp_StoFF(Mhh(gt1),MFu(gt2),MFu(gt3),AmpSumhhTocFuFu(:,gt1, gt2, gt3),AmpSum2hhTocFuFu(:,gt1, gt2, gt3),AmpSqhhTocFuFu(gt1, gt2, gt3)) 
  AmpSqhhTocFuFu(gt1, gt2, gt3) = AmpSqhhTocFuFu(gt1, gt2, gt3) + AmpSqTreehhTocFuFu(gt1, gt2, gt3)  
End if  
Else  
  AmpSqhhTocFuFu(gt1, gt2, gt3) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 4._dp 
If (AmpSqhhTocFuFu(gt1, gt2, gt3).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 3._dp*GammaTPS(MhhOS(gt1),MFuOS(gt2),MFuOS(gt3),helfactor*AmpSqhhTocFuFu(gt1, gt2, gt3))
Else 
  gP1Lhh(gt1,i4) = 3._dp*GammaTPS(Mhh(gt1),MFu(gt2),MFu(gt3),helfactor*AmpSqhhTocFuFu(gt1, gt2, gt3))
End if 
If ((Abs(MRPhhTocFuFu(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGhhTocFuFu(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPhhTocFuFu(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGhhTocFuFu(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPhhTocFuFu(gt1, gt2, gt3) + MRGhhTocFuFu(gt1, gt2, gt3)) 
  gP1Lhh(gt1,i4) = gP1Lhh(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPhhTocFuFu(gt1, gt2, gt3) + MRGhhTocFuFu(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1Lhh(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4 
End do
End If 
If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! hh hh
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_2HDMSCPV_hhTohhhh(cplhhhhhh,Mhh,Mhh2,AmpTreehhTohhhh)

  Else 
Call Amplitude_Tree_2HDMSCPV_hhTohhhh(Zcplhhhhhh,Mhh,Mhh2,AmpTreehhTohhhh)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_2HDMSCPV_hhTohhhh(MLambda,em,gs,cplhhhhhh,MhhOS,MRPhhTohhhh,          & 
& MRGhhTohhhh)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTohhhh(MLambda,em,gs,Zcplhhhhhh,MhhOS,MRPhhTohhhh,         & 
& MRGhhTohhhh)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_2HDMSCPV_hhTohhhh(MLambda,em,gs,cplhhhhhh,Mhh,MRPhhTohhhh,            & 
& MRGhhTohhhh)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTohhhh(MLambda,em,gs,Zcplhhhhhh,Mhh,MRPhhTohhhh,           & 
& MRGhhTohhhh)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_2HDMSCPV_hhTohhhh(cplhhhhhh,ctcplhhhhhh,Mhh,Mhh2,Zfhh,            & 
& AmpWavehhTohhhh)



!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhTohhhh(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,MFd2,            & 
& MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFeFehhL,cplcFeFehhR,        & 
& cplcFuFuhhL,cplcFuFuhhR,cplcgWmgWmhh,cplcgWpCgWpChh,cplcgZgZhh,cplhhhhhh,              & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplhhhhhhhh1,      & 
& cplhhhhHmcHm1,cplhhhhcVWmVWm1,cplhhhhVZVZ1,AmpVertexhhTohhhh)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTohhhh(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,              & 
& MFd2,MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFeFehhL,               & 
& cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplcgWmgWmhh,cplcgWpCgWpChh,cplcgZgZhh,            & 
& cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,         & 
& cplhhhhhhhh1,cplhhhhHmcHm1,cplhhhhcVWmVWm1,cplhhhhVZVZ1,AmpVertexIRdrhhTohhhh)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTohhhh(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,             & 
& MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVWm2OS,MVZ2OS,cplcFdFdhhL,            & 
& cplcFdFdhhR,cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplcgWmgWmhh,              & 
& cplcgWpCgWpChh,cplcgZgZhh,Zcplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,     & 
& cplhhcVWmVWm,cplhhVZVZ,cplhhhhhhhh1,cplhhhhHmcHm1,cplhhhhcVWmVWm1,cplhhhhVZVZ1,        & 
& AmpVertexIRoshhTohhhh)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTohhhh(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,              & 
& MFd2,MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFeFehhL,               & 
& cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplcgWmgWmhh,cplcgWpCgWpChh,cplcgZgZhh,            & 
& Zcplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,        & 
& cplhhhhhhhh1,cplhhhhHmcHm1,cplhhhhcVWmVWm1,cplhhhhVZVZ1,AmpVertexIRoshhTohhhh)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTohhhh(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,             & 
& MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVWm2OS,MVZ2OS,cplcFdFdhhL,            & 
& cplcFdFdhhR,cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplcgWmgWmhh,              & 
& cplcgWpCgWpChh,cplcgZgZhh,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,      & 
& cplhhcVWmVWm,cplhhVZVZ,cplhhhhhhhh1,cplhhhhHmcHm1,cplhhhhcVWmVWm1,cplhhhhVZVZ1,        & 
& AmpVertexIRoshhTohhhh)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTohhhh(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,              & 
& MFd2,MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFeFehhL,               & 
& cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplcgWmgWmhh,cplcgWpCgWpChh,cplcgZgZhh,            & 
& cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,         & 
& cplhhhhhhhh1,cplhhhhHmcHm1,cplhhhhcVWmVWm1,cplhhhhVZVZ1,AmpVertexIRoshhTohhhh)

 End if 
 End if 
AmpVertexhhTohhhh = AmpVertexhhTohhhh -  AmpVertexIRdrhhTohhhh! +  AmpVertexIRoshhTohhhh ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZhhTohhhh=0._dp 
AmpVertexZhhTohhhh=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhTohhhh(gt2,:,:) = AmpWaveZhhTohhhh(gt2,:,:)+ZRUZH(gt2,gt1)*AmpWavehhTohhhh(gt1,:,:) 
AmpVertexZhhTohhhh(gt2,:,:)= AmpVertexZhhTohhhh(gt2,:,:) + ZRUZH(gt2,gt1)*AmpVertexhhTohhhh(gt1,:,:) 
 End Do 
End Do 
AmpWavehhTohhhh=AmpWaveZhhTohhhh 
AmpVertexhhTohhhh= AmpVertexZhhTohhhh
! Final State 1 
AmpWaveZhhTohhhh=0._dp 
AmpVertexZhhTohhhh=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhTohhhh(:,gt2,:) = AmpWaveZhhTohhhh(:,gt2,:)+ZRUZH(gt2,gt1)*AmpWavehhTohhhh(:,gt1,:) 
AmpVertexZhhTohhhh(:,gt2,:)= AmpVertexZhhTohhhh(:,gt2,:)+ZRUZH(gt2,gt1)*AmpVertexhhTohhhh(:,gt1,:) 
 End Do 
End Do 
AmpWavehhTohhhh=AmpWaveZhhTohhhh 
AmpVertexhhTohhhh= AmpVertexZhhTohhhh
! Final State 2 
AmpWaveZhhTohhhh=0._dp 
AmpVertexZhhTohhhh=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhTohhhh(:,:,gt2) = AmpWaveZhhTohhhh(:,:,gt2)+ZRUZH(gt2,gt1)*AmpWavehhTohhhh(:,:,gt1) 
AmpVertexZhhTohhhh(:,:,gt2)= AmpVertexZhhTohhhh(:,:,gt2)+ZRUZH(gt2,gt1)*AmpVertexhhTohhhh(:,:,gt1) 
 End Do 
End Do 
AmpWavehhTohhhh=AmpWaveZhhTohhhh 
AmpVertexhhTohhhh= AmpVertexZhhTohhhh
End if
If (ShiftIRdiv) Then 
AmpVertexhhTohhhh = AmpVertexhhTohhhh  +  AmpVertexIRoshhTohhhh
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->hh hh -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumhhTohhhh = AmpTreehhTohhhh 
 AmpSum2hhTohhhh = AmpTreehhTohhhh + 2._dp*AmpWavehhTohhhh + 2._dp*AmpVertexhhTohhhh  
Else 
 AmpSumhhTohhhh = AmpTreehhTohhhh + AmpWavehhTohhhh + AmpVertexhhTohhhh
 AmpSum2hhTohhhh = AmpTreehhTohhhh + AmpWavehhTohhhh + AmpVertexhhTohhhh 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhTohhhh = AmpTreehhTohhhh
 AmpSum2hhTohhhh = AmpTreehhTohhhh 
End if 
Do gt1=1,6
i4 = isave 
  Do gt2=2,6
    Do gt3=gt2,6
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(MhhOS(gt2))+Abs(MhhOS(gt3))))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(Mhh(gt2))+Abs(Mhh(gt3)))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1, gt2, gt3 
  AmpSum2hhTohhhh = AmpTreehhTohhhh
If (OSkinematics) Then 
  Call SquareAmp_StoSS(MhhOS(gt1),MhhOS(gt2),MhhOS(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoSS(Mhh(gt1),Mhh(gt2),Mhh(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqhhTohhhh(gt1, gt2, gt3) 
  AmpSum2hhTohhhh = 2._dp*AmpWavehhTohhhh
If (OSkinematics) Then 
  Call SquareAmp_StoSS(MhhOS(gt1),MhhOS(gt2),MhhOS(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoSS(Mhh(gt1),Mhh(gt2),Mhh(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqhhTohhhh(gt1, gt2, gt3) 
  AmpSum2hhTohhhh = 2._dp*AmpVertexhhTohhhh
If (OSkinematics) Then 
  Call SquareAmp_StoSS(MhhOS(gt1),MhhOS(gt2),MhhOS(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoSS(Mhh(gt1),Mhh(gt2),Mhh(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqhhTohhhh(gt1, gt2, gt3) 
  AmpSum2hhTohhhh = AmpTreehhTohhhh + 2._dp*AmpWavehhTohhhh + 2._dp*AmpVertexhhTohhhh
If (OSkinematics) Then 
  Call SquareAmp_StoSS(MhhOS(gt1),MhhOS(gt2),MhhOS(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoSS(Mhh(gt1),Mhh(gt2),Mhh(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqhhTohhhh(gt1, gt2, gt3) 
 End if 
If (OSkinematics) Then 
  AmpSum2hhTohhhh = AmpTreehhTohhhh
  Call SquareAmp_StoSS(MhhOS(gt1),MhhOS(gt2),MhhOS(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
  AmpSqTreehhTohhhh(gt1, gt2, gt3) = AmpSqhhTohhhh(gt1, gt2, gt3)  
  AmpSum2hhTohhhh = + 2._dp*AmpWavehhTohhhh + 2._dp*AmpVertexhhTohhhh
  Call SquareAmp_StoSS(MhhOS(gt1),MhhOS(gt2),MhhOS(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
  AmpSqhhTohhhh(gt1, gt2, gt3) = AmpSqhhTohhhh(gt1, gt2, gt3) + AmpSqTreehhTohhhh(gt1, gt2, gt3)  
Else  
  AmpSum2hhTohhhh = AmpTreehhTohhhh
  Call SquareAmp_StoSS(Mhh(gt1),Mhh(gt2),Mhh(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
  AmpSqTreehhTohhhh(gt1, gt2, gt3) = AmpSqhhTohhhh(gt1, gt2, gt3)  
  AmpSum2hhTohhhh = + 2._dp*AmpWavehhTohhhh + 2._dp*AmpVertexhhTohhhh
  Call SquareAmp_StoSS(Mhh(gt1),Mhh(gt2),Mhh(gt3),AmpSumhhTohhhh(gt1, gt2, gt3),AmpSum2hhTohhhh(gt1, gt2, gt3),AmpSqhhTohhhh(gt1, gt2, gt3)) 
  AmpSqhhTohhhh(gt1, gt2, gt3) = AmpSqhhTohhhh(gt1, gt2, gt3) + AmpSqTreehhTohhhh(gt1, gt2, gt3)  
End if  
Else  
  AmpSqhhTohhhh(gt1, gt2, gt3) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 1._dp 
If (gt2.ne.gt3) helfactor = 2._dp*helfactor 
If (AmpSqhhTohhhh(gt1, gt2, gt3).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 1._dp/2._dp*GammaTPS(MhhOS(gt1),MhhOS(gt2),MhhOS(gt3),helfactor*AmpSqhhTohhhh(gt1, gt2, gt3))
Else 
  gP1Lhh(gt1,i4) = 1._dp/2._dp*GammaTPS(Mhh(gt1),Mhh(gt2),Mhh(gt3),helfactor*AmpSqhhTohhhh(gt1, gt2, gt3))
End if 
If ((Abs(MRPhhTohhhh(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGhhTohhhh(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPhhTohhhh(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGhhTohhhh(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp/4._dp*helfactor*(MRPhhTohhhh(gt1, gt2, gt3) + MRGhhTohhhh(gt1, gt2, gt3)) 
  gP1Lhh(gt1,i4) = gP1Lhh(gt1,i4) + phasespacefactor*1._dp/4._dp*helfactor*(MRPhhTohhhh(gt1, gt2, gt3) + MRGhhTohhhh(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1Lhh(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4 
End do
End If 
If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! hh VZ
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_2HDMSCPV_hhTohhVZ(cplhhhhVZ,Mhh,MVZ,Mhh2,MVZ2,AmpTreehhTohhVZ)

  Else 
Call Amplitude_Tree_2HDMSCPV_hhTohhVZ(ZcplhhhhVZ,Mhh,MVZ,Mhh2,MVZ2,AmpTreehhTohhVZ)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_2HDMSCPV_hhTohhVZ(MLambda,em,gs,cplhhhhVZ,MhhOS,MVZOS,MRPhhTohhVZ,    & 
& MRGhhTohhVZ)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTohhVZ(MLambda,em,gs,ZcplhhhhVZ,MhhOS,MVZOS,               & 
& MRPhhTohhVZ,MRGhhTohhVZ)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_2HDMSCPV_hhTohhVZ(MLambda,em,gs,cplhhhhVZ,Mhh,MVZ,MRPhhTohhVZ,        & 
& MRGhhTohhVZ)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTohhVZ(MLambda,em,gs,ZcplhhhhVZ,Mhh,MVZ,MRPhhTohhVZ,       & 
& MRGhhTohhVZ)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_2HDMSCPV_hhTohhVZ(cplhhhhVZ,ctcplhhhhVZ,Mhh,Mhh2,MVZ,             & 
& MVZ2,Zfhh,ZfVZ,AmpWavehhTohhVZ)



!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhTohhVZ(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,MFd2,            & 
& MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,        & 
& cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,               & 
& cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,       & 
& cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,         & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ1,cplhhHmcVWmVZ1,           & 
& cplhhcHmVWmVZ1,AmpVertexhhTohhVZ)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTohhVZ(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,              & 
& MFd2,MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,               & 
& cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,          & 
& cplcgWpCgWpCVZ,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,    & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ1,cplhhHmcVWmVZ1, & 
& cplhhcHmVWmVZ1,AmpVertexIRdrhhTohhVZ)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTohhVZ(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,             & 
& MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVWm2OS,MVZ2OS,cplcFdFdhhL,            & 
& cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,               & 
& cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,              & 
& cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplhhhhhh,ZcplhhhhVZ,cplhhHmcHm,            & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,     & 
& cplcVWmVWmVZ,cplhhhhVZVZ1,cplhhHmcVWmVZ1,cplhhcHmVWmVZ1,AmpVertexIRoshhTohhVZ)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTohhVZ(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,              & 
& MFd2,MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,               & 
& cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,          & 
& cplcgWpCgWpCVZ,cplhhhhhh,ZcplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,   & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ1,cplhhHmcVWmVZ1, & 
& cplhhcHmVWmVZ1,AmpVertexIRoshhTohhVZ)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTohhVZ(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,             & 
& MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVWm2OS,MVZ2OS,cplcFdFdhhL,            & 
& cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,               & 
& cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,              & 
& cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,             & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,     & 
& cplcVWmVWmVZ,cplhhhhVZVZ1,cplhhHmcVWmVZ1,cplhhcHmVWmVZ1,AmpVertexIRoshhTohhVZ)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTohhVZ(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,              & 
& MFd2,MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,               & 
& cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,          & 
& cplcgWpCgWpCVZ,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,    & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ1,cplhhHmcVWmVZ1, & 
& cplhhcHmVWmVZ1,AmpVertexIRoshhTohhVZ)

 End if 
 End if 
AmpVertexhhTohhVZ = AmpVertexhhTohhVZ -  AmpVertexIRdrhhTohhVZ! +  AmpVertexIRoshhTohhVZ ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZhhTohhVZ=0._dp 
AmpVertexZhhTohhVZ=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhTohhVZ(:,gt2,:) = AmpWaveZhhTohhVZ(:,gt2,:)+ZRUZH(gt2,gt1)*AmpWavehhTohhVZ(:,gt1,:) 
AmpVertexZhhTohhVZ(:,gt2,:)= AmpVertexZhhTohhVZ(:,gt2,:) + ZRUZH(gt2,gt1)*AmpVertexhhTohhVZ(:,gt1,:) 
 End Do 
End Do 
AmpWavehhTohhVZ=AmpWaveZhhTohhVZ 
AmpVertexhhTohhVZ= AmpVertexZhhTohhVZ
! Final State 1 
AmpWaveZhhTohhVZ=0._dp 
AmpVertexZhhTohhVZ=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhTohhVZ(:,:,gt2) = AmpWaveZhhTohhVZ(:,:,gt2)+ZRUZH(gt2,gt1)*AmpWavehhTohhVZ(:,:,gt1) 
AmpVertexZhhTohhVZ(:,:,gt2)= AmpVertexZhhTohhVZ(:,:,gt2)+ZRUZH(gt2,gt1)*AmpVertexhhTohhVZ(:,:,gt1) 
 End Do 
End Do 
AmpWavehhTohhVZ=AmpWaveZhhTohhVZ 
AmpVertexhhTohhVZ= AmpVertexZhhTohhVZ
End if
If (ShiftIRdiv) Then 
AmpVertexhhTohhVZ = AmpVertexhhTohhVZ  +  AmpVertexIRoshhTohhVZ
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->hh VZ -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumhhTohhVZ = AmpTreehhTohhVZ 
 AmpSum2hhTohhVZ = AmpTreehhTohhVZ + 2._dp*AmpWavehhTohhVZ + 2._dp*AmpVertexhhTohhVZ  
Else 
 AmpSumhhTohhVZ = AmpTreehhTohhVZ + AmpWavehhTohhVZ + AmpVertexhhTohhVZ
 AmpSum2hhTohhVZ = AmpTreehhTohhVZ + AmpWavehhTohhVZ + AmpVertexhhTohhVZ 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhTohhVZ = AmpTreehhTohhVZ
 AmpSum2hhTohhVZ = AmpTreehhTohhVZ 
End if 
Do gt1=1,6
i4 = isave 
  Do gt2=2,6
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(MhhOS(gt2))+Abs(MVZOS)))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(Mhh(gt2))+Abs(MVZ))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1, gt2 
  AmpSum2hhTohhVZ = AmpTreehhTohhVZ
If (OSkinematics) Then 
  Call SquareAmp_StoSV(MhhOS(gt1),MhhOS(gt2),MVZOS,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
Else  
  Call SquareAmp_StoSV(Mhh(gt1),Mhh(gt2),MVZ,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqhhTohhVZ(gt1, gt2) 
  AmpSum2hhTohhVZ = 2._dp*AmpWavehhTohhVZ
If (OSkinematics) Then 
  Call SquareAmp_StoSV(MhhOS(gt1),MhhOS(gt2),MVZOS,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
Else  
  Call SquareAmp_StoSV(Mhh(gt1),Mhh(gt2),MVZ,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqhhTohhVZ(gt1, gt2) 
  AmpSum2hhTohhVZ = 2._dp*AmpVertexhhTohhVZ
If (OSkinematics) Then 
  Call SquareAmp_StoSV(MhhOS(gt1),MhhOS(gt2),MVZOS,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
Else  
  Call SquareAmp_StoSV(Mhh(gt1),Mhh(gt2),MVZ,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqhhTohhVZ(gt1, gt2) 
  AmpSum2hhTohhVZ = AmpTreehhTohhVZ + 2._dp*AmpWavehhTohhVZ + 2._dp*AmpVertexhhTohhVZ
If (OSkinematics) Then 
  Call SquareAmp_StoSV(MhhOS(gt1),MhhOS(gt2),MVZOS,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
Else  
  Call SquareAmp_StoSV(Mhh(gt1),Mhh(gt2),MVZ,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqhhTohhVZ(gt1, gt2) 
 End if 
If (OSkinematics) Then 
  AmpSum2hhTohhVZ = AmpTreehhTohhVZ
  Call SquareAmp_StoSV(MhhOS(gt1),MhhOS(gt2),MVZOS,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
  AmpSqTreehhTohhVZ(gt1, gt2) = AmpSqhhTohhVZ(gt1, gt2)  
  AmpSum2hhTohhVZ = + 2._dp*AmpWavehhTohhVZ + 2._dp*AmpVertexhhTohhVZ
  Call SquareAmp_StoSV(MhhOS(gt1),MhhOS(gt2),MVZOS,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
  AmpSqhhTohhVZ(gt1, gt2) = AmpSqhhTohhVZ(gt1, gt2) + AmpSqTreehhTohhVZ(gt1, gt2)  
Else  
  AmpSum2hhTohhVZ = AmpTreehhTohhVZ
  Call SquareAmp_StoSV(Mhh(gt1),Mhh(gt2),MVZ,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
  AmpSqTreehhTohhVZ(gt1, gt2) = AmpSqhhTohhVZ(gt1, gt2)  
  AmpSum2hhTohhVZ = + 2._dp*AmpWavehhTohhVZ + 2._dp*AmpVertexhhTohhVZ
  Call SquareAmp_StoSV(Mhh(gt1),Mhh(gt2),MVZ,AmpSumhhTohhVZ(:,gt1, gt2),AmpSum2hhTohhVZ(:,gt1, gt2),AmpSqhhTohhVZ(gt1, gt2)) 
  AmpSqhhTohhVZ(gt1, gt2) = AmpSqhhTohhVZ(gt1, gt2) + AmpSqTreehhTohhVZ(gt1, gt2)  
End if  
Else  
  AmpSqhhTohhVZ(gt1, gt2) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 1._dp 
If (AmpSqhhTohhVZ(gt1, gt2).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(MhhOS(gt1),MhhOS(gt2),MVZOS,helfactor*AmpSqhhTohhVZ(gt1, gt2))
Else 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(Mhh(gt1),Mhh(gt2),MVZ,helfactor*AmpSqhhTohhVZ(gt1, gt2))
End if 
If ((Abs(MRPhhTohhVZ(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGhhTohhVZ(gt1, gt2)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPhhTohhVZ(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGhhTohhVZ(gt1, gt2)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPhhTohhVZ(gt1, gt2) + MRGhhTohhVZ(gt1, gt2)) 
  gP1Lhh(gt1,i4) = gP1Lhh(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPhhTohhVZ(gt1, gt2) + MRGhhTohhVZ(gt1, gt2))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1Lhh(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

  End do
If (gt1.eq.6) isave = i4 
End do
End If 
If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! Conjg(Hm) Hm
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_2HDMSCPV_hhTocHmHm(cplhhHmcHm,Mhh,MHm,Mhh2,MHm2,AmpTreehhTocHmHm)

  Else 
Call Amplitude_Tree_2HDMSCPV_hhTocHmHm(ZcplhhHmcHm,Mhh,MHm,Mhh2,MHm2,AmpTreehhTocHmHm)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocHmHm(MLambda,em,gs,cplhhHmcHm,MhhOS,MHmOS,              & 
& MRPhhTocHmHm,MRGhhTocHmHm)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocHmHm(MLambda,em,gs,ZcplhhHmcHm,MhhOS,MHmOS,             & 
& MRPhhTocHmHm,MRGhhTocHmHm)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_2HDMSCPV_hhTocHmHm(MLambda,em,gs,cplhhHmcHm,Mhh,MHm,MRPhhTocHmHm,     & 
& MRGhhTocHmHm)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocHmHm(MLambda,em,gs,ZcplhhHmcHm,Mhh,MHm,MRPhhTocHmHm,    & 
& MRGhhTocHmHm)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_2HDMSCPV_hhTocHmHm(cplhhHmcHm,ctcplhhHmcHm,Mhh,Mhh2,              & 
& MHm,MHm2,Zfhh,ZfHm,AmpWavehhTocHmHm)



!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhTocHmHm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,MVZ,            & 
& MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,         & 
& cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,cplcFuFuhhL,            & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,cplcgWmgWmhh,              & 
& cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,cplcgWmgZHm,cplcgWpCgZcHm,         & 
& cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,         & 
& cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhHmcHm1,   & 
& cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmHmcHmcHm1,            & 
& cplHmcHmcVWmVWm1,cplHmcHmVZVZ1,AmpVertexhhTocHmHm)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocHmHm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,             & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,     & 
& cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,cplcFuFuhhL,            & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,cplcgWmgWmhh,              & 
& cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,cplcgWmgZHm,cplcgWpCgZcHm,         & 
& cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,         & 
& cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhHmcHm1,   & 
& cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmHmcHmcHm1,            & 
& cplHmcHmcVWmVWm1,cplHmcHmVZVZ1,AmpVertexIRdrhhTocHmHm)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocHmHm(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,            & 
& MVP,MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,               & 
& cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,             & 
& cplcFvFecHmL,cplcFvFecHmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,             & 
& cplcFeFvHmL,cplcFeFvHmR,cplcgWmgWmhh,cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,         & 
& cplcgZgZhh,cplcgWmgZHm,cplcgWpCgZcHm,cplhhhhhh,cplhhhhVZ,ZcplhhHmcHm,cplhhHmcVWm,      & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,      & 
& cplcHmVPVWm,cplcHmVWmVZ,cplhhhhHmcHm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,    & 
& cplhhcHmVWmVZ1,cplHmHmcHmcHm1,cplHmcHmcVWmVWm1,cplHmcHmVZVZ1,AmpVertexIRoshhTocHmHm)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocHmHm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,             & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,     & 
& cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,cplcFuFuhhL,            & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,cplcgWmgWmhh,              & 
& cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,cplcgWmgZHm,cplcgWpCgZcHm,         & 
& cplhhhhhh,cplhhhhVZ,ZcplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,        & 
& cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhHmcHm1,   & 
& cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmHmcHmcHm1,            & 
& cplHmcHmcVWmVWm1,cplHmcHmVZVZ1,AmpVertexIRoshhTocHmHm)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocHmHm(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,            & 
& MVP,MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,               & 
& cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,             & 
& cplcFvFecHmL,cplcFvFecHmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,             & 
& cplcFeFvHmL,cplcFeFvHmR,cplcgWmgWmhh,cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,         & 
& cplcgZgZhh,cplcgWmgZHm,cplcgWpCgZcHm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,       & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,      & 
& cplcHmVPVWm,cplcHmVWmVZ,cplhhhhHmcHm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,    & 
& cplhhcHmVWmVZ1,cplHmHmcHmcHm1,cplHmcHmcVWmVWm1,cplHmcHmVZVZ1,AmpVertexIRoshhTocHmHm)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocHmHm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,             & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,     & 
& cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,cplcFuFuhhL,            & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,cplcgWmgWmhh,              & 
& cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,cplcgWmgZHm,cplcgWpCgZcHm,         & 
& cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,         & 
& cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhHmcHm1,   & 
& cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmHmcHmcHm1,            & 
& cplHmcHmcVWmVWm1,cplHmcHmVZVZ1,AmpVertexIRoshhTocHmHm)

 End if 
 End if 
AmpVertexhhTocHmHm = AmpVertexhhTocHmHm -  AmpVertexIRdrhhTocHmHm! +  AmpVertexIRoshhTocHmHm ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZhhTocHmHm=0._dp 
AmpVertexZhhTocHmHm=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhTocHmHm(gt2,:,:) = AmpWaveZhhTocHmHm(gt2,:,:)+ZRUZH(gt2,gt1)*AmpWavehhTocHmHm(gt1,:,:) 
AmpVertexZhhTocHmHm(gt2,:,:)= AmpVertexZhhTocHmHm(gt2,:,:) + ZRUZH(gt2,gt1)*AmpVertexhhTocHmHm(gt1,:,:) 
 End Do 
End Do 
AmpWavehhTocHmHm=AmpWaveZhhTocHmHm 
AmpVertexhhTocHmHm= AmpVertexZhhTocHmHm
! Final State 1 
AmpWaveZhhTocHmHm=0._dp 
AmpVertexZhhTocHmHm=0._dp 
Do gt1=1,2
  Do gt2=1,2
AmpWaveZhhTocHmHm(:,gt2,:) = AmpWaveZhhTocHmHm(:,gt2,:)+ZRUZP(gt2,gt1)*AmpWavehhTocHmHm(:,gt1,:) 
AmpVertexZhhTocHmHm(:,gt2,:)= AmpVertexZhhTocHmHm(:,gt2,:)+ZRUZP(gt2,gt1)*AmpVertexhhTocHmHm(:,gt1,:) 
 End Do 
End Do 
AmpWavehhTocHmHm=AmpWaveZhhTocHmHm 
AmpVertexhhTocHmHm= AmpVertexZhhTocHmHm
! Final State 2 
AmpWaveZhhTocHmHm=0._dp 
AmpVertexZhhTocHmHm=0._dp 
Do gt1=1,2
  Do gt2=1,2
AmpWaveZhhTocHmHm(:,:,gt2) = AmpWaveZhhTocHmHm(:,:,gt2)+ZRUZP(gt2,gt1)*AmpWavehhTocHmHm(:,:,gt1) 
AmpVertexZhhTocHmHm(:,:,gt2)= AmpVertexZhhTocHmHm(:,:,gt2)+ZRUZP(gt2,gt1)*AmpVertexhhTocHmHm(:,:,gt1) 
 End Do 
End Do 
AmpWavehhTocHmHm=AmpWaveZhhTocHmHm 
AmpVertexhhTocHmHm= AmpVertexZhhTocHmHm
End if
If (ShiftIRdiv) Then 
AmpVertexhhTocHmHm = AmpVertexhhTocHmHm  +  AmpVertexIRoshhTocHmHm
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->conj[Hm] Hm -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumhhTocHmHm = AmpTreehhTocHmHm 
 AmpSum2hhTocHmHm = AmpTreehhTocHmHm + 2._dp*AmpWavehhTocHmHm + 2._dp*AmpVertexhhTocHmHm  
Else 
 AmpSumhhTocHmHm = AmpTreehhTocHmHm + AmpWavehhTocHmHm + AmpVertexhhTocHmHm
 AmpSum2hhTocHmHm = AmpTreehhTocHmHm + AmpWavehhTocHmHm + AmpVertexhhTocHmHm 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhTocHmHm = AmpTreehhTocHmHm
 AmpSum2hhTocHmHm = AmpTreehhTocHmHm 
End if 
Do gt1=1,6
i4 = isave 
  Do gt2=2,2
    Do gt3=2,2
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(MHmOS(gt2))+Abs(MHmOS(gt3))))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(MHm(gt2))+Abs(MHm(gt3)))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1, gt2, gt3 
  AmpSum2hhTocHmHm = AmpTreehhTocHmHm
If (OSkinematics) Then 
  Call SquareAmp_StoSS(MhhOS(gt1),MHmOS(gt2),MHmOS(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoSS(Mhh(gt1),MHm(gt2),MHm(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqhhTocHmHm(gt1, gt2, gt3) 
  AmpSum2hhTocHmHm = 2._dp*AmpWavehhTocHmHm
If (OSkinematics) Then 
  Call SquareAmp_StoSS(MhhOS(gt1),MHmOS(gt2),MHmOS(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoSS(Mhh(gt1),MHm(gt2),MHm(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqhhTocHmHm(gt1, gt2, gt3) 
  AmpSum2hhTocHmHm = 2._dp*AmpVertexhhTocHmHm
If (OSkinematics) Then 
  Call SquareAmp_StoSS(MhhOS(gt1),MHmOS(gt2),MHmOS(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoSS(Mhh(gt1),MHm(gt2),MHm(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqhhTocHmHm(gt1, gt2, gt3) 
  AmpSum2hhTocHmHm = AmpTreehhTocHmHm + 2._dp*AmpWavehhTocHmHm + 2._dp*AmpVertexhhTocHmHm
If (OSkinematics) Then 
  Call SquareAmp_StoSS(MhhOS(gt1),MHmOS(gt2),MHmOS(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoSS(Mhh(gt1),MHm(gt2),MHm(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqhhTocHmHm(gt1, gt2, gt3) 
 End if 
If (OSkinematics) Then 
  AmpSum2hhTocHmHm = AmpTreehhTocHmHm
  Call SquareAmp_StoSS(MhhOS(gt1),MHmOS(gt2),MHmOS(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
  AmpSqTreehhTocHmHm(gt1, gt2, gt3) = AmpSqhhTocHmHm(gt1, gt2, gt3)  
  AmpSum2hhTocHmHm = + 2._dp*AmpWavehhTocHmHm + 2._dp*AmpVertexhhTocHmHm
  Call SquareAmp_StoSS(MhhOS(gt1),MHmOS(gt2),MHmOS(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
  AmpSqhhTocHmHm(gt1, gt2, gt3) = AmpSqhhTocHmHm(gt1, gt2, gt3) + AmpSqTreehhTocHmHm(gt1, gt2, gt3)  
Else  
  AmpSum2hhTocHmHm = AmpTreehhTocHmHm
  Call SquareAmp_StoSS(Mhh(gt1),MHm(gt2),MHm(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
  AmpSqTreehhTocHmHm(gt1, gt2, gt3) = AmpSqhhTocHmHm(gt1, gt2, gt3)  
  AmpSum2hhTocHmHm = + 2._dp*AmpWavehhTocHmHm + 2._dp*AmpVertexhhTocHmHm
  Call SquareAmp_StoSS(Mhh(gt1),MHm(gt2),MHm(gt3),AmpSumhhTocHmHm(gt1, gt2, gt3),AmpSum2hhTocHmHm(gt1, gt2, gt3),AmpSqhhTocHmHm(gt1, gt2, gt3)) 
  AmpSqhhTocHmHm(gt1, gt2, gt3) = AmpSqhhTocHmHm(gt1, gt2, gt3) + AmpSqTreehhTocHmHm(gt1, gt2, gt3)  
End if  
Else  
  AmpSqhhTocHmHm(gt1, gt2, gt3) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 1._dp 
If (AmpSqhhTocHmHm(gt1, gt2, gt3).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(MhhOS(gt1),MHmOS(gt2),MHmOS(gt3),helfactor*AmpSqhhTocHmHm(gt1, gt2, gt3))
Else 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(Mhh(gt1),MHm(gt2),MHm(gt3),helfactor*AmpSqhhTocHmHm(gt1, gt2, gt3))
End if 
If ((Abs(MRPhhTocHmHm(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGhhTocHmHm(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPhhTocHmHm(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGhhTocHmHm(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPhhTocHmHm(gt1, gt2, gt3) + MRGhhTocHmHm(gt1, gt2, gt3)) 
  gP1Lhh(gt1,i4) = gP1Lhh(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPhhTocHmHm(gt1, gt2, gt3) + MRGhhTocHmHm(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1Lhh(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4 
End do
End If 
If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! Hm Conjg(VWm)
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_2HDMSCPV_hhToHmcVWm(cplhhHmcVWm,Mhh,MHm,MVWm,Mhh2,MHm2,           & 
& MVWm2,AmpTreehhToHmcVWm)

  Else 
Call Amplitude_Tree_2HDMSCPV_hhToHmcVWm(ZcplhhHmcVWm,Mhh,MHm,MVWm,Mhh2,               & 
& MHm2,MVWm2,AmpTreehhToHmcVWm)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_2HDMSCPV_hhToHmcVWm(MLambda,em,gs,cplhhHmcVWm,MhhOS,MHmOS,            & 
& MVWmOS,MRPhhToHmcVWm,MRGhhToHmcVWm)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_2HDMSCPV_hhToHmcVWm(MLambda,em,gs,ZcplhhHmcVWm,MhhOS,MHmOS,           & 
& MVWmOS,MRPhhToHmcVWm,MRGhhToHmcVWm)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_2HDMSCPV_hhToHmcVWm(MLambda,em,gs,cplhhHmcVWm,Mhh,MHm,MVWm,           & 
& MRPhhToHmcVWm,MRGhhToHmcVWm)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_2HDMSCPV_hhToHmcVWm(MLambda,em,gs,ZcplhhHmcVWm,Mhh,MHm,               & 
& MVWm,MRPhhToHmcVWm,MRGhhToHmcVWm)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_2HDMSCPV_hhToHmcVWm(cplhhHmcVWm,ctcplhhHmcVWm,Mhh,Mhh2,           & 
& MHm,MHm2,MVWm,MVWm2,Zfhh,ZfHm,ZfVWm,AmpWavehhToHmcVWm)



!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhToHmcVWm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,               & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,    & 
& cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,         & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,cplcgZgAhh,cplcgWmgAHm,    & 
& cplcgWmgWmhh,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,       & 
& cplcgWmgZHm,cplcgWpCgZcVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,     & 
& cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVPVWm,     & 
& cplcVWmVWmVZ,cplhhhhcVWmVWm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplHmcHmcVWmVWm1,           & 
& AmpVertexhhToHmcVWm)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhToHmcVWm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,            & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,    & 
& cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,         & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,cplcgZgAhh,cplcgWmgAHm,    & 
& cplcgWmgWmhh,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,       & 
& cplcgWmgZHm,cplcgWpCgZcVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,     & 
& cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVPVWm,     & 
& cplcVWmVWmVZ,cplhhhhcVWmVWm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplHmcHmcVWmVWm1,           & 
& AmpVertexIRdrhhToHmcVWm)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhToHmcVWm(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,           & 
& MVP,MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,               & 
& cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,           & 
& cplcFeFvHmL,cplcFeFvHmR,cplcgZgAhh,cplcgWmgAHm,cplcgWmgWmhh,cplcgAgWmcVWm,             & 
& cplcgZgWmcVWm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,cplcgWmgZHm,cplcgWpCgZcVWm,       & 
& cplhhhhhh,cplhhhhVZ,GosZcplhhHmcHm,ZcplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,              & 
& cplhhVZVZ,cplHmcHmVP,GosZcplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVPVWm,              & 
& cplcVWmVWmVZ,cplhhhhcVWmVWm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplHmcHmcVWmVWm1,           & 
& AmpVertexIRoshhToHmcVWm)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhToHmcVWm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,            & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,    & 
& cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,         & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,cplcgZgAhh,cplcgWmgAHm,    & 
& cplcgWmgWmhh,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,       & 
& cplcgWmgZHm,cplcgWpCgZcVWm,cplhhhhhh,cplhhhhVZ,GZcplhhHmcHm,ZcplhhHmcVWm,              & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVP,GZcplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,    & 
& cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,               & 
& cplHmcHmcVWmVWm1,AmpVertexIRoshhToHmcVWm)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhToHmcVWm(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,           & 
& MVP,MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,               & 
& cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,           & 
& cplcFeFvHmL,cplcFeFvHmR,cplcgZgAhh,cplcgWmgAHm,cplcgWmgWmhh,cplcgAgWmcVWm,             & 
& cplcgZgWmcVWm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,cplcgWmgZHm,cplcgWpCgZcVWm,       & 
& cplhhhhhh,cplhhhhVZ,GcplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,        & 
& cplHmcHmVP,GcplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,              & 
& cplhhhhcVWmVWm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplHmcHmcVWmVWm1,AmpVertexIRoshhToHmcVWm)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhToHmcVWm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,            & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,    & 
& cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,         & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,cplcgZgAhh,cplcgWmgAHm,    & 
& cplcgWmgWmhh,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,       & 
& cplcgWmgZHm,cplcgWpCgZcVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,     & 
& cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVPVWm,     & 
& cplcVWmVWmVZ,cplhhhhcVWmVWm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplHmcHmcVWmVWm1,           & 
& AmpVertexIRoshhToHmcVWm)

 End if 
 End if 
AmpVertexhhToHmcVWm = AmpVertexhhToHmcVWm -  AmpVertexIRdrhhToHmcVWm! +  AmpVertexIRoshhToHmcVWm ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZhhToHmcVWm=0._dp 
AmpVertexZhhToHmcVWm=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhToHmcVWm(:,gt2,:) = AmpWaveZhhToHmcVWm(:,gt2,:)+ZRUZH(gt2,gt1)*AmpWavehhToHmcVWm(:,gt1,:) 
AmpVertexZhhToHmcVWm(:,gt2,:)= AmpVertexZhhToHmcVWm(:,gt2,:) + ZRUZH(gt2,gt1)*AmpVertexhhToHmcVWm(:,gt1,:) 
 End Do 
End Do 
AmpWavehhToHmcVWm=AmpWaveZhhToHmcVWm 
AmpVertexhhToHmcVWm= AmpVertexZhhToHmcVWm
! Final State 1 
AmpWaveZhhToHmcVWm=0._dp 
AmpVertexZhhToHmcVWm=0._dp 
Do gt1=1,2
  Do gt2=1,2
AmpWaveZhhToHmcVWm(:,:,gt2) = AmpWaveZhhToHmcVWm(:,:,gt2)+ZRUZP(gt2,gt1)*AmpWavehhToHmcVWm(:,:,gt1) 
AmpVertexZhhToHmcVWm(:,:,gt2)= AmpVertexZhhToHmcVWm(:,:,gt2)+ZRUZP(gt2,gt1)*AmpVertexhhToHmcVWm(:,:,gt1) 
 End Do 
End Do 
AmpWavehhToHmcVWm=AmpWaveZhhToHmcVWm 
AmpVertexhhToHmcVWm= AmpVertexZhhToHmcVWm
End if
If (ShiftIRdiv) Then 
AmpVertexhhToHmcVWm = AmpVertexhhToHmcVWm  +  AmpVertexIRoshhToHmcVWm
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->Hm conj[VWm] -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumhhToHmcVWm = AmpTreehhToHmcVWm 
 AmpSum2hhToHmcVWm = AmpTreehhToHmcVWm + 2._dp*AmpWavehhToHmcVWm + 2._dp*AmpVertexhhToHmcVWm  
Else 
 AmpSumhhToHmcVWm = AmpTreehhToHmcVWm + AmpWavehhToHmcVWm + AmpVertexhhToHmcVWm
 AmpSum2hhToHmcVWm = AmpTreehhToHmcVWm + AmpWavehhToHmcVWm + AmpVertexhhToHmcVWm 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhToHmcVWm = AmpTreehhToHmcVWm
 AmpSum2hhToHmcVWm = AmpTreehhToHmcVWm 
End if 
Do gt1=1,6
i4 = isave 
  Do gt2=2,2
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(MHmOS(gt2))+Abs(MVWmOS)))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(MHm(gt2))+Abs(MVWm))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1, gt2 
  AmpSum2hhToHmcVWm = AmpTreehhToHmcVWm
If (OSkinematics) Then 
  Call SquareAmp_StoSV(MhhOS(gt1),MHmOS(gt2),MVWmOS,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
Else  
  Call SquareAmp_StoSV(Mhh(gt1),MHm(gt2),MVWm,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqhhToHmcVWm(gt1, gt2) 
  AmpSum2hhToHmcVWm = 2._dp*AmpWavehhToHmcVWm
If (OSkinematics) Then 
  Call SquareAmp_StoSV(MhhOS(gt1),MHmOS(gt2),MVWmOS,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
Else  
  Call SquareAmp_StoSV(Mhh(gt1),MHm(gt2),MVWm,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqhhToHmcVWm(gt1, gt2) 
  AmpSum2hhToHmcVWm = 2._dp*AmpVertexhhToHmcVWm
If (OSkinematics) Then 
  Call SquareAmp_StoSV(MhhOS(gt1),MHmOS(gt2),MVWmOS,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
Else  
  Call SquareAmp_StoSV(Mhh(gt1),MHm(gt2),MVWm,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqhhToHmcVWm(gt1, gt2) 
  AmpSum2hhToHmcVWm = AmpTreehhToHmcVWm + 2._dp*AmpWavehhToHmcVWm + 2._dp*AmpVertexhhToHmcVWm
If (OSkinematics) Then 
  Call SquareAmp_StoSV(MhhOS(gt1),MHmOS(gt2),MVWmOS,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
Else  
  Call SquareAmp_StoSV(Mhh(gt1),MHm(gt2),MVWm,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqhhToHmcVWm(gt1, gt2) 
 End if 
If (OSkinematics) Then 
  AmpSum2hhToHmcVWm = AmpTreehhToHmcVWm
  Call SquareAmp_StoSV(MhhOS(gt1),MHmOS(gt2),MVWmOS,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
  AmpSqTreehhToHmcVWm(gt1, gt2) = AmpSqhhToHmcVWm(gt1, gt2)  
  AmpSum2hhToHmcVWm = + 2._dp*AmpWavehhToHmcVWm + 2._dp*AmpVertexhhToHmcVWm
  Call SquareAmp_StoSV(MhhOS(gt1),MHmOS(gt2),MVWmOS,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
  AmpSqhhToHmcVWm(gt1, gt2) = AmpSqhhToHmcVWm(gt1, gt2) + AmpSqTreehhToHmcVWm(gt1, gt2)  
Else  
  AmpSum2hhToHmcVWm = AmpTreehhToHmcVWm
  Call SquareAmp_StoSV(Mhh(gt1),MHm(gt2),MVWm,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
  AmpSqTreehhToHmcVWm(gt1, gt2) = AmpSqhhToHmcVWm(gt1, gt2)  
  AmpSum2hhToHmcVWm = + 2._dp*AmpWavehhToHmcVWm + 2._dp*AmpVertexhhToHmcVWm
  Call SquareAmp_StoSV(Mhh(gt1),MHm(gt2),MVWm,AmpSumhhToHmcVWm(:,gt1, gt2),AmpSum2hhToHmcVWm(:,gt1, gt2),AmpSqhhToHmcVWm(gt1, gt2)) 
  AmpSqhhToHmcVWm(gt1, gt2) = AmpSqhhToHmcVWm(gt1, gt2) + AmpSqTreehhToHmcVWm(gt1, gt2)  
End if  
Else  
  AmpSqhhToHmcVWm(gt1, gt2) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 1._dp 
If (AmpSqhhToHmcVWm(gt1, gt2).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 2._dp*GammaTPS(MhhOS(gt1),MHmOS(gt2),MVWmOS,helfactor*AmpSqhhToHmcVWm(gt1, gt2))
Else 
  gP1Lhh(gt1,i4) = 2._dp*GammaTPS(Mhh(gt1),MHm(gt2),MVWm,helfactor*AmpSqhhToHmcVWm(gt1, gt2))
End if 
If ((Abs(MRPhhToHmcVWm(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGhhToHmcVWm(gt1, gt2)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPhhToHmcVWm(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGhhToHmcVWm(gt1, gt2)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*2._dp*helfactor*(MRPhhToHmcVWm(gt1, gt2) + MRGhhToHmcVWm(gt1, gt2)) 
  gP1Lhh(gt1,i4) = gP1Lhh(gt1,i4) + phasespacefactor*2._dp*helfactor*(MRPhhToHmcVWm(gt1, gt2) + MRGhhToHmcVWm(gt1, gt2))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1Lhh(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

  End do
If (gt1.eq.6) isave = i4 
End do
End If 
If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! Conjg(VWm) VWm
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_2HDMSCPV_hhTocVWmVWm(cplhhcVWmVWm,Mhh,MVWm,Mhh2,MVWm2,            & 
& AmpTreehhTocVWmVWm)

  Else 
Call Amplitude_Tree_2HDMSCPV_hhTocVWmVWm(ZcplhhcVWmVWm,Mhh,MVWm,Mhh2,MVWm2,           & 
& AmpTreehhTocVWmVWm)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocVWmVWm(MLambda,em,gs,cplhhcVWmVWm,MhhOS,MVWmOS,         & 
& MRPhhTocVWmVWm,MRGhhTocVWmVWm)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocVWmVWm(MLambda,em,gs,ZcplhhcVWmVWm,MhhOS,               & 
& MVWmOS,MRPhhTocVWmVWm,MRGhhTocVWmVWm)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_2HDMSCPV_hhTocVWmVWm(MLambda,em,gs,cplhhcVWmVWm,Mhh,MVWm,             & 
& MRPhhTocVWmVWm,MRGhhTocVWmVWm)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_2HDMSCPV_hhTocVWmVWm(MLambda,em,gs,ZcplhhcVWmVWm,Mhh,MVWm,            & 
& MRPhhTocVWmVWm,MRGhhTocVWmVWm)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_2HDMSCPV_hhTocVWmVWm(cplhhcVWmVWm,ctcplhhcVWmVWm,Mhh,             & 
& Mhh2,MVWm,MVWm2,Zfhh,ZfVWm,AmpWavehhTocVWmVWm)



!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhTocVWmVWm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,              & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,    & 
& cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,         & 
& cplcFuFuhhR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcgZgAhh,            & 
& cplcgWmgAVWm,cplcgWpCgAcVWm,cplcgWmgWmhh,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpChh,   & 
& cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgZgZhh,cplcgWmgZVWm,cplcgWpCgZcVWm,cplhhhhhh,          & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhcVWmVWm1,         & 
& cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmcHmcVWmVWm1,          & 
& cplcVWmcVWmVWmVWm1Q,cplcVWmcVWmVWmVWm2Q,cplcVWmcVWmVWmVWm3Q,cplcVWmVWmVZVZ2Q,          & 
& cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,AmpVertexhhTocVWmVWm)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocVWmVWm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,           & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,    & 
& cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,         & 
& cplcFuFuhhR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcgZgAhh,            & 
& cplcgWmgAVWm,cplcgWpCgAcVWm,cplcgWmgWmhh,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpChh,   & 
& cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgZgZhh,cplcgWmgZVWm,cplcgWpCgZcVWm,cplhhhhhh,          & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhcVWmVWm1,         & 
& cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmcHmcVWmVWm1,          & 
& cplcVWmcVWmVWmVWm1Q,cplcVWmcVWmVWmVWm2Q,cplcVWmcVWmVWmVWm3Q,cplcVWmVWmVZVZ2Q,          & 
& cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,AmpVertexIRdrhhTocVWmVWm)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocVWmVWm(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,          & 
& MVP,MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,               & 
& cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuVWmL,cplcFdFuVWmR,         & 
& cplcFeFvVWmL,cplcFeFvVWmR,cplcgZgAhh,cplcgWmgAVWm,cplcgWpCgAcVWm,cplcgWmgWmhh,         & 
& cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpChh,cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgZgZhh,     & 
& cplcgWmgZVWm,cplcgWpCgZcVWm,cplhhhhhh,cplhhhhVZ,GosZcplhhHmcHm,cplhhHmcVWm,            & 
& GosZcplhhcHmVWm,ZcplhhcVWmVWm,cplhhVZVZ,GosZcplHmcVWmVP,cplHmcVWmVZ,GosZcplcHmVPVWm,   & 
& cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhcVWmVWm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,   & 
& cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmcHmcVWmVWm1,cplcVWmcVWmVWmVWm1Q,cplcVWmcVWmVWmVWm2Q,& 
& cplcVWmcVWmVWmVWm3Q,cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,AmpVertexIRoshhTocVWmVWm)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocVWmVWm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,           & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,    & 
& cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,         & 
& cplcFuFuhhR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcgZgAhh,            & 
& cplcgWmgAVWm,cplcgWpCgAcVWm,cplcgWmgWmhh,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpChh,   & 
& cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgZgZhh,cplcgWmgZVWm,cplcgWpCgZcVWm,cplhhhhhh,          & 
& cplhhhhVZ,GZcplhhHmcHm,cplhhHmcVWm,GZcplhhcHmVWm,ZcplhhcVWmVWm,cplhhVZVZ,              & 
& GZcplHmcVWmVP,cplHmcVWmVZ,GZcplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,         & 
& cplhhhhcVWmVWm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,           & 
& cplHmcHmcVWmVWm1,cplcVWmcVWmVWmVWm1Q,cplcVWmcVWmVWmVWm2Q,cplcVWmcVWmVWmVWm3Q,          & 
& cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,AmpVertexIRoshhTocVWmVWm)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocVWmVWm(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,          & 
& MVP,MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,               & 
& cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuVWmL,cplcFdFuVWmR,         & 
& cplcFeFvVWmL,cplcFeFvVWmR,cplcgZgAhh,cplcgWmgAVWm,cplcgWpCgAcVWm,cplcgWmgWmhh,         & 
& cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpChh,cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgZgZhh,     & 
& cplcgWmgZVWm,cplcgWpCgZcVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,GcplhhcHmVWm,   & 
& cplhhcVWmVWm,cplhhVZVZ,cplHmcVWmVP,cplHmcVWmVZ,cplcHmVPVWm,cplcVWmVPVWm,               & 
& cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhcVWmVWm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1, & 
& cplhhcHmVWmVZ1,cplHmcHmcVWmVWm1,cplcVWmcVWmVWmVWm1Q,cplcVWmcVWmVWmVWm2Q,               & 
& cplcVWmcVWmVWmVWm3Q,cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,AmpVertexIRoshhTocVWmVWm)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhTocVWmVWm(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,           & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcVWmL,    & 
& cplcFuFdcVWmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuhhL,         & 
& cplcFuFuhhR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcgZgAhh,            & 
& cplcgWmgAVWm,cplcgWpCgAcVWm,cplcgWmgWmhh,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpChh,   & 
& cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgZgZhh,cplcgWmgZVWm,cplcgWpCgZcVWm,cplhhhhhh,          & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhcVWmVWm1,         & 
& cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmcHmcVWmVWm1,          & 
& cplcVWmcVWmVWmVWm1Q,cplcVWmcVWmVWmVWm2Q,cplcVWmcVWmVWmVWm3Q,cplcVWmVWmVZVZ2Q,          & 
& cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,AmpVertexIRoshhTocVWmVWm)

 End if 
 End if 
AmpVertexhhTocVWmVWm = AmpVertexhhTocVWmVWm -  AmpVertexIRdrhhTocVWmVWm! +  AmpVertexIRoshhTocVWmVWm ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZhhTocVWmVWm=0._dp 
AmpVertexZhhTocVWmVWm=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhTocVWmVWm(:,gt2) = AmpWaveZhhTocVWmVWm(:,gt2)+ZRUZH(gt2,gt1)*AmpWavehhTocVWmVWm(:,gt1) 
AmpVertexZhhTocVWmVWm(:,gt2)= AmpVertexZhhTocVWmVWm(:,gt2) + ZRUZH(gt2,gt1)*AmpVertexhhTocVWmVWm(:,gt1) 
 End Do 
End Do 
AmpWavehhTocVWmVWm=AmpWaveZhhTocVWmVWm 
AmpVertexhhTocVWmVWm= AmpVertexZhhTocVWmVWm
End if
If (ShiftIRdiv) Then 
AmpVertexhhTocVWmVWm = AmpVertexhhTocVWmVWm  +  AmpVertexIRoshhTocVWmVWm
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->conj[VWm] VWm -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumhhTocVWmVWm = AmpTreehhTocVWmVWm 
 AmpSum2hhTocVWmVWm = AmpTreehhTocVWmVWm + 2._dp*AmpWavehhTocVWmVWm + 2._dp*AmpVertexhhTocVWmVWm  
Else 
 AmpSumhhTocVWmVWm = AmpTreehhTocVWmVWm + AmpWavehhTocVWmVWm + AmpVertexhhTocVWmVWm
 AmpSum2hhTocVWmVWm = AmpTreehhTocVWmVWm + AmpWavehhTocVWmVWm + AmpVertexhhTocVWmVWm 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhTocVWmVWm = AmpTreehhTocVWmVWm
 AmpSum2hhTocVWmVWm = AmpTreehhTocVWmVWm 
End if 
Do gt1=1,6
i4 = isave 
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(MVWmOS)+Abs(MVWmOS)))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(MVWm)+Abs(MVWm))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1 
  AmpSum2hhTocVWmVWm = AmpTreehhTocVWmVWm
If (OSkinematics) Then 
  Call SquareAmp_StoVV(MhhOS(gt1),MVWmOS,MVWmOS,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
Else  
  Call SquareAmp_StoVV(Mhh(gt1),MVWm,MVWm,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqhhTocVWmVWm(gt1) 
  AmpSum2hhTocVWmVWm = 2._dp*AmpWavehhTocVWmVWm
If (OSkinematics) Then 
  Call SquareAmp_StoVV(MhhOS(gt1),MVWmOS,MVWmOS,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
Else  
  Call SquareAmp_StoVV(Mhh(gt1),MVWm,MVWm,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqhhTocVWmVWm(gt1) 
  AmpSum2hhTocVWmVWm = 2._dp*AmpVertexhhTocVWmVWm
If (OSkinematics) Then 
  Call SquareAmp_StoVV(MhhOS(gt1),MVWmOS,MVWmOS,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
Else  
  Call SquareAmp_StoVV(Mhh(gt1),MVWm,MVWm,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqhhTocVWmVWm(gt1) 
  AmpSum2hhTocVWmVWm = AmpTreehhTocVWmVWm + 2._dp*AmpWavehhTocVWmVWm + 2._dp*AmpVertexhhTocVWmVWm
If (OSkinematics) Then 
  Call SquareAmp_StoVV(MhhOS(gt1),MVWmOS,MVWmOS,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
Else  
  Call SquareAmp_StoVV(Mhh(gt1),MVWm,MVWm,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqhhTocVWmVWm(gt1) 
 End if 
If (OSkinematics) Then 
  AmpSum2hhTocVWmVWm = AmpTreehhTocVWmVWm
  Call SquareAmp_StoVV(MhhOS(gt1),MVWmOS,MVWmOS,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
  AmpSqTreehhTocVWmVWm(gt1) = AmpSqhhTocVWmVWm(gt1)  
  AmpSum2hhTocVWmVWm = + 2._dp*AmpWavehhTocVWmVWm + 2._dp*AmpVertexhhTocVWmVWm
  Call SquareAmp_StoVV(MhhOS(gt1),MVWmOS,MVWmOS,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
  AmpSqhhTocVWmVWm(gt1) = AmpSqhhTocVWmVWm(gt1) + AmpSqTreehhTocVWmVWm(gt1)  
Else  
  AmpSum2hhTocVWmVWm = AmpTreehhTocVWmVWm
  Call SquareAmp_StoVV(Mhh(gt1),MVWm,MVWm,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
  AmpSqTreehhTocVWmVWm(gt1) = AmpSqhhTocVWmVWm(gt1)  
  AmpSum2hhTocVWmVWm = + 2._dp*AmpWavehhTocVWmVWm + 2._dp*AmpVertexhhTocVWmVWm
  Call SquareAmp_StoVV(Mhh(gt1),MVWm,MVWm,AmpSumhhTocVWmVWm(:,gt1),AmpSum2hhTocVWmVWm(:,gt1),AmpSqhhTocVWmVWm(gt1)) 
  AmpSqhhTocVWmVWm(gt1) = AmpSqhhTocVWmVWm(gt1) + AmpSqTreehhTocVWmVWm(gt1)  
End if  
Else  
  AmpSqhhTocVWmVWm(gt1) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 1._dp 
If (AmpSqhhTocVWmVWm(gt1).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 2._dp*GammaTPS(MhhOS(gt1),MVWmOS,MVWmOS,helfactor*AmpSqhhTocVWmVWm(gt1))
Else 
  gP1Lhh(gt1,i4) = 2._dp*GammaTPS(Mhh(gt1),MVWm,MVWm,helfactor*AmpSqhhTocVWmVWm(gt1))
End if 
If ((Abs(MRPhhTocVWmVWm(gt1)).gt.1.0E-20_dp).or.(Abs(MRGhhTocVWmVWm(gt1)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPhhTocVWmVWm(gt1)).gt.1.0E-20_dp).or.(Abs(MRGhhTocVWmVWm(gt1)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*2._dp*helfactor*(MRPhhTocVWmVWm(gt1) + MRGhhTocVWmVWm(gt1)) 
  gP1Lhh(gt1,i4) = gP1Lhh(gt1,i4) + phasespacefactor*2._dp*helfactor*(MRPhhTocVWmVWm(gt1) + MRGhhTocVWmVWm(gt1))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1Lhh(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

If (gt1.eq.6) isave = i4 
End do
End If 
If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! VZ VZ
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_2HDMSCPV_hhToVZVZ(cplhhVZVZ,Mhh,MVZ,Mhh2,MVZ2,AmpTreehhToVZVZ)

  Else 
Call Amplitude_Tree_2HDMSCPV_hhToVZVZ(ZcplhhVZVZ,Mhh,MVZ,Mhh2,MVZ2,AmpTreehhToVZVZ)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_2HDMSCPV_hhToVZVZ(MLambda,em,gs,cplhhVZVZ,MhhOS,MVZOS,MRPhhToVZVZ,    & 
& MRGhhToVZVZ)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_2HDMSCPV_hhToVZVZ(MLambda,em,gs,ZcplhhVZVZ,MhhOS,MVZOS,               & 
& MRPhhToVZVZ,MRGhhToVZVZ)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_2HDMSCPV_hhToVZVZ(MLambda,em,gs,cplhhVZVZ,Mhh,MVZ,MRPhhToVZVZ,        & 
& MRGhhToVZVZ)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_2HDMSCPV_hhToVZVZ(MLambda,em,gs,ZcplhhVZVZ,Mhh,MVZ,MRPhhToVZVZ,       & 
& MRGhhToVZVZ)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_2HDMSCPV_hhToVZVZ(cplhhVZVZ,ctcplhhVZVZ,Mhh,Mhh2,MVZ,             & 
& MVZ2,Zfhh,ZfVZ,AmpWavehhToVZVZ)



!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhToVZVZ(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,MFd2,            & 
& MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,        & 
& cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,               & 
& cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,       & 
& cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,         & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ1,cplhhHmcVWmVZ1,           & 
& cplhhcHmVWmVZ1,cplHmcHmVZVZ1,cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,       & 
& AmpVertexhhToVZVZ)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhToVZVZ(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,              & 
& MFd2,MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,               & 
& cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,          & 
& cplcgWpCgWpCVZ,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,    & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ1,cplhhHmcVWmVZ1, & 
& cplhhcHmVWmVZ1,cplHmcHmVZVZ1,cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,       & 
& AmpVertexIRdrhhToVZVZ)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhToVZVZ(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,             & 
& MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVWm2OS,MVZ2OS,cplcFdFdhhL,            & 
& cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,               & 
& cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,              & 
& cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,             & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,ZcplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,    & 
& cplcVWmVWmVZ,cplhhhhVZVZ1,cplhhHmcVWmVZ1,cplhhcHmVWmVZ1,cplHmcHmVZVZ1,cplcVWmVWmVZVZ2Q,& 
& cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,AmpVertexIRoshhToVZVZ)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhToVZVZ(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,              & 
& MFd2,MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,               & 
& cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,          & 
& cplcgWpCgWpCVZ,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,    & 
& ZcplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ1,               & 
& cplhhHmcVWmVZ1,cplhhcHmVWmVZ1,cplHmcHmVZVZ1,cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,         & 
& cplcVWmVWmVZVZ1Q,AmpVertexIRoshhToVZVZ)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhToVZVZ(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,             & 
& MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVWm2OS,MVZ2OS,cplcFdFdhhL,            & 
& cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,               & 
& cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,              & 
& cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,             & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,     & 
& cplcVWmVWmVZ,cplhhhhVZVZ1,cplhhHmcVWmVZ1,cplhhcHmVWmVZ1,cplHmcHmVZVZ1,cplcVWmVWmVZVZ2Q,& 
& cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,AmpVertexIRoshhToVZVZ)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_2HDMSCPV_hhToVZVZ(MFd,MFe,MFu,Mhh,MHm,MVWm,MVZ,              & 
& MFd2,MFe2,MFu2,Mhh2,MHm2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,               & 
& cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,          & 
& cplcgWpCgWpCVZ,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,    & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ1,cplhhHmcVWmVZ1, & 
& cplhhcHmVWmVZ1,cplHmcHmVZVZ1,cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,       & 
& AmpVertexIRoshhToVZVZ)

 End if 
 End if 
AmpVertexhhToVZVZ = AmpVertexhhToVZVZ -  AmpVertexIRdrhhToVZVZ! +  AmpVertexIRoshhToVZVZ ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZhhToVZVZ=0._dp 
AmpVertexZhhToVZVZ=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZhhToVZVZ(:,gt2) = AmpWaveZhhToVZVZ(:,gt2)+ZRUZH(gt2,gt1)*AmpWavehhToVZVZ(:,gt1) 
AmpVertexZhhToVZVZ(:,gt2)= AmpVertexZhhToVZVZ(:,gt2) + ZRUZH(gt2,gt1)*AmpVertexhhToVZVZ(:,gt1) 
 End Do 
End Do 
AmpWavehhToVZVZ=AmpWaveZhhToVZVZ 
AmpVertexhhToVZVZ= AmpVertexZhhToVZVZ
End if
If (ShiftIRdiv) Then 
AmpVertexhhToVZVZ = AmpVertexhhToVZVZ  +  AmpVertexIRoshhToVZVZ
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->VZ VZ -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumhhToVZVZ = AmpTreehhToVZVZ 
 AmpSum2hhToVZVZ = AmpTreehhToVZVZ + 2._dp*AmpWavehhToVZVZ + 2._dp*AmpVertexhhToVZVZ  
Else 
 AmpSumhhToVZVZ = AmpTreehhToVZVZ + AmpWavehhToVZVZ + AmpVertexhhToVZVZ
 AmpSum2hhToVZVZ = AmpTreehhToVZVZ + AmpWavehhToVZVZ + AmpVertexhhToVZVZ 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhToVZVZ = AmpTreehhToVZVZ
 AmpSum2hhToVZVZ = AmpTreehhToVZVZ 
End if 
Do gt1=1,6
i4 = isave 
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(MVZOS)+Abs(MVZOS)))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(MVZ)+Abs(MVZ))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1 
  AmpSum2hhToVZVZ = AmpTreehhToVZVZ
If (OSkinematics) Then 
  Call SquareAmp_StoVV(MhhOS(gt1),MVZOS,MVZOS,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
Else  
  Call SquareAmp_StoVV(Mhh(gt1),MVZ,MVZ,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqhhToVZVZ(gt1) 
  AmpSum2hhToVZVZ = 2._dp*AmpWavehhToVZVZ
If (OSkinematics) Then 
  Call SquareAmp_StoVV(MhhOS(gt1),MVZOS,MVZOS,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
Else  
  Call SquareAmp_StoVV(Mhh(gt1),MVZ,MVZ,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqhhToVZVZ(gt1) 
  AmpSum2hhToVZVZ = 2._dp*AmpVertexhhToVZVZ
If (OSkinematics) Then 
  Call SquareAmp_StoVV(MhhOS(gt1),MVZOS,MVZOS,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
Else  
  Call SquareAmp_StoVV(Mhh(gt1),MVZ,MVZ,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqhhToVZVZ(gt1) 
  AmpSum2hhToVZVZ = AmpTreehhToVZVZ + 2._dp*AmpWavehhToVZVZ + 2._dp*AmpVertexhhToVZVZ
If (OSkinematics) Then 
  Call SquareAmp_StoVV(MhhOS(gt1),MVZOS,MVZOS,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
Else  
  Call SquareAmp_StoVV(Mhh(gt1),MVZ,MVZ,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqhhToVZVZ(gt1) 
 End if 
If (OSkinematics) Then 
  AmpSum2hhToVZVZ = AmpTreehhToVZVZ
  Call SquareAmp_StoVV(MhhOS(gt1),MVZOS,MVZOS,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
  AmpSqTreehhToVZVZ(gt1) = AmpSqhhToVZVZ(gt1)  
  AmpSum2hhToVZVZ = + 2._dp*AmpWavehhToVZVZ + 2._dp*AmpVertexhhToVZVZ
  Call SquareAmp_StoVV(MhhOS(gt1),MVZOS,MVZOS,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
  AmpSqhhToVZVZ(gt1) = AmpSqhhToVZVZ(gt1) + AmpSqTreehhToVZVZ(gt1)  
Else  
  AmpSum2hhToVZVZ = AmpTreehhToVZVZ
  Call SquareAmp_StoVV(Mhh(gt1),MVZ,MVZ,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
  AmpSqTreehhToVZVZ(gt1) = AmpSqhhToVZVZ(gt1)  
  AmpSum2hhToVZVZ = + 2._dp*AmpWavehhToVZVZ + 2._dp*AmpVertexhhToVZVZ
  Call SquareAmp_StoVV(Mhh(gt1),MVZ,MVZ,AmpSumhhToVZVZ(:,gt1),AmpSum2hhToVZVZ(:,gt1),AmpSqhhToVZVZ(gt1)) 
  AmpSqhhToVZVZ(gt1) = AmpSqhhToVZVZ(gt1) + AmpSqTreehhToVZVZ(gt1)  
End if  
Else  
  AmpSqhhToVZVZ(gt1) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 1._dp 
If (AmpSqhhToVZVZ(gt1).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(MhhOS(gt1),MVZOS,MVZOS,helfactor*AmpSqhhToVZVZ(gt1))
Else 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(Mhh(gt1),MVZ,MVZ,helfactor*AmpSqhhToVZVZ(gt1))
End if 
If ((Abs(MRPhhToVZVZ(gt1)).gt.1.0E-20_dp).or.(Abs(MRGhhToVZVZ(gt1)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPhhToVZVZ(gt1)).gt.1.0E-20_dp).or.(Abs(MRGhhToVZVZ(gt1)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*1._dp*helfactor*(MRPhhToVZVZ(gt1) + MRGhhToVZVZ(gt1)) 
  gP1Lhh(gt1,i4) = gP1Lhh(gt1,i4) + phasespacefactor*1._dp*helfactor*(MRPhhToVZVZ(gt1) + MRGhhToVZVZ(gt1))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1Lhh(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

If (gt1.eq.6) isave = i4 
End do
End If 
!---------------- 
! Fv bar(Fv)
!---------------- 

If (LoopInducedDecaysOS) Then 


!Self-energy Corrections 


!Vertex Corrections 
 If (ExternalZfactors) Then 
Call Amplitude_VERTEX_2HDMSCPV_hhToFvcFv(MFeOS,MhhOS,MHmOS,MVWmOS,MVZOS,              & 
& MFe2OS,Mhh2OS,MHm2OS,MVWm2OS,MVZ2OS,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,              & 
& cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,         & 
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,               & 
& cplhhcVWmVWm,cplhhVZVZ,AmpVertexhhToFvcFv)

 Else 
Call Amplitude_VERTEX_2HDMSCPV_hhToFvcFv(MFeOS,MhhOS,MHmOS,MVWmOS,MVZOS,              & 
& MFe2OS,Mhh2OS,MHm2OS,MVWm2OS,MVZ2OS,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,              & 
& cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,         & 
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,               & 
& cplhhcVWmVWm,cplhhVZVZ,AmpVertexhhToFvcFv)

 End if 
Else 


!Self-energy Corrections 


!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhToFvcFv(MFe,Mhh,MHm,MVWm,MVZ,MFe2,Mhh2,              & 
& MHm2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,       & 
& cplcFvFecVWmR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,           & 
& cplcFvFvVZR,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexhhToFvcFv)

End if 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->Fv bar[Fv] -----------------------" 
End if 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhToFvcFv = 0._dp 
 AmpSum2hhToFvcFv = 0._dp  
Else 
 AmpSumhhToFvcFv = AmpVertexhhToFvcFv + AmpWavehhToFvcFv
 AmpSum2hhToFvcFv = AmpVertexhhToFvcFv + AmpWavehhToFvcFv 
End If 
Do gt1=1,6
i4 = isave 
  Do gt2=1,3
    Do gt3=1,3
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(0.)+Abs(0.)))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(0._dp)+Abs(0._dp))))) Then 
If (OSkinematics) Then 
  Call SquareAmp_StoFF(MhhOS(gt1),0._dp,0._dp,AmpSumhhToFvcFv(:,gt1, gt2, gt3),AmpSum2hhToFvcFv(:,gt1, gt2, gt3),AmpSqhhToFvcFv(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_StoFF(Mhh(gt1),0._dp,0._dp,AmpSumhhToFvcFv(:,gt1, gt2, gt3),AmpSum2hhToFvcFv(:,gt1, gt2, gt3),AmpSqhhToFvcFv(gt1, gt2, gt3)) 
End if  
Else  
  AmpSqhhToFvcFv(gt1, gt2, gt3) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 4._dp 
If (AmpSqhhToFvcFv(gt1, gt2, gt3).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(MhhOS(gt1),0._dp,0._dp,helfactor*AmpSqhhToFvcFv(gt1, gt2, gt3))
Else 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(Mhh(gt1),0._dp,0._dp,helfactor*AmpSqhhToFvcFv(gt1, gt2, gt3))
End if 
If ((Abs(MRPhhToFvcFv(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGhhToFvcFv(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
End if 
i4=i4+1

    End do
  End do
If (gt1.eq.6) isave = i4 
End do
!---------------- 
! hh VP
!---------------- 

If (LoopInducedDecaysOS) Then 


!Self-energy Corrections 
 If (ExternalZfactors) Then 
Call Amplitude_WAVE_2HDMSCPV_hhTohhVP(cplhhhhVZ,ctcplhhhhVZ,MhhOS,Mhh2OS,             & 
& MVP,MVP2,MVZOS,MVZ2OS,Zfhh,ZfVP,ZfVZVP,AmpWavehhTohhVP)

 Else 
Call Amplitude_WAVE_2HDMSCPV_hhTohhVP(cplhhhhVZ,ctcplhhhhVZ,MhhOS,Mhh2OS,             & 
& MVP,MVP2,MVZOS,MVZ2OS,Zfhh,ZfVP,ZfVZVP,AmpWavehhTohhVP)

 End if 


!Vertex Corrections 
 If (ExternalZfactors) Then 
Call Amplitude_VERTEX_2HDMSCPV_hhTohhVP(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,MVP,            & 
& MVWmOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,cplcFdFdhhL,cplcFdFdhhR,        & 
& cplcFdFdVPL,cplcFdFdVPR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,               & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmhh,cplcgWmgWmVP,             & 
& cplcgWpCgWpChh,cplcgWpCgWpCVP,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,         & 
& cplHmcHmVP,cplHmcVWmVP,cplcHmVPVWm,cplcVWmVPVWm,cplhhHmcVWmVP1,cplhhcHmVPVWm1,         & 
& AmpVertexhhTohhVP)

 Else 
Call Amplitude_VERTEX_2HDMSCPV_hhTohhVP(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,MVP,            & 
& MVWmOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,cplcFdFdhhL,cplcFdFdhhR,        & 
& cplcFdFdVPL,cplcFdFdVPR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,               & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmhh,cplcgWmgWmVP,             & 
& cplcgWpCgWpChh,cplcgWpCgWpCVP,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,         & 
& cplHmcHmVP,cplHmcVWmVP,cplcHmVPVWm,cplcVWmVPVWm,cplhhHmcVWmVP1,cplhhcHmVPVWm1,         & 
& AmpVertexhhTohhVP)

 End if 
Else 


!Self-energy Corrections 
Call Amplitude_WAVE_2HDMSCPV_hhTohhVP(cplhhhhVZ,ctcplhhhhVZ,Mhh,Mhh2,MVP,             & 
& MVP2,MVZ,MVZ2,Zfhh,ZfVP,ZfVZVP,AmpWavehhTohhVP)



!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhTohhVP(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,MFd2,            & 
& MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVPL,cplcFdFdVPR,        & 
& cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuhhL,cplcFuFuhhR,               & 
& cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmhh,cplcgWmgWmVP,cplcgWpCgWpChh,cplcgWpCgWpCVP,       & 
& cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplHmcHmVP,cplHmcVWmVP,cplcHmVPVWm,    & 
& cplcVWmVPVWm,cplhhHmcVWmVP1,cplhhcHmVPVWm1,AmpVertexhhTohhVP)

End if 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->hh VP -----------------------" 
End if 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhTohhVP = 0._dp 
 AmpSum2hhTohhVP = 0._dp  
Else 
 AmpSumhhTohhVP = AmpVertexhhTohhVP + AmpWavehhTohhVP
 AmpSum2hhTohhVP = AmpVertexhhTohhVP + AmpWavehhTohhVP 
End If 
Do gt1=1,6
i4 = isave 
  Do gt2=2,6
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(MhhOS(gt2))+Abs(0.)))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(Mhh(gt2))+Abs(MVP))))) Then 
If (OSkinematics) Then 
  Call SquareAmp_StoSV(MhhOS(gt1),MhhOS(gt2),0._dp,AmpSumhhTohhVP(:,gt1, gt2),AmpSum2hhTohhVP(:,gt1, gt2),AmpSqhhTohhVP(gt1, gt2)) 
Else  
  Call SquareAmp_StoSV(Mhh(gt1),Mhh(gt2),MVP,AmpSumhhTohhVP(:,gt1, gt2),AmpSum2hhTohhVP(:,gt1, gt2),AmpSqhhTohhVP(gt1, gt2)) 
End if  
Else  
  AmpSqhhTohhVP(gt1, gt2) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 1._dp 
If (AmpSqhhTohhVP(gt1, gt2).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(MhhOS(gt1),MhhOS(gt2),0._dp,helfactor*AmpSqhhTohhVP(gt1, gt2))
Else 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(Mhh(gt1),Mhh(gt2),MVP,helfactor*AmpSqhhTohhVP(gt1, gt2))
End if 
If ((Abs(MRPhhTohhVP(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGhhTohhVP(gt1, gt2)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
End if 
i4=i4+1

  End do
If (gt1.eq.6) isave = i4 
End do
!---------------- 
! VG VG
!---------------- 

If (LoopInducedDecaysOS) Then 


!Self-energy Corrections 


!Vertex Corrections 
 If (ExternalZfactors) Then 
Call Amplitude_VERTEX_2HDMSCPV_hhToVGVG(MFdOS,MFuOS,MhhOS,MVG,MFd2OS,MFu2OS,          & 
& Mhh2OS,MVG2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVGL,cplcFuFuVGR,AmpVertexhhToVGVG)

 Else 
Call Amplitude_VERTEX_2HDMSCPV_hhToVGVG(MFdOS,MFuOS,MhhOS,MVG,MFd2OS,MFu2OS,          & 
& Mhh2OS,MVG2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVGL,cplcFuFuVGR,AmpVertexhhToVGVG)

 End if 
Else 


!Self-energy Corrections 


!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhToVGVG(MFd,MFu,Mhh,MVG,MFd2,MFu2,Mhh2,               & 
& MVG2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuhhL,cplcFuFuhhR,          & 
& cplcFuFuVGL,cplcFuFuVGR,AmpVertexhhToVGVG)

End if 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->VG VG -----------------------" 
End if 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhToVGVG = 0._dp 
 AmpSum2hhToVGVG = 0._dp  
Else 
 AmpSumhhToVGVG = AmpVertexhhToVGVG + AmpWavehhToVGVG
 AmpSum2hhToVGVG = AmpVertexhhToVGVG + AmpWavehhToVGVG 
End If 
Do gt1=1,6
i4 = isave 
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(0.)+Abs(0.)))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(MVG)+Abs(MVG))))) Then 
If (OSkinematics) Then 
  Call SquareAmp_StoVV(MhhOS(gt1),0._dp,0._dp,AmpSumhhToVGVG(:,gt1),AmpSum2hhToVGVG(:,gt1),AmpSqhhToVGVG(gt1)) 
Else  
  Call SquareAmp_StoVV(Mhh(gt1),MVG,MVG,AmpSumhhToVGVG(:,gt1),AmpSum2hhToVGVG(:,gt1),AmpSqhhToVGVG(gt1)) 
End if  
Else  
  AmpSqhhToVGVG(gt1) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 1._dp 
If (AmpSqhhToVGVG(gt1).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 8._dp*GammaTPS(MhhOS(gt1),0._dp,0._dp,helfactor*AmpSqhhToVGVG(gt1))
Else 
  gP1Lhh(gt1,i4) = 8._dp*GammaTPS(Mhh(gt1),MVG,MVG,helfactor*AmpSqhhToVGVG(gt1))
End if 
If ((Abs(MRPhhToVGVG(gt1)).gt.1.0E-20_dp).or.(Abs(MRGhhToVGVG(gt1)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
End if 
i4=i4+1

If (gt1.eq.6) isave = i4 
End do
!---------------- 
! VP VP
!---------------- 

If (LoopInducedDecaysOS) Then 


!Self-energy Corrections 


!Vertex Corrections 
 If (ExternalZfactors) Then 
Call Amplitude_VERTEX_2HDMSCPV_hhToVPVP(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,MVP,            & 
& MVWmOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,cplcFdFdhhL,cplcFdFdhhR,        & 
& cplcFdFdVPL,cplcFdFdVPR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,               & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmhh,cplcgWmgWmVP,             & 
& cplcgWpCgWpChh,cplcgWpCgWpCVP,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,         & 
& cplHmcHmVP,cplHmcVWmVP,cplcHmVPVWm,cplcVWmVPVWm,cplhhHmcVWmVP1,cplhhcHmVPVWm1,         & 
& cplHmcHmVPVP1,cplcVWmVPVPVWm3Q,cplcVWmVPVPVWm1Q,cplcVWmVPVPVWm2Q,AmpVertexhhToVPVP)

 Else 
Call Amplitude_VERTEX_2HDMSCPV_hhToVPVP(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,MVP,            & 
& MVWmOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,cplcFdFdhhL,cplcFdFdhhR,        & 
& cplcFdFdVPL,cplcFdFdVPR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,               & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmhh,cplcgWmgWmVP,             & 
& cplcgWpCgWpChh,cplcgWpCgWpCVP,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,         & 
& cplHmcHmVP,cplHmcVWmVP,cplcHmVPVWm,cplcVWmVPVWm,cplhhHmcVWmVP1,cplhhcHmVPVWm1,         & 
& cplHmcHmVPVP1,cplcVWmVPVPVWm3Q,cplcVWmVPVPVWm1Q,cplcVWmVPVPVWm2Q,AmpVertexhhToVPVP)

 End if 
Else 


!Self-energy Corrections 


!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhToVPVP(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,MFd2,            & 
& MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVPL,cplcFdFdVPR,        & 
& cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuhhL,cplcFuFuhhR,               & 
& cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmhh,cplcgWmgWmVP,cplcgWpCgWpChh,cplcgWpCgWpCVP,       & 
& cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplHmcHmVP,cplHmcVWmVP,cplcHmVPVWm,    & 
& cplcVWmVPVWm,cplhhHmcVWmVP1,cplhhcHmVPVWm1,cplHmcHmVPVP1,cplcVWmVPVPVWm3Q,             & 
& cplcVWmVPVPVWm1Q,cplcVWmVPVPVWm2Q,AmpVertexhhToVPVP)

End if 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->VP VP -----------------------" 
End if 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhToVPVP = 0._dp 
 AmpSum2hhToVPVP = 0._dp  
Else 
 AmpSumhhToVPVP = AmpVertexhhToVPVP + AmpWavehhToVPVP
 AmpSum2hhToVPVP = AmpVertexhhToVPVP + AmpWavehhToVPVP 
End If 
Do gt1=1,6
i4 = isave 
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(0.)+Abs(0.)))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(MVP)+Abs(MVP))))) Then 
If (OSkinematics) Then 
  Call SquareAmp_StoVV(MhhOS(gt1),0._dp,0._dp,AmpSumhhToVPVP(:,gt1),AmpSum2hhToVPVP(:,gt1),AmpSqhhToVPVP(gt1)) 
Else  
  Call SquareAmp_StoVV(Mhh(gt1),MVP,MVP,AmpSumhhToVPVP(:,gt1),AmpSum2hhToVPVP(:,gt1),AmpSqhhToVPVP(gt1)) 
End if  
Else  
  AmpSqhhToVPVP(gt1) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 1._dp 
If (AmpSqhhToVPVP(gt1).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(MhhOS(gt1),0._dp,0._dp,helfactor*AmpSqhhToVPVP(gt1))
Else 
  gP1Lhh(gt1,i4) = 1._dp*GammaTPS(Mhh(gt1),MVP,MVP,helfactor*AmpSqhhToVPVP(gt1))
End if 
If ((Abs(MRPhhToVPVP(gt1)).gt.1.0E-20_dp).or.(Abs(MRGhhToVPVP(gt1)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
End if 
i4=i4+1

If (gt1.eq.6) isave = i4 
End do
!---------------- 
! VP VZ
!---------------- 

If (LoopInducedDecaysOS) Then 


!Self-energy Corrections 


!Vertex Corrections 
 If (ExternalZfactors) Then 
Call Amplitude_VERTEX_2HDMSCPV_hhToVPVZ(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,MVP,            & 
& MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,cplcFdFdhhL,       & 
& cplcFdFdhhR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,               & 
& cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,              & 
& cplcgWmgWmVP,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplhhHmcHm,     & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,    & 
& cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,       & 
& cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmcHmVPVZ1,cplcVWmVPVWmVZ3Q,cplcVWmVPVWmVZ2Q,         & 
& cplcVWmVPVWmVZ1Q,AmpVertexhhToVPVZ)

 Else 
Call Amplitude_VERTEX_2HDMSCPV_hhToVPVZ(MFdOS,MFeOS,MFuOS,MhhOS,MHmOS,MVP,            & 
& MVWmOS,MVZOS,MFd2OS,MFe2OS,MFu2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,cplcFdFdhhL,       & 
& cplcFdFdhhR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,               & 
& cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,              & 
& cplcgWmgWmVP,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplhhHmcHm,     & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,    & 
& cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,       & 
& cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmcHmVPVZ1,cplcVWmVPVWmVZ3Q,cplcVWmVPVWmVZ2Q,         & 
& cplcVWmVPVWmVZ1Q,AmpVertexhhToVPVZ)

 End if 
Else 


!Self-energy Corrections 


!Vertex Corrections 
Call Amplitude_VERTEX_2HDMSCPV_hhToVPVZ(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,MVZ,             & 
& MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVPL,          & 
& cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,               & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVPL,               & 
& cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVP,cplcgWmgWmVZ,            & 
& cplcgWpCgWpChh,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,       & 
& cplhhcVWmVWm,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,cplcVWmVPVWm,   & 
& cplcHmVWmVZ,cplcVWmVWmVZ,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,  & 
& cplHmcHmVPVZ1,cplcVWmVPVWmVZ3Q,cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ1Q,AmpVertexhhToVPVZ)

End if 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ hh->VP VZ -----------------------" 
End if 
If (OnlyTreeLevelContributions) Then 
 AmpSumhhToVPVZ = 0._dp 
 AmpSum2hhToVPVZ = 0._dp  
Else 
 AmpSumhhToVPVZ = AmpVertexhhToVPVZ + AmpWavehhToVPVZ
 AmpSum2hhToVPVZ = AmpVertexhhToVPVZ + AmpWavehhToVPVZ 
End If 
Do gt1=1,6
i4 = isave 
If (((OSkinematics).and.(Abs(MhhOS(gt1)).gt.(Abs(0.)+Abs(MVZOS)))).or.((.not.OSkinematics).and.(Abs(Mhh(gt1)).gt.(Abs(MVP)+Abs(MVZ))))) Then 
If (OSkinematics) Then 
  Call SquareAmp_StoVV(MhhOS(gt1),0._dp,MVZOS,AmpSumhhToVPVZ(:,gt1),AmpSum2hhToVPVZ(:,gt1),AmpSqhhToVPVZ(gt1)) 
Else  
  Call SquareAmp_StoVV(Mhh(gt1),MVP,MVZ,AmpSumhhToVPVZ(:,gt1),AmpSum2hhToVPVZ(:,gt1),AmpSqhhToVPVZ(gt1)) 
End if  
Else  
  AmpSqhhToVPVZ(gt1) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 1._dp 
If (AmpSqhhToVPVZ(gt1).eq.0._dp) Then 
  gP1Lhh(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1Lhh(gt1,i4) = 2._dp*GammaTPS(MhhOS(gt1),0._dp,MVZOS,helfactor*AmpSqhhToVPVZ(gt1))
Else 
  gP1Lhh(gt1,i4) = 2._dp*GammaTPS(Mhh(gt1),MVP,MVZ,helfactor*AmpSqhhToVPVZ(gt1))
End if 
If ((Abs(MRPhhToVPVZ(gt1)).gt.1.0E-20_dp).or.(Abs(MRGhhToVPVZ(gt1)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1Lhh(gt1,i4) 
End if 
i4=i4+1

If (gt1.eq.6) isave = i4 
End do
End Subroutine OneLoopDecay_hh

End Module Wrapper_OneLoopDecay_hh_2HDMSCPV
