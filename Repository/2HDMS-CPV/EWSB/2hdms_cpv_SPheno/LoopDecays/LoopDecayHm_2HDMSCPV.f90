! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.1 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 13:09 on 9.6.2025   
! ----------------------------------------------------------------------  
 
 
Module OneLoopDecay_Hm_2HDMSCPV
Use Control 
Use Settings 
Use LoopFunctions 
Use AddLoopFunctions 
Use Model_Data_2HDMSCPV 
Use DecayFFS 
Use DecayFFV 
Use DecaySSS 
Use DecaySFF 
Use DecaySSV 
Use DecaySVV 
Use Bremsstrahlung 

Contains 

Subroutine Amplitude_Tree_2HDMSCPV_HmTocFuFd(cplcFuFdcHmL,cplcFuFdcHmR,               & 
& MFd,MFu,MHm,MFd2,MFu2,MHm2,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),MHm(2),MFd2(3),MFu2(3),MHm2(2)

Complex(dp), Intent(in) :: cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2)

Complex(dp) :: Amp(2,2,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 

Do gt1=1,2
  Do gt2=1,3
    Do gt3=1,3
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MFd(gt3) 
! Tree-Level Vertex 
coupT1L = cplcFuFdcHmL(gt2,gt3,gt1)
coupT1R = cplcFuFdcHmR(gt2,gt3,gt1)
Call TreeAmp_StoFF(Mex1,Mex2,Mex3,coupT1L,coupT1R,AmpC) 
! Colour and symmetry factor 
Amp(:,gt1, gt2, gt3) = AmpC 
    End Do
  End Do
End Do
End Subroutine Amplitude_Tree_2HDMSCPV_HmTocFuFd


Subroutine Gamma_Real_2HDMSCPV_HmTocFuFd(MLambda,em,gs,cplcFuFdcHmL,cplcFuFdcHmR,     & 
& MFd,MFu,MHm,GammarealPhoton,GammarealGluon)

Implicit None

Complex(dp), Intent(in) :: cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2)

Real(dp), Intent(in) :: MFd(3),MFu(3),MHm(2)

Real(dp), Intent(in) :: MLambda, em, gs 

Real(dp), Intent(out) :: GammarealPhoton(2,3,3), GammarealGluon(2,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 

Real(dp) :: Mloop1, Mloop2, Mloop3 
Complex(dp) :: CoupL, CoupR 
 
Do i1=2,2
  Do i2=1,3
    Do i3=1,3
CoupL = cplcFuFdcHmL(i2,i3,i1)
CoupR = cplcFuFdcHmR(i2,i3,i1)
Mex1 = MHm(i1)
Mex2 = MFu(i2)
Mex3 = MFd(i3)
If (Abs(Mex1).gt.(Abs(Mex2)+Abs(Mex3))) Then 
 Call hardradiationSFF(Mex1,Mex2,Mex3,MLambda,em,3._dp,2._dp,1._dp,4._dp/3._dp,2._dp/3._dp,1._dp/3._dp,CoupL,CoupR,Gammarealphoton(i1,i2,i3),kont)
 Call hardradiationSFF(Mex1,Mex2,Mex3,MLambda,gs,0._dp,0._dp,0._dp,4._dp,-4._dp,4._dp,CoupL,CoupR,Gammarealgluon(i1,i2,i3),kont)
Else 
  GammarealGluon(i1,i2,i3) = 0._dp 
  GammarealPhoton(i1,i2,i3) = 0._dp 

End if 
    End Do
  End Do
End Do
End Subroutine Gamma_Real_2HDMSCPV_HmTocFuFd


Subroutine Amplitude_WAVE_2HDMSCPV_HmTocFuFd(cplcFuFdcHmL,cplcFuFdcHmR,               & 
& ctcplcFuFdcHmL,ctcplcFuFdcHmR,MFd,MFd2,MFu,MFu2,MHm,MHm2,ZfDL,ZfDR,ZfHm,               & 
& ZfUL,ZfUR,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFd2(3),MFu(3),MFu2(3),MHm(2),MHm2(2)

Complex(dp), Intent(in) :: cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2)

Complex(dp), Intent(in) :: ctcplcFuFdcHmL(3,3,2),ctcplcFuFdcHmR(3,3,2)

Complex(dp), Intent(in) :: ZfDL(3,3),ZfDR(3,3),ZfHm(2,2),ZfUL(3,3),ZfUR(3,3)

Complex(dp), Intent(out) :: Amp(2,2,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,2
  Do gt2=1,3
    Do gt3=1,3
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MFd(gt3) 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1L = ctcplcFuFdcHmL(gt2,gt3,gt1) 
ZcoupT1R = ctcplcFuFdcHmR(gt2,gt3,gt1) 
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,2
ZcoupT1L = ZcoupT1L + 0.5_dp*Conjg(ZfHm(i1,gt1))*cplcFuFdcHmL(gt2,gt3,i1)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfHm(i1,gt1))*cplcFuFdcHmR(gt2,gt3,i1)
End Do


! External Field 2 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfUR(i1,gt2)*cplcFuFdcHmL(i1,gt3,gt1)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfUL(i1,gt2))*cplcFuFdcHmR(i1,gt3,gt1)
End Do


! External Field 3 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfDL(i1,gt3)*cplcFuFdcHmL(gt2,i1,gt1)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfDR(i1,gt3))*cplcFuFdcHmR(gt2,i1,gt1)
End Do


! Getting the amplitude 
Call TreeAmp_StoFF(Mex1,Mex2,Mex3,ZcoupT1L,ZcoupT1R,AmpC) 
Amp(:,gt1, gt2, gt3) = AmpC 
    End Do
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_HmTocFuFd


Subroutine Amplitude_VERTEX_2HDMSCPV_HmTocFuFd(MFd,MFu,Mhh,MHm,MVG,MVP,               & 
& MVWm,MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,               & 
& cplhhHmcHm,cplhhcHmVWm,cplHmcHmVP,cplHmcHmVZ,cplcHmVPVWm,cplcHmVWmVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),& 
& cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFuFuhhL(3,3,6),          & 
& cplcFuFuhhR(3,3,6),cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),& 
& cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplhhHmcHm(6,2,2),cplhhcHmVWm(6,2),cplHmcHmVP(2,2),  & 
& cplHmcHmVZ(2,2),cplcHmVPVWm(2),cplcHmVWmVZ(2)

Complex(dp), Intent(out) :: Amp(2,2,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,3
    Do gt3=1,3
Amp(:,gt1, gt2, gt3) = 0._dp 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MFd(gt3) 


! {hh, conj[Hm], Fu}
Do i1=1,6
  Do i2=1,2
    Do i3=1,3
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
ML3 = MFu(i3) 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2L = cplcFuFuhhL(gt2,i3,i1)
coup2R = cplcFuFuhhR(gt2,i3,i1)
coup3L = cplcFuFdcHmL(i3,gt3,i2)
coup3R = cplcFuFdcHmR(i3,gt3,i2)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_SSF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {hh, conj[VWm], Fu}
Do i1=1,6
    Do i3=1,3
ML1 = Mhh(i1) 
ML2 = MVWm 
ML3 = MFu(i3) 
coup1 = -cplhhcHmVWm(i1,gt1)
coup2L = cplcFuFuhhL(gt2,i3,i1)
coup2R = cplcFuFuhhR(gt2,i3,i1)
coup3L = cplcFuFdcVWmL(i3,gt3)
coup3R = cplcFuFdcVWmR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_SVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, hh, Fd}
Do i1=1,2
  Do i2=1,6
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = MFd(i3) 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2L = cplcFuFdcHmL(gt2,i3,i1)
coup2R = cplcFuFdcHmR(gt2,i3,i1)
coup3L = cplcFdFdhhL(i3,gt3,i2)
coup3R = cplcFdFdhhR(i3,gt3,i2)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_SSF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Hm, VP, Fd}
Do i1=1,2
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MFd(i3) 
coup1 = -cplHmcHmVP(i1,gt1)
coup2L = cplcFuFdcHmL(gt2,i3,i1)
coup2R = cplcFuFdcHmR(gt2,i3,i1)
coup3L = cplcFdFdVPL(i3,gt3)
coup3R = cplcFdFdVPR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_SVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, VZ, Fd}
Do i1=1,2
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = MVZ 
ML3 = MFd(i3) 
coup1 = -cplHmcHmVZ(i1,gt1)
coup2L = cplcFuFdcHmL(gt2,i3,i1)
coup2R = cplcFuFdcHmR(gt2,i3,i1)
coup3L = cplcFdFdVZL(i3,gt3)
coup3R = cplcFdFdVZR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_SVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {VP, conj[Hm], Fu}
  Do i2=1,2
    Do i3=1,3
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MFu(i3) 
coup1 = -cplHmcHmVP(i2,gt1)
coup2L = cplcFuFuVPL(gt2,i3)
coup2R = cplcFuFuVPR(gt2,i3)
coup3L = cplcFuFdcHmL(i3,gt3,i2)
coup3R = cplcFuFdcHmR(i3,gt3,i2)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VSF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VP, conj[VWm], Fu}
    Do i3=1,3
ML1 = MVP 
ML2 = MVWm 
ML3 = MFu(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2L = cplcFuFuVPL(gt2,i3)
coup2R = cplcFuFuVPR(gt2,i3)
coup3L = cplcFuFdcVWmL(i3,gt3)
coup3R = cplcFuFdcVWmR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, hh, Fd}
  Do i2=1,6
    Do i3=1,3
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = MFd(i3) 
coup1 = -cplhhcHmVWm(i2,gt1)
coup2L = cplcFuFdcVWmL(gt2,i3)
coup2R = cplcFuFdcVWmR(gt2,i3)
coup3L = cplcFdFdhhL(i3,gt3,i2)
coup3R = cplcFdFdhhR(i3,gt3,i2)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VSF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VWm, VP, Fd}
    Do i3=1,3
ML1 = MVWm 
ML2 = MVP 
ML3 = MFd(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2L = cplcFuFdcVWmL(gt2,i3)
coup2R = cplcFuFdcVWmR(gt2,i3)
coup3L = cplcFdFdVPL(i3,gt3)
coup3R = cplcFdFdVPR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, VZ, Fd}
    Do i3=1,3
ML1 = MVWm 
ML2 = MVZ 
ML3 = MFd(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2L = cplcFuFdcVWmL(gt2,i3)
coup2R = cplcFuFdcVWmR(gt2,i3)
coup3L = cplcFdFdVZL(i3,gt3)
coup3R = cplcFdFdVZR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {VZ, conj[Hm], Fu}
  Do i2=1,2
    Do i3=1,3
ML1 = MVZ 
ML2 = MHm(i2) 
ML3 = MFu(i3) 
coup1 = -cplHmcHmVZ(i2,gt1)
coup2L = cplcFuFuVZL(gt2,i3)
coup2R = cplcFuFuVZR(gt2,i3)
coup3L = cplcFuFdcHmL(i3,gt3,i2)
coup3R = cplcFuFdcHmR(i3,gt3,i2)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VSF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, conj[VWm], Fu}
    Do i3=1,3
ML1 = MVZ 
ML2 = MVWm 
ML3 = MFu(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2L = cplcFuFuVZL(gt2,i3)
coup2R = cplcFuFuVZR(gt2,i3)
coup3L = cplcFuFdcVWmL(i3,gt3)
coup3R = cplcFuFdcVWmR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {bar[Fu], bar[Fd], hh}
Do i1=1,3
  Do i2=1,3
    Do i3=1,6
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = Mhh(i3) 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFuFuhhL(gt2,i1,i3)
coup2R = cplcFuFuhhR(gt2,i1,i3)
coup3L = cplcFdFdhhL(i2,gt3,i3)
coup3R = cplcFdFdhhR(i2,gt3,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_FFS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {bar[Fu], bar[Fd], VG}
Do i1=1,3
  Do i2=1,3
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = MVG 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFuFuVGL(gt2,i1)
coup2R = cplcFuFuVGR(gt2,i1)
coup3L = cplcFdFdVGL(i2,gt3)
coup3R = cplcFdFdVGR(i2,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_FFV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(4._dp/3._dp)*AmpC 
  End Do
End Do


! {bar[Fu], bar[Fd], VP}
Do i1=1,3
  Do i2=1,3
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = MVP 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFuFuVPL(gt2,i1)
coup2R = cplcFuFuVPR(gt2,i1)
coup3L = cplcFdFdVPL(i2,gt3)
coup3R = cplcFdFdVPR(i2,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_FFV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {bar[Fu], bar[Fd], VZ}
Do i1=1,3
  Do i2=1,3
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = MVZ 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFuFuVZL(gt2,i1)
coup2R = cplcFuFuVZR(gt2,i1)
coup3L = cplcFdFdVZL(i2,gt3)
coup3R = cplcFdFdVZR(i2,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_FFV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do
    End Do
  End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_HmTocFuFd


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmTocFuFd(MFd,MFu,Mhh,MHm,MVG,MVP,            & 
& MVWm,MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,               & 
& cplhhHmcHm,cplhhcHmVWm,cplHmcHmVP,cplHmcHmVZ,cplcHmVPVWm,cplcHmVWmVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),& 
& cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFuFuhhL(3,3,6),          & 
& cplcFuFuhhR(3,3,6),cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),& 
& cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplhhHmcHm(6,2,2),cplhhcHmVWm(6,2),cplHmcHmVP(2,2),  & 
& cplHmcHmVZ(2,2),cplcHmVPVWm(2),cplcHmVWmVZ(2)

Complex(dp), Intent(out) :: Amp(2,2,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,3
    Do gt3=1,3
Amp(:,gt1, gt2, gt3) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MFd(gt3) 


! {Hm, VP, Fd}
Do i1=1,2
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MFd(i3) 
coup1 = -cplHmcHmVP(i1,gt1)
coup2L = cplcFuFdcHmL(gt2,i3,i1)
coup2R = cplcFuFdcHmR(gt2,i3,i1)
coup3L = cplcFdFdVPL(i3,gt3)
coup3R = cplcFdFdVPR(i3,gt3)
Call Amp_VERTEX_StoFF_Topology1_SVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {VP, conj[Hm], Fu}
  Do i2=1,2
    Do i3=1,3
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MFu(i3) 
coup1 = -cplHmcHmVP(i2,gt1)
coup2L = cplcFuFuVPL(gt2,i3)
coup2R = cplcFuFuVPR(gt2,i3)
coup3L = cplcFuFdcHmL(i3,gt3,i2)
coup3R = cplcFuFdcHmR(i3,gt3,i2)
Call Amp_VERTEX_StoFF_Topology1_VSF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VP, conj[VWm], Fu}
    Do i3=1,3
ML1 = MVP 
ML2 = MVWm 
ML3 = MFu(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2L = cplcFuFuVPL(gt2,i3)
coup2R = cplcFuFuVPR(gt2,i3)
coup3L = cplcFuFdcVWmL(i3,gt3)
coup3R = cplcFuFdcVWmR(i3,gt3)
Call Amp_VERTEX_StoFF_Topology1_VVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, VP, Fd}
    Do i3=1,3
ML1 = MVWm 
ML2 = MVP 
ML3 = MFd(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2L = cplcFuFdcVWmL(gt2,i3)
coup2R = cplcFuFdcVWmR(gt2,i3)
coup3L = cplcFdFdVPL(i3,gt3)
coup3R = cplcFdFdVPR(i3,gt3)
Call Amp_VERTEX_StoFF_Topology1_VVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {bar[Fu], bar[Fd], VG}
Do i1=1,3
  Do i2=1,3
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = MVG 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFuFuVGL(gt2,i1)
coup2R = cplcFuFuVGR(gt2,i1)
coup3L = cplcFdFdVGL(i2,gt3)
coup3R = cplcFdFdVGR(i2,gt3)
Call Amp_VERTEX_StoFF_Topology1_FFV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(4._dp/3._dp)*AmpC 
  End Do
End Do


! {bar[Fu], bar[Fd], VP}
Do i1=1,3
  Do i2=1,3
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = MVP 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFuFuVPL(gt2,i1)
coup2R = cplcFuFuVPR(gt2,i1)
coup3L = cplcFdFdVPL(i2,gt3)
coup3R = cplcFdFdVPR(i2,gt3)
Call Amp_VERTEX_StoFF_Topology1_FFV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do
    End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmTocFuFd


Subroutine Amplitude_Tree_2HDMSCPV_HmTocFvFe(cplcFvFecHmL,cplcFvFecHmR,               & 
& MFe,MHm,MFe2,MHm2,Amp)

Implicit None

Real(dp), Intent(in) :: MFe(3),MHm(2),MFe2(3),MHm2(2)

Complex(dp), Intent(in) :: cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2)

Complex(dp) :: Amp(2,2,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 

Do gt1=1,2
  Do gt2=1,3
    Do gt3=1,3
! External masses 
Mex1 = MHm(gt1) 
Mex2 = 0._dp 
Mex3 = MFe(gt3) 
! Tree-Level Vertex 
coupT1L = cplcFvFecHmL(gt2,gt3,gt1)
coupT1R = cplcFvFecHmR(gt2,gt3,gt1)
Call TreeAmp_StoFF(Mex1,Mex2,Mex3,coupT1L,coupT1R,AmpC) 
! Colour and symmetry factor 
Amp(:,gt1, gt2, gt3) = AmpC 
    End Do
  End Do
End Do
End Subroutine Amplitude_Tree_2HDMSCPV_HmTocFvFe


Subroutine Gamma_Real_2HDMSCPV_HmTocFvFe(MLambda,em,gs,cplcFvFecHmL,cplcFvFecHmR,     & 
& MFe,MHm,GammarealPhoton,GammarealGluon)

Implicit None

Complex(dp), Intent(in) :: cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2)

Real(dp), Intent(in) :: MFe(3),MHm(2)

Real(dp), Intent(in) :: MLambda, em, gs 

Real(dp), Intent(out) :: GammarealPhoton(2,3,3), GammarealGluon(2,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 

Real(dp) :: Mloop1, Mloop2, Mloop3 
Complex(dp) :: CoupL, CoupR 
 
Do i1=2,2
  Do i2=1,3
    Do i3=1,3
CoupL = cplcFvFecHmL(i2,i3,i1)
CoupR = cplcFvFecHmR(i2,i3,i1)
Mex1 = MHm(i1)
Mex2 = 0._dp
Mex3 = MFe(i3)
If (Abs(Mex1).gt.(Abs(Mex2)+Abs(Mex3))) Then 
 Call hardradiationSFF(Mex1,Mex2,Mex3,MLambda,em,1._dp,0._dp,1._dp,0._dp,0._dp,1._dp,CoupL,CoupR,Gammarealphoton(i1,i2,i3),kont)
  GammarealGluon(i1,i2,i3) = 0._dp 
Else 
  GammarealGluon(i1,i2,i3) = 0._dp 
  GammarealPhoton(i1,i2,i3) = 0._dp 

End if 
    End Do
  End Do
End Do
End Subroutine Gamma_Real_2HDMSCPV_HmTocFvFe


Subroutine Amplitude_WAVE_2HDMSCPV_HmTocFvFe(cplcFvFecHmL,cplcFvFecHmR,               & 
& ctcplcFvFecHmL,ctcplcFvFecHmR,MFe,MFe2,MHm,MHm2,ZfEL,ZfER,ZfHm,ZfvL,Amp)

Implicit None

Real(dp), Intent(in) :: MFe(3),MFe2(3),MHm(2),MHm2(2)

Complex(dp), Intent(in) :: cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2)

Complex(dp), Intent(in) :: ctcplcFvFecHmL(3,3,2),ctcplcFvFecHmR(3,3,2)

Complex(dp), Intent(in) :: ZfEL(3,3),ZfER(3,3),ZfHm(2,2),ZfvL(3,3)

Complex(dp), Intent(out) :: Amp(2,2,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,2
  Do gt2=1,3
    Do gt3=1,3
! External masses 
Mex1 = MHm(gt1) 
Mex2 = 0._dp 
Mex3 = MFe(gt3) 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1L = ctcplcFvFecHmL(gt2,gt3,gt1) 
ZcoupT1R = ctcplcFvFecHmR(gt2,gt3,gt1) 
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,2
ZcoupT1L = ZcoupT1L + 0.5_dp*Conjg(ZfHm(i1,gt1))*cplcFvFecHmL(gt2,gt3,i1)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfHm(i1,gt1))*cplcFvFecHmR(gt2,gt3,i1)
End Do


! External Field 2 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*0*cplcFvFecHmL(i1,gt3,gt1)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfvL(i1,gt2))*cplcFvFecHmR(i1,gt3,gt1)
End Do


! External Field 3 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfEL(i1,gt3)*cplcFvFecHmL(gt2,i1,gt1)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfER(i1,gt3))*cplcFvFecHmR(gt2,i1,gt1)
End Do


! Getting the amplitude 
Call TreeAmp_StoFF(Mex1,Mex2,Mex3,ZcoupT1L,ZcoupT1R,AmpC) 
Amp(:,gt1, gt2, gt3) = AmpC 
    End Do
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_HmTocFvFe


Subroutine Amplitude_VERTEX_2HDMSCPV_HmTocFvFe(MFe,Mhh,MHm,MVP,MVWm,MVZ,              & 
& MFe2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,        & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFvFvVZL,cplcFvFvVZR,cplhhHmcHm,cplhhcHmVWm,cplHmcHmVP,cplHmcHmVZ,cplcHmVPVWm,      & 
& cplcHmVWmVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFe(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFe2(3),Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),              & 
& cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),             & 
& cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),               & 
& cplhhHmcHm(6,2,2),cplhhcHmVWm(6,2),cplHmcHmVP(2,2),cplHmcHmVZ(2,2),cplcHmVPVWm(2),     & 
& cplcHmVWmVZ(2)

Complex(dp), Intent(out) :: Amp(2,2,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,3
    Do gt3=1,3
Amp(:,gt1, gt2, gt3) = 0._dp 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = 0._dp 
Mex3 = MFe(gt3) 


! {Hm, hh, Fe}
Do i1=1,2
  Do i2=1,6
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = MFe(i3) 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2L = cplcFvFecHmL(gt2,i3,i1)
coup2R = cplcFvFecHmR(gt2,i3,i1)
coup3L = cplcFeFehhL(i3,gt3,i2)
coup3R = cplcFeFehhR(i3,gt3,i2)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_SSF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Hm, VP, Fe}
Do i1=1,2
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MFe(i3) 
coup1 = -cplHmcHmVP(i1,gt1)
coup2L = cplcFvFecHmL(gt2,i3,i1)
coup2R = cplcFvFecHmR(gt2,i3,i1)
coup3L = cplcFeFeVPL(i3,gt3)
coup3R = cplcFeFeVPR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_SVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, VZ, Fe}
Do i1=1,2
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = MVZ 
ML3 = MFe(i3) 
coup1 = -cplHmcHmVZ(i1,gt1)
coup2L = cplcFvFecHmL(gt2,i3,i1)
coup2R = cplcFvFecHmR(gt2,i3,i1)
coup3L = cplcFeFeVZL(i3,gt3)
coup3R = cplcFeFeVZR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_SVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {VWm, hh, Fe}
  Do i2=1,6
    Do i3=1,3
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = MFe(i3) 
coup1 = -cplhhcHmVWm(i2,gt1)
coup2L = cplcFvFecVWmL(gt2,i3)
coup2R = cplcFvFecVWmR(gt2,i3)
coup3L = cplcFeFehhL(i3,gt3,i2)
coup3R = cplcFeFehhR(i3,gt3,i2)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VSF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VWm, VP, Fe}
    Do i3=1,3
ML1 = MVWm 
ML2 = MVP 
ML3 = MFe(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2L = cplcFvFecVWmL(gt2,i3)
coup2R = cplcFvFecVWmR(gt2,i3)
coup3L = cplcFeFeVPL(i3,gt3)
coup3R = cplcFeFeVPR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, VZ, Fe}
    Do i3=1,3
ML1 = MVWm 
ML2 = MVZ 
ML3 = MFe(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2L = cplcFvFecVWmL(gt2,i3)
coup2R = cplcFvFecVWmR(gt2,i3)
coup3L = cplcFeFeVZL(i3,gt3)
coup3R = cplcFeFeVZR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {VZ, conj[Hm], Fv}
  Do i2=1,2
    Do i3=1,3
ML1 = MVZ 
ML2 = MHm(i2) 
ML3 = 0._dp 
coup1 = -cplHmcHmVZ(i2,gt1)
coup2L = cplcFvFvVZL(gt2,i3)
coup2R = cplcFvFvVZR(gt2,i3)
coup3L = cplcFvFecHmL(i3,gt3,i2)
coup3R = cplcFvFecHmR(i3,gt3,i2)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VSF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, conj[VWm], Fv}
    Do i3=1,3
ML1 = MVZ 
ML2 = MVWm 
ML3 = 0._dp 
coup1 = cplcHmVWmVZ(gt1)
coup2L = cplcFvFvVZL(gt2,i3)
coup2R = cplcFvFvVZR(gt2,i3)
coup3L = cplcFvFecVWmL(i3,gt3)
coup3R = cplcFvFecVWmR(i3,gt3)
If ((Abs(coup1))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_VVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {bar[Fv], bar[Fe], VZ}
Do i1=1,3
  Do i2=1,3
ML1 = 0._dp 
ML2 = MFe(i2) 
ML3 = MVZ 
coup1L = cplcFvFecHmL(i1,i2,gt1)
coup1R = cplcFvFecHmR(i1,i2,gt1)
coup2L = cplcFvFvVZL(gt2,i1)
coup2R = cplcFvFvVZR(gt2,i1)
coup3L = cplcFeFeVZL(i2,gt3)
coup3R = cplcFeFeVZR(i2,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoFF_Topology1_FFV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do
    End Do
  End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_HmTocFvFe


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmTocFvFe(MFe,Mhh,MHm,MVP,MVWm,               & 
& MVZ,MFe2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,    & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,         & 
& cplcFvFvVZL,cplcFvFvVZR,cplhhHmcHm,cplhhcHmVWm,cplHmcHmVP,cplHmcHmVZ,cplcHmVPVWm,      & 
& cplcHmVWmVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFe(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFe2(3),Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),              & 
& cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),             & 
& cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),               & 
& cplhhHmcHm(6,2,2),cplhhcHmVWm(6,2),cplHmcHmVP(2,2),cplHmcHmVZ(2,2),cplcHmVPVWm(2),     & 
& cplcHmVWmVZ(2)

Complex(dp), Intent(out) :: Amp(2,2,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,3
    Do gt3=1,3
Amp(:,gt1, gt2, gt3) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = 0._dp 
Mex3 = MFe(gt3) 


! {Hm, VP, Fe}
Do i1=1,2
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MFe(i3) 
coup1 = -cplHmcHmVP(i1,gt1)
coup2L = cplcFvFecHmL(gt2,i3,i1)
coup2R = cplcFvFecHmR(gt2,i3,i1)
coup3L = cplcFeFeVPL(i3,gt3)
coup3R = cplcFeFeVPR(i3,gt3)
Call Amp_VERTEX_StoFF_Topology1_SVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {VWm, VP, Fe}
    Do i3=1,3
ML1 = MVWm 
ML2 = MVP 
ML3 = MFe(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2L = cplcFvFecVWmL(gt2,i3)
coup2R = cplcFvFecVWmR(gt2,i3)
coup3L = cplcFeFeVPL(i3,gt3)
coup3R = cplcFeFeVPR(i3,gt3)
Call Amp_VERTEX_StoFF_Topology1_VVF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
    End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmTocFvFe


Subroutine Amplitude_Tree_2HDMSCPV_HmToHmhh(cplhhHmcHm,Mhh,MHm,Mhh2,MHm2,Amp)

Implicit None

Real(dp), Intent(in) :: Mhh(6),MHm(2),Mhh2(6),MHm2(2)

Complex(dp), Intent(in) :: cplhhHmcHm(6,2,2)

Complex(dp) :: Amp(2,2,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 

Do gt1=1,2
  Do gt2=1,2
    Do gt3=1,6
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MHm(gt2) 
Mex3 = Mhh(gt3) 
! Tree-Level Vertex 
coupT1 = cplhhHmcHm(gt3,gt2,gt1)
Call TreeAmp_StoSS(Mex1,Mex2,Mex3,coupT1,AmpC) 
! Colour and symmetry factor 
Amp(gt1, gt2, gt3) = AmpC 
    End Do
  End Do
End Do
End Subroutine Amplitude_Tree_2HDMSCPV_HmToHmhh


Subroutine Gamma_Real_2HDMSCPV_HmToHmhh(MLambda,em,gs,cplhhHmcHm,Mhh,MHm,             & 
& GammarealPhoton,GammarealGluon)

Implicit None

Complex(dp), Intent(in) :: cplhhHmcHm(6,2,2)

Real(dp), Intent(in) :: Mhh(6),MHm(2)

Real(dp), Intent(in) :: MLambda, em, gs 

Real(dp), Intent(out) :: GammarealPhoton(2,2,6), GammarealGluon(2,2,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 

Real(dp) :: Mloop1, Mloop2, Mloop3 
Complex(dp) :: Coup 
 
Do i1=2,2
  Do i2=2,2
    Do i3=2,6
Coup = cplhhHmcHm(i3,i2,i1)
Mex1 = MHm(i1)
Mex2 = MHm(i2)
Mex3 = Mhh(i3)
If (Abs(Mex1).gt.(Abs(Mex2)+Abs(Mex3))) Then 
 Call hardradiationSSS(Mex1,Mex2,Mex3,MLambda,em,1._dp,1._dp,0._dp,1._dp,0._dp,0._dp,Coup,Gammarealphoton(i1,i2,i3),kont)
  GammarealGluon(i1,i2,i3) = 0._dp 
Else 
  GammarealGluon(i1,i2,i3) = 0._dp 
  GammarealPhoton(i1,i2,i3) = 0._dp 

End if 
    End Do
  End Do
End Do
End Subroutine Gamma_Real_2HDMSCPV_HmToHmhh


Subroutine Amplitude_WAVE_2HDMSCPV_HmToHmhh(cplhhHmcHm,ctcplhhHmcHm,Mhh,              & 
& Mhh2,MHm,MHm2,Zfhh,ZfHm,Amp)

Implicit None

Real(dp), Intent(in) :: Mhh(6),Mhh2(6),MHm(2),MHm2(2)

Complex(dp), Intent(in) :: cplhhHmcHm(6,2,2)

Complex(dp), Intent(in) :: ctcplhhHmcHm(6,2,2)

Complex(dp), Intent(in) :: Zfhh(6,6),ZfHm(2,2)

Complex(dp), Intent(out) :: Amp(2,2,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,2
  Do gt2=1,2
    Do gt3=1,6
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MHm(gt2) 
Mex3 = Mhh(gt3) 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1 = ctcplhhHmcHm(gt3,gt2,gt1) 
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,2
ZcoupT1 = ZcoupT1 + 0.5_dp*Conjg(ZfHm(i1,gt1))*cplhhHmcHm(gt3,gt2,i1)
End Do


! External Field 2 
Do i1=1,2
ZcoupT1 = ZcoupT1 + 0.5_dp*ZfHm(i1,gt2)*cplhhHmcHm(gt3,i1,gt1)
End Do


! External Field 3 
Do i1=1,6
ZcoupT1 = ZcoupT1 + 0.5_dp*Zfhh(i1,gt3)*cplhhHmcHm(i1,gt2,gt1)
End Do


! Getting the amplitude 
Call TreeAmp_StoSS(Mex1,Mex2,Mex3,ZcoupT1,AmpC) 
Amp(gt1, gt2, gt3) = AmpC 
    End Do
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_HmToHmhh


Subroutine Amplitude_VERTEX_2HDMSCPV_HmToHmhh(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,           & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,     & 
& cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,cplcFuFuhhL,            & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,cplcgWmgWmhh,              & 
& cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,cplcgWmgZHm,cplcgWpCgZcHm,         & 
& cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,         & 
& cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhHmcHm1,   & 
& cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmHmcHmcHm1,            & 
& cplHmcHmcVWmVWm1,cplHmcHmVZVZ1,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),        & 
& cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),         & 
& cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),           & 
& cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),cplcgWmgWmhh(6),cplcgZgWmcHm(2),cplcgWpCgWpChh(6),& 
& cplcgZgWpCHm(2),cplcgZgZhh(6),cplcgWmgZHm(2),cplcgWpCgZcHm(2),cplhhhhhh(6,6,6),        & 
& cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),cplhhcHmVWm(6,2),cplhhcVWmVWm(6),    & 
& cplhhVZVZ(6),cplHmcHmVP(2,2),cplHmcVWmVP(2),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),            & 
& cplcHmVPVWm(2),cplcHmVWmVZ(2),cplhhhhHmcHm1(6,6,2,2),cplhhHmcVWmVP1(6,2),              & 
& cplhhHmcVWmVZ1(6,2),cplhhcHmVPVWm1(6,2),cplhhcHmVWmVZ1(6,2),cplHmHmcHmcHm1(2,2,2,2),   & 
& cplHmcHmcVWmVWm1(2,2),cplHmcHmVZVZ1(2,2)

Complex(dp), Intent(out) :: Amp(2,2,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,2
    Do gt3=1,6
Amp(gt1, gt2, gt3) = 0._dp 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MHm(gt2) 
Mex3 = Mhh(gt3) 


! {Fd, Fu, Fu}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFd(i1) 
ML2 = MFu(i2) 
ML3 = MFu(i3) 
coup1L = cplcFuFdcHmL(i2,i1,gt1)
coup1R = cplcFuFdcHmR(i2,i1,gt1)
coup2L = cplcFdFuHmL(i1,i3,gt2)
coup2R = cplcFdFuHmR(i1,i3,gt2)
coup3L = cplcFuFuhhL(i3,i2,gt3)
coup3R = cplcFuFuhhR(i3,i2,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {gWm, gZ, gZ}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVZ 
coup1 = cplcgZgWmcHm(gt1)
coup2 = cplcgWmgZHm(gt2)
coup3 = cplcgZgZhh(gt3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 


! {gZ, gWmC, gWmC}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcgWpCgZcHm(gt1)
coup2 = cplcgZgWpCHm(gt2)
coup3 = cplcgWpCgWpChh(gt3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 


! {hh, conj[Hm], conj[Hm]}
Do i1=1,6
  Do i2=1,2
    Do i3=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = cplhhHmcHm(i1,gt2,i3)
coup3 = cplhhHmcHm(gt3,i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_SSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {hh, conj[VWm], conj[Hm]}
Do i1=1,6
    Do i3=1,2
ML1 = Mhh(i1) 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplhhcHmVWm(i1,gt1)
coup2 = cplhhHmcHm(i1,gt2,i3)
coup3 = cplhhHmcVWm(gt3,i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {hh, conj[Hm], conj[VWm]}
Do i1=1,6
  Do i2=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = cplhhHmcVWm(i1,gt2)
coup3 = cplhhcHmVWm(gt3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_SSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {hh, conj[VWm], conj[VWm]}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplhhcHmVWm(i1,gt1)
coup2 = cplhhHmcVWm(i1,gt2)
coup3 = cplhhcVWmVWm(gt3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
End Do


! {Hm, hh, hh}
Do i1=1,2
  Do i2=1,6
    Do i3=1,6
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = Mhh(i3) 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2 = cplhhHmcHm(i3,gt2,i1)
coup3 = cplhhhhhh(gt3,i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_SSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Hm, VZ, hh}
Do i1=1,2
    Do i3=1,6
ML1 = MHm(i1) 
ML2 = MVZ 
ML3 = Mhh(i3) 
coup1 = cplHmcHmVZ(i1,gt1)
coup2 = cplhhHmcHm(i3,gt2,i1)
coup3 = cplhhhhVZ(gt3,i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, hh, VZ}
Do i1=1,2
  Do i2=1,6
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = MVZ 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2 = -cplHmcHmVZ(gt2,i1)
coup3 = cplhhhhVZ(gt3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_SSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Hm, VZ, VZ}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
ML3 = MVZ 
coup1 = cplHmcHmVZ(i1,gt1)
coup2 = -cplHmcHmVZ(gt2,i1)
coup3 = cplhhVZVZ(gt3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
End Do


! {VP, conj[Hm], conj[Hm]}
  Do i2=1,2
    Do i3=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = -cplHmcHmVP(gt2,i3)
coup3 = cplhhHmcHm(gt3,i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VP, conj[VWm], conj[Hm]}
    Do i3=1,2
ML1 = MVP 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = -cplHmcHmVP(gt2,i3)
coup3 = cplhhHmcVWm(gt3,i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {VP, conj[Hm], conj[VWm]}
  Do i2=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = cplhhcHmVWm(gt3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do


! {VP, conj[VWm], conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = cplhhcVWmVWm(gt3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 


! {VWm, hh, hh}
  Do i2=1,6
    Do i3=1,6
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = Mhh(i3) 
coup1 = cplhhcHmVWm(i2,gt1)
coup2 = cplhhHmcVWm(i3,gt2)
coup3 = cplhhhhhh(gt3,i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VWm, VZ, hh}
    Do i3=1,6
ML1 = MVWm 
ML2 = MVZ 
ML3 = Mhh(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplhhHmcVWm(i3,gt2)
coup3 = cplhhhhVZ(gt3,i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, hh, VZ}
  Do i2=1,6
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = MVZ 
coup1 = cplhhcHmVWm(i2,gt1)
coup2 = cplHmcVWmVZ(gt2)
coup3 = cplhhhhVZ(gt3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do


! {VWm, VZ, VZ}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVZ 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplHmcVWmVZ(gt2)
coup3 = cplhhVZVZ(gt3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 


! {VZ, conj[Hm], conj[Hm]}
  Do i2=1,2
    Do i3=1,2
ML1 = MVZ 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplHmcHmVZ(i2,gt1)
coup2 = -cplHmcHmVZ(gt2,i3)
coup3 = cplhhHmcHm(gt3,i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, conj[VWm], conj[Hm]}
    Do i3=1,2
ML1 = MVZ 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2 = -cplHmcHmVZ(gt2,i3)
coup3 = cplhhHmcVWm(gt3,i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {VZ, conj[Hm], conj[VWm]}
  Do i2=1,2
ML1 = MVZ 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplHmcHmVZ(i2,gt1)
coup2 = cplHmcVWmVZ(gt2)
coup3 = cplhhcHmVWm(gt3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do


! {VZ, conj[VWm], conj[VWm]}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplHmcVWmVZ(gt2)
coup3 = cplhhcVWmVWm(gt3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 


! {bar[Fu], bar[Fd], bar[Fd]}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFdFuHmL(i3,i1,gt2)
coup2R = cplcFdFuHmR(i3,i1,gt2)
coup3L = cplcFdFdhhL(i2,i3,gt3)
coup3R = cplcFdFdhhR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {bar[Fv], bar[Fe], bar[Fe]}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = 0._dp 
ML2 = MFe(i2) 
ML3 = MFe(i3) 
coup1L = cplcFvFecHmL(i1,i2,gt1)
coup1R = cplcFvFecHmR(i1,i2,gt1)
coup2L = cplcFeFvHmL(i3,i1,gt2)
coup2R = cplcFeFvHmR(i3,i1,gt2)
coup3L = cplcFeFehhL(i2,i3,gt3)
coup3R = cplcFeFehhR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {bar[gWmC], bar[gZ], bar[gZ]}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVZ 
coup1 = cplcgWpCgZcHm(gt1)
coup2 = cplcgZgWpCHm(gt2)
coup3 = cplcgZgZhh(gt3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 


! {bar[gZ], bar[gWm], bar[gWm]}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcgZgWmcHm(gt1)
coup2 = cplcgWmgZHm(gt2)
coup3 = cplcgWmgWmhh(gt3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 


! {hh, conj[Hm]}
Do i1=1,6
  Do i2=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = cplhhhhHmcHm1(gt3,i1,gt2,i2)
Call Amp_VERTEX_StoSS_Topology2_SS(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {VP, conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplhhHmcVWmVP1(gt3,gt2)
Call Amp_VERTEX_StoSS_Topology2_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 


! {VWm, VZ}
ML1 = MVWm 
ML2 = MVZ 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplhhHmcVWmVZ1(gt3,gt2)
Call Amp_VERTEX_StoSS_Topology2_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 


! {hh, conj[Hm]}
Do i1=1,6
  Do i2=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
coup1 = cplhhhhHmcHm1(gt3,i1,i2,gt1)
coup2 = cplhhHmcHm(i1,gt2,i2)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology3_SS(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 

  End Do
End Do


! {VP, conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
coup1 = cplhhcHmVPVWm1(gt3,gt1)
coup2 = cplHmcVWmVP(gt2)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology3_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 



! {VWm, VZ}
ML1 = MVWm 
ML2 = MVZ 
coup1 = cplhhcHmVWmVZ1(gt3,gt1)
coup2 = cplHmcVWmVZ(gt2)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology3_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 



! {hh, hh}
Do i1=1,6
  Do i2=1,6
ML1 = Mhh(i1) 
ML2 = Mhh(i2) 
coup1 = cplhhhhHmcHm1(i1,i2,gt2,gt1)
coup2 = cplhhhhhh(gt3,i1,i2)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology4_SS(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1._dp/2._dp)*AmpC 

  End Do
End Do


! {Hm, Hm}
Do i1=1,2
  Do i2=1,2
ML1 = MHm(i1) 
ML2 = MHm(i2) 
coup1 = cplHmHmcHmcHm1(gt2,i1,gt1,i2)
coup2 = cplhhHmcHm(gt3,i2,i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology4_SS(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 

  End Do
End Do


! {VWm, VWm}
ML1 = MVWm 
ML2 = MVWm 
coup1 = cplHmcHmcVWmVWm1(gt2,gt1)
coup2 = cplhhcVWmVWm(gt3)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology4_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 



! {VZ, VZ}
ML1 = MVZ 
ML2 = MVZ 
coup1 = cplHmcHmVZVZ1(gt2,gt1)
coup2 = cplhhVZVZ(gt3)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSS_Topology4_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1._dp/2._dp)*AmpC 

    End Do
  End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_HmToHmhh


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmToHmhh(MFd,MFe,MFu,Mhh,MHm,MVP,             & 
& MVWm,MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,               & 
& cplcgWmgWmhh,cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,cplcgWmgZHm,          & 
& cplcgWpCgZcHm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,     & 
& cplhhVZVZ,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,       & 
& cplhhhhHmcHm1,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,             & 
& cplHmHmcHmcHm1,cplHmcHmcVWmVWm1,cplHmcHmVZVZ1,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),        & 
& cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),         & 
& cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),           & 
& cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),cplcgWmgWmhh(6),cplcgZgWmcHm(2),cplcgWpCgWpChh(6),& 
& cplcgZgWpCHm(2),cplcgZgZhh(6),cplcgWmgZHm(2),cplcgWpCgZcHm(2),cplhhhhhh(6,6,6),        & 
& cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),cplhhcHmVWm(6,2),cplhhcVWmVWm(6),    & 
& cplhhVZVZ(6),cplHmcHmVP(2,2),cplHmcVWmVP(2),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),            & 
& cplcHmVPVWm(2),cplcHmVWmVZ(2),cplhhhhHmcHm1(6,6,2,2),cplhhHmcVWmVP1(6,2),              & 
& cplhhHmcVWmVZ1(6,2),cplhhcHmVPVWm1(6,2),cplhhcHmVWmVZ1(6,2),cplHmHmcHmcHm1(2,2,2,2),   & 
& cplHmcHmcVWmVWm1(2,2),cplHmcHmVZVZ1(2,2)

Complex(dp), Intent(out) :: Amp(2,2,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,2
    Do gt3=1,6
Amp(gt1, gt2, gt3) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MHm(gt2) 
Mex3 = Mhh(gt3) 


! {VP, conj[Hm], conj[Hm]}
  Do i2=1,2
    Do i3=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = -cplHmcHmVP(gt2,i3)
coup3 = cplhhHmcHm(gt3,i3,i2)
Call Amp_VERTEX_StoSS_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VP, conj[VWm], conj[Hm]}
    Do i3=1,2
ML1 = MVP 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = -cplHmcHmVP(gt2,i3)
coup3 = cplhhHmcVWm(gt3,i3)
Call Amp_VERTEX_StoSS_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do


! {VP, conj[Hm], conj[VWm]}
  Do i2=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = cplhhcHmVWm(gt3,i2)
Call Amp_VERTEX_StoSS_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do


! {VP, conj[VWm], conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = cplhhcVWmVWm(gt3)
Call Amp_VERTEX_StoSS_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 


! {VP, conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplhhHmcVWmVP1(gt3,gt2)
Call Amp_VERTEX_StoSS_Topology2_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 


! {VP, conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
coup1 = cplhhcHmVPVWm1(gt3,gt1)
coup2 = cplHmcVWmVP(gt2)
Call Amp_VERTEX_StoSS_Topology3_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(gt1, gt2, gt3) = Amp(gt1, gt2, gt3) + oo16pi2*(1)*AmpC 

    End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmToHmhh


Subroutine Amplitude_Tree_2HDMSCPV_HmTohhVWm(cplhhcHmVWm,Mhh,MHm,MVWm,Mhh2,           & 
& MHm2,MVWm2,Amp)

Implicit None

Real(dp), Intent(in) :: Mhh(6),MHm(2),MVWm,Mhh2(6),MHm2(2),MVWm2

Complex(dp), Intent(in) :: cplhhcHmVWm(6,2)

Complex(dp) :: Amp(2,2,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 

Do gt1=1,2
  Do gt2=1,6
! External masses 
Mex1 = MHm(gt1) 
Mex2 = Mhh(gt2) 
Mex3 = MVWm 
! Tree-Level Vertex 
coupT1 = -cplhhcHmVWm(gt2,gt1)
Call TreeAmp_StoSV(Mex1,Mex2,Mex3,coupT1,AmpC) 
! Colour and symmetry factor 
Amp(:,gt1, gt2) = AmpC 
  End Do
End Do
End Subroutine Amplitude_Tree_2HDMSCPV_HmTohhVWm


Subroutine Gamma_Real_2HDMSCPV_HmTohhVWm(MLambda,em,gs,cplhhcHmVWm,Mhh,               & 
& MHm,MVWm,GammarealPhoton,GammarealGluon)

Implicit None

Complex(dp), Intent(in) :: cplhhcHmVWm(6,2)

Real(dp), Intent(in) :: Mhh(6),MHm(2),MVWm

Real(dp), Intent(in) :: MLambda, em, gs 

Real(dp), Intent(out) :: GammarealPhoton(2,6), GammarealGluon(2,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 

Real(dp) :: Mloop1, Mloop2, Mloop3 
Complex(dp) :: Coup 
 
Do i1=2,2
  Do i2=2,6
Coup = cplhhcHmVWm(i2,i1)
Mex1 = MHm(i1)
Mex2 = Mhh(i2)
Mex3 = MVWm
If (Abs(Mex1).gt.(Abs(Mex2)+Abs(Mex3))) Then 
 Call hardradiationSSV(Mex1,Mex2,Mex3,MLambda,em,-1._dp,0._dp,-1._dp,Coup,Gammarealphoton(i1,i2),kont)
 GammarealGluon(i1,i2) = 0._dp 
Else 
  GammarealGluon(i1,i2) = 0._dp 
  GammarealPhoton(i1,i2) = 0._dp 

End if 
  End Do
End Do
End Subroutine Gamma_Real_2HDMSCPV_HmTohhVWm


Subroutine Amplitude_WAVE_2HDMSCPV_HmTohhVWm(cplhhcHmVWm,ctcplhhcHmVWm,               & 
& Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,Zfhh,ZfHm,ZfVWm,Amp)

Implicit None

Real(dp), Intent(in) :: Mhh(6),Mhh2(6),MHm(2),MHm2(2),MVWm,MVWm2

Complex(dp), Intent(in) :: cplhhcHmVWm(6,2)

Complex(dp), Intent(in) :: ctcplhhcHmVWm(6,2)

Complex(dp), Intent(in) :: Zfhh(6,6),ZfHm(2,2),ZfVWm

Complex(dp), Intent(out) :: Amp(2,2,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,2
  Do gt2=1,6
! External masses 
Mex1 = MHm(gt1) 
Mex2 = Mhh(gt2) 
Mex3 = MVWm 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1 = ctcplhhcHmVWm(gt2,gt1) 
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,2
ZcoupT1 = ZcoupT1 + 0.5_dp*Conjg(ZfHm(i1,gt1))*cplhhcHmVWm(gt2,i1)
End Do


! External Field 2 
Do i1=1,6
ZcoupT1 = ZcoupT1 + 0.5_dp*Zfhh(i1,gt2)*cplhhcHmVWm(i1,gt1)
End Do


! External Field 3 
ZcoupT1 = ZcoupT1 + 0.5_dp*ZfVWm*cplhhcHmVWm(gt2,gt1)


! Getting the amplitude 
Call TreeAmp_StoSV(Mex1,Mex2,Mex3,-ZcoupT1,AmpC) 
Amp(:,gt1, gt2) = AmpC 
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_HmTohhVWm


Subroutine Amplitude_VERTEX_2HDMSCPV_HmTohhVWm(MFd,MFe,MFu,Mhh,MHm,MVP,               & 
& MVWm,MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,           & 
& cplcgZgAhh,cplcgWpCgAcHm,cplcgWmgWmhh,cplcgZgWmcHm,cplcgWpCgWpChh,cplcgAgWpCVWm,       & 
& cplcgZgWpCVWm,cplcgZgZhh,cplcgWmgZVWm,cplcgWpCgZcHm,cplhhhhhh,cplhhhhVZ,               & 
& cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVP,cplHmcHmVZ,       & 
& cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhcVWmVWm1,cplhhcHmVPVWm1,      & 
& cplhhcHmVWmVZ1,cplHmcHmcVWmVWm1,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),        & 
& cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),         & 
& cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),             & 
& cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),cplcgZgAhh(6),cplcgWpCgAcHm(2),cplcgWmgWmhh(6),    & 
& cplcgZgWmcHm(2),cplcgWpCgWpChh(6),cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgZgZhh(6),           & 
& cplcgWmgZVWm,cplcgWpCgZcHm(2),cplhhhhhh(6,6,6),cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),       & 
& cplhhHmcVWm(6,2),cplhhcHmVWm(6,2),cplhhcVWmVWm(6),cplhhVZVZ(6),cplHmcHmVP(2,2),        & 
& cplHmcHmVZ(2,2),cplcHmVPVWm(2),cplcVWmVPVWm,cplcHmVWmVZ(2),cplcVWmVWmVZ,               & 
& cplhhhhcVWmVWm1(6,6),cplhhcHmVPVWm1(6,2),cplhhcHmVWmVZ1(6,2),cplHmcHmcVWmVWm1(2,2)

Complex(dp), Intent(out) :: Amp(2,2,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,6
Amp(:,gt1, gt2) = 0._dp 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = Mhh(gt2) 
Mex3 = MVWm 


! {Fd, Fu, Fd}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFd(i1) 
ML2 = MFu(i2) 
ML3 = MFd(i3) 
coup1L = cplcFuFdcHmL(i2,i1,gt1)
coup1R = cplcFuFdcHmR(i2,i1,gt1)
coup2L = cplcFdFdhhL(i1,i3,gt2)
coup2R = cplcFdFdhhR(i1,i3,gt2)
coup3L = -cplcFdFuVWmR(i3,i2)
coup3R = -cplcFdFuVWmL(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {Fe, Fv, Fe}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFe(i1) 
ML2 = 0._dp 
ML3 = MFe(i3) 
coup1L = cplcFvFecHmL(i2,i1,gt1)
coup1R = cplcFvFecHmR(i2,i1,gt1)
coup2L = cplcFeFehhL(i1,i3,gt2)
coup2R = cplcFeFehhR(i1,i3,gt2)
coup3L = -cplcFeFvVWmR(i3,i2)
coup3R = -cplcFeFvVWmL(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {gWm, gZ, gWm}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVWm 
coup1 = cplcgZgWmcHm(gt1)
coup2 = cplcgWmgWmhh(gt2)
coup3 = cplcgWmgZVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {gZ, gWmC, gP}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVP 
coup1 = cplcgWpCgZcHm(gt1)
coup2 = cplcgZgAhh(gt2)
coup3 = cplcgAgWpCVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {gZ, gWmC, gZ}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVZ 
coup1 = cplcgWpCgZcHm(gt1)
coup2 = cplcgZgZhh(gt2)
coup3 = cplcgZgWpCVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {hh, conj[Hm], hh}
Do i1=1,6
  Do i2=1,2
    Do i3=1,6
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
ML3 = Mhh(i3) 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = cplhhhhhh(gt2,i1,i3)
coup3 = cplhhcHmVWm(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {hh, conj[VWm], hh}
Do i1=1,6
    Do i3=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
ML3 = Mhh(i3) 
coup1 = cplhhcHmVWm(i1,gt1)
coup2 = cplhhhhhh(gt2,i1,i3)
coup3 = cplhhcVWmVWm(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {hh, conj[Hm], VZ}
Do i1=1,6
  Do i2=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
ML3 = MVZ 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = cplhhhhVZ(gt2,i1)
coup3 = cplcHmVWmVZ(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {hh, conj[VWm], VZ}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
ML3 = MVZ 
coup1 = cplhhcHmVWm(i1,gt1)
coup2 = cplhhhhVZ(gt2,i1)
coup3 = -cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Hm, hh, Hm}
Do i1=1,2
  Do i2=1,6
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = MHm(i3) 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2 = cplhhHmcHm(gt2,i3,i1)
coup3 = -cplhhcHmVWm(i2,i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Hm, VP, Hm}
Do i1=1,2
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = cplHmcHmVP(i1,gt1)
coup2 = cplhhHmcHm(gt2,i3,i1)
coup3 = cplcHmVPVWm(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, VZ, Hm}
Do i1=1,2
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
ML3 = MHm(i3) 
coup1 = cplHmcHmVZ(i1,gt1)
coup2 = cplhhHmcHm(gt2,i3,i1)
coup3 = cplcHmVWmVZ(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, hh, VWm}
Do i1=1,2
  Do i2=1,6
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = MVWm 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2 = cplhhcHmVWm(gt2,i1)
coup3 = cplhhcVWmVWm(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Hm, VP, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MVWm 
coup1 = cplHmcHmVP(i1,gt1)
coup2 = cplhhcHmVWm(gt2,i1)
coup3 = -cplcVWmVPVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Hm, VZ, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
ML3 = MVWm 
coup1 = cplHmcHmVZ(i1,gt1)
coup2 = cplhhcHmVWm(gt2,i1)
coup3 = cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {VWm, hh, Hm}
  Do i2=1,6
    Do i3=1,2
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = MHm(i3) 
coup1 = cplhhcHmVWm(i2,gt1)
coup2 = cplhhHmcVWm(gt2,i3)
coup3 = -cplhhcHmVWm(i2,i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VWm, VP, Hm}
    Do i3=1,2
ML1 = MVWm 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplhhHmcVWm(gt2,i3)
coup3 = cplcHmVPVWm(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, VZ, Hm}
    Do i3=1,2
ML1 = MVWm 
ML2 = MVZ 
ML3 = MHm(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplhhHmcVWm(gt2,i3)
coup3 = cplcHmVWmVZ(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, hh, VWm}
  Do i2=1,6
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = MVWm 
coup1 = cplhhcHmVWm(i2,gt1)
coup2 = cplhhcVWmVWm(gt2)
coup3 = cplhhcVWmVWm(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do


! {VWm, VP, VWm}
ML1 = MVWm 
ML2 = MVP 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplhhcVWmVWm(gt2)
coup3 = -cplcVWmVPVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {VWm, VZ, VWm}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVWm 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplhhcVWmVWm(gt2)
coup3 = cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {VZ, conj[Hm], hh}
  Do i2=1,2
    Do i3=1,6
ML1 = MVZ 
ML2 = MHm(i2) 
ML3 = Mhh(i3) 
coup1 = cplHmcHmVZ(i2,gt1)
coup2 = cplhhhhVZ(gt2,i3)
coup3 = cplhhcHmVWm(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, conj[VWm], hh}
    Do i3=1,6
ML1 = MVZ 
ML2 = MVWm 
ML3 = Mhh(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplhhhhVZ(gt2,i3)
coup3 = cplhhcVWmVWm(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do


! {VZ, conj[Hm], VZ}
  Do i2=1,2
ML1 = MVZ 
ML2 = MHm(i2) 
ML3 = MVZ 
coup1 = cplHmcHmVZ(i2,gt1)
coup2 = cplhhVZVZ(gt2)
coup3 = cplcHmVWmVZ(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do


! {VZ, conj[VWm], VZ}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVZ 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplhhVZVZ(gt2)
coup3 = -cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {bar[Fu], bar[Fd], bar[Fu]}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFuFuhhL(i3,i1,gt2)
coup2R = cplcFuFuhhR(i3,i1,gt2)
coup3L = cplcFdFuVWmL(i2,i3)
coup3R = cplcFdFuVWmR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {bar[gWmC], bar[gP], bar[gWmC]}
ML1 = MVWm 
ML2 = MVP 
ML3 = MVWm 
coup1 = cplcgWpCgAcHm(gt1)
coup2 = cplcgWpCgWpChh(gt2)
coup3 = cplcgAgWpCVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {bar[gWmC], bar[gZ], bar[gWmC]}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVWm 
coup1 = cplcgWpCgZcHm(gt1)
coup2 = cplcgWpCgWpChh(gt2)
coup3 = cplcgZgWpCVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {bar[gZ], bar[gWm], bar[gZ]}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVZ 
coup1 = cplcgZgWmcHm(gt1)
coup2 = cplcgZgZhh(gt2)
coup3 = cplcgWmgZVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {hh, conj[VWm]}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
coup1 = -cplhhcHmVWm(i1,gt1)
coup2 = cplhhhhcVWmVWm1(gt2,i1)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = cplhhcHmVPVWm1(gt2,i1)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Hm, VZ}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
coup1 = -cplHmcHmVZ(i1,gt1)
coup2 = cplhhcHmVWmVZ1(gt2,i1)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {hh, VZ}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVZ 
coup1 = cplhhcHmVWmVZ1(i1,gt1)
coup2 = cplhhhhVZ(gt2,i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 

End Do


! {Hm, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVWm 
coup1 = cplHmcHmcVWmVWm1(i1,gt1)
coup2 = cplhhcHmVWm(gt2,i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 

End Do
  End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_HmTohhVWm


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmTohhVWm(MFd,MFe,MFu,Mhh,MHm,MVP,            & 
& MVWm,MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,           & 
& cplcgZgAhh,cplcgWpCgAcHm,cplcgWmgWmhh,cplcgZgWmcHm,cplcgWpCgWpChh,cplcgAgWpCVWm,       & 
& cplcgZgWpCVWm,cplcgZgZhh,cplcgWmgZVWm,cplcgWpCgZcHm,cplhhhhhh,cplhhhhVZ,               & 
& cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVP,cplHmcHmVZ,       & 
& cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhhhcVWmVWm1,cplhhcHmVPVWm1,      & 
& cplhhcHmVWmVZ1,cplHmcHmcVWmVWm1,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),        & 
& cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),         & 
& cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),             & 
& cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),cplcgZgAhh(6),cplcgWpCgAcHm(2),cplcgWmgWmhh(6),    & 
& cplcgZgWmcHm(2),cplcgWpCgWpChh(6),cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgZgZhh(6),           & 
& cplcgWmgZVWm,cplcgWpCgZcHm(2),cplhhhhhh(6,6,6),cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),       & 
& cplhhHmcVWm(6,2),cplhhcHmVWm(6,2),cplhhcVWmVWm(6),cplhhVZVZ(6),cplHmcHmVP(2,2),        & 
& cplHmcHmVZ(2,2),cplcHmVPVWm(2),cplcVWmVPVWm,cplcHmVWmVZ(2),cplcVWmVWmVZ,               & 
& cplhhhhcVWmVWm1(6,6),cplhhcHmVPVWm1(6,2),cplhhcHmVWmVZ1(6,2),cplHmcHmcVWmVWm1(2,2)

Complex(dp), Intent(out) :: Amp(2,2,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,6
Amp(:,gt1, gt2) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = Mhh(gt2) 
Mex3 = MVWm 


! {Hm, VP, Hm}
Do i1=1,2
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = cplHmcHmVP(i1,gt1)
coup2 = cplhhHmcHm(gt2,i3,i1)
coup3 = cplcHmVPVWm(i3)
Call Amp_VERTEX_StoSV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, VP, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MVWm 
coup1 = cplHmcHmVP(i1,gt1)
coup2 = cplhhcHmVWm(gt2,i1)
coup3 = -cplcVWmVPVWm
Call Amp_VERTEX_StoSV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {VWm, VP, Hm}
    Do i3=1,2
ML1 = MVWm 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplhhHmcVWm(gt2,i3)
coup3 = cplcHmVPVWm(i3)
Call Amp_VERTEX_StoSV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, VP, VWm}
ML1 = MVWm 
ML2 = MVP 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplhhcVWmVWm(gt2)
coup3 = -cplcVWmVPVWm
Call Amp_VERTEX_StoSV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = cplhhcHmVPVWm1(gt2,i1)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmTohhVWm


Subroutine Amplitude_Tree_2HDMSCPV_HmToHmVZ(cplHmcHmVZ,MHm,MVZ,MHm2,MVZ2,Amp)

Implicit None

Real(dp), Intent(in) :: MHm(2),MVZ,MHm2(2),MVZ2

Complex(dp), Intent(in) :: cplHmcHmVZ(2,2)

Complex(dp) :: Amp(2,2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 

Do gt1=1,2
  Do gt2=1,2
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MHm(gt2) 
Mex3 = MVZ 
! Tree-Level Vertex 
coupT1 = -cplHmcHmVZ(gt2,gt1)
Call TreeAmp_StoSV(Mex1,Mex2,Mex3,coupT1,AmpC) 
! Colour and symmetry factor 
Amp(:,gt1, gt2) = AmpC 
  End Do
End Do
End Subroutine Amplitude_Tree_2HDMSCPV_HmToHmVZ


Subroutine Gamma_Real_2HDMSCPV_HmToHmVZ(MLambda,em,gs,cplHmcHmVZ,MHm,MVZ,             & 
& GammarealPhoton,GammarealGluon)

Implicit None

Complex(dp), Intent(in) :: cplHmcHmVZ(2,2)

Real(dp), Intent(in) :: MHm(2),MVZ

Real(dp), Intent(in) :: MLambda, em, gs 

Real(dp), Intent(out) :: GammarealPhoton(2,2), GammarealGluon(2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 

Real(dp) :: Mloop1, Mloop2, Mloop3 
Complex(dp) :: Coup 
 
Do i1=2,2
  Do i2=2,2
Coup = cplHmcHmVZ(i2,i1)
Mex1 = MHm(i1)
Mex2 = MHm(i2)
Mex3 = MVZ
If (Abs(Mex1).gt.(Abs(Mex2)+Abs(Mex3))) Then 
 Call hardradiationSSV(Mex1,Mex2,Mex3,MLambda,em,-1._dp,-1._dp,0._dp,Coup,Gammarealphoton(i1,i2),kont)
 GammarealGluon(i1,i2) = 0._dp 
Else 
  GammarealGluon(i1,i2) = 0._dp 
  GammarealPhoton(i1,i2) = 0._dp 

End if 
  End Do
End Do
End Subroutine Gamma_Real_2HDMSCPV_HmToHmVZ


Subroutine Amplitude_WAVE_2HDMSCPV_HmToHmVZ(cplHmcHmVP,cplHmcHmVZ,ctcplHmcHmVP,       & 
& ctcplHmcHmVZ,MHm,MHm2,MVP,MVP2,MVZ,MVZ2,ZfHm,ZfVPVZ,ZfVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MHm(2),MHm2(2),MVP,MVP2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplHmcHmVP(2,2),cplHmcHmVZ(2,2)

Complex(dp), Intent(in) :: ctcplHmcHmVP(2,2),ctcplHmcHmVZ(2,2)

Complex(dp), Intent(in) :: ZfHm(2,2),ZfVPVZ,ZfVZ

Complex(dp), Intent(out) :: Amp(2,2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,2
  Do gt2=1,2
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MHm(gt2) 
Mex3 = MVZ 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1 = ctcplHmcHmVZ(gt2,gt1) 
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,2
ZcoupT1 = ZcoupT1 + 0.5_dp*Conjg(ZfHm(i1,gt1))*cplHmcHmVZ(gt2,i1)
End Do


! External Field 2 
Do i1=1,2
ZcoupT1 = ZcoupT1 + 0.5_dp*ZfHm(i1,gt2)*cplHmcHmVZ(i1,gt1)
End Do


! External Field 3 
ZcoupT1 = ZcoupT1 + 0.5_dp*ZfVPVZ*cplHmcHmVP(gt2,gt1)
ZcoupT1 = ZcoupT1 + 0.5_dp*ZfVZ*cplHmcHmVZ(gt2,gt1)


! Getting the amplitude 
Call TreeAmp_StoSV(Mex1,Mex2,Mex3,-ZcoupT1,AmpC) 
Amp(:,gt1, gt2) = AmpC 
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_HmToHmVZ


Subroutine Amplitude_VERTEX_2HDMSCPV_HmToHmVZ(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,           & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdVZL,cplcFdFdVZR,cplcFuFdcHmL,     & 
& cplcFuFdcHmR,cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,cplcFdFuHmL,            & 
& cplcFdFuHmR,cplcFuFuVZL,cplcFuFuVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFvFvVZL,               & 
& cplcFvFvVZR,cplcgWmgWmVZ,cplcgZgWmcHm,cplcgZgWpCHm,cplcgWpCgWpCVZ,cplcgWmgZHm,         & 
& cplcgWpCgZcHm,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhVZVZ,cplHmcHmVP,       & 
& cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,               & 
& cplhhHmcVWmVZ1,cplhhcHmVWmVZ1,cplHmcHmVPVZ1,cplHmcHmVZVZ1,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),            & 
& cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),             & 
& cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),               & 
& cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),               & 
& cplcgWmgWmVZ,cplcgZgWmcHm(2),cplcgZgWpCHm(2),cplcgWpCgWpCVZ,cplcgWmgZHm(2),            & 
& cplcgWpCgZcHm(2),cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),cplhhcHmVWm(6,2),   & 
& cplhhVZVZ(6),cplHmcHmVP(2,2),cplHmcVWmVP(2),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),            & 
& cplcHmVPVWm(2),cplcHmVWmVZ(2),cplcVWmVWmVZ,cplhhHmcVWmVZ1(6,2),cplhhcHmVWmVZ1(6,2),    & 
& cplHmcHmVPVZ1(2,2),cplHmcHmVZVZ1(2,2)

Complex(dp), Intent(out) :: Amp(2,2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,2
Amp(:,gt1, gt2) = 0._dp 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MHm(gt2) 
Mex3 = MVZ 


! {Fd, Fu, Fu}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFd(i1) 
ML2 = MFu(i2) 
ML3 = MFu(i3) 
coup1L = cplcFuFdcHmL(i2,i1,gt1)
coup1R = cplcFuFdcHmR(i2,i1,gt1)
coup2L = cplcFdFuHmL(i1,i3,gt2)
coup2R = cplcFdFuHmR(i1,i3,gt2)
coup3L = -cplcFuFuVZR(i3,i2)
coup3R = -cplcFuFuVZL(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {Fe, Fv, Fv}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFe(i1) 
ML2 = 0._dp 
ML3 = 0._dp 
coup1L = cplcFvFecHmL(i2,i1,gt1)
coup1R = cplcFvFecHmR(i2,i1,gt1)
coup2L = cplcFeFvHmL(i1,i3,gt2)
coup2R = cplcFeFvHmR(i1,i3,gt2)
coup3L = -cplcFvFvVZR(i3,i2)
coup3R = -cplcFvFvVZL(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {gZ, gWmC, gWmC}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcgWpCgZcHm(gt1)
coup2 = cplcgZgWpCHm(gt2)
coup3 = cplcgWpCgWpCVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {hh, conj[Hm], conj[Hm]}
Do i1=1,6
  Do i2=1,2
    Do i3=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = cplhhHmcHm(i1,gt2,i3)
coup3 = cplHmcHmVZ(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {hh, conj[VWm], conj[Hm]}
Do i1=1,6
    Do i3=1,2
ML1 = Mhh(i1) 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplhhcHmVWm(i1,gt1)
coup2 = cplhhHmcHm(i1,gt2,i3)
coup3 = cplHmcVWmVZ(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {hh, conj[Hm], conj[VWm]}
Do i1=1,6
  Do i2=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = -cplhhHmcVWm(i1,gt2)
coup3 = cplcHmVWmVZ(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {hh, conj[VWm], conj[VWm]}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplhhcHmVWm(i1,gt1)
coup2 = -cplhhHmcVWm(i1,gt2)
coup3 = cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Hm, hh, hh}
Do i1=1,2
  Do i2=1,6
    Do i3=1,6
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = Mhh(i3) 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2 = cplhhHmcHm(i3,gt2,i1)
coup3 = -cplhhhhVZ(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Hm, VZ, hh}
Do i1=1,2
    Do i3=1,6
ML1 = MHm(i1) 
ML2 = MVZ 
ML3 = Mhh(i3) 
coup1 = cplHmcHmVZ(i1,gt1)
coup2 = cplhhHmcHm(i3,gt2,i1)
coup3 = cplhhVZVZ(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, hh, VZ}
Do i1=1,2
  Do i2=1,6
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = MVZ 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2 = cplHmcHmVZ(gt2,i1)
coup3 = cplhhVZVZ(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {VP, conj[Hm], conj[Hm]}
  Do i2=1,2
    Do i3=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = cplHmcHmVP(gt2,i3)
coup3 = cplHmcHmVZ(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VP, conj[VWm], conj[Hm]}
    Do i3=1,2
ML1 = MVP 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcHmVP(gt2,i3)
coup3 = cplHmcVWmVZ(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do


! {VP, conj[Hm], conj[VWm]}
  Do i2=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = cplcHmVWmVZ(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do


! {VP, conj[VWm], conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {VWm, hh, hh}
  Do i2=1,6
    Do i3=1,6
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = Mhh(i3) 
coup1 = cplhhcHmVWm(i2,gt1)
coup2 = -cplhhHmcVWm(i3,gt2)
coup3 = -cplhhhhVZ(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VWm, VZ, hh}
    Do i3=1,6
ML1 = MVWm 
ML2 = MVZ 
ML3 = Mhh(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2 = -cplhhHmcVWm(i3,gt2)
coup3 = cplhhVZVZ(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, hh, VZ}
  Do i2=1,6
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = MVZ 
coup1 = cplhhcHmVWm(i2,gt1)
coup2 = cplHmcVWmVZ(gt2)
coup3 = cplhhVZVZ(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do


! {VZ, conj[Hm], conj[Hm]}
  Do i2=1,2
    Do i3=1,2
ML1 = MVZ 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplHmcHmVZ(i2,gt1)
coup2 = cplHmcHmVZ(gt2,i3)
coup3 = cplHmcHmVZ(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, conj[VWm], conj[Hm]}
    Do i3=1,2
ML1 = MVZ 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplHmcHmVZ(gt2,i3)
coup3 = cplHmcVWmVZ(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do


! {VZ, conj[Hm], conj[VWm]}
  Do i2=1,2
ML1 = MVZ 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplHmcHmVZ(i2,gt1)
coup2 = cplHmcVWmVZ(gt2)
coup3 = cplcHmVWmVZ(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do


! {VZ, conj[VWm], conj[VWm]}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplHmcVWmVZ(gt2)
coup3 = cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {bar[Fu], bar[Fd], bar[Fd]}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFdFuHmL(i3,i1,gt2)
coup2R = cplcFdFuHmR(i3,i1,gt2)
coup3L = cplcFdFdVZL(i2,i3)
coup3R = cplcFdFdVZR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {bar[Fv], bar[Fe], bar[Fe]}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = 0._dp 
ML2 = MFe(i2) 
ML3 = MFe(i3) 
coup1L = cplcFvFecHmL(i1,i2,gt1)
coup1R = cplcFvFecHmR(i1,i2,gt1)
coup2L = cplcFeFvHmL(i3,i1,gt2)
coup2R = cplcFeFvHmR(i3,i1,gt2)
coup3L = cplcFeFeVZL(i2,i3)
coup3R = cplcFeFeVZR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {bar[gZ], bar[gWm], bar[gWm]}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcgZgWmcHm(gt1)
coup2 = cplcgWmgZHm(gt2)
coup3 = cplcgWmgWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {hh, conj[VWm]}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
coup1 = -cplhhcHmVWm(i1,gt1)
coup2 = cplhhHmcVWmVZ1(i1,gt2)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = cplHmcHmVPVZ1(gt2,i1)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Hm, VZ}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
coup1 = -cplHmcHmVZ(i1,gt1)
coup2 = cplHmcHmVZVZ1(gt2,i1)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {hh, conj[VWm]}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
coup1 = cplhhcHmVWmVZ1(i1,gt1)
coup2 = -cplhhHmcVWm(i1,gt2)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 

End Do


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = cplHmcHmVPVZ1(i1,gt1)
coup2 = cplHmcHmVP(gt2,i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 

End Do


! {Hm, VZ}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
coup1 = cplHmcHmVZVZ1(i1,gt1)
coup2 = cplHmcHmVZ(gt2,i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 

End Do
  End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_HmToHmVZ


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmToHmVZ(MFd,MFe,MFu,Mhh,MHm,MVP,             & 
& MVWm,MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdVZL,cplcFdFdVZR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFdFuHmL,cplcFdFuHmR,cplcFuFuVZL,cplcFuFuVZR,cplcFeFvHmL,cplcFeFvHmR,               & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgZgWmcHm,cplcgZgWpCHm,cplcgWpCgWpCVZ,         & 
& cplcgWmgZHm,cplcgWpCgZcHm,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplhhVZVZ,      & 
& cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,    & 
& cplhhHmcVWmVZ1,cplhhcHmVWmVZ1,cplHmcHmVPVZ1,cplHmcHmVZVZ1,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),            & 
& cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),             & 
& cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),               & 
& cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),               & 
& cplcgWmgWmVZ,cplcgZgWmcHm(2),cplcgZgWpCHm(2),cplcgWpCgWpCVZ,cplcgWmgZHm(2),            & 
& cplcgWpCgZcHm(2),cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),cplhhcHmVWm(6,2),   & 
& cplhhVZVZ(6),cplHmcHmVP(2,2),cplHmcVWmVP(2),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),            & 
& cplcHmVPVWm(2),cplcHmVWmVZ(2),cplcVWmVWmVZ,cplhhHmcVWmVZ1(6,2),cplhhcHmVWmVZ1(6,2),    & 
& cplHmcHmVPVZ1(2,2),cplHmcHmVZVZ1(2,2)

Complex(dp), Intent(out) :: Amp(2,2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,2
Amp(:,gt1, gt2) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MHm(gt2) 
Mex3 = MVZ 


! {VP, conj[Hm], conj[Hm]}
  Do i2=1,2
    Do i3=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = cplHmcHmVP(gt2,i3)
coup3 = cplHmcHmVZ(i3,i2)
Call Amp_VERTEX_StoSV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VP, conj[VWm], conj[Hm]}
    Do i3=1,2
ML1 = MVP 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcHmVP(gt2,i3)
coup3 = cplHmcVWmVZ(i3)
Call Amp_VERTEX_StoSV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do


! {VP, conj[Hm], conj[VWm]}
  Do i2=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = cplcHmVWmVZ(i2)
Call Amp_VERTEX_StoSV_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do


! {VP, conj[VWm], conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = cplcVWmVWmVZ
Call Amp_VERTEX_StoSV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = cplHmcHmVPVZ1(gt2,i1)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = cplHmcHmVPVZ1(i1,gt1)
coup2 = cplHmcHmVP(gt2,i1)
Call Amp_VERTEX_StoSV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 

End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmToHmVZ


Subroutine Amplitude_Tree_2HDMSCPV_HmToVZVWm(cplcHmVWmVZ,MHm,MVWm,MVZ,MHm2,           & 
& MVWm2,MVZ2,Amp)

Implicit None

Real(dp), Intent(in) :: MHm(2),MVWm,MVZ,MHm2(2),MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcHmVWmVZ(2)

Complex(dp) :: Amp(2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 

Do gt1=1,2
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MVZ 
Mex3 = MVWm 
! Tree-Level Vertex 
coupT1 = cplcHmVWmVZ(gt1)
Call TreeAmp_StoVV(Mex1,Mex2,Mex3,coupT1,AmpC) 
! Colour and symmetry factor 
Amp(:,gt1) = AmpC 
End Do
End Subroutine Amplitude_Tree_2HDMSCPV_HmToVZVWm


Subroutine Gamma_Real_2HDMSCPV_HmToVZVWm(MLambda,em,gs,cplcHmVWmVZ,MHm,               & 
& MVWm,MVZ,GammarealPhoton,GammarealGluon)

Implicit None

Complex(dp), Intent(in) :: cplcHmVWmVZ(2)

Real(dp), Intent(in) :: MHm(2),MVWm,MVZ

Real(dp), Intent(in) :: MLambda, em, gs 

Real(dp), Intent(out) :: GammarealPhoton(2), GammarealGluon(2) 

Integer :: i1, i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 

Real(dp) :: Mloop1, Mloop2, Mloop3 
Complex(dp) :: Coup 
 
Do i1=2,2
Coup = cplcHmVWmVZ(i1)
Mex1 = MHm(i1)
Mex2 = MVZ
Mex3 = MVWm
If (Abs(Mex1).gt.(Abs(Mex2)+Abs(Mex3))) Then 
  GammarealGluon(i1) = 0._dp 
 Call hardphotonSVV(Mex1,Mex2,Mex3,MLambda,em,-1._dp,0._dp,-1._dp,Coup,Gammarealphoton(i1),kont)
Else 
  GammarealGluon(i1) = 0._dp 
  GammarealPhoton(i1) = 0._dp 

End if 
End Do
End Subroutine Gamma_Real_2HDMSCPV_HmToVZVWm


Subroutine Amplitude_WAVE_2HDMSCPV_HmToVZVWm(cplcHmVPVWm,cplcHmVWmVZ,ctcplcHmVPVWm,   & 
& ctcplcHmVWmVZ,MHm,MHm2,MVP,MVP2,MVWm,MVWm2,MVZ,MVZ2,ZfHm,ZfVWm,ZfVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MHm(2),MHm2(2),MVP,MVP2,MVWm,MVWm2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcHmVPVWm(2),cplcHmVWmVZ(2)

Complex(dp), Intent(in) :: ctcplcHmVPVWm(2),ctcplcHmVWmVZ(2)

Complex(dp), Intent(in) :: ZfHm(2,2),ZfVWm,ZfVZ

Complex(dp), Intent(out) :: Amp(2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,2
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MVZ 
Mex3 = MVWm 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1 = ctcplcHmVWmVZ(gt1) 
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,2
ZcoupT1 = ZcoupT1 + 0.5_dp*Conjg(ZfHm(i1,gt1))*cplcHmVWmVZ(i1)
End Do


! External Field 2 
ZcoupT1 = ZcoupT1 + 0.5_dp*ZfVZ*cplcHmVWmVZ(gt1)


! External Field 3 
ZcoupT1 = ZcoupT1 + 0.5_dp*ZfVWm*cplcHmVWmVZ(gt1)


! Getting the amplitude 
Call TreeAmp_StoVV(Mex1,Mex2,Mex3,ZcoupT1,AmpC) 
Amp(:,gt1) = AmpC 
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_HmToVZVWm


Subroutine Amplitude_VERTEX_2HDMSCPV_HmToVZVWm(MFd,MFe,MFu,Mhh,MHm,MVP,               & 
& MVWm,MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdVZL,cplcFdFdVZR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplcFeFvVWmL,cplcFeFvVWmR,           & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWpCgAcHm,cplcgWmgWmVZ,cplcgZgWmcHm,cplcgAgWpCVWm,         & 
& cplcgZgWpCVWm,cplcgWpCgWpCVZ,cplcgWmgZVWm,cplcgWpCgZcHm,cplhhhhVZ,cplhhHmcHm,          & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,      & 
& cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhcHmVWmVZ1,cplHmcHmVPVZ1,cplHmcHmcVWmVWm1,   & 
& cplHmcHmVZVZ1,cplcVWmVPVWmVZ3Q,cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ1Q,cplcVWmVWmVZVZ2Q,     & 
& cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),            & 
& cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),             & 
& cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplcFeFvVWmL(3,3),& 
& cplcFeFvVWmR(3,3),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),cplcgWpCgAcHm(2),cplcgWmgWmVZ,     & 
& cplcgZgWmcHm(2),cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgWpCgWpCVZ,cplcgWmgZVWm,               & 
& cplcgWpCgZcHm(2),cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),cplhhcHmVWm(6,2),cplhhcVWmVWm(6),    & 
& cplhhVZVZ(6),cplHmcHmVP(2,2),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),cplcHmVPVWm(2),            & 
& cplcVWmVPVWm,cplcHmVWmVZ(2),cplcVWmVWmVZ,cplhhcHmVWmVZ1(6,2),cplHmcHmVPVZ1(2,2),       & 
& cplHmcHmcVWmVWm1(2,2),cplHmcHmVZVZ1(2,2),cplcVWmVPVWmVZ3Q,cplcVWmVPVWmVZ2Q,            & 
& cplcVWmVPVWmVZ1Q,cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q

Complex(dp), Intent(out) :: Amp(2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
Amp(:,gt1) = 0._dp 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MVZ 
Mex3 = MVWm 


! {Fd, Fu, Fd}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFd(i1) 
ML2 = MFu(i2) 
ML3 = MFd(i3) 
coup1L = cplcFuFdcHmL(i2,i1,gt1)
coup1R = cplcFuFdcHmR(i2,i1,gt1)
coup2L = -cplcFdFdVZR(i1,i3)
coup2R = -cplcFdFdVZL(i1,i3)
coup3L = -cplcFdFuVWmR(i3,i2)
coup3R = -cplcFdFuVWmL(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {Fe, Fv, Fe}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFe(i1) 
ML2 = 0._dp 
ML3 = MFe(i3) 
coup1L = cplcFvFecHmL(i2,i1,gt1)
coup1R = cplcFvFecHmR(i2,i1,gt1)
coup2L = -cplcFeFeVZR(i1,i3)
coup2R = -cplcFeFeVZL(i1,i3)
coup3L = -cplcFeFvVWmR(i3,i2)
coup3R = -cplcFeFvVWmL(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {gWm, gZ, gWm}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVWm 
coup1 = cplcgZgWmcHm(gt1)
coup2 = cplcgWmgWmVZ
coup3 = cplcgWmgZVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {hh, conj[Hm], hh}
Do i1=1,6
  Do i2=1,2
    Do i3=1,6
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
ML3 = Mhh(i3) 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = cplhhhhVZ(i1,i3)
coup3 = cplhhcHmVWm(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {hh, conj[VWm], hh}
Do i1=1,6
    Do i3=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
ML3 = Mhh(i3) 
coup1 = -cplhhcHmVWm(i1,gt1)
coup2 = cplhhhhVZ(i1,i3)
coup3 = cplhhcVWmVWm(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {hh, conj[Hm], VZ}
Do i1=1,6
  Do i2=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
ML3 = MVZ 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = cplhhVZVZ(i1)
coup3 = cplcHmVWmVZ(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {hh, conj[VWm], VZ}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
ML3 = MVZ 
coup1 = -cplhhcHmVWm(i1,gt1)
coup2 = cplhhVZVZ(i1)
coup3 = -cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
End Do


! {Hm, hh, Hm}
Do i1=1,2
  Do i2=1,6
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = MHm(i3) 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2 = -cplHmcHmVZ(i3,i1)
coup3 = -cplhhcHmVWm(i2,i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Hm, VP, Hm}
Do i1=1,2
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = -cplHmcHmVZ(i3,i1)
coup3 = cplcHmVPVWm(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, VZ, Hm}
Do i1=1,2
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
ML3 = MHm(i3) 
coup1 = -cplHmcHmVZ(i1,gt1)
coup2 = -cplHmcHmVZ(i3,i1)
coup3 = cplcHmVWmVZ(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, hh, VWm}
Do i1=1,2
  Do i2=1,6
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = MVWm 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2 = cplcHmVWmVZ(i1)
coup3 = cplhhcVWmVWm(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Hm, VP, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MVWm 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = cplcHmVWmVZ(i1)
coup3 = -cplcVWmVPVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
End Do


! {Hm, VZ, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
ML3 = MVWm 
coup1 = -cplHmcHmVZ(i1,gt1)
coup2 = cplcHmVWmVZ(i1)
coup3 = cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
End Do


! {VWm, hh, Hm}
  Do i2=1,6
    Do i3=1,2
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = MHm(i3) 
coup1 = -cplhhcHmVWm(i2,gt1)
coup2 = cplHmcVWmVZ(i3)
coup3 = -cplhhcHmVWm(i2,i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VWm, VP, Hm}
    Do i3=1,2
ML1 = MVWm 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcVWmVZ(i3)
coup3 = cplcHmVPVWm(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, VZ, Hm}
    Do i3=1,2
ML1 = MVWm 
ML2 = MVZ 
ML3 = MHm(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplHmcVWmVZ(i3)
coup3 = cplcHmVWmVZ(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, hh, VWm}
  Do i2=1,6
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = MVWm 
coup1 = -cplhhcHmVWm(i2,gt1)
coup2 = -cplcVWmVWmVZ
coup3 = cplhhcVWmVWm(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
  End Do


! {VWm, VP, VWm}
ML1 = MVWm 
ML2 = MVP 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = -cplcVWmVWmVZ
coup3 = -cplcVWmVPVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {VWm, VZ, VWm}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVWm 
coup1 = cplcHmVWmVZ(gt1)
coup2 = -cplcVWmVWmVZ
coup3 = cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {VZ, conj[Hm], hh}
  Do i2=1,2
    Do i3=1,6
ML1 = MVZ 
ML2 = MHm(i2) 
ML3 = Mhh(i3) 
coup1 = -cplHmcHmVZ(i2,gt1)
coup2 = cplhhVZVZ(i3)
coup3 = cplhhcHmVWm(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, conj[VWm], hh}
    Do i3=1,6
ML1 = MVZ 
ML2 = MVWm 
ML3 = Mhh(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplhhVZVZ(i3)
coup3 = cplhhcVWmVWm(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do


! {bar[Fu], bar[Fd], bar[Fu]}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFuFuVZL(i3,i1)
coup2R = cplcFuFuVZR(i3,i1)
coup3L = cplcFdFuVWmL(i2,i3)
coup3R = cplcFdFuVWmR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {bar[Fv], bar[Fe], bar[Fv]}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = 0._dp 
ML2 = MFe(i2) 
ML3 = 0._dp 
coup1L = cplcFvFecHmL(i1,i2,gt1)
coup1R = cplcFvFecHmR(i1,i2,gt1)
coup2L = cplcFvFvVZL(i3,i1)
coup2R = cplcFvFvVZR(i3,i1)
coup3L = cplcFeFvVWmL(i2,i3)
coup3R = cplcFeFvVWmR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {bar[gWmC], bar[gP], bar[gWmC]}
ML1 = MVWm 
ML2 = MVP 
ML3 = MVWm 
coup1 = cplcgWpCgAcHm(gt1)
coup2 = cplcgWpCgWpCVZ
coup3 = cplcgAgWpCVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {bar[gWmC], bar[gZ], bar[gWmC]}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVWm 
coup1 = cplcgWpCgZcHm(gt1)
coup2 = cplcgWpCgWpCVZ
coup3 = cplcgZgWpCVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {hh, conj[Hm]}
Do i1=1,6
  Do i2=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = cplhhcHmVWmVZ1(i1,i2)
Call Amp_VERTEX_StoVV_Topology2_SS(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {VP, conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplcVWmVPVWmVZ1Q
coup2a = coup2 
coup2 = cplcVWmVPVWmVZ2Q
coup2b = coup2 
coup2 = cplcVWmVPVWmVZ3Q
coup2c = coup2 
If (Abs(coup1)*(Abs(coup2a)+Abs(coup2b)+Abs(coup2c)) .gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology2_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2a,coup2b,coup2c,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {VWm, VZ}
ML1 = MVWm 
ML2 = MVZ 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplcVWmVWmVZVZ1Q
coup2c = coup2 
coup2 = cplcVWmVWmVZVZ2Q
coup2b = coup2 
coup2 = cplcVWmVWmVZVZ3Q
coup2a = coup2 
If (Abs(coup1)*(Abs(coup2a)+Abs(coup2b)+Abs(coup2c)) .gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology2_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2a,coup2b,coup2c,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {hh, VZ}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVZ 
coup1 = cplhhcHmVWmVZ1(i1,gt1)
coup2 = cplhhVZVZ(i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 

End Do


! {Hm, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVWm 
coup1 = cplHmcHmcVWmVWm1(i1,gt1)
coup2 = cplcHmVWmVZ(i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 

End Do


! {hh, conj[VWm]}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
coup1 = cplhhcHmVWmVZ1(i1,gt1)
coup2 = cplhhcVWmVWm(i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology4_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 

End Do


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = cplHmcHmVPVZ1(i1,gt1)
coup2 = cplcHmVPVWm(i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology4_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 

End Do


! {Hm, VZ}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
coup1 = cplHmcHmVZVZ1(i1,gt1)
coup2 = cplcHmVWmVZ(i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology4_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 

End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_HmToVZVWm


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmToVZVWm(MFd,MFe,MFu,Mhh,MHm,MVP,            & 
& MVWm,MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdVZL,cplcFdFdVZR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFeVZL,cplcFeFeVZR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplcFeFvVWmL,cplcFeFvVWmR,           & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWpCgAcHm,cplcgWmgWmVZ,cplcgZgWmcHm,cplcgAgWpCVWm,         & 
& cplcgZgWpCVWm,cplcgWpCgWpCVZ,cplcgWmgZVWm,cplcgWpCgZcHm,cplhhhhVZ,cplhhHmcHm,          & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,cplHmcHmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,      & 
& cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,cplhhcHmVWmVZ1,cplHmcHmVPVZ1,cplHmcHmcVWmVWm1,   & 
& cplHmcHmVZVZ1,cplcVWmVPVWmVZ3Q,cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ1Q,cplcVWmVWmVZVZ2Q,     & 
& cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),            & 
& cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),             & 
& cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplcFeFvVWmL(3,3),& 
& cplcFeFvVWmR(3,3),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),cplcgWpCgAcHm(2),cplcgWmgWmVZ,     & 
& cplcgZgWmcHm(2),cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgWpCgWpCVZ,cplcgWmgZVWm,               & 
& cplcgWpCgZcHm(2),cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),cplhhcHmVWm(6,2),cplhhcVWmVWm(6),    & 
& cplhhVZVZ(6),cplHmcHmVP(2,2),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),cplcHmVPVWm(2),            & 
& cplcVWmVPVWm,cplcHmVWmVZ(2),cplcVWmVWmVZ,cplhhcHmVWmVZ1(6,2),cplHmcHmVPVZ1(2,2),       & 
& cplHmcHmcVWmVWm1(2,2),cplHmcHmVZVZ1(2,2),cplcVWmVPVWmVZ3Q,cplcVWmVPVWmVZ2Q,            & 
& cplcVWmVPVWmVZ1Q,cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,cplcVWmVWmVZVZ1Q

Complex(dp), Intent(out) :: Amp(2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
Amp(:,gt1) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MVZ 
Mex3 = MVWm 


! {Hm, VP, Hm}
Do i1=1,2
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = -cplHmcHmVZ(i3,i1)
coup3 = cplcHmVPVWm(i3)
Call Amp_VERTEX_StoVV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, VP, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MVWm 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = cplcHmVWmVZ(i1)
coup3 = -cplcVWmVPVWm
Call Amp_VERTEX_StoVV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
End Do


! {VWm, VP, Hm}
    Do i3=1,2
ML1 = MVWm 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcVWmVZ(i3)
coup3 = cplcHmVPVWm(i3)
Call Amp_VERTEX_StoVV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, VP, VWm}
ML1 = MVWm 
ML2 = MVP 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = -cplcVWmVWmVZ
coup3 = -cplcVWmVPVWm
Call Amp_VERTEX_StoVV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {VP, conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplcVWmVPVWmVZ1Q
coup2a = coup2 
coup2 = cplcVWmVPVWmVZ2Q
coup2b = coup2 
coup2 = cplcVWmVPVWmVZ3Q
coup2c = coup2 
Call Amp_VERTEX_StoVV_Topology2_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2a,coup2b,coup2c,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = cplHmcHmVPVZ1(i1,gt1)
coup2 = cplcHmVPVWm(i1)
Call Amp_VERTEX_StoVV_Topology4_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 

End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmToVZVWm


Subroutine Amplitude_WAVE_2HDMSCPV_HmToHmVP(cplHmcHmVP,cplHmcHmVZ,ctcplHmcHmVP,       & 
& ctcplHmcHmVZ,MHm,MHm2,MVP,MVP2,ZfHm,ZfVP,ZfVZVP,Amp)

Implicit None

Real(dp), Intent(in) :: MHm(2),MHm2(2),MVP,MVP2

Complex(dp), Intent(in) :: cplHmcHmVP(2,2),cplHmcHmVZ(2,2)

Complex(dp), Intent(in) :: ctcplHmcHmVP(2,2),ctcplHmcHmVZ(2,2)

Complex(dp), Intent(in) :: ZfHm(2,2),ZfVP,ZfVZVP

Complex(dp), Intent(out) :: Amp(2,2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,2
  Do gt2=1,2
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MHm(gt2) 
Mex3 = MVP 
ZcoupT1 = 0._dp 
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,2
ZcoupT1 = ZcoupT1 + 0.5_dp*Conjg(ZfHm(i1,gt1))*cplHmcHmVP(gt2,i1)
End Do


! External Field 2 
Do i1=1,2
ZcoupT1 = ZcoupT1 + 0.5_dp*ZfHm(i1,gt2)*cplHmcHmVP(i1,gt1)
End Do


! External Field 3 
ZcoupT1 = ZcoupT1 + 0.5_dp*ZfVZVP*cplHmcHmVZ(gt2,gt1)


! Getting the amplitude 
Call TreeAmp_StoSV(Mex1,Mex2,Mex3,-ZcoupT1,AmpC) 
Amp(:,gt1, gt2) = AmpC 
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_HmToHmVP


Subroutine Amplitude_VERTEX_2HDMSCPV_HmToHmVP(MFd,MFe,MFu,Mhh,MHm,MVP,MVWm,           & 
& MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdVPL,cplcFdFdVPR,cplcFuFdcHmL,     & 
& cplcFuFdcHmR,cplcFeFeVPL,cplcFeFeVPR,cplcFvFecHmL,cplcFvFecHmR,cplcFdFuHmL,            & 
& cplcFdFuHmR,cplcFuFuVPL,cplcFuFuVPR,cplcFeFvHmL,cplcFeFvHmR,cplcgWmgWmVP,              & 
& cplcgZgWmcHm,cplcgZgWpCHm,cplcgWpCgWpCVP,cplcgWmgZHm,cplcgWpCgZcHm,cplhhHmcHm,         & 
& cplhhHmcVWm,cplhhcHmVWm,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,cplcHmVPVWm,     & 
& cplcVWmVPVWm,cplcHmVWmVZ,cplhhHmcVWmVP1,cplhhcHmVPVWm1,cplHmcHmVPVP1,cplHmcHmVPVZ1,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),            & 
& cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),             & 
& cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),               & 
& cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),cplcgWmgWmVP,cplcgZgWmcHm(2),cplcgZgWpCHm(2),    & 
& cplcgWpCgWpCVP,cplcgWmgZHm(2),cplcgWpCgZcHm(2),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),     & 
& cplhhcHmVWm(6,2),cplHmcHmVP(2,2),cplHmcVWmVP(2),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),        & 
& cplcHmVPVWm(2),cplcVWmVPVWm,cplcHmVWmVZ(2),cplhhHmcVWmVP1(6,2),cplhhcHmVPVWm1(6,2),    & 
& cplHmcHmVPVP1(2,2),cplHmcHmVPVZ1(2,2)

Complex(dp), Intent(out) :: Amp(2,2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,2
Amp(:,gt1, gt2) = 0._dp 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MHm(gt2) 
Mex3 = MVP 


! {Fd, Fu, Fu}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFd(i1) 
ML2 = MFu(i2) 
ML3 = MFu(i3) 
coup1L = cplcFuFdcHmL(i2,i1,gt1)
coup1R = cplcFuFdcHmR(i2,i1,gt1)
coup2L = cplcFdFuHmL(i1,i3,gt2)
coup2R = cplcFdFuHmR(i1,i3,gt2)
coup3L = -cplcFuFuVPR(i3,i2)
coup3R = -cplcFuFuVPL(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {gZ, gWmC, gWmC}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcgWpCgZcHm(gt1)
coup2 = cplcgZgWpCHm(gt2)
coup3 = cplcgWpCgWpCVP
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {hh, conj[Hm], conj[Hm]}
Do i1=1,6
  Do i2=1,2
    Do i3=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = cplhhHmcHm(i1,gt2,i3)
coup3 = cplHmcHmVP(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {hh, conj[VWm], conj[Hm]}
Do i1=1,6
    Do i3=1,2
ML1 = Mhh(i1) 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplhhcHmVWm(i1,gt1)
coup2 = cplhhHmcHm(i1,gt2,i3)
coup3 = cplHmcVWmVP(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {hh, conj[Hm], conj[VWm]}
Do i1=1,6
  Do i2=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = -cplhhHmcVWm(i1,gt2)
coup3 = cplcHmVPVWm(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {hh, conj[VWm], conj[VWm]}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplhhcHmVWm(i1,gt1)
coup2 = -cplhhHmcVWm(i1,gt2)
coup3 = -cplcVWmVPVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {VP, conj[Hm], conj[Hm]}
  Do i2=1,2
    Do i3=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = cplHmcHmVP(gt2,i3)
coup3 = cplHmcHmVP(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VP, conj[VWm], conj[Hm]}
    Do i3=1,2
ML1 = MVP 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcHmVP(gt2,i3)
coup3 = cplHmcVWmVP(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do


! {VP, conj[Hm], conj[VWm]}
  Do i2=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = cplcHmVPVWm(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do


! {VP, conj[VWm], conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = -cplcVWmVPVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {VZ, conj[Hm], conj[Hm]}
  Do i2=1,2
    Do i3=1,2
ML1 = MVZ 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplHmcHmVZ(i2,gt1)
coup2 = cplHmcHmVZ(gt2,i3)
coup3 = cplHmcHmVP(i3,i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, conj[VWm], conj[Hm]}
    Do i3=1,2
ML1 = MVZ 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplHmcHmVZ(gt2,i3)
coup3 = cplHmcVWmVP(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do


! {VZ, conj[Hm], conj[VWm]}
  Do i2=1,2
ML1 = MVZ 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplHmcHmVZ(i2,gt1)
coup2 = cplHmcVWmVZ(gt2)
coup3 = cplcHmVPVWm(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do


! {VZ, conj[VWm], conj[VWm]}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplHmcVWmVZ(gt2)
coup3 = -cplcVWmVPVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {bar[Fu], bar[Fd], bar[Fd]}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFdFuHmL(i3,i1,gt2)
coup2R = cplcFdFuHmR(i3,i1,gt2)
coup3L = cplcFdFdVPL(i2,i3)
coup3R = cplcFdFdVPR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {bar[Fv], bar[Fe], bar[Fe]}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = 0._dp 
ML2 = MFe(i2) 
ML3 = MFe(i3) 
coup1L = cplcFvFecHmL(i1,i2,gt1)
coup1R = cplcFvFecHmR(i1,i2,gt1)
coup2L = cplcFeFvHmL(i3,i1,gt2)
coup2R = cplcFeFvHmR(i3,i1,gt2)
coup3L = cplcFeFeVPL(i2,i3)
coup3R = cplcFeFeVPR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {bar[gZ], bar[gWm], bar[gWm]}
ML1 = MVZ 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcgZgWmcHm(gt1)
coup2 = cplcgWmgZHm(gt2)
coup3 = cplcgWmgWmVP
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {hh, conj[VWm]}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
coup1 = -cplhhcHmVWm(i1,gt1)
coup2 = cplhhHmcVWmVP1(i1,gt2)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = cplHmcHmVPVP1(gt2,i1)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Hm, VZ}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
coup1 = -cplHmcHmVZ(i1,gt1)
coup2 = cplHmcHmVPVZ1(gt2,i1)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {hh, conj[VWm]}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
coup1 = cplhhcHmVPVWm1(i1,gt1)
coup2 = -cplhhHmcVWm(i1,gt2)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 

End Do


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = cplHmcHmVPVP1(i1,gt1)
coup2 = cplHmcHmVP(gt2,i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 

End Do


! {Hm, VZ}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
coup1 = cplHmcHmVPVZ1(i1,gt1)
coup2 = cplHmcHmVZ(gt2,i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoSV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 

End Do
  End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_HmToHmVP


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmToHmVP(MFd,MFe,MFu,Mhh,MHm,MVP,             & 
& MVWm,MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdVPL,cplcFdFdVPR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFeVPL,cplcFeFeVPR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFdFuHmL,cplcFdFuHmR,cplcFuFuVPL,cplcFuFuVPR,cplcFeFvHmL,cplcFeFvHmR,               & 
& cplcgWmgWmVP,cplcgZgWmcHm,cplcgZgWpCHm,cplcgWpCgWpCVP,cplcgWmgZHm,cplcgWpCgZcHm,       & 
& cplhhHmcHm,cplhhHmcVWm,cplhhcHmVWm,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,      & 
& cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplhhHmcVWmVP1,cplhhcHmVPVWm1,cplHmcHmVPVP1,      & 
& cplHmcHmVPVZ1,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),            & 
& cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),             & 
& cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),               & 
& cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),cplcgWmgWmVP,cplcgZgWmcHm(2),cplcgZgWpCHm(2),    & 
& cplcgWpCgWpCVP,cplcgWmgZHm(2),cplcgWpCgZcHm(2),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),     & 
& cplhhcHmVWm(6,2),cplHmcHmVP(2,2),cplHmcVWmVP(2),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),        & 
& cplcHmVPVWm(2),cplcVWmVPVWm,cplcHmVWmVZ(2),cplhhHmcVWmVP1(6,2),cplhhcHmVPVWm1(6,2),    & 
& cplHmcHmVPVP1(2,2),cplHmcHmVPVZ1(2,2)

Complex(dp), Intent(out) :: Amp(2,2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
  Do gt2=1,2
Amp(:,gt1, gt2) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MHm(gt2) 
Mex3 = MVP 


! {VP, conj[Hm], conj[Hm]}
  Do i2=1,2
    Do i3=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = cplHmcHmVP(gt2,i3)
coup3 = cplHmcHmVP(i3,i2)
Call Amp_VERTEX_StoSV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VP, conj[VWm], conj[Hm]}
    Do i3=1,2
ML1 = MVP 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcHmVP(gt2,i3)
coup3 = cplHmcVWmVP(i3)
Call Amp_VERTEX_StoSV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do


! {VP, conj[Hm], conj[VWm]}
  Do i2=1,2
ML1 = MVP 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1 = cplHmcHmVP(i2,gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = cplcHmVPVWm(i2)
Call Amp_VERTEX_StoSV_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do


! {VP, conj[VWm], conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcVWmVP(gt2)
coup3 = -cplcVWmVPVWm
Call Amp_VERTEX_StoSV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = cplHmcHmVPVP1(gt2,i1)
Call Amp_VERTEX_StoSV_Topology2_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = cplHmcHmVPVP1(i1,gt1)
coup2 = cplHmcHmVP(gt2,i1)
Call Amp_VERTEX_StoSV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 

End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmToHmVP


Subroutine Amplitude_WAVE_2HDMSCPV_HmToVPVWm(cplcHmVPVWm,cplcHmVWmVZ,ctcplcHmVPVWm,   & 
& ctcplcHmVWmVZ,MHm,MHm2,MVP,MVP2,MVWm,MVWm2,ZfHm,ZfVP,ZfVWm,Amp)

Implicit None

Real(dp), Intent(in) :: MHm(2),MHm2(2),MVP,MVP2,MVWm,MVWm2

Complex(dp), Intent(in) :: cplcHmVPVWm(2),cplcHmVWmVZ(2)

Complex(dp), Intent(in) :: ctcplcHmVPVWm(2),ctcplcHmVWmVZ(2)

Complex(dp), Intent(in) :: ZfHm(2,2),ZfVP,ZfVWm

Complex(dp), Intent(out) :: Amp(2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,2
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MVP 
Mex3 = MVWm 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1 = ctcplcHmVPVWm(gt1) 
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,2
ZcoupT1 = ZcoupT1 + 0.5_dp*Conjg(ZfHm(i1,gt1))*cplcHmVPVWm(i1)
End Do


! External Field 2 
ZcoupT1 = ZcoupT1 + 0.5_dp*ZfVP*cplcHmVPVWm(gt1)


! External Field 3 
ZcoupT1 = ZcoupT1 + 0.5_dp*ZfVWm*cplcHmVPVWm(gt1)


! Getting the amplitude 
Call TreeAmp_StoVV(Mex1,Mex2,Mex3,ZcoupT1,AmpC) 
Amp(:,gt1) = AmpC 
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_HmToVPVWm


Subroutine Amplitude_VERTEX_2HDMSCPV_HmToVPVWm(MFd,MFe,MFu,Mhh,MHm,MVP,               & 
& MVWm,MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdVPL,cplcFdFdVPR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFeVPL,cplcFeFeVPR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,           & 
& cplcgWpCgAcHm,cplcgWmgWmVP,cplcgZgWmcHm,cplcgWpCgWpCVP,cplcgAgWpCVWm,cplcgZgWpCVWm,    & 
& cplcgWmgZVWm,cplcgWpCgZcHm,cplhhHmcHm,cplhhcHmVWm,cplhhcVWmVWm,cplHmcHmVP,             & 
& cplHmcVWmVP,cplHmcHmVZ,cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,              & 
& cplhhcHmVPVWm1,cplHmcHmVPVP1,cplHmcHmVPVZ1,cplHmcHmcVWmVWm1,cplcVWmVPVPVWm3Q,          & 
& cplcVWmVPVPVWm1Q,cplcVWmVPVPVWm2Q,cplcVWmVPVWmVZ3Q,cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ1Q,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),            & 
& cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),             & 
& cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplcFeFvVWmL(3,3),& 
& cplcFeFvVWmR(3,3),cplcgWpCgAcHm(2),cplcgWmgWmVP,cplcgZgWmcHm(2),cplcgWpCgWpCVP,        & 
& cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgWmgZVWm,cplcgWpCgZcHm(2),cplhhHmcHm(6,2,2),           & 
& cplhhcHmVWm(6,2),cplhhcVWmVWm(6),cplHmcHmVP(2,2),cplHmcVWmVP(2),cplHmcHmVZ(2,2),       & 
& cplcHmVPVWm(2),cplcVWmVPVWm,cplcHmVWmVZ(2),cplcVWmVWmVZ,cplhhcHmVPVWm1(6,2),           & 
& cplHmcHmVPVP1(2,2),cplHmcHmVPVZ1(2,2),cplHmcHmcVWmVWm1(2,2),cplcVWmVPVPVWm3Q,          & 
& cplcVWmVPVPVWm1Q,cplcVWmVPVPVWm2Q,cplcVWmVPVWmVZ3Q,cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ1Q

Complex(dp), Intent(out) :: Amp(2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
Amp(:,gt1) = 0._dp 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MVP 
Mex3 = MVWm 


! {Fd, Fu, Fd}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFd(i1) 
ML2 = MFu(i2) 
ML3 = MFd(i3) 
coup1L = cplcFuFdcHmL(i2,i1,gt1)
coup1R = cplcFuFdcHmR(i2,i1,gt1)
coup2L = -cplcFdFdVPR(i1,i3)
coup2R = -cplcFdFdVPL(i1,i3)
coup3L = -cplcFdFuVWmR(i3,i2)
coup3R = -cplcFdFuVWmL(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {Fe, Fv, Fe}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFe(i1) 
ML2 = 0._dp 
ML3 = MFe(i3) 
coup1L = cplcFvFecHmL(i2,i1,gt1)
coup1R = cplcFvFecHmR(i2,i1,gt1)
coup2L = -cplcFeFeVPR(i1,i3)
coup2R = -cplcFeFeVPL(i1,i3)
coup3L = -cplcFeFvVWmR(i3,i2)
coup3R = -cplcFeFvVWmL(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {gWm, gZ, gWm}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVWm 
coup1 = cplcgZgWmcHm(gt1)
coup2 = cplcgWmgWmVP
coup3 = cplcgWmgZVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {Hm, hh, Hm}
Do i1=1,2
  Do i2=1,6
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = MHm(i3) 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2 = -cplHmcHmVP(i3,i1)
coup3 = -cplhhcHmVWm(i2,i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Hm, VP, Hm}
Do i1=1,2
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = -cplHmcHmVP(i3,i1)
coup3 = cplcHmVPVWm(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, VZ, Hm}
Do i1=1,2
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
ML3 = MHm(i3) 
coup1 = -cplHmcHmVZ(i1,gt1)
coup2 = -cplHmcHmVP(i3,i1)
coup3 = cplcHmVWmVZ(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, hh, VWm}
Do i1=1,2
  Do i2=1,6
ML1 = MHm(i1) 
ML2 = Mhh(i2) 
ML3 = MVWm 
coup1 = cplhhHmcHm(i2,i1,gt1)
coup2 = cplcHmVPVWm(i1)
coup3 = cplhhcVWmVWm(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Hm, VP, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MVWm 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = cplcHmVPVWm(i1)
coup3 = -cplcVWmVPVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
End Do


! {Hm, VZ, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
ML3 = MVWm 
coup1 = -cplHmcHmVZ(i1,gt1)
coup2 = cplcHmVPVWm(i1)
coup3 = cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
End Do


! {VWm, hh, Hm}
  Do i2=1,6
    Do i3=1,2
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = MHm(i3) 
coup1 = -cplhhcHmVWm(i2,gt1)
coup2 = cplHmcVWmVP(i3)
coup3 = -cplhhcHmVWm(i2,i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VWm, VP, Hm}
    Do i3=1,2
ML1 = MVWm 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcVWmVP(i3)
coup3 = cplcHmVPVWm(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, VZ, Hm}
    Do i3=1,2
ML1 = MVWm 
ML2 = MVZ 
ML3 = MHm(i3) 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplHmcVWmVP(i3)
coup3 = cplcHmVWmVZ(i3)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, hh, VWm}
  Do i2=1,6
ML1 = MVWm 
ML2 = Mhh(i2) 
ML3 = MVWm 
coup1 = -cplhhcHmVWm(i2,gt1)
coup2 = cplcVWmVPVWm
coup3 = cplhhcVWmVWm(i2)
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
  End Do


! {VWm, VP, VWm}
ML1 = MVWm 
ML2 = MVP 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplcVWmVPVWm
coup3 = -cplcVWmVPVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {VWm, VZ, VWm}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVWm 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplcVWmVPVWm
coup3 = cplcVWmVWmVZ
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {bar[Fu], bar[Fd], bar[Fu]}
Do i1=1,3
  Do i2=1,3
    Do i3=1,3
ML1 = MFu(i1) 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = cplcFuFdcHmL(i1,i2,gt1)
coup1R = cplcFuFdcHmR(i1,i2,gt1)
coup2L = cplcFuFuVPL(i3,i1)
coup2R = cplcFuFuVPR(i3,i1)
coup3L = cplcFdFuVWmL(i2,i3)
coup3R = cplcFdFuVWmR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_FFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(3)*AmpC 
    End Do
  End Do
End Do


! {bar[gWmC], bar[gP], bar[gWmC]}
ML1 = MVWm 
ML2 = MVP 
ML3 = MVWm 
coup1 = cplcgWpCgAcHm(gt1)
coup2 = cplcgWpCgWpCVP
coup3 = cplcgAgWpCVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {bar[gWmC], bar[gZ], bar[gWmC]}
ML1 = MVWm 
ML2 = MVZ 
ML3 = MVWm 
coup1 = cplcgWpCgZcHm(gt1)
coup2 = cplcgWpCgWpCVP
coup3 = cplcgZgWpCVWm
If ((Abs(coup1))*(Abs(coup2))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology1_UUU(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {hh, conj[Hm]}
Do i1=1,6
  Do i2=1,2
ML1 = Mhh(i1) 
ML2 = MHm(i2) 
coup1 = cplhhHmcHm(i1,i2,gt1)
coup2 = cplhhcHmVPVWm1(i1,i2)
Call Amp_VERTEX_StoVV_Topology2_SS(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {VP, conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplcVWmVPVPVWm1Q
coup2c = coup2 
coup2 = cplcVWmVPVPVWm2Q
coup2a = coup2 
coup2 = cplcVWmVPVPVWm3Q
coup2b = coup2 
If (Abs(coup1)*(Abs(coup2a)+Abs(coup2b)+Abs(coup2c)) .gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology2_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2a,coup2b,coup2c,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {VWm, VZ}
ML1 = MVWm 
ML2 = MVZ 
coup1 = cplcHmVWmVZ(gt1)
coup2 = cplcVWmVPVWmVZ1Q
coup2b = coup2 
coup2 = cplcVWmVPVWmVZ2Q
coup2c = coup2 
coup2 = cplcVWmVPVWmVZ3Q
coup2a = coup2 
If (Abs(coup1)*(Abs(coup2a)+Abs(coup2b)+Abs(coup2c)) .gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology2_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2a,coup2b,coup2c,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {Hm, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVWm 
coup1 = cplHmcHmcVWmVWm1(i1,gt1)
coup2 = cplcHmVPVWm(i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology3_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 

End Do


! {hh, conj[VWm]}
Do i1=1,6
ML1 = Mhh(i1) 
ML2 = MVWm 
coup1 = cplhhcHmVPVWm1(i1,gt1)
coup2 = cplhhcVWmVWm(i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology4_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 

End Do


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = cplHmcHmVPVP1(i1,gt1)
coup2 = cplcHmVPVWm(i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology4_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 

End Do


! {Hm, VZ}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVZ 
coup1 = cplHmcHmVPVZ1(i1,gt1)
coup2 = cplcHmVWmVZ(i1)
If (Abs(coup1)*Abs(coup2).gt.epsCoup) Then 
Call Amp_VERTEX_StoVV_Topology4_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 

End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_HmToVPVWm


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmToVPVWm(MFd,MFe,MFu,Mhh,MHm,MVP,            & 
& MVWm,MVZ,MFd2,MFe2,MFu2,Mhh2,MHm2,MVP2,MVWm2,MVZ2,cplcFdFdVPL,cplcFdFdVPR,             & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFeVPL,cplcFeFeVPR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,           & 
& cplcgWpCgAcHm,cplcgWmgWmVP,cplcgZgWmcHm,cplcgWpCgWpCVP,cplcgAgWpCVWm,cplcgZgWpCVWm,    & 
& cplcgWmgZVWm,cplcgWpCgZcHm,cplhhHmcHm,cplhhcHmVWm,cplhhcVWmVWm,cplHmcHmVP,             & 
& cplHmcVWmVP,cplHmcHmVZ,cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,              & 
& cplhhcHmVPVWm1,cplHmcHmVPVP1,cplHmcHmVPVZ1,cplHmcHmcVWmVWm1,cplcVWmVPVPVWm3Q,          & 
& cplcVWmVPVPVWm1Q,cplcVWmVPVPVWm2Q,cplcVWmVPVWmVZ3Q,cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ1Q,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFe(3),MFu(3),Mhh(6),MHm(2),MVP,MVWm,MVZ,MFd2(3),MFe2(3),MFu2(3),              & 
& Mhh2(6),MHm2(2),MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),            & 
& cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),             & 
& cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplcFeFvVWmL(3,3),& 
& cplcFeFvVWmR(3,3),cplcgWpCgAcHm(2),cplcgWmgWmVP,cplcgZgWmcHm(2),cplcgWpCgWpCVP,        & 
& cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgWmgZVWm,cplcgWpCgZcHm(2),cplhhHmcHm(6,2,2),           & 
& cplhhcHmVWm(6,2),cplhhcVWmVWm(6),cplHmcHmVP(2,2),cplHmcVWmVP(2),cplHmcHmVZ(2,2),       & 
& cplcHmVPVWm(2),cplcVWmVPVWm,cplcHmVWmVZ(2),cplcVWmVWmVZ,cplhhcHmVPVWm1(6,2),           & 
& cplHmcHmVPVP1(2,2),cplHmcHmVPVZ1(2,2),cplHmcHmcVWmVWm1(2,2),cplcVWmVPVPVWm3Q,          & 
& cplcVWmVPVPVWm1Q,cplcVWmVPVPVWm2Q,cplcVWmVPVWmVZ3Q,cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ1Q

Complex(dp), Intent(out) :: Amp(2,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,2
Amp(:,gt1) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MHm(gt1) 
Mex2 = MVP 
Mex3 = MVWm 


! {Hm, VP, Hm}
Do i1=1,2
    Do i3=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = -cplHmcHmVP(i3,i1)
coup3 = cplcHmVPVWm(i3)
Call Amp_VERTEX_StoVV_Topology1_SVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Hm, VP, VWm}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
ML3 = MVWm 
coup1 = -cplHmcHmVP(i1,gt1)
coup2 = cplcHmVPVWm(i1)
coup3 = -cplcVWmVPVWm
Call Amp_VERTEX_StoVV_Topology1_SVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
End Do


! {VWm, VP, Hm}
    Do i3=1,2
ML1 = MVWm 
ML2 = MVP 
ML3 = MHm(i3) 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplHmcVWmVP(i3)
coup3 = cplcHmVPVWm(i3)
Call Amp_VERTEX_StoVV_Topology1_VVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 
    End Do


! {VWm, VP, VWm}
ML1 = MVWm 
ML2 = MVP 
ML3 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplcVWmVPVWm
coup3 = -cplcVWmVPVWm
Call Amp_VERTEX_StoVV_Topology1_VVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1,coup2,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {VP, conj[VWm]}
ML1 = MVP 
ML2 = MVWm 
coup1 = cplcHmVPVWm(gt1)
coup2 = cplcVWmVPVPVWm1Q
coup2c = coup2 
coup2 = cplcVWmVPVPVWm2Q
coup2a = coup2 
coup2 = cplcVWmVPVPVWm3Q
coup2b = coup2 
Call Amp_VERTEX_StoVV_Topology2_VV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2a,coup2b,coup2c,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 


! {Hm, VP}
Do i1=1,2
ML1 = MHm(i1) 
ML2 = MVP 
coup1 = cplHmcHmVPVP1(i1,gt1)
coup2 = cplcHmVPVWm(i1)
Call Amp_VERTEX_StoVV_Topology4_SV(Mex1,Mex2,Mex3,ML1,ML2,coup1,coup2,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1) = Amp(:,gt1) + oo16pi2*(1)*AmpC 

End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_HmToVPVWm



End Module OneLoopDecay_Hm_2HDMSCPV
