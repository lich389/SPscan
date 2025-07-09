! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.4 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 17:41 on 9.7.2025   
! ----------------------------------------------------------------------  
 
 
Module Wrapper_OneLoopDecay_Fe_C2HDMS
Use Model_Data_C2HDMS 
Use Kinematics 
Use OneLoopDecay_Fe_C2HDMS 
Use Control 
Use Settings 

 
Contains

 
Subroutine OneLoopDecay_Fe(MhhOS,Mhh2OS,MHmOS,MHm2OS,MFdOS,MFd2OS,MFuOS,              & 
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
& ZfUR,ZfEL,ZfER,ZfVPVZ,ZfVZVP,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,          & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,             & 
& cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFvFvVZL,cplcFvFvVZR,         & 
& cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,            & 
& cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhVZVZ,cplHmcHmVP,cplHmcHmVZ,            & 
& cplHmcVWmVP,cplHmcVWmVZ,ctcplcFeFehhL,ctcplcFeFehhR,ctcplcFeFeVPL,ctcplcFeFeVPR,       & 
& ctcplcFeFeVZL,ctcplcFeFeVZR,ctcplcFeFvHmL,ctcplcFeFvHmR,ctcplcFeFvVWmL,ctcplcFeFvVWmR, & 
& GcplcFeFvHmL,GcplcFeFvHmR,GcplcHmVPVWm,GcplHmcVWmVP,GosZcplcFeFvHmL,GosZcplcFeFvHmR,   & 
& GosZcplcHmVPVWm,GosZcplHmcVWmVP,GZcplcFeFvHmL,GZcplcFeFvHmR,GZcplcHmVPVWm,             & 
& GZcplHmcVWmVP,ZcplcFeFehhL,ZcplcFeFehhR,ZcplcFeFeVPL,ZcplcFeFeVPR,ZcplcFeFeVZL,        & 
& ZcplcFeFeVZR,ZcplcFeFvHmL,ZcplcFeFvHmR,ZcplcFeFvVWmL,ZcplcFeFvVWmR,ZcplcFvFecHmL,      & 
& ZcplcFvFecHmR,ZcplcFvFecVWmL,ZcplcFvFecVWmR,ZcplcHmVPVWm,ZcplcVWmVPVWm,ZcplHmcHmVP,    & 
& ZcplHmcVWmVP,ZRUZH,ZRUZP,ZRUVd,ZRUUd,ZRUVu,ZRUUu,ZRUVe,ZRUUe,MLambda,em,               & 
& gs,deltaM,kont,gP1LFe)

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

Complex(dp),Intent(in) :: cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),              & 
& cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),               & 
& cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),           & 
& cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),               & 
& cplcHmVPVWm(2),cplcHmVWmVZ(2),cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm(6,2),              & 
& cplhhcVWmVWm(6),cplhhhhhh(6,6,6),cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),    & 
& cplhhVZVZ(6),cplHmcHmVP(2,2),cplHmcHmVZ(2,2),cplHmcVWmVP(2),cplHmcVWmVZ(2),            & 
& ctcplcFeFehhL(3,3,6),ctcplcFeFehhR(3,3,6),ctcplcFeFeVPL(3,3),ctcplcFeFeVPR(3,3),       & 
& ctcplcFeFeVZL(3,3),ctcplcFeFeVZR(3,3),ctcplcFeFvHmL(3,3,2),ctcplcFeFvHmR(3,3,2),       & 
& ctcplcFeFvVWmL(3,3),ctcplcFeFvVWmR(3,3),GcplcFeFvHmL(3,3,2),GcplcFeFvHmR(3,3,2),       & 
& GcplcHmVPVWm(2),GcplHmcVWmVP(2),GosZcplcFeFvHmL(3,3,2),GosZcplcFeFvHmR(3,3,2),         & 
& GosZcplcHmVPVWm(2),GosZcplHmcVWmVP(2),GZcplcFeFvHmL(3,3,2),GZcplcFeFvHmR(3,3,2),       & 
& GZcplcHmVPVWm(2),GZcplHmcVWmVP(2),ZcplcFeFehhL(3,3,6),ZcplcFeFehhR(3,3,6),             & 
& ZcplcFeFeVPL(3,3),ZcplcFeFeVPR(3,3),ZcplcFeFeVZL(3,3),ZcplcFeFeVZR(3,3),               & 
& ZcplcFeFvHmL(3,3,2),ZcplcFeFvHmR(3,3,2),ZcplcFeFvVWmL(3,3),ZcplcFeFvVWmR(3,3),         & 
& ZcplcFvFecHmL(3,3,2),ZcplcFvFecHmR(3,3,2),ZcplcFvFecVWmL(3,3),ZcplcFvFecVWmR(3,3),     & 
& ZcplcHmVPVWm(2),ZcplcVWmVPVWm,ZcplHmcHmVP(2,2),ZcplHmcVWmVP(2)

Real(dp), Intent(in) :: em, gs 
Complex(dp),Intent(in) :: ZfVG,ZfvL(3,3),ZfVP,ZfVZ,ZfVWm,Zfhh(6,6),ZfHm(2,2),ZfDL(3,3),ZfDR(3,3),               & 
& ZfUL(3,3),ZfUR(3,3),ZfEL(3,3),ZfER(3,3),ZfVPVZ,ZfVZVP

Real(dp),Intent(in) :: MhhOS(6),Mhh2OS(6),MHmOS(2),MHm2OS(2),MFdOS(3),MFd2OS(3),MFuOS(3),MFu2OS(3),          & 
& MFeOS(3),MFe2OS(3),MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS(6,6),ZPOS(2,2)

Complex(dp),Intent(in) :: ZDLOS(3,3),ZDROS(3,3),ZULOS(3,3),ZUROS(3,3),ZELOS(3,3),ZEROS(3,3)

Complex(dp),Intent(in) :: ZRUZH(6,6),ZRUZP(2,2),ZRUVd(3,3),ZRUUd(3,3),ZRUVu(3,3),ZRUUu(3,3),ZRUVe(3,3),         & 
& ZRUUe(3,3)

Real(dp), Intent(in) :: MLambda, deltaM 
Real(dp), Intent(out) :: gP1LFe(3,27) 
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
Real(dp) :: MRPFeToFehh(3,3,6),MRGFeToFehh(3,3,6), MRPZFeToFehh(3,3,6),MRGZFeToFehh(3,3,6) 
Real(dp) :: MVPFeToFehh(3,3,6) 
Real(dp) :: RMsqTreeFeToFehh(3,3,6),RMsqWaveFeToFehh(3,3,6),RMsqVertexFeToFehh(3,3,6) 
Complex(dp) :: AmpTreeFeToFehh(2,3,3,6),AmpWaveFeToFehh(2,3,3,6)=(0._dp,0._dp),AmpVertexFeToFehh(2,3,3,6)& 
 & ,AmpVertexIRosFeToFehh(2,3,3,6),AmpVertexIRdrFeToFehh(2,3,3,6), AmpSumFeToFehh(2,3,3,6), AmpSum2FeToFehh(2,3,3,6) 
Complex(dp) :: AmpTreeZFeToFehh(2,3,3,6),AmpWaveZFeToFehh(2,3,3,6),AmpVertexZFeToFehh(2,3,3,6) 
Real(dp) :: AmpSqFeToFehh(3,3,6),  AmpSqTreeFeToFehh(3,3,6) 
Real(dp) :: MRPFeToFeVZ(3,3),MRGFeToFeVZ(3,3), MRPZFeToFeVZ(3,3),MRGZFeToFeVZ(3,3) 
Real(dp) :: MVPFeToFeVZ(3,3) 
Real(dp) :: RMsqTreeFeToFeVZ(3,3),RMsqWaveFeToFeVZ(3,3),RMsqVertexFeToFeVZ(3,3) 
Complex(dp) :: AmpTreeFeToFeVZ(4,3,3),AmpWaveFeToFeVZ(4,3,3)=(0._dp,0._dp),AmpVertexFeToFeVZ(4,3,3)& 
 & ,AmpVertexIRosFeToFeVZ(4,3,3),AmpVertexIRdrFeToFeVZ(4,3,3), AmpSumFeToFeVZ(4,3,3), AmpSum2FeToFeVZ(4,3,3) 
Complex(dp) :: AmpTreeZFeToFeVZ(4,3,3),AmpWaveZFeToFeVZ(4,3,3),AmpVertexZFeToFeVZ(4,3,3) 
Real(dp) :: AmpSqFeToFeVZ(3,3),  AmpSqTreeFeToFeVZ(3,3) 
Real(dp) :: MRPFeToFvHm(3,3,2),MRGFeToFvHm(3,3,2), MRPZFeToFvHm(3,3,2),MRGZFeToFvHm(3,3,2) 
Real(dp) :: MVPFeToFvHm(3,3,2) 
Real(dp) :: RMsqTreeFeToFvHm(3,3,2),RMsqWaveFeToFvHm(3,3,2),RMsqVertexFeToFvHm(3,3,2) 
Complex(dp) :: AmpTreeFeToFvHm(2,3,3,2),AmpWaveFeToFvHm(2,3,3,2)=(0._dp,0._dp),AmpVertexFeToFvHm(2,3,3,2)& 
 & ,AmpVertexIRosFeToFvHm(2,3,3,2),AmpVertexIRdrFeToFvHm(2,3,3,2), AmpSumFeToFvHm(2,3,3,2), AmpSum2FeToFvHm(2,3,3,2) 
Complex(dp) :: AmpTreeZFeToFvHm(2,3,3,2),AmpWaveZFeToFvHm(2,3,3,2),AmpVertexZFeToFvHm(2,3,3,2) 
Real(dp) :: AmpSqFeToFvHm(3,3,2),  AmpSqTreeFeToFvHm(3,3,2) 
Real(dp) :: MRPFeToFvVWm(3,3),MRGFeToFvVWm(3,3), MRPZFeToFvVWm(3,3),MRGZFeToFvVWm(3,3) 
Real(dp) :: MVPFeToFvVWm(3,3) 
Real(dp) :: RMsqTreeFeToFvVWm(3,3),RMsqWaveFeToFvVWm(3,3),RMsqVertexFeToFvVWm(3,3) 
Complex(dp) :: AmpTreeFeToFvVWm(4,3,3),AmpWaveFeToFvVWm(4,3,3)=(0._dp,0._dp),AmpVertexFeToFvVWm(4,3,3)& 
 & ,AmpVertexIRosFeToFvVWm(4,3,3),AmpVertexIRdrFeToFvVWm(4,3,3), AmpSumFeToFvVWm(4,3,3), AmpSum2FeToFvVWm(4,3,3) 
Complex(dp) :: AmpTreeZFeToFvVWm(4,3,3),AmpWaveZFeToFvVWm(4,3,3),AmpVertexZFeToFvVWm(4,3,3) 
Real(dp) :: AmpSqFeToFvVWm(3,3),  AmpSqTreeFeToFvVWm(3,3) 
Real(dp) :: MRPFeToFeVP(3,3),MRGFeToFeVP(3,3), MRPZFeToFeVP(3,3),MRGZFeToFeVP(3,3) 
Real(dp) :: MVPFeToFeVP(3,3) 
Real(dp) :: RMsqTreeFeToFeVP(3,3),RMsqWaveFeToFeVP(3,3),RMsqVertexFeToFeVP(3,3) 
Complex(dp) :: AmpTreeFeToFeVP(4,3,3),AmpWaveFeToFeVP(4,3,3)=(0._dp,0._dp),AmpVertexFeToFeVP(4,3,3)& 
 & ,AmpVertexIRosFeToFeVP(4,3,3),AmpVertexIRdrFeToFeVP(4,3,3), AmpSumFeToFeVP(4,3,3), AmpSum2FeToFeVP(4,3,3) 
Complex(dp) :: AmpTreeZFeToFeVP(4,3,3),AmpWaveZFeToFeVP(4,3,3),AmpVertexZFeToFeVP(4,3,3) 
Real(dp) :: AmpSqFeToFeVP(3,3),  AmpSqTreeFeToFeVP(3,3) 
Write(*,*) "Calculating one-loop decays of Fe " 
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
isave = 1 

If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! Fe hh
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_C2HDMS_FeToFehh(cplcFeFehhL,cplcFeFehhR,MFe,Mhh,MFe2,             & 
& Mhh2,AmpTreeFeToFehh)

  Else 
Call Amplitude_Tree_C2HDMS_FeToFehh(ZcplcFeFehhL,ZcplcFeFehhR,MFe,Mhh,MFe2,           & 
& Mhh2,AmpTreeFeToFehh)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_C2HDMS_FeToFehh(MLambda,em,gs,cplcFeFehhL,cplcFeFehhR,MFeOS,          & 
& MhhOS,MRPFeToFehh,MRGFeToFehh)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_C2HDMS_FeToFehh(MLambda,em,gs,ZcplcFeFehhL,ZcplcFeFehhR,              & 
& MFeOS,MhhOS,MRPFeToFehh,MRGFeToFehh)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_C2HDMS_FeToFehh(MLambda,em,gs,cplcFeFehhL,cplcFeFehhR,MFe,            & 
& Mhh,MRPFeToFehh,MRGFeToFehh)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_C2HDMS_FeToFehh(MLambda,em,gs,ZcplcFeFehhL,ZcplcFeFehhR,              & 
& MFe,Mhh,MRPFeToFehh,MRGFeToFehh)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_C2HDMS_FeToFehh(cplcFeFehhL,cplcFeFehhR,ctcplcFeFehhL,            & 
& ctcplcFeFehhR,MFe,MFe2,Mhh,Mhh2,ZfEL,ZfER,Zfhh,AmpWaveFeToFehh)



!Vertex Corrections 
Call Amplitude_VERTEX_C2HDMS_FeToFehh(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,Mhh2,             & 
& MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,      & 
& cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFeFvHmL,         & 
& cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexFeToFehh)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFehh(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,               & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,      & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRdrFeToFehh)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFehh(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,MVZOS,          & 
& MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,ZcplcFeFehhL,ZcplcFeFehhR,cplcFeFeVPL,        & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,           & 
& cplcFvFecVWmR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplhhhhhh,             & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRosFeToFehh)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFehh(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,               & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,ZcplcFeFehhL,ZcplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,           & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,      & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRosFeToFehh)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFehh(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,MVZOS,          & 
& MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,          & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,           & 
& cplcFvFecVWmR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplhhhhhh,             & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRosFeToFehh)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFehh(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,               & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,      & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,AmpVertexIRosFeToFehh)

 End if 
 End if 
AmpVertexFeToFehh = AmpVertexFeToFehh -  AmpVertexIRdrFeToFehh! +  AmpVertexIRosFeToFehh ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZFeToFehh=0._dp 
AmpVertexZFeToFehh=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZFeToFehh(1,gt2,:,:) = AmpWaveZFeToFehh(1,gt2,:,:)+ZRUUe(gt2,gt1)*AmpWaveFeToFehh(1,gt1,:,:) 
AmpVertexZFeToFehh(1,gt2,:,:)= AmpVertexZFeToFehh(1,gt2,:,:) + ZRUUe(gt2,gt1)*AmpVertexFeToFehh(1,gt1,:,:) 
AmpWaveZFeToFehh(2,gt2,:,:) = AmpWaveZFeToFehh(2,gt2,:,:)+ZRUVec(gt2,gt1)*AmpWaveFeToFehh(2,gt1,:,:) 
AmpVertexZFeToFehh(2,gt2,:,:)= AmpVertexZFeToFehh(2,gt2,:,:) + ZRUVec(gt2,gt1)*AmpVertexFeToFehh(2,gt1,:,:) 
 End Do 
End Do 
AmpWaveFeToFehh=AmpWaveZFeToFehh 
AmpVertexFeToFehh= AmpVertexZFeToFehh
! Final State 1 
AmpWaveZFeToFehh=0._dp 
AmpVertexZFeToFehh=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZFeToFehh(1,:,gt2,:) = AmpWaveZFeToFehh(1,:,gt2,:)+ZRUVe(gt2,gt1)*AmpWaveFeToFehh(1,:,gt1,:) 
AmpVertexZFeToFehh(1,:,gt2,:)= AmpVertexZFeToFehh(1,:,gt2,:)+ZRUVe(gt2,gt1)*AmpVertexFeToFehh(1,:,gt1,:) 
AmpWaveZFeToFehh(2,:,gt2,:) = AmpWaveZFeToFehh(2,:,gt2,:)+ZRUUec(gt2,gt1)*AmpWaveFeToFehh(2,:,gt1,:) 
AmpVertexZFeToFehh(2,:,gt2,:)= AmpVertexZFeToFehh(2,:,gt2,:)+ZRUUec(gt2,gt1)*AmpVertexFeToFehh(2,:,gt1,:) 
 End Do 
End Do 
AmpWaveFeToFehh=AmpWaveZFeToFehh 
AmpVertexFeToFehh= AmpVertexZFeToFehh
! Final State 2 
AmpWaveZFeToFehh=0._dp 
AmpVertexZFeToFehh=0._dp 
Do gt1=1,6
  Do gt2=1,6
AmpWaveZFeToFehh(:,:,:,gt2) = AmpWaveZFeToFehh(:,:,:,gt2)+ZRUZH(gt2,gt1)*AmpWaveFeToFehh(:,:,:,gt1) 
AmpVertexZFeToFehh(:,:,:,gt2)= AmpVertexZFeToFehh(:,:,:,gt2)+ZRUZH(gt2,gt1)*AmpVertexFeToFehh(:,:,:,gt1) 
 End Do 
End Do 
AmpWaveFeToFehh=AmpWaveZFeToFehh 
AmpVertexFeToFehh= AmpVertexZFeToFehh
End if
If (ShiftIRdiv) Then 
AmpVertexFeToFehh = AmpVertexFeToFehh  +  AmpVertexIRosFeToFehh
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ Fe->Fe hh -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumFeToFehh = AmpTreeFeToFehh 
 AmpSum2FeToFehh = AmpTreeFeToFehh + 2._dp*AmpWaveFeToFehh + 2._dp*AmpVertexFeToFehh  
Else 
 AmpSumFeToFehh = AmpTreeFeToFehh + AmpWaveFeToFehh + AmpVertexFeToFehh
 AmpSum2FeToFehh = AmpTreeFeToFehh + AmpWaveFeToFehh + AmpVertexFeToFehh 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumFeToFehh = AmpTreeFeToFehh
 AmpSum2FeToFehh = AmpTreeFeToFehh 
End if 
Do gt1=1,3
i4 = isave 
  Do gt2=1,3
    Do gt3=2,6
If (((OSkinematics).and.(Abs(MFeOS(gt1)).gt.(Abs(MFeOS(gt2))+Abs(MhhOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MFe(gt1)).gt.(Abs(MFe(gt2))+Abs(Mhh(gt3)))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1, gt2, gt3 
  AmpSum2FeToFehh = AmpTreeFeToFehh
If (OSkinematics) Then 
  Call SquareAmp_FtoFS(MFeOS(gt1),MFeOS(gt2),MhhOS(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_FtoFS(MFe(gt1),MFe(gt2),Mhh(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqFeToFehh(gt1, gt2, gt3) 
  AmpSum2FeToFehh = 2._dp*AmpWaveFeToFehh
If (OSkinematics) Then 
  Call SquareAmp_FtoFS(MFeOS(gt1),MFeOS(gt2),MhhOS(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_FtoFS(MFe(gt1),MFe(gt2),Mhh(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqFeToFehh(gt1, gt2, gt3) 
  AmpSum2FeToFehh = 2._dp*AmpVertexFeToFehh
If (OSkinematics) Then 
  Call SquareAmp_FtoFS(MFeOS(gt1),MFeOS(gt2),MhhOS(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_FtoFS(MFe(gt1),MFe(gt2),Mhh(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqFeToFehh(gt1, gt2, gt3) 
  AmpSum2FeToFehh = AmpTreeFeToFehh + 2._dp*AmpWaveFeToFehh + 2._dp*AmpVertexFeToFehh
If (OSkinematics) Then 
  Call SquareAmp_FtoFS(MFeOS(gt1),MFeOS(gt2),MhhOS(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_FtoFS(MFe(gt1),MFe(gt2),Mhh(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqFeToFehh(gt1, gt2, gt3) 
 End if 
If (OSkinematics) Then 
  AmpSum2FeToFehh = AmpTreeFeToFehh
  Call SquareAmp_FtoFS(MFeOS(gt1),MFeOS(gt2),MhhOS(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
  AmpSqTreeFeToFehh(gt1, gt2, gt3) = AmpSqFeToFehh(gt1, gt2, gt3)  
  AmpSum2FeToFehh = + 2._dp*AmpWaveFeToFehh + 2._dp*AmpVertexFeToFehh
  Call SquareAmp_FtoFS(MFeOS(gt1),MFeOS(gt2),MhhOS(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
  AmpSqFeToFehh(gt1, gt2, gt3) = AmpSqFeToFehh(gt1, gt2, gt3) + AmpSqTreeFeToFehh(gt1, gt2, gt3)  
Else  
  AmpSum2FeToFehh = AmpTreeFeToFehh
  Call SquareAmp_FtoFS(MFe(gt1),MFe(gt2),Mhh(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
  AmpSqTreeFeToFehh(gt1, gt2, gt3) = AmpSqFeToFehh(gt1, gt2, gt3)  
  AmpSum2FeToFehh = + 2._dp*AmpWaveFeToFehh + 2._dp*AmpVertexFeToFehh
  Call SquareAmp_FtoFS(MFe(gt1),MFe(gt2),Mhh(gt3),AmpSumFeToFehh(:,gt1, gt2, gt3),AmpSum2FeToFehh(:,gt1, gt2, gt3),AmpSqFeToFehh(gt1, gt2, gt3)) 
  AmpSqFeToFehh(gt1, gt2, gt3) = AmpSqFeToFehh(gt1, gt2, gt3) + AmpSqTreeFeToFehh(gt1, gt2, gt3)  
End if  
Else  
  AmpSqFeToFehh(gt1, gt2, gt3) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 2._dp 
If (AmpSqFeToFehh(gt1, gt2, gt3).eq.0._dp) Then 
  gP1LFe(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1LFe(gt1,i4) = 1._dp*GammaTPS(MFeOS(gt1),MFeOS(gt2),MhhOS(gt3),helfactor*AmpSqFeToFehh(gt1, gt2, gt3))
Else 
  gP1LFe(gt1,i4) = 1._dp*GammaTPS(MFe(gt1),MFe(gt2),Mhh(gt3),helfactor*AmpSqFeToFehh(gt1, gt2, gt3))
End if 
If ((Abs(MRPFeToFehh(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGFeToFehh(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LFe(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPFeToFehh(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGFeToFehh(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPFeToFehh(gt1, gt2, gt3) + MRGFeToFehh(gt1, gt2, gt3)) 
  gP1LFe(gt1,i4) = gP1LFe(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPFeToFehh(gt1, gt2, gt3) + MRGFeToFehh(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LFe(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

    End do
  End do
If (gt1.eq.3) isave = i4 
End do
End If 
If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! Fe VZ
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_C2HDMS_FeToFeVZ(cplcFeFeVZL,cplcFeFeVZR,MFe,MVZ,MFe2,             & 
& MVZ2,AmpTreeFeToFeVZ)

  Else 
Call Amplitude_Tree_C2HDMS_FeToFeVZ(ZcplcFeFeVZL,ZcplcFeFeVZR,MFe,MVZ,MFe2,           & 
& MVZ2,AmpTreeFeToFeVZ)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_C2HDMS_FeToFeVZ(MLambda,em,gs,cplcFeFeVZL,cplcFeFeVZR,MFeOS,          & 
& MVZOS,MRPFeToFeVZ,MRGFeToFeVZ)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_C2HDMS_FeToFeVZ(MLambda,em,gs,ZcplcFeFeVZL,ZcplcFeFeVZR,              & 
& MFeOS,MVZOS,MRPFeToFeVZ,MRGFeToFeVZ)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_C2HDMS_FeToFeVZ(MLambda,em,gs,cplcFeFeVZL,cplcFeFeVZR,MFe,            & 
& MVZ,MRPFeToFeVZ,MRGFeToFeVZ)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_C2HDMS_FeToFeVZ(MLambda,em,gs,ZcplcFeFeVZL,ZcplcFeFeVZR,              & 
& MFe,MVZ,MRPFeToFeVZ,MRGFeToFeVZ)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_C2HDMS_FeToFeVZ(cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,              & 
& cplcFeFeVZR,ctcplcFeFeVPL,ctcplcFeFeVPR,ctcplcFeFeVZL,ctcplcFeFeVZR,MFe,               & 
& MFe2,MVP,MVP2,MVZ,MVZ2,ZfEL,ZfER,ZfVPVZ,ZfVZ,AmpWaveFeToFeVZ)



!Vertex Corrections 
Call Amplitude_VERTEX_C2HDMS_FeToFeVZ(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,Mhh2,             & 
& MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,      & 
& cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFeFvHmL,         & 
& cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplhhhhVZ,               & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,AmpVertexFeToFeVZ)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFeVZ(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,               & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,             & 
& cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,AmpVertexIRdrFeToFeVZ)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFeVZ(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,MVZOS,          & 
& MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,          & 
& cplcFeFeVPR,ZcplcFeFeVZL,ZcplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,         & 
& cplcFvFecVWmR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,           & 
& cplcFvFvVZR,cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,       & 
& AmpVertexIRosFeToFeVZ)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFeVZ(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,               & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& ZcplcFeFeVZL,ZcplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,       & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,             & 
& cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,AmpVertexIRosFeToFeVZ)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFeVZ(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,MVZOS,          & 
& MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,          & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,           & 
& cplcFvFecVWmR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,           & 
& cplcFvFvVZR,cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,       & 
& AmpVertexIRosFeToFeVZ)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFeVZ(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,               & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,             & 
& cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,AmpVertexIRosFeToFeVZ)

 End if 
 End if 
AmpVertexFeToFeVZ = AmpVertexFeToFeVZ -  AmpVertexIRdrFeToFeVZ! +  AmpVertexIRosFeToFeVZ ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZFeToFeVZ=0._dp 
AmpVertexZFeToFeVZ=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZFeToFeVZ(1,gt2,:) = AmpWaveZFeToFeVZ(1,gt2,:)+ZRUVec(gt2,gt1)*AmpWaveFeToFeVZ(1,gt1,:) 
AmpVertexZFeToFeVZ(1,gt2,:)= AmpVertexZFeToFeVZ(1,gt2,:) + ZRUVec(gt2,gt1)*AmpVertexFeToFeVZ(1,gt1,:) 
AmpWaveZFeToFeVZ(2,gt2,:) = AmpWaveZFeToFeVZ(2,gt2,:)+ZRUUe(gt2,gt1)*AmpWaveFeToFeVZ(2,gt1,:) 
AmpVertexZFeToFeVZ(2,gt2,:)= AmpVertexZFeToFeVZ(2,gt2,:) + ZRUUe(gt2,gt1)*AmpVertexFeToFeVZ(2,gt1,:) 
AmpWaveZFeToFeVZ(3,gt2,:) = AmpWaveZFeToFeVZ(3,gt2,:)+ZRUVec(gt2,gt1)*AmpWaveFeToFeVZ(3,gt1,:) 
AmpVertexZFeToFeVZ(3,gt2,:)= AmpVertexZFeToFeVZ(3,gt2,:) + ZRUVec(gt2,gt1)*AmpVertexFeToFeVZ(3,gt1,:) 
AmpWaveZFeToFeVZ(4,gt2,:) = AmpWaveZFeToFeVZ(4,gt2,:)+ZRUUe(gt2,gt1)*AmpWaveFeToFeVZ(4,gt1,:) 
AmpVertexZFeToFeVZ(4,gt2,:)= AmpVertexZFeToFeVZ(4,gt2,:) + ZRUUe(gt2,gt1)*AmpVertexFeToFeVZ(4,gt1,:) 
 End Do 
End Do 
AmpWaveFeToFeVZ=AmpWaveZFeToFeVZ 
AmpVertexFeToFeVZ= AmpVertexZFeToFeVZ
! Final State 1 
AmpWaveZFeToFeVZ=0._dp 
AmpVertexZFeToFeVZ=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZFeToFeVZ(1,:,gt2) = AmpWaveZFeToFeVZ(1,:,gt2)+ZRUVe(gt2,gt1)*AmpWaveFeToFeVZ(1,:,gt1) 
AmpVertexZFeToFeVZ(1,:,gt2)= AmpVertexZFeToFeVZ(1,:,gt2)+ZRUVe(gt2,gt1)*AmpVertexFeToFeVZ(1,:,gt1) 
AmpWaveZFeToFeVZ(2,:,gt2) = AmpWaveZFeToFeVZ(2,:,gt2)+ZRUUec(gt2,gt1)*AmpWaveFeToFeVZ(2,:,gt1) 
AmpVertexZFeToFeVZ(2,:,gt2)= AmpVertexZFeToFeVZ(2,:,gt2)+ZRUUec(gt2,gt1)*AmpVertexFeToFeVZ(2,:,gt1) 
AmpWaveZFeToFeVZ(3,:,gt2) = AmpWaveZFeToFeVZ(3,:,gt2)+ZRUVe(gt2,gt1)*AmpWaveFeToFeVZ(3,:,gt1) 
AmpVertexZFeToFeVZ(3,:,gt2)= AmpVertexZFeToFeVZ(3,:,gt2)+ZRUVe(gt2,gt1)*AmpVertexFeToFeVZ(3,:,gt1) 
AmpWaveZFeToFeVZ(4,:,gt2) = AmpWaveZFeToFeVZ(4,:,gt2)+ZRUUec(gt2,gt1)*AmpWaveFeToFeVZ(4,:,gt1) 
AmpVertexZFeToFeVZ(4,:,gt2)= AmpVertexZFeToFeVZ(4,:,gt2)+ZRUUec(gt2,gt1)*AmpVertexFeToFeVZ(4,:,gt1) 
 End Do 
End Do 
AmpWaveFeToFeVZ=AmpWaveZFeToFeVZ 
AmpVertexFeToFeVZ= AmpVertexZFeToFeVZ
End if
If (ShiftIRdiv) Then 
AmpVertexFeToFeVZ = AmpVertexFeToFeVZ  +  AmpVertexIRosFeToFeVZ
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ Fe->Fe VZ -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumFeToFeVZ = AmpTreeFeToFeVZ 
 AmpSum2FeToFeVZ = AmpTreeFeToFeVZ + 2._dp*AmpWaveFeToFeVZ + 2._dp*AmpVertexFeToFeVZ  
Else 
 AmpSumFeToFeVZ = AmpTreeFeToFeVZ + AmpWaveFeToFeVZ + AmpVertexFeToFeVZ
 AmpSum2FeToFeVZ = AmpTreeFeToFeVZ + AmpWaveFeToFeVZ + AmpVertexFeToFeVZ 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumFeToFeVZ = AmpTreeFeToFeVZ
 AmpSum2FeToFeVZ = AmpTreeFeToFeVZ 
End if 
Do gt1=1,3
i4 = isave 
  Do gt2=1,3
If (((OSkinematics).and.(Abs(MFeOS(gt1)).gt.(Abs(MFeOS(gt2))+Abs(MVZOS)))).or.((.not.OSkinematics).and.(Abs(MFe(gt1)).gt.(Abs(MFe(gt2))+Abs(MVZ))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1, gt2 
  AmpSum2FeToFeVZ = AmpTreeFeToFeVZ
If (OSkinematics) Then 
  Call SquareAmp_FtoFV(MFeOS(gt1),MFeOS(gt2),MVZOS,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
Else  
  Call SquareAmp_FtoFV(MFe(gt1),MFe(gt2),MVZ,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqFeToFeVZ(gt1, gt2) 
  AmpSum2FeToFeVZ = 2._dp*AmpWaveFeToFeVZ
If (OSkinematics) Then 
  Call SquareAmp_FtoFV(MFeOS(gt1),MFeOS(gt2),MVZOS,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
Else  
  Call SquareAmp_FtoFV(MFe(gt1),MFe(gt2),MVZ,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqFeToFeVZ(gt1, gt2) 
  AmpSum2FeToFeVZ = 2._dp*AmpVertexFeToFeVZ
If (OSkinematics) Then 
  Call SquareAmp_FtoFV(MFeOS(gt1),MFeOS(gt2),MVZOS,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
Else  
  Call SquareAmp_FtoFV(MFe(gt1),MFe(gt2),MVZ,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqFeToFeVZ(gt1, gt2) 
  AmpSum2FeToFeVZ = AmpTreeFeToFeVZ + 2._dp*AmpWaveFeToFeVZ + 2._dp*AmpVertexFeToFeVZ
If (OSkinematics) Then 
  Call SquareAmp_FtoFV(MFeOS(gt1),MFeOS(gt2),MVZOS,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
Else  
  Call SquareAmp_FtoFV(MFe(gt1),MFe(gt2),MVZ,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqFeToFeVZ(gt1, gt2) 
 End if 
If (OSkinematics) Then 
  AmpSum2FeToFeVZ = AmpTreeFeToFeVZ
  Call SquareAmp_FtoFV(MFeOS(gt1),MFeOS(gt2),MVZOS,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
  AmpSqTreeFeToFeVZ(gt1, gt2) = AmpSqFeToFeVZ(gt1, gt2)  
  AmpSum2FeToFeVZ = + 2._dp*AmpWaveFeToFeVZ + 2._dp*AmpVertexFeToFeVZ
  Call SquareAmp_FtoFV(MFeOS(gt1),MFeOS(gt2),MVZOS,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
  AmpSqFeToFeVZ(gt1, gt2) = AmpSqFeToFeVZ(gt1, gt2) + AmpSqTreeFeToFeVZ(gt1, gt2)  
Else  
  AmpSum2FeToFeVZ = AmpTreeFeToFeVZ
  Call SquareAmp_FtoFV(MFe(gt1),MFe(gt2),MVZ,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
  AmpSqTreeFeToFeVZ(gt1, gt2) = AmpSqFeToFeVZ(gt1, gt2)  
  AmpSum2FeToFeVZ = + 2._dp*AmpWaveFeToFeVZ + 2._dp*AmpVertexFeToFeVZ
  Call SquareAmp_FtoFV(MFe(gt1),MFe(gt2),MVZ,AmpSumFeToFeVZ(:,gt1, gt2),AmpSum2FeToFeVZ(:,gt1, gt2),AmpSqFeToFeVZ(gt1, gt2)) 
  AmpSqFeToFeVZ(gt1, gt2) = AmpSqFeToFeVZ(gt1, gt2) + AmpSqTreeFeToFeVZ(gt1, gt2)  
End if  
Else  
  AmpSqFeToFeVZ(gt1, gt2) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 2._dp 
If (AmpSqFeToFeVZ(gt1, gt2).eq.0._dp) Then 
  gP1LFe(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1LFe(gt1,i4) = 1._dp*GammaTPS(MFeOS(gt1),MFeOS(gt2),MVZOS,helfactor*AmpSqFeToFeVZ(gt1, gt2))
Else 
  gP1LFe(gt1,i4) = 1._dp*GammaTPS(MFe(gt1),MFe(gt2),MVZ,helfactor*AmpSqFeToFeVZ(gt1, gt2))
End if 
If ((Abs(MRPFeToFeVZ(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGFeToFeVZ(gt1, gt2)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LFe(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPFeToFeVZ(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGFeToFeVZ(gt1, gt2)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPFeToFeVZ(gt1, gt2) + MRGFeToFeVZ(gt1, gt2)) 
  gP1LFe(gt1,i4) = gP1LFe(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPFeToFeVZ(gt1, gt2) + MRGFeToFeVZ(gt1, gt2))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LFe(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

  End do
If (gt1.eq.3) isave = i4 
End do
End If 
If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! Fv Hm
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_C2HDMS_FeToFvHm(cplcFeFvHmL,cplcFeFvHmR,MFe,MHm,MFe2,             & 
& MHm2,AmpTreeFeToFvHm)

  Else 
Call Amplitude_Tree_C2HDMS_FeToFvHm(ZcplcFeFvHmL,ZcplcFeFvHmR,MFe,MHm,MFe2,           & 
& MHm2,AmpTreeFeToFvHm)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_C2HDMS_FeToFvHm(MLambda,em,gs,cplcFeFvHmL,cplcFeFvHmR,MFeOS,          & 
& MHmOS,MRPFeToFvHm,MRGFeToFvHm)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_C2HDMS_FeToFvHm(MLambda,em,gs,ZcplcFeFvHmL,ZcplcFeFvHmR,              & 
& MFeOS,MHmOS,MRPFeToFvHm,MRGFeToFvHm)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_C2HDMS_FeToFvHm(MLambda,em,gs,cplcFeFvHmL,cplcFeFvHmR,MFe,            & 
& MHm,MRPFeToFvHm,MRGFeToFvHm)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_C2HDMS_FeToFvHm(MLambda,em,gs,ZcplcFeFvHmL,ZcplcFeFvHmR,              & 
& MFe,MHm,MRPFeToFvHm,MRGFeToFvHm)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_C2HDMS_FeToFvHm(cplcFeFvHmL,cplcFeFvHmR,ctcplcFeFvHmL,            & 
& ctcplcFeFvHmR,MFe,MFe2,MHm,MHm2,ZfEL,ZfER,ZfHm,ZfvL,AmpWaveFeToFvHm)



!Vertex Corrections 
Call Amplitude_VERTEX_C2HDMS_FeToFvHm(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,Mhh2,             & 
& MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,      & 
& cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,             & 
& cplcFvFvVZR,cplhhHmcHm,cplhhHmcVWm,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,      & 
& AmpVertexFeToFvHm)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFvHm(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,               & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,             & 
& cplcFvFvVZL,cplcFvFvVZR,cplhhHmcHm,cplhhHmcVWm,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,      & 
& cplHmcVWmVZ,AmpVertexIRdrFeToFvHm)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFvHm(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,MVZOS,          & 
& MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,          & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,ZcplcFeFvHmL,ZcplcFeFvHmR,cplcFeFvVWmL,            & 
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplhhHmcHm,cplhhHmcVWm,cplHmcHmVP,cplHmcVWmVP,    & 
& cplHmcHmVZ,cplHmcVWmVZ,AmpVertexIRosFeToFvHm)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFvHm(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,               & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,ZcplcFeFvHmL,ZcplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,           & 
& cplcFvFvVZL,cplcFvFvVZR,cplhhHmcHm,cplhhHmcVWm,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,      & 
& cplHmcVWmVZ,AmpVertexIRosFeToFvHm)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFvHm(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,MVZOS,          & 
& MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,          & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,              & 
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplhhHmcHm,cplhhHmcVWm,cplHmcHmVP,cplHmcVWmVP,    & 
& cplHmcHmVZ,cplHmcVWmVZ,AmpVertexIRosFeToFvHm)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFvHm(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,               & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,             & 
& cplcFvFvVZL,cplcFvFvVZR,cplhhHmcHm,cplhhHmcVWm,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,      & 
& cplHmcVWmVZ,AmpVertexIRosFeToFvHm)

 End if 
 End if 
AmpVertexFeToFvHm = AmpVertexFeToFvHm -  AmpVertexIRdrFeToFvHm! +  AmpVertexIRosFeToFvHm ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZFeToFvHm=0._dp 
AmpVertexZFeToFvHm=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZFeToFvHm(1,gt2,:,:) = AmpWaveZFeToFvHm(1,gt2,:,:)+ZRUUe(gt2,gt1)*AmpWaveFeToFvHm(1,gt1,:,:) 
AmpVertexZFeToFvHm(1,gt2,:,:)= AmpVertexZFeToFvHm(1,gt2,:,:) + ZRUUe(gt2,gt1)*AmpVertexFeToFvHm(1,gt1,:,:) 
AmpWaveZFeToFvHm(2,gt2,:,:) = AmpWaveZFeToFvHm(2,gt2,:,:)+ZRUVec(gt2,gt1)*AmpWaveFeToFvHm(2,gt1,:,:) 
AmpVertexZFeToFvHm(2,gt2,:,:)= AmpVertexZFeToFvHm(2,gt2,:,:) + ZRUVec(gt2,gt1)*AmpVertexFeToFvHm(2,gt1,:,:) 
 End Do 
End Do 
AmpWaveFeToFvHm=AmpWaveZFeToFvHm 
AmpVertexFeToFvHm= AmpVertexZFeToFvHm
! Final State 2 
AmpWaveZFeToFvHm=0._dp 
AmpVertexZFeToFvHm=0._dp 
Do gt1=1,2
  Do gt2=1,2
AmpWaveZFeToFvHm(:,:,:,gt2) = AmpWaveZFeToFvHm(:,:,:,gt2)+ZRUZP(gt2,gt1)*AmpWaveFeToFvHm(:,:,:,gt1) 
AmpVertexZFeToFvHm(:,:,:,gt2)= AmpVertexZFeToFvHm(:,:,:,gt2)+ZRUZP(gt2,gt1)*AmpVertexFeToFvHm(:,:,:,gt1) 
 End Do 
End Do 
AmpWaveFeToFvHm=AmpWaveZFeToFvHm 
AmpVertexFeToFvHm= AmpVertexZFeToFvHm
End if
If (ShiftIRdiv) Then 
AmpVertexFeToFvHm = AmpVertexFeToFvHm  +  AmpVertexIRosFeToFvHm
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ Fe->Fv Hm -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumFeToFvHm = AmpTreeFeToFvHm 
 AmpSum2FeToFvHm = AmpTreeFeToFvHm + 2._dp*AmpWaveFeToFvHm + 2._dp*AmpVertexFeToFvHm  
Else 
 AmpSumFeToFvHm = AmpTreeFeToFvHm + AmpWaveFeToFvHm + AmpVertexFeToFvHm
 AmpSum2FeToFvHm = AmpTreeFeToFvHm + AmpWaveFeToFvHm + AmpVertexFeToFvHm 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumFeToFvHm = AmpTreeFeToFvHm
 AmpSum2FeToFvHm = AmpTreeFeToFvHm 
End if 
Do gt1=1,3
i4 = isave 
  Do gt2=1,3
    Do gt3=2,2
If (((OSkinematics).and.(Abs(MFeOS(gt1)).gt.(Abs(0.)+Abs(MHmOS(gt3))))).or.((.not.OSkinematics).and.(Abs(MFe(gt1)).gt.(Abs(0._dp)+Abs(MHm(gt3)))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1, gt2, gt3 
  AmpSum2FeToFvHm = AmpTreeFeToFvHm
If (OSkinematics) Then 
  Call SquareAmp_FtoFS(MFeOS(gt1),0._dp,MHmOS(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_FtoFS(MFe(gt1),0._dp,MHm(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqFeToFvHm(gt1, gt2, gt3) 
  AmpSum2FeToFvHm = 2._dp*AmpWaveFeToFvHm
If (OSkinematics) Then 
  Call SquareAmp_FtoFS(MFeOS(gt1),0._dp,MHmOS(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_FtoFS(MFe(gt1),0._dp,MHm(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqFeToFvHm(gt1, gt2, gt3) 
  AmpSum2FeToFvHm = 2._dp*AmpVertexFeToFvHm
If (OSkinematics) Then 
  Call SquareAmp_FtoFS(MFeOS(gt1),0._dp,MHmOS(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_FtoFS(MFe(gt1),0._dp,MHm(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqFeToFvHm(gt1, gt2, gt3) 
  AmpSum2FeToFvHm = AmpTreeFeToFvHm + 2._dp*AmpWaveFeToFvHm + 2._dp*AmpVertexFeToFvHm
If (OSkinematics) Then 
  Call SquareAmp_FtoFS(MFeOS(gt1),0._dp,MHmOS(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
Else  
  Call SquareAmp_FtoFS(MFe(gt1),0._dp,MHm(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqFeToFvHm(gt1, gt2, gt3) 
 End if 
If (OSkinematics) Then 
  AmpSum2FeToFvHm = AmpTreeFeToFvHm
  Call SquareAmp_FtoFS(MFeOS(gt1),0._dp,MHmOS(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
  AmpSqTreeFeToFvHm(gt1, gt2, gt3) = AmpSqFeToFvHm(gt1, gt2, gt3)  
  AmpSum2FeToFvHm = + 2._dp*AmpWaveFeToFvHm + 2._dp*AmpVertexFeToFvHm
  Call SquareAmp_FtoFS(MFeOS(gt1),0._dp,MHmOS(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
  AmpSqFeToFvHm(gt1, gt2, gt3) = AmpSqFeToFvHm(gt1, gt2, gt3) + AmpSqTreeFeToFvHm(gt1, gt2, gt3)  
Else  
  AmpSum2FeToFvHm = AmpTreeFeToFvHm
  Call SquareAmp_FtoFS(MFe(gt1),0._dp,MHm(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
  AmpSqTreeFeToFvHm(gt1, gt2, gt3) = AmpSqFeToFvHm(gt1, gt2, gt3)  
  AmpSum2FeToFvHm = + 2._dp*AmpWaveFeToFvHm + 2._dp*AmpVertexFeToFvHm
  Call SquareAmp_FtoFS(MFe(gt1),0._dp,MHm(gt3),AmpSumFeToFvHm(:,gt1, gt2, gt3),AmpSum2FeToFvHm(:,gt1, gt2, gt3),AmpSqFeToFvHm(gt1, gt2, gt3)) 
  AmpSqFeToFvHm(gt1, gt2, gt3) = AmpSqFeToFvHm(gt1, gt2, gt3) + AmpSqTreeFeToFvHm(gt1, gt2, gt3)  
End if  
Else  
  AmpSqFeToFvHm(gt1, gt2, gt3) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 2._dp 
If (AmpSqFeToFvHm(gt1, gt2, gt3).eq.0._dp) Then 
  gP1LFe(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1LFe(gt1,i4) = 1._dp*GammaTPS(MFeOS(gt1),0._dp,MHmOS(gt3),helfactor*AmpSqFeToFvHm(gt1, gt2, gt3))
Else 
  gP1LFe(gt1,i4) = 1._dp*GammaTPS(MFe(gt1),0._dp,MHm(gt3),helfactor*AmpSqFeToFvHm(gt1, gt2, gt3))
End if 
If ((Abs(MRPFeToFvHm(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGFeToFvHm(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LFe(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPFeToFvHm(gt1, gt2, gt3)).gt.1.0E-20_dp).or.(Abs(MRGFeToFvHm(gt1, gt2, gt3)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPFeToFvHm(gt1, gt2, gt3) + MRGFeToFvHm(gt1, gt2, gt3)) 
  gP1LFe(gt1,i4) = gP1LFe(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPFeToFvHm(gt1, gt2, gt3) + MRGFeToFvHm(gt1, gt2, gt3))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LFe(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

    End do
  End do
If (gt1.eq.3) isave = i4 
End do
End If 
If (.not.CalcLoopDecay_LoopInducedOnly) Then 
!---------------- 
! Fv VWm
!---------------- 

!Tree Level 
  If (.not.ExternalZfactors) Then 
Call Amplitude_Tree_C2HDMS_FeToFvVWm(cplcFeFvVWmL,cplcFeFvVWmR,MFe,MVWm,              & 
& MFe2,MVWm2,AmpTreeFeToFvVWm)

  Else 
Call Amplitude_Tree_C2HDMS_FeToFvVWm(ZcplcFeFvVWmL,ZcplcFeFvVWmR,MFe,MVWm,            & 
& MFe2,MVWm2,AmpTreeFeToFvVWm)

  End if 


!Real Corrections 
If (OSkinematics) Then 
  If (.not.ExternalZfactors) Then 
 ! OS and no Z-factors 
Call Gamma_Real_C2HDMS_FeToFvVWm(MLambda,em,gs,cplcFeFvVWmL,cplcFeFvVWmR,             & 
& MFeOS,MVWmOS,MRPFeToFvVWm,MRGFeToFvVWm)

  Else 
 ! OS and Z-factors 
Call Gamma_Real_C2HDMS_FeToFvVWm(MLambda,em,gs,ZcplcFeFvVWmL,ZcplcFeFvVWmR,           & 
& MFeOS,MVWmOS,MRPFeToFvVWm,MRGFeToFvVWm)

  End if 
Else 
 ! DR and no Z-factors 
  If (.not.ExternalZfactors) Then 
Call Gamma_Real_C2HDMS_FeToFvVWm(MLambda,em,gs,cplcFeFvVWmL,cplcFeFvVWmR,             & 
& MFe,MVWm,MRPFeToFvVWm,MRGFeToFvVWm)

  Else 
 ! DR and Z-factors 
Call Gamma_Real_C2HDMS_FeToFvVWm(MLambda,em,gs,ZcplcFeFvVWmL,ZcplcFeFvVWmR,           & 
& MFe,MVWm,MRPFeToFvVWm,MRGFeToFvVWm)

  End if 
End if 


!Self-energy Corrections 
Call Amplitude_WAVE_C2HDMS_FeToFvVWm(cplcFeFvVWmL,cplcFeFvVWmR,ctcplcFeFvVWmL,        & 
& ctcplcFeFvVWmR,MFe,MFe2,MVWm,MVWm2,ZfEL,ZfER,ZfvL,ZfVWm,AmpWaveFeToFvVWm)



!Vertex Corrections 
Call Amplitude_VERTEX_C2HDMS_FeToFvVWm(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,Mhh2,            & 
& MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,      & 
& cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,             & 
& cplcFvFvVZR,cplhhcHmVWm,cplhhcVWmVWm,cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,             & 
& cplcVWmVWmVZ,AmpVertexFeToFvVWm)

If (ShiftIRdiv) Then 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFvVWm(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,              & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,             & 
& cplcFvFvVZL,cplcFvFvVZR,cplhhcHmVWm,cplhhcVWmVWm,cplcHmVPVWm,cplcVWmVPVWm,             & 
& cplcHmVWmVZ,cplcVWmVWmVZ,AmpVertexIRdrFeToFvVWm)

 If (ExternalZfactors) Then 
  If (OSkinematics) Then 
 ! OS and Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFvVWm(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,               & 
& MVZOS,MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,    & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,GosZcplcFeFvHmL,GosZcplcFeFvHmR,ZcplcFeFvVWmL,     & 
& ZcplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplhhcHmVWm,cplhhcVWmVWm,GosZcplcHmVPVWm,        & 
& cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,AmpVertexIRosFeToFvVWm)

   Else 
 ! DR and Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFvVWm(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,              & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,GZcplcFeFvHmL,GZcplcFeFvHmR,ZcplcFeFvVWmL,ZcplcFeFvVWmR,       & 
& cplcFvFvVZL,cplcFvFvVZR,cplhhcHmVWm,cplhhcVWmVWm,GZcplcHmVPVWm,cplcVWmVPVWm,           & 
& cplcHmVWmVZ,cplcVWmVWmVZ,AmpVertexIRosFeToFvVWm)

 End if 
 Else 
  If (OSkinematics) Then 
 ! OS and no Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFvVWm(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,               & 
& MVZOS,MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,    & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,GcplcFeFvHmL,GcplcFeFvHmR,cplcFeFvVWmL,            & 
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplhhcHmVWm,cplhhcVWmVWm,GcplcHmVPVWm,            & 
& cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,AmpVertexIRosFeToFvVWm)

   Else 
 ! DR and no Z-factors 
Call Amplitude_IR_VERTEX_C2HDMS_FeToFvVWm(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,              & 
& Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,             & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,             & 
& cplcFvFvVZL,cplcFvFvVZR,cplhhcHmVWm,cplhhcVWmVWm,cplcHmVPVWm,cplcVWmVPVWm,             & 
& cplcHmVWmVZ,cplcVWmVWmVZ,AmpVertexIRosFeToFvVWm)

 End if 
 End if 
AmpVertexFeToFvVWm = AmpVertexFeToFvVWm -  AmpVertexIRdrFeToFvVWm! +  AmpVertexIRosFeToFvVWm ! Shift added later
End if 


 ! Add Z-factors to have external fields on-shell 
 If (ExternalZfactors) Then 
! Decaying particle 
AmpWaveZFeToFvVWm=0._dp 
AmpVertexZFeToFvVWm=0._dp 
Do gt1=1,3
  Do gt2=1,3
AmpWaveZFeToFvVWm(1,gt2,:) = AmpWaveZFeToFvVWm(1,gt2,:)+ZRUVec(gt2,gt1)*AmpWaveFeToFvVWm(1,gt1,:) 
AmpVertexZFeToFvVWm(1,gt2,:)= AmpVertexZFeToFvVWm(1,gt2,:) + ZRUVec(gt2,gt1)*AmpVertexFeToFvVWm(1,gt1,:) 
AmpWaveZFeToFvVWm(2,gt2,:) = AmpWaveZFeToFvVWm(2,gt2,:)+ZRUUe(gt2,gt1)*AmpWaveFeToFvVWm(2,gt1,:) 
AmpVertexZFeToFvVWm(2,gt2,:)= AmpVertexZFeToFvVWm(2,gt2,:) + ZRUUe(gt2,gt1)*AmpVertexFeToFvVWm(2,gt1,:) 
AmpWaveZFeToFvVWm(3,gt2,:) = AmpWaveZFeToFvVWm(3,gt2,:)+ZRUVec(gt2,gt1)*AmpWaveFeToFvVWm(3,gt1,:) 
AmpVertexZFeToFvVWm(3,gt2,:)= AmpVertexZFeToFvVWm(3,gt2,:) + ZRUVec(gt2,gt1)*AmpVertexFeToFvVWm(3,gt1,:) 
AmpWaveZFeToFvVWm(4,gt2,:) = AmpWaveZFeToFvVWm(4,gt2,:)+ZRUUe(gt2,gt1)*AmpWaveFeToFvVWm(4,gt1,:) 
AmpVertexZFeToFvVWm(4,gt2,:)= AmpVertexZFeToFvVWm(4,gt2,:) + ZRUUe(gt2,gt1)*AmpVertexFeToFvVWm(4,gt1,:) 
 End Do 
End Do 
AmpWaveFeToFvVWm=AmpWaveZFeToFvVWm 
AmpVertexFeToFvVWm= AmpVertexZFeToFvVWm
End if
If (ShiftIRdiv) Then 
AmpVertexFeToFvVWm = AmpVertexFeToFvVWm  +  AmpVertexIRosFeToFvVWm
End if
 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ Fe->Fv VWm -----------------------" 
End if 
If (.not.SquareFullAmplitudeDecays) Then 
 AmpSumFeToFvVWm = AmpTreeFeToFvVWm 
 AmpSum2FeToFvVWm = AmpTreeFeToFvVWm + 2._dp*AmpWaveFeToFvVWm + 2._dp*AmpVertexFeToFvVWm  
Else 
 AmpSumFeToFvVWm = AmpTreeFeToFvVWm + AmpWaveFeToFvVWm + AmpVertexFeToFvVWm
 AmpSum2FeToFvVWm = AmpTreeFeToFvVWm + AmpWaveFeToFvVWm + AmpVertexFeToFvVWm 
End If 
If (OnlyTreeLevelContributions) Then 
 AmpSumFeToFvVWm = AmpTreeFeToFvVWm
 AmpSum2FeToFvVWm = AmpTreeFeToFvVWm 
End if 
Do gt1=1,3
i4 = isave 
  Do gt2=1,3
If (((OSkinematics).and.(Abs(MFeOS(gt1)).gt.(Abs(0.)+Abs(MVWmOS)))).or.((.not.OSkinematics).and.(Abs(MFe(gt1)).gt.(Abs(0._dp)+Abs(MVWm))))) Then 
 If (DebugLoopDecays) Then 
  Write(*,*) gt1, gt2 
  AmpSum2FeToFvVWm = AmpTreeFeToFvVWm
If (OSkinematics) Then 
  Call SquareAmp_FtoFV(MFeOS(gt1),0._dp,MVWmOS,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
Else  
  Call SquareAmp_FtoFV(MFe(gt1),0._dp,MVWm,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
End if  
  Write(*,*) "TREE x TREE: ",AmpSqFeToFvVWm(gt1, gt2) 
  AmpSum2FeToFvVWm = 2._dp*AmpWaveFeToFvVWm
If (OSkinematics) Then 
  Call SquareAmp_FtoFV(MFeOS(gt1),0._dp,MVWmOS,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
Else  
  Call SquareAmp_FtoFV(MFe(gt1),0._dp,MVWm,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
End if  
  Write(*,*) "TREE x WAVE: ",AmpSqFeToFvVWm(gt1, gt2) 
  AmpSum2FeToFvVWm = 2._dp*AmpVertexFeToFvVWm
If (OSkinematics) Then 
  Call SquareAmp_FtoFV(MFeOS(gt1),0._dp,MVWmOS,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
Else  
  Call SquareAmp_FtoFV(MFe(gt1),0._dp,MVWm,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
End if  
  Write(*,*) "TREE x VERTEX: ",AmpSqFeToFvVWm(gt1, gt2) 
  AmpSum2FeToFvVWm = AmpTreeFeToFvVWm + 2._dp*AmpWaveFeToFvVWm + 2._dp*AmpVertexFeToFvVWm
If (OSkinematics) Then 
  Call SquareAmp_FtoFV(MFeOS(gt1),0._dp,MVWmOS,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
Else  
  Call SquareAmp_FtoFV(MFe(gt1),0._dp,MVWm,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
End if  
  Write(*,*) "TREE x (TREE+WAVE+VERTEX): ",AmpSqFeToFvVWm(gt1, gt2) 
 End if 
If (OSkinematics) Then 
  AmpSum2FeToFvVWm = AmpTreeFeToFvVWm
  Call SquareAmp_FtoFV(MFeOS(gt1),0._dp,MVWmOS,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
  AmpSqTreeFeToFvVWm(gt1, gt2) = AmpSqFeToFvVWm(gt1, gt2)  
  AmpSum2FeToFvVWm = + 2._dp*AmpWaveFeToFvVWm + 2._dp*AmpVertexFeToFvVWm
  Call SquareAmp_FtoFV(MFeOS(gt1),0._dp,MVWmOS,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
  AmpSqFeToFvVWm(gt1, gt2) = AmpSqFeToFvVWm(gt1, gt2) + AmpSqTreeFeToFvVWm(gt1, gt2)  
Else  
  AmpSum2FeToFvVWm = AmpTreeFeToFvVWm
  Call SquareAmp_FtoFV(MFe(gt1),0._dp,MVWm,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
  AmpSqTreeFeToFvVWm(gt1, gt2) = AmpSqFeToFvVWm(gt1, gt2)  
  AmpSum2FeToFvVWm = + 2._dp*AmpWaveFeToFvVWm + 2._dp*AmpVertexFeToFvVWm
  Call SquareAmp_FtoFV(MFe(gt1),0._dp,MVWm,AmpSumFeToFvVWm(:,gt1, gt2),AmpSum2FeToFvVWm(:,gt1, gt2),AmpSqFeToFvVWm(gt1, gt2)) 
  AmpSqFeToFvVWm(gt1, gt2) = AmpSqFeToFvVWm(gt1, gt2) + AmpSqTreeFeToFvVWm(gt1, gt2)  
End if  
Else  
  AmpSqFeToFvVWm(gt1, gt2) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 2._dp 
If (AmpSqFeToFvVWm(gt1, gt2).eq.0._dp) Then 
  gP1LFe(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1LFe(gt1,i4) = 1._dp*GammaTPS(MFeOS(gt1),0._dp,MVWmOS,helfactor*AmpSqFeToFvVWm(gt1, gt2))
Else 
  gP1LFe(gt1,i4) = 1._dp*GammaTPS(MFe(gt1),0._dp,MVWm,helfactor*AmpSqFeToFvVWm(gt1, gt2))
End if 
If ((Abs(MRPFeToFvVWm(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGFeToFvVWm(gt1, gt2)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LFe(gt1,i4) 
 ! Adding real corrections 
If ((Abs(MRPFeToFvVWm(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGFeToFvVWm(gt1, gt2)).gt.1.0E-20_dp)) Then 
 If (.not.OnlyTreeLevelContributions) Then 
   If (DebugLoopDecays) Write(*,*) "real", phasespacefactor*0.5_dp*helfactor*(MRPFeToFvVWm(gt1, gt2) + MRGFeToFvVWm(gt1, gt2)) 
  gP1LFe(gt1,i4) = gP1LFe(gt1,i4) + phasespacefactor*0.5_dp*helfactor*(MRPFeToFvVWm(gt1, gt2) + MRGFeToFvVWm(gt1, gt2))
   If (DebugLoopDecays) Write(*,*) "sum",  gP1LFe(gt1,i4) 
  End if 
End if 
End if 
i4=i4+1

  End do
If (gt1.eq.3) isave = i4 
End do
End If 
!---------------- 
! Fe VP
!---------------- 

If (LoopInducedDecaysOS) Then 


!Self-energy Corrections 
 If (ExternalZfactors) Then 
Call Amplitude_WAVE_C2HDMS_FeToFeVP(ZcplcFeFeVPL,ZcplcFeFeVPR,ZcplcFeFeVZL,           & 
& ZcplcFeFeVZR,ctcplcFeFeVPL,ctcplcFeFeVPR,ctcplcFeFeVZL,ctcplcFeFeVZR,MFeOS,            & 
& MFe2OS,MVP,MVP2,ZfEL,ZfER,ZfVP,ZfVZVP,AmpWaveFeToFeVP)

 Else 
Call Amplitude_WAVE_C2HDMS_FeToFeVP(cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,              & 
& cplcFeFeVZR,ctcplcFeFeVPL,ctcplcFeFeVPR,ctcplcFeFeVZL,ctcplcFeFeVZR,MFeOS,             & 
& MFe2OS,MVP,MVP2,ZfEL,ZfER,ZfVP,ZfVZVP,AmpWaveFeToFeVP)

 End if 


!Vertex Corrections 
 If (ExternalZfactors) Then 
Call Amplitude_VERTEX_C2HDMS_FeToFeVP(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,MVZOS,             & 
& MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,ZcplcFeFehhL,ZcplcFeFehhR,ZcplcFeFeVPL,       & 
& ZcplcFeFeVPR,ZcplcFeFeVZL,ZcplcFeFeVZR,ZcplcFvFecHmL,ZcplcFvFecHmR,ZcplcFvFecVWmL,     & 
& ZcplcFvFecVWmR,ZcplcFeFvHmL,ZcplcFeFvHmR,ZcplcFeFvVWmL,ZcplcFeFvVWmR,ZcplHmcHmVP,      & 
& ZcplHmcVWmVP,ZcplcHmVPVWm,ZcplcVWmVPVWm,AmpVertexFeToFeVP)

 Else 
Call Amplitude_VERTEX_C2HDMS_FeToFeVP(MFeOS,MhhOS,MHmOS,MVP,MVWmOS,MVZOS,             & 
& MFe2OS,Mhh2OS,MHm2OS,MVP2,MVWm2OS,MVZ2OS,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,          & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,           & 
& cplcFvFecVWmR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplHmcHmVP,            & 
& cplHmcVWmVP,cplcHmVPVWm,cplcVWmVPVWm,AmpVertexFeToFeVP)

 End if 
Else 


!Self-energy Corrections 
Call Amplitude_WAVE_C2HDMS_FeToFeVP(cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,              & 
& cplcFeFeVZR,ctcplcFeFeVPL,ctcplcFeFeVPR,ctcplcFeFeVZL,ctcplcFeFeVZR,MFe,               & 
& MFe2,MVP,MVP2,ZfEL,ZfER,ZfVP,ZfVZVP,AmpWaveFeToFeVP)



!Vertex Corrections 
Call Amplitude_VERTEX_C2HDMS_FeToFeVP(MFe,Mhh,MHm,MVP,MVWm,MVZ,MFe2,Mhh2,             & 
& MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,      & 
& cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFeFvHmL,         & 
& cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplHmcHmVP,cplHmcVWmVP,cplcHmVPVWm,              & 
& cplcVWmVPVWm,AmpVertexFeToFeVP)

End if 


 !Square the amplitude 
If (DebugLoopDecays) Then 
Write(*,*) "------------------ Fe->Fe VP -----------------------" 
End if 
If (OnlyTreeLevelContributions) Then 
 AmpSumFeToFeVP = 0._dp 
 AmpSum2FeToFeVP = 0._dp  
Else 
 AmpSumFeToFeVP = AmpVertexFeToFeVP + AmpWaveFeToFeVP
 AmpSum2FeToFeVP = AmpVertexFeToFeVP + AmpWaveFeToFeVP 
End If 
Do gt1=1,3
i4 = isave 
  Do gt2=1,3
If (((OSkinematics).and.(Abs(MFeOS(gt1)).gt.(Abs(MFeOS(gt2))+Abs(0.)))).or.((.not.OSkinematics).and.(Abs(MFe(gt1)).gt.(Abs(MFe(gt2))+Abs(MVP))))) Then 
If (OSkinematics) Then 
  Call SquareAmp_FtoFV(MFeOS(gt1),MFeOS(gt2),0._dp,AmpSumFeToFeVP(:,gt1, gt2),AmpSum2FeToFeVP(:,gt1, gt2),AmpSqFeToFeVP(gt1, gt2)) 
Else  
  Call SquareAmp_FtoFV(MFe(gt1),MFe(gt2),MVP,AmpSumFeToFeVP(:,gt1, gt2),AmpSum2FeToFeVP(:,gt1, gt2),AmpSqFeToFeVP(gt1, gt2)) 
End if  
Else  
  AmpSqFeToFeVP(gt1, gt2) = 0._dp 
End if  

! Calculate Partial widths 
helfactor = 2._dp 
If (AmpSqFeToFeVP(gt1, gt2).eq.0._dp) Then 
  gP1LFe(gt1,i4) = 0._dp 
Else 
If (OSkinematics) Then 
  gP1LFe(gt1,i4) = 1._dp*GammaTPS(MFeOS(gt1),MFeOS(gt2),0._dp,helfactor*AmpSqFeToFeVP(gt1, gt2))
Else 
  gP1LFe(gt1,i4) = 1._dp*GammaTPS(MFe(gt1),MFe(gt2),MVP,helfactor*AmpSqFeToFeVP(gt1, gt2))
End if 
If ((Abs(MRPFeToFeVP(gt1, gt2)).gt.1.0E-20_dp).or.(Abs(MRGFeToFeVP(gt1, gt2)).gt.1.0E-20_dp)) Then 
  phasespacefactor = 1._dp 
End if 
 If (DebugLoopDecays) Write(*,*) "virtual", gP1LFe(gt1,i4) 
End if 
i4=i4+1

  End do
If (gt1.eq.3) isave = i4 
End do
End Subroutine OneLoopDecay_Fe

End Module Wrapper_OneLoopDecay_Fe_C2HDMS
