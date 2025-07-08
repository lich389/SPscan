! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.1 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 13:08 on 9.6.2025   
! ----------------------------------------------------------------------  
 
 
Module OneLoopDecay_Fd_2HDMSCPV
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

Subroutine Amplitude_Tree_2HDMSCPV_FdToFdhh(cplcFdFdhhL,cplcFdFdhhR,MFd,              & 
& Mhh,MFd2,Mhh2,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),Mhh(6),MFd2(3),Mhh2(6)

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6)

Complex(dp) :: Amp(2,3,3,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 

Do gt1=1,3
  Do gt2=1,3
    Do gt3=1,6
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = Mhh(gt3) 
! Tree-Level Vertex 
coupT1L = cplcFdFdhhL(gt1,gt2,gt3)
coupT1R = cplcFdFdhhR(gt1,gt2,gt3)
Call TreeAmp_FtoFS(Mex1,Mex2,Mex3,coupT1L,coupT1R,AmpC) 
! Colour and symmetry factor 
Amp(:,gt1, gt2, gt3) = AmpC 
    End Do
  End Do
End Do
End Subroutine Amplitude_Tree_2HDMSCPV_FdToFdhh


Subroutine Gamma_Real_2HDMSCPV_FdToFdhh(MLambda,em,gs,cplcFdFdhhL,cplcFdFdhhR,        & 
& MFd,Mhh,GammarealPhoton,GammarealGluon)

Implicit None

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6)

Real(dp), Intent(in) :: MFd(3),Mhh(6)

Real(dp), Intent(in) :: MLambda, em, gs 

Real(dp), Intent(out) :: GammarealPhoton(3,3,6), GammarealGluon(3,3,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 

Real(dp) :: Mloop1, Mloop2, Mloop3 
Complex(dp) :: CoupL, CoupR 
 
Do i1=1,3
  Do i2=1,3
    Do i3=2,6
CoupL = cplcFdFdhhL(i1,i2,i3)
CoupR = cplcFdFdhhR(i1,i2,i3)
Mex1 = MFd(i1)
Mex2 = MFd(i2)
Mex3 = Mhh(i3)
If (Abs(Mex1).gt.(Abs(Mex2)+Abs(Mex3))) Then 
 Call hardradiationFFS(Mex1,Mex2,Mex3,MLambda,em,1._dp/9._dp,1._dp/9._dp,0._dp,1._dp/9._dp,0._dp,0._dp,CoupL,CoupR,Gammarealphoton(i1,i2,i3),kont)
 Call hardradiationFFS(Mex1,Mex2,Mex3,MLambda,gs,4._dp/3._dp,4._dp/3._dp,0._dp,4._dp/3._dp,0._dp,0._dp,CoupL,CoupR,Gammarealgluon(i1,i2,i3),kont)
Else 
  GammarealGluon(i1,i2,i3) = 0._dp 
  GammarealPhoton(i1,i2,i3) = 0._dp 

End if 
    End Do
  End Do
End Do
End Subroutine Gamma_Real_2HDMSCPV_FdToFdhh


Subroutine Amplitude_WAVE_2HDMSCPV_FdToFdhh(cplcFdFdhhL,cplcFdFdhhR,ctcplcFdFdhhL,    & 
& ctcplcFdFdhhR,MFd,MFd2,Mhh,Mhh2,ZfDL,ZfDR,Zfhh,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFd2(3),Mhh(6),Mhh2(6)

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6)

Complex(dp), Intent(in) :: ctcplcFdFdhhL(3,3,6),ctcplcFdFdhhR(3,3,6)

Complex(dp), Intent(in) :: ZfDL(3,3),ZfDR(3,3),Zfhh(6,6)

Complex(dp), Intent(out) :: Amp(2,3,3,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,3
  Do gt2=1,3
    Do gt3=1,6
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = Mhh(gt3) 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1L = ctcplcFdFdhhL(gt1,gt2,gt3) 
ZcoupT1R = ctcplcFdFdhhR(gt1,gt2,gt3) 
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfDR(i1,gt1)*cplcFdFdhhL(i1,gt2,gt3)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfDL(i1,gt1))*cplcFdFdhhR(i1,gt2,gt3)
End Do


! External Field 2 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfDL(i1,gt2)*cplcFdFdhhL(gt1,i1,gt3)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfDR(i1,gt2))*cplcFdFdhhR(gt1,i1,gt3)
End Do


! External Field 3 
Do i1=1,6
ZcoupT1L = ZcoupT1L + 0.5_dp*Zfhh(i1,gt3)*cplcFdFdhhL(gt1,gt2,i1)
ZcoupT1R = ZcoupT1R + 0.5_dp*Zfhh(i1,gt3)*cplcFdFdhhR(gt1,gt2,i1)
End Do


! Getting the amplitude 
Call TreeAmp_FtoFS(Mex1,Mex2,Mex3,ZcoupT1L,ZcoupT1R,AmpC) 
Amp(:,gt1, gt2, gt3) = AmpC 
    End Do
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_FdToFdhh


Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFdhh(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,           & 
& MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,      & 
& cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFuFdcHmL,              & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,          & 
& cplcFdFuHmR,cplcFdFuVWmL,cplcFdFuVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),& 
& cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFuFuhhL(3,3,6),          & 
& cplcFuFuhhR(3,3,6),cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFdFuVWmL(3,3),            & 
& cplcFdFuVWmR(3,3),cplhhhhhh(6,6,6),cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),  & 
& cplhhcHmVWm(6,2),cplhhcVWmVWm(6),cplhhVZVZ(6)

Complex(dp), Intent(out) :: Amp(2,3,3,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
    Do gt3=1,6
Amp(:,gt1, gt2, gt3) = 0._dp 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = Mhh(gt3) 


! {Fd, hh, hh}
Do i1=1,3
  Do i2=1,6
    Do i3=1,6
ML1 = MFd(i1) 
ML2 = Mhh(i2) 
ML3 = Mhh(i3) 
coup1L = cplcFdFdhhL(gt1,i1,i2)
coup1R = cplcFdFdhhR(gt1,i1,i2)
coup2L = cplcFdFdhhL(i1,gt2,i3)
coup2R = cplcFdFdhhR(i1,gt2,i3)
coup3 = cplhhhhhh(gt3,i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Fd, VZ, hh}
Do i1=1,3
    Do i3=1,6
ML1 = MFd(i1) 
ML2 = MVZ 
ML3 = Mhh(i3) 
coup1L = -cplcFdFdVZR(gt1,i1)
coup1R = -cplcFdFdVZL(gt1,i1)
coup2L = cplcFdFdhhL(i1,gt2,i3)
coup2R = cplcFdFdhhR(i1,gt2,i3)
coup3 = -cplhhhhVZ(gt3,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fd, hh, VZ}
Do i1=1,3
  Do i2=1,6
ML1 = MFd(i1) 
ML2 = Mhh(i2) 
ML3 = MVZ 
coup1L = cplcFdFdhhL(gt1,i1,i2)
coup1R = cplcFdFdhhR(gt1,i1,i2)
coup2L = -cplcFdFdVZR(i1,gt2)
coup2R = -cplcFdFdVZL(i1,gt2)
coup3 = -cplhhhhVZ(gt3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fd, VZ, VZ}
Do i1=1,3
ML1 = MFd(i1) 
ML2 = MVZ 
ML3 = MVZ 
coup1L = -cplcFdFdVZR(gt1,i1)
coup1R = -cplcFdFdVZL(gt1,i1)
coup2L = -cplcFdFdVZR(i1,gt2)
coup2R = -cplcFdFdVZL(i1,gt2)
coup3 = cplhhVZVZ(gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
End Do


! {Fu, conj[Hm], conj[Hm]}
Do i1=1,3
  Do i2=1,2
    Do i3=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = cplcFuFdcHmL(i1,gt2,i3)
coup2R = cplcFuFdcHmR(i1,gt2,i3)
coup3 = cplhhHmcHm(gt3,i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Fu, conj[VWm], conj[Hm]}
Do i1=1,3
    Do i3=1,2
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1L = -cplcFdFuVWmR(gt1,i1)
coup1R = -cplcFdFuVWmL(gt1,i1)
coup2L = cplcFuFdcHmL(i1,gt2,i3)
coup2R = cplcFuFdcHmR(i1,gt2,i3)
coup3 = -cplhhHmcVWm(gt3,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fu, conj[Hm], conj[VWm]}
Do i1=1,3
  Do i2=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = -cplcFuFdcVWmR(i1,gt2)
coup2R = -cplcFuFdcVWmL(i1,gt2)
coup3 = -cplhhcHmVWm(gt3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fu, conj[VWm], conj[VWm]}
Do i1=1,3
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MVWm 
coup1L = -cplcFdFuVWmR(gt1,i1)
coup1R = -cplcFdFuVWmL(gt1,i1)
coup2L = -cplcFuFdcVWmR(i1,gt2)
coup2R = -cplcFuFdcVWmL(i1,gt2)
coup3 = cplhhcVWmVWm(gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
End Do


! {hh, bar[Fd], bar[Fd]}
Do i1=1,6
  Do i2=1,3
    Do i3=1,3
ML1 = Mhh(i1) 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdhhL(gt1,i2,i1)
coup1R = cplcFdFdhhR(gt1,i2,i1)
coup2L = cplcFdFdhhL(i3,gt2,i1)
coup2R = cplcFdFdhhR(i3,gt2,i1)
coup3L = cplcFdFdhhL(i2,i3,gt3)
coup3R = cplcFdFdhhR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_SFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Hm, bar[Fu], bar[Fu]}
Do i1=1,2
  Do i2=1,3
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = MFu(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFuHmL(gt1,i2,i1)
coup1R = cplcFdFuHmR(gt1,i2,i1)
coup2L = cplcFuFdcHmL(i3,gt2,i1)
coup2R = cplcFuFdcHmR(i3,gt2,i1)
coup3L = cplcFuFuhhL(i2,i3,gt3)
coup3R = cplcFuFuhhR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_SFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {VG, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = -cplcFdFdVGR(gt1,i2)
coup1R = -cplcFdFdVGL(gt1,i2)
coup2L = -cplcFdFdVGR(i3,gt2)
coup2R = -cplcFdFdVGL(i3,gt2)
coup3L = cplcFdFdhhL(i2,i3,gt3)
coup3R = cplcFdFdhhR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(4._dp/3._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = -cplcFdFdVPR(gt1,i2)
coup1R = -cplcFdFdVPL(gt1,i2)
coup2L = -cplcFdFdVPR(i3,gt2)
coup2R = -cplcFdFdVPL(i3,gt2)
coup3L = cplcFdFdhhL(i2,i3,gt3)
coup3R = cplcFdFdhhR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VWm, bar[Fu], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVWm 
ML2 = MFu(i2) 
ML3 = MFu(i3) 
coup1L = -cplcFdFuVWmR(gt1,i2)
coup1R = -cplcFdFuVWmL(gt1,i2)
coup2L = -cplcFuFdcVWmR(i3,gt2)
coup2R = -cplcFuFdcVWmL(i3,gt2)
coup3L = cplcFuFuhhL(i2,i3,gt3)
coup3R = cplcFuFuhhR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVZ 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = -cplcFdFdVZR(gt1,i2)
coup1R = -cplcFdFdVZL(gt1,i2)
coup2L = -cplcFdFdVZR(i3,gt2)
coup2R = -cplcFdFdVZL(i3,gt2)
coup3L = cplcFdFdhhL(i2,i3,gt3)
coup3R = cplcFdFdhhR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
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
End Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFdhh


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFdhh(MFd,MFu,Mhh,MHm,MVG,MVP,             & 
& MVWm,MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,         & 
& cplcFdFuHmL,cplcFdFuHmR,cplcFdFuVWmL,cplcFdFuVWmR,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,      & 
& cplhhHmcVWm,cplhhcHmVWm,cplhhcVWmVWm,cplhhVZVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),& 
& cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFuFuhhL(3,3,6),          & 
& cplcFuFuhhR(3,3,6),cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFdFuVWmL(3,3),            & 
& cplcFdFuVWmR(3,3),cplhhhhhh(6,6,6),cplhhhhVZ(6,6),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),  & 
& cplhhcHmVWm(6,2),cplhhcVWmVWm(6),cplhhVZVZ(6)

Complex(dp), Intent(out) :: Amp(2,3,3,6) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
    Do gt3=1,6
Amp(:,gt1, gt2, gt3) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = Mhh(gt3) 


! {VG, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = -cplcFdFdVGR(gt1,i2)
coup1R = -cplcFdFdVGL(gt1,i2)
coup2L = -cplcFdFdVGR(i3,gt2)
coup2R = -cplcFdFdVGL(i3,gt2)
coup3L = cplcFdFdhhL(i2,i3,gt3)
coup3R = cplcFdFdhhR(i2,i3,gt3)
Call Amp_VERTEX_FtoFS_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(4._dp/3._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = -cplcFdFdVPR(gt1,i2)
coup1R = -cplcFdFdVPL(gt1,i2)
coup2L = -cplcFdFdVPR(i3,gt2)
coup2R = -cplcFdFdVPL(i3,gt2)
coup3L = cplcFdFdhhL(i2,i3,gt3)
coup3R = cplcFdFdhhR(i2,i3,gt3)
Call Amp_VERTEX_FtoFS_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
    End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFdhh


Subroutine Amplitude_Tree_2HDMSCPV_FdToFdVZ(cplcFdFdVZL,cplcFdFdVZR,MFd,              & 
& MVZ,MFd2,MVZ2,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MVZ,MFd2(3),MVZ2

Complex(dp), Intent(in) :: cplcFdFdVZL(3,3),cplcFdFdVZR(3,3)

Complex(dp) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 

Do gt1=1,3
  Do gt2=1,3
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = MVZ 
! Tree-Level Vertex 
coupT1L = cplcFdFdVZL(gt1,gt2)
coupT1R = cplcFdFdVZR(gt1,gt2)
Call TreeAmp_FtoFV(Mex1,Mex2,Mex3,coupT1R,coupT1L,AmpC) 
! Colour and symmetry factor 
Amp(:,gt1, gt2) = -AmpC 
  End Do
End Do
End Subroutine Amplitude_Tree_2HDMSCPV_FdToFdVZ


Subroutine Gamma_Real_2HDMSCPV_FdToFdVZ(MLambda,em,gs,cplcFdFdVZL,cplcFdFdVZR,        & 
& MFd,MVZ,GammarealPhoton,GammarealGluon)

Implicit None

Complex(dp), Intent(in) :: cplcFdFdVZL(3,3),cplcFdFdVZR(3,3)

Real(dp), Intent(in) :: MFd(3),MVZ

Real(dp), Intent(in) :: MLambda, em, gs 

Real(dp), Intent(out) :: GammarealPhoton(3,3), GammarealGluon(3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 

Real(dp) :: Mloop1, Mloop2, Mloop3 
Complex(dp) :: CoupL, CoupR 
 
Do i1=1,3
  Do i2=1,3
CoupL = cplcFdFdVZL(i1,i2)
CoupR = cplcFdFdVZR(i1,i2)
Mex1 = MFd(i1)
Mex2 = MFd(i2)
Mex3 = MVZ
If (Abs(Mex1).gt.(Abs(Mex2)+Abs(Mex3))) Then 
  Call hardphotonFFZ(Mex1,Mex2,Mex3,MLambda,-1._dp/3._dp,-1._dp/3._dp,CoupL,CoupR,(0,1)*em,GammaRealPhoton(i1,i2),kont)
  Call hardgluonFFZW(Mex1,Mex2,Mex3,MLambda,4._dp/3._dp,gs,CoupL,CoupR,Gammarealgluon(i1,i2),kont)
Else 
  GammarealGluon(i1,i2) = 0._dp 
  GammarealPhoton(i1,i2) = 0._dp 

End if 
  End Do
End Do
End Subroutine Gamma_Real_2HDMSCPV_FdToFdVZ


Subroutine Amplitude_WAVE_2HDMSCPV_FdToFdVZ(cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,      & 
& cplcFdFdVZR,ctcplcFdFdVPL,ctcplcFdFdVPR,ctcplcFdFdVZL,ctcplcFdFdVZR,MFd,               & 
& MFd2,MVP,MVP2,MVZ,MVZ2,ZfDL,ZfDR,ZfVPVZ,ZfVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFd2(3),MVP,MVP2,MVZ,MVZ2

Complex(dp), Intent(in) :: cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3)

Complex(dp), Intent(in) :: ctcplcFdFdVPL(3,3),ctcplcFdFdVPR(3,3),ctcplcFdFdVZL(3,3),ctcplcFdFdVZR(3,3)

Complex(dp), Intent(in) :: ZfDL(3,3),ZfDR(3,3),ZfVPVZ,ZfVZ

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,3
  Do gt2=1,3
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = MVZ 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1L = ctcplcFdFdVZL(gt1,gt2) 
ZcoupT1R = ctcplcFdFdVZR(gt1,gt2)
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*Conjg(ZfDL(i1,gt1))*cplcFdFdVZL(i1,gt2)
ZcoupT1R = ZcoupT1R + 0.5_dp*ZfDR(i1,gt1)*cplcFdFdVZR(i1,gt2)
End Do


! External Field 2 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfDL(i1,gt2)*cplcFdFdVZL(gt1,i1)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfDR(i1,gt2))*cplcFdFdVZR(gt1,i1)
End Do


! External Field 3 
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfVPVZ*cplcFdFdVPL(gt1,gt2)
ZcoupT1R = ZcoupT1R + 0.5_dp*ZfVPVZ*cplcFdFdVPR(gt1,gt2)
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfVZ*cplcFdFdVZL(gt1,gt2)
ZcoupT1R = ZcoupT1R + 0.5_dp*ZfVZ*cplcFdFdVZR(gt1,gt2)


! Getting the amplitude 
Call TreeAmp_FtoFV(Mex1,Mex2,Mex3,ZcoupT1R,ZcoupT1L,AmpC) 
Amp(:,gt1, gt2) = -AmpC 
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_FdToFdVZ


Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFdVZ(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,           & 
& MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,      & 
& cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFuFdcHmL,              & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFdFuHmL,cplcFdFuHmR,cplcFdFuVWmL,         & 
& cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,       & 
& cplcHmVWmVZ,cplcVWmVWmVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),& 
& cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFdFuHmL(3,3,2),          & 
& cplcFdFuHmR(3,3,2),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplcFuFuVZL(3,3),               & 
& cplcFuFuVZR(3,3),cplhhhhVZ(6,6),cplhhVZVZ(6),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),           & 
& cplcHmVWmVZ(2),cplcVWmVWmVZ

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
Amp(:,gt1, gt2) = 0._dp 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = MVZ 


! {Fd, hh, hh}
Do i1=1,3
  Do i2=1,6
    Do i3=1,6
ML1 = MFd(i1) 
ML2 = Mhh(i2) 
ML3 = Mhh(i3) 
coup1L = cplcFdFdhhL(gt1,i1,i2)
coup1R = cplcFdFdhhR(gt1,i1,i2)
coup2L = cplcFdFdhhL(i1,gt2,i3)
coup2R = cplcFdFdhhR(i1,gt2,i3)
coup3 = -cplhhhhVZ(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Fd, VZ, hh}
Do i1=1,3
    Do i3=1,6
ML1 = MFd(i1) 
ML2 = MVZ 
ML3 = Mhh(i3) 
coup1L = cplcFdFdVZL(gt1,i1)
coup1R = cplcFdFdVZR(gt1,i1)
coup2L = cplcFdFdhhL(i1,gt2,i3)
coup2R = cplcFdFdhhR(i1,gt2,i3)
coup3 = cplhhVZVZ(i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fd, hh, VZ}
Do i1=1,3
  Do i2=1,6
ML1 = MFd(i1) 
ML2 = Mhh(i2) 
ML3 = MVZ 
coup1L = cplcFdFdhhL(gt1,i1,i2)
coup1R = cplcFdFdhhR(gt1,i1,i2)
coup2L = cplcFdFdVZL(i1,gt2)
coup2R = cplcFdFdVZR(i1,gt2)
coup3 = cplhhVZVZ(i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fu, conj[Hm], conj[Hm]}
Do i1=1,3
  Do i2=1,2
    Do i3=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = cplcFuFdcHmL(i1,gt2,i3)
coup2R = cplcFuFdcHmR(i1,gt2,i3)
coup3 = cplHmcHmVZ(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Fu, conj[VWm], conj[Hm]}
Do i1=1,3
    Do i3=1,2
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1L = cplcFdFuVWmL(gt1,i1)
coup1R = cplcFdFuVWmR(gt1,i1)
coup2L = cplcFuFdcHmL(i1,gt2,i3)
coup2R = cplcFuFdcHmR(i1,gt2,i3)
coup3 = cplHmcVWmVZ(i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fu, conj[Hm], conj[VWm]}
Do i1=1,3
  Do i2=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = cplcFuFdcVWmL(i1,gt2)
coup2R = cplcFuFdcVWmR(i1,gt2)
coup3 = cplcHmVWmVZ(i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fu, conj[VWm], conj[VWm]}
Do i1=1,3
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MVWm 
coup1L = cplcFdFuVWmL(gt1,i1)
coup1R = cplcFdFuVWmR(gt1,i1)
coup2L = cplcFuFdcVWmL(i1,gt2)
coup2R = cplcFuFdcVWmR(i1,gt2)
coup3 = cplcVWmVWmVZ
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {hh, bar[Fd], bar[Fd]}
Do i1=1,6
  Do i2=1,3
    Do i3=1,3
ML1 = Mhh(i1) 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdhhL(gt1,i2,i1)
coup1R = cplcFdFdhhR(gt1,i2,i1)
coup2L = cplcFdFdhhL(i3,gt2,i1)
coup2R = cplcFdFdhhR(i3,gt2,i1)
coup3L = cplcFdFdVZL(i2,i3)
coup3R = cplcFdFdVZR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_SFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Hm, bar[Fu], bar[Fu]}
Do i1=1,2
  Do i2=1,3
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = MFu(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFuHmL(gt1,i2,i1)
coup1R = cplcFdFuHmR(gt1,i2,i1)
coup2L = cplcFuFdcHmL(i3,gt2,i1)
coup2R = cplcFuFdcHmR(i3,gt2,i1)
coup3L = cplcFuFuVZL(i2,i3)
coup3R = cplcFuFuVZR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_SFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {VG, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVGL(gt1,i2)
coup1R = cplcFdFdVGR(gt1,i2)
coup2L = cplcFdFdVGL(i3,gt2)
coup2R = cplcFdFdVGR(i3,gt2)
coup3L = cplcFdFdVZL(i2,i3)
coup3R = cplcFdFdVZR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(4._dp/3._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVPL(gt1,i2)
coup1R = cplcFdFdVPR(gt1,i2)
coup2L = cplcFdFdVPL(i3,gt2)
coup2R = cplcFdFdVPR(i3,gt2)
coup3L = cplcFdFdVZL(i2,i3)
coup3R = cplcFdFdVZR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VWm, bar[Fu], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVWm 
ML2 = MFu(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFuVWmL(gt1,i2)
coup1R = cplcFdFuVWmR(gt1,i2)
coup2L = cplcFuFdcVWmL(i3,gt2)
coup2R = cplcFuFdcVWmR(i3,gt2)
coup3L = cplcFuFuVZL(i2,i3)
coup3R = cplcFuFuVZR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVZ 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVZL(gt1,i2)
coup1R = cplcFdFdVZR(gt1,i2)
coup2L = cplcFdFdVZL(i3,gt2)
coup2R = cplcFdFdVZR(i3,gt2)
coup3L = cplcFdFdVZL(i2,i3)
coup3R = cplcFdFdVZR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
  End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFdVZ


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFdVZ(MFd,MFu,Mhh,MHm,MVG,MVP,             & 
& MVWm,MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFdFuHmL,cplcFdFuHmR,         & 
& cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,      & 
& cplHmcVWmVZ,cplcHmVWmVZ,cplcVWmVWmVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),& 
& cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFdFuHmL(3,3,2),          & 
& cplcFdFuHmR(3,3,2),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplcFuFuVZL(3,3),               & 
& cplcFuFuVZR(3,3),cplhhhhVZ(6,6),cplhhVZVZ(6),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),           & 
& cplcHmVWmVZ(2),cplcVWmVWmVZ

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
Amp(:,gt1, gt2) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = MVZ 


! {VG, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVGL(gt1,i2)
coup1R = cplcFdFdVGR(gt1,i2)
coup2L = cplcFdFdVGL(i3,gt2)
coup2R = cplcFdFdVGR(i3,gt2)
coup3L = cplcFdFdVZL(i2,i3)
coup3R = cplcFdFdVZR(i2,i3)
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(4._dp/3._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVPL(gt1,i2)
coup1R = cplcFdFdVPR(gt1,i2)
coup2L = cplcFdFdVPL(i3,gt2)
coup2R = cplcFdFdVPR(i3,gt2)
coup3L = cplcFdFdVZL(i2,i3)
coup3R = cplcFdFdVZR(i2,i3)
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFdVZ


Subroutine Amplitude_Tree_2HDMSCPV_FdToFuHm(cplcFdFuHmL,cplcFdFuHmR,MFd,              & 
& MFu,MHm,MFd2,MFu2,MHm2,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),MHm(2),MFd2(3),MFu2(3),MHm2(2)

Complex(dp), Intent(in) :: cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2)

Complex(dp) :: Amp(2,3,3,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 

Do gt1=1,3
  Do gt2=1,3
    Do gt3=1,2
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MHm(gt3) 
! Tree-Level Vertex 
coupT1L = cplcFdFuHmL(gt1,gt2,gt3)
coupT1R = cplcFdFuHmR(gt1,gt2,gt3)
Call TreeAmp_FtoFS(Mex1,Mex2,Mex3,coupT1L,coupT1R,AmpC) 
! Colour and symmetry factor 
Amp(:,gt1, gt2, gt3) = AmpC 
    End Do
  End Do
End Do
End Subroutine Amplitude_Tree_2HDMSCPV_FdToFuHm


Subroutine Gamma_Real_2HDMSCPV_FdToFuHm(MLambda,em,gs,cplcFdFuHmL,cplcFdFuHmR,        & 
& MFd,MFu,MHm,GammarealPhoton,GammarealGluon)

Implicit None

Complex(dp), Intent(in) :: cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2)

Real(dp), Intent(in) :: MFd(3),MFu(3),MHm(2)

Real(dp), Intent(in) :: MLambda, em, gs 

Real(dp), Intent(out) :: GammarealPhoton(3,3,2), GammarealGluon(3,3,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 

Real(dp) :: Mloop1, Mloop2, Mloop3 
Complex(dp) :: CoupL, CoupR 
 
Do i1=1,3
  Do i2=1,3
    Do i3=2,2
CoupL = cplcFdFuHmL(i1,i2,i3)
CoupR = cplcFdFuHmR(i1,i2,i3)
Mex1 = MFd(i1)
Mex2 = MFu(i2)
Mex3 = MHm(i3)
If (Abs(Mex1).gt.(Abs(Mex2)+Abs(Mex3))) Then 
 Call hardradiationFFS(Mex1,Mex2,Mex3,MLambda,em,1._dp/9._dp,-2._dp/9._dp,1._dp/3._dp,4._dp/9._dp,-2._dp/3._dp,1._dp,CoupL,CoupR,Gammarealphoton(i1,i2,i3),kont)
 Call hardradiationFFS(Mex1,Mex2,Mex3,MLambda,gs,4._dp/3._dp,4._dp/3._dp,0._dp,4._dp/3._dp,0._dp,0._dp,CoupL,CoupR,Gammarealgluon(i1,i2,i3),kont)
Else 
  GammarealGluon(i1,i2,i3) = 0._dp 
  GammarealPhoton(i1,i2,i3) = 0._dp 

End if 
    End Do
  End Do
End Do
End Subroutine Gamma_Real_2HDMSCPV_FdToFuHm


Subroutine Amplitude_WAVE_2HDMSCPV_FdToFuHm(cplcFdFuHmL,cplcFdFuHmR,ctcplcFdFuHmL,    & 
& ctcplcFdFuHmR,MFd,MFd2,MFu,MFu2,MHm,MHm2,ZfDL,ZfDR,ZfHm,ZfUL,ZfUR,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFd2(3),MFu(3),MFu2(3),MHm(2),MHm2(2)

Complex(dp), Intent(in) :: cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2)

Complex(dp), Intent(in) :: ctcplcFdFuHmL(3,3,2),ctcplcFdFuHmR(3,3,2)

Complex(dp), Intent(in) :: ZfDL(3,3),ZfDR(3,3),ZfHm(2,2),ZfUL(3,3),ZfUR(3,3)

Complex(dp), Intent(out) :: Amp(2,3,3,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,3
  Do gt2=1,3
    Do gt3=1,2
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MHm(gt3) 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1L = ctcplcFdFuHmL(gt1,gt2,gt3) 
ZcoupT1R = ctcplcFdFuHmR(gt1,gt2,gt3) 
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfDR(i1,gt1)*cplcFdFuHmL(i1,gt2,gt3)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfDL(i1,gt1))*cplcFdFuHmR(i1,gt2,gt3)
End Do


! External Field 2 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfUL(i1,gt2)*cplcFdFuHmL(gt1,i1,gt3)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfUR(i1,gt2))*cplcFdFuHmR(gt1,i1,gt3)
End Do


! External Field 3 
Do i1=1,2
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfHm(i1,gt3)*cplcFdFuHmL(gt1,gt2,i1)
ZcoupT1R = ZcoupT1R + 0.5_dp*ZfHm(i1,gt3)*cplcFdFuHmR(gt1,gt2,i1)
End Do


! Getting the amplitude 
Call TreeAmp_FtoFS(Mex1,Mex2,Mex3,ZcoupT1L,ZcoupT1R,AmpC) 
Amp(:,gt1, gt2, gt3) = AmpC 
    End Do
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_FdToFuHm


Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFuHm(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,           & 
& MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,      & 
& cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,               & 
& cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplhhHmcHm,              & 
& cplhhHmcVWm,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFuhhL(3,3,6),& 
& cplcFuFuhhR(3,3,6),cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFuFuVGL(3,3),             & 
& cplcFuFuVGR(3,3),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),& 
& cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),cplHmcHmVP(2,2),  & 
& cplHmcVWmVP(2),cplHmcHmVZ(2,2),cplHmcVWmVZ(2)

Complex(dp), Intent(out) :: Amp(2,3,3,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
    Do gt3=1,2
Amp(:,gt1, gt2, gt3) = 0._dp 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MHm(gt3) 


! {Fd, hh, Hm}
Do i1=1,3
  Do i2=1,6
    Do i3=1,2
ML1 = MFd(i1) 
ML2 = Mhh(i2) 
ML3 = MHm(i3) 
coup1L = cplcFdFdhhL(gt1,i1,i2)
coup1R = cplcFdFdhhR(gt1,i1,i2)
coup2L = cplcFdFuHmL(i1,gt2,i3)
coup2R = cplcFdFuHmR(i1,gt2,i3)
coup3 = cplhhHmcHm(i2,gt3,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Fd, VP, Hm}
Do i1=1,3
    Do i3=1,2
ML1 = MFd(i1) 
ML2 = MVP 
ML3 = MHm(i3) 
coup1L = -cplcFdFdVPR(gt1,i1)
coup1R = -cplcFdFdVPL(gt1,i1)
coup2L = cplcFdFuHmL(i1,gt2,i3)
coup2R = cplcFdFuHmR(i1,gt2,i3)
coup3 = -cplHmcHmVP(gt3,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fd, VZ, Hm}
Do i1=1,3
    Do i3=1,2
ML1 = MFd(i1) 
ML2 = MVZ 
ML3 = MHm(i3) 
coup1L = -cplcFdFdVZR(gt1,i1)
coup1R = -cplcFdFdVZL(gt1,i1)
coup2L = cplcFdFuHmL(i1,gt2,i3)
coup2R = cplcFdFuHmR(i1,gt2,i3)
coup3 = -cplHmcHmVZ(gt3,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fd, hh, VWm}
Do i1=1,3
  Do i2=1,6
ML1 = MFd(i1) 
ML2 = Mhh(i2) 
ML3 = MVWm 
coup1L = cplcFdFdhhL(gt1,i1,i2)
coup1R = cplcFdFdhhR(gt1,i1,i2)
coup2L = -cplcFdFuVWmR(i1,gt2)
coup2R = -cplcFdFuVWmL(i1,gt2)
coup3 = cplhhHmcVWm(i2,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fd, VP, VWm}
Do i1=1,3
ML1 = MFd(i1) 
ML2 = MVP 
ML3 = MVWm 
coup1L = -cplcFdFdVPR(gt1,i1)
coup1R = -cplcFdFdVPL(gt1,i1)
coup2L = -cplcFdFuVWmR(i1,gt2)
coup2R = -cplcFdFuVWmL(i1,gt2)
coup3 = cplHmcVWmVP(gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
End Do


! {Fd, VZ, VWm}
Do i1=1,3
ML1 = MFd(i1) 
ML2 = MVZ 
ML3 = MVWm 
coup1L = -cplcFdFdVZR(gt1,i1)
coup1R = -cplcFdFdVZL(gt1,i1)
coup2L = -cplcFdFuVWmR(i1,gt2)
coup2R = -cplcFdFuVWmL(i1,gt2)
coup3 = cplHmcVWmVZ(gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
End Do


! {Fu, conj[Hm], hh}
Do i1=1,3
  Do i2=1,2
    Do i3=1,6
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = Mhh(i3) 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = cplcFuFuhhL(i1,gt2,i3)
coup2R = cplcFuFuhhR(i1,gt2,i3)
coup3 = cplhhHmcHm(i3,gt3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Fu, conj[VWm], hh}
Do i1=1,3
    Do i3=1,6
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = Mhh(i3) 
coup1L = -cplcFdFuVWmR(gt1,i1)
coup1R = -cplcFdFuVWmL(gt1,i1)
coup2L = cplcFuFuhhL(i1,gt2,i3)
coup2R = cplcFuFuhhR(i1,gt2,i3)
coup3 = cplhhHmcVWm(i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fu, conj[Hm], VP}
Do i1=1,3
  Do i2=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MVP 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = -cplcFuFuVPR(i1,gt2)
coup2R = -cplcFuFuVPL(i1,gt2)
coup3 = -cplHmcHmVP(gt3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fu, conj[VWm], VP}
Do i1=1,3
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MVP 
coup1L = -cplcFdFuVWmR(gt1,i1)
coup1R = -cplcFdFuVWmL(gt1,i1)
coup2L = -cplcFuFuVPR(i1,gt2)
coup2R = -cplcFuFuVPL(i1,gt2)
coup3 = cplHmcVWmVP(gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
End Do


! {Fu, conj[Hm], VZ}
Do i1=1,3
  Do i2=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MVZ 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = -cplcFuFuVZR(i1,gt2)
coup2R = -cplcFuFuVZL(i1,gt2)
coup3 = -cplHmcHmVZ(gt3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fu, conj[VWm], VZ}
Do i1=1,3
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MVZ 
coup1L = -cplcFdFuVWmR(gt1,i1)
coup1R = -cplcFdFuVWmL(gt1,i1)
coup2L = -cplcFuFuVZR(i1,gt2)
coup2R = -cplcFuFuVZL(i1,gt2)
coup3 = cplHmcVWmVZ(gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
End Do


! {hh, bar[Fd], bar[Fu]}
Do i1=1,6
  Do i2=1,3
    Do i3=1,3
ML1 = Mhh(i1) 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFdhhL(gt1,i2,i1)
coup1R = cplcFdFdhhR(gt1,i2,i1)
coup2L = cplcFuFuhhL(i3,gt2,i1)
coup2R = cplcFuFuhhR(i3,gt2,i1)
coup3L = cplcFdFuHmL(i2,i3,gt3)
coup3R = cplcFdFuHmR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_SFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {VG, bar[Fd], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = -cplcFdFdVGR(gt1,i2)
coup1R = -cplcFdFdVGL(gt1,i2)
coup2L = -cplcFuFuVGR(i3,gt2)
coup2R = -cplcFuFuVGL(i3,gt2)
coup3L = cplcFdFuHmL(i2,i3,gt3)
coup3R = cplcFdFuHmR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(4._dp/3._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = -cplcFdFdVPR(gt1,i2)
coup1R = -cplcFdFdVPL(gt1,i2)
coup2L = -cplcFuFuVPR(i3,gt2)
coup2R = -cplcFuFuVPL(i3,gt2)
coup3L = cplcFdFuHmL(i2,i3,gt3)
coup3R = cplcFdFuHmR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, bar[Fd], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVZ 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = -cplcFdFdVZR(gt1,i2)
coup1R = -cplcFdFdVZL(gt1,i2)
coup2L = -cplcFuFuVZR(i3,gt2)
coup2R = -cplcFuFuVZL(i3,gt2)
coup3L = cplcFdFuHmL(i2,i3,gt3)
coup3R = cplcFdFuHmR(i2,i3,gt3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFS_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
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
End Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFuHm


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFuHm(MFd,MFu,Mhh,MHm,MVG,MVP,             & 
& MVWm,MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFuFuVGL,cplcFuFuVGR,               & 
& cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,             & 
& cplhhHmcHm,cplhhHmcVWm,cplHmcHmVP,cplHmcVWmVP,cplHmcHmVZ,cplHmcVWmVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFuhhL(3,3,6),& 
& cplcFuFuhhR(3,3,6),cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFuFuVGL(3,3),             & 
& cplcFuFuVGR(3,3),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),& 
& cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplhhHmcHm(6,2,2),cplhhHmcVWm(6,2),cplHmcHmVP(2,2),  & 
& cplHmcVWmVP(2),cplHmcHmVZ(2,2),cplHmcVWmVZ(2)

Complex(dp), Intent(out) :: Amp(2,3,3,2) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(2) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
    Do gt3=1,2
Amp(:,gt1, gt2, gt3) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MHm(gt3) 


! {Fd, VP, Hm}
Do i1=1,3
    Do i3=1,2
ML1 = MFd(i1) 
ML2 = MVP 
ML3 = MHm(i3) 
coup1L = -cplcFdFdVPR(gt1,i1)
coup1R = -cplcFdFdVPL(gt1,i1)
coup2L = cplcFdFuHmL(i1,gt2,i3)
coup2R = cplcFdFuHmR(i1,gt2,i3)
coup3 = -cplHmcHmVP(gt3,i3)
Call Amp_VERTEX_FtoFS_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fd, VP, VWm}
Do i1=1,3
ML1 = MFd(i1) 
ML2 = MVP 
ML3 = MVWm 
coup1L = -cplcFdFdVPR(gt1,i1)
coup1R = -cplcFdFdVPL(gt1,i1)
coup2L = -cplcFdFuVWmR(i1,gt2)
coup2R = -cplcFdFuVWmL(i1,gt2)
coup3 = cplHmcVWmVP(gt3)
Call Amp_VERTEX_FtoFS_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
End Do


! {Fu, conj[Hm], VP}
Do i1=1,3
  Do i2=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MVP 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = -cplcFuFuVPR(i1,gt2)
coup2R = -cplcFuFuVPL(i1,gt2)
coup3 = -cplHmcHmVP(gt3,i2)
Call Amp_VERTEX_FtoFS_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fu, conj[VWm], VP}
Do i1=1,3
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MVP 
coup1L = -cplcFdFuVWmR(gt1,i1)
coup1R = -cplcFdFuVWmL(gt1,i1)
coup2L = -cplcFuFuVPR(i1,gt2)
coup2R = -cplcFuFuVPL(i1,gt2)
coup3 = cplHmcVWmVP(gt3)
Call Amp_VERTEX_FtoFS_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
End Do


! {VG, bar[Fd], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = -cplcFdFdVGR(gt1,i2)
coup1R = -cplcFdFdVGL(gt1,i2)
coup2L = -cplcFuFuVGR(i3,gt2)
coup2R = -cplcFuFuVGL(i3,gt2)
coup3L = cplcFdFuHmL(i2,i3,gt3)
coup3R = cplcFdFuHmR(i2,i3,gt3)
Call Amp_VERTEX_FtoFS_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(4._dp/3._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = -cplcFdFdVPR(gt1,i2)
coup1R = -cplcFdFdVPL(gt1,i2)
coup2L = -cplcFuFuVPR(i3,gt2)
coup2R = -cplcFuFuVPL(i3,gt2)
coup3L = cplcFdFuHmL(i2,i3,gt3)
coup3R = cplcFdFuHmR(i2,i3,gt3)
Call Amp_VERTEX_FtoFS_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2, gt3) = Amp(:,gt1, gt2, gt3) + oo16pi2*(1)*AmpC 
    End Do
  End Do
    End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFuHm


Subroutine Amplitude_Tree_2HDMSCPV_FdToFuVWm(cplcFdFuVWmL,cplcFdFuVWmR,               & 
& MFd,MFu,MVWm,MFd2,MFu2,MVWm2,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),MVWm,MFd2(3),MFu2(3),MVWm2

Complex(dp), Intent(in) :: cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3)

Complex(dp) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 

Do gt1=1,3
  Do gt2=1,3
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MVWm 
! Tree-Level Vertex 
coupT1L = cplcFdFuVWmL(gt1,gt2)
coupT1R = cplcFdFuVWmR(gt1,gt2)
Call TreeAmp_FtoFV(Mex1,Mex2,Mex3,coupT1R,coupT1L,AmpC) 
! Colour and symmetry factor 
Amp(:,gt1, gt2) = -AmpC 
  End Do
End Do
End Subroutine Amplitude_Tree_2HDMSCPV_FdToFuVWm


Subroutine Gamma_Real_2HDMSCPV_FdToFuVWm(MLambda,em,gs,cplcFdFuVWmL,cplcFdFuVWmR,     & 
& MFd,MFu,MVWm,GammarealPhoton,GammarealGluon)

Implicit None

Complex(dp), Intent(in) :: cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3)

Real(dp), Intent(in) :: MFd(3),MFu(3),MVWm

Real(dp), Intent(in) :: MLambda, em, gs 

Real(dp), Intent(out) :: GammarealPhoton(3,3), GammarealGluon(3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3, kont 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 

Real(dp) :: Mloop1, Mloop2, Mloop3 
Complex(dp) :: CoupL, CoupR 
 
Do i1=1,3
  Do i2=1,3
CoupL = cplcFdFuVWmL(i1,i2)
CoupR = cplcFdFuVWmR(i1,i2)
Mex1 = MFd(i1)
Mex2 = MFu(i2)
Mex3 = MVWm
If (Abs(Mex1).gt.(Abs(Mex2)+Abs(Mex3))) Then 
  Call hardphotonFFW(Mex1,Mex2,Mex3,MLambda,-1._dp/3._dp,2._dp/3._dp,CoupL,CoupR,(0,1)*em,GammaRealPhoton(i1,i2),kont)
  Call hardgluonFFZW(Mex1,Mex2,Mex3,MLambda,4._dp/3._dp,gs,CoupL,CoupR,Gammarealgluon(i1,i2),kont)
Else 
  GammarealGluon(i1,i2) = 0._dp 
  GammarealPhoton(i1,i2) = 0._dp 

End if 
  End Do
End Do
End Subroutine Gamma_Real_2HDMSCPV_FdToFuVWm


Subroutine Amplitude_WAVE_2HDMSCPV_FdToFuVWm(cplcFdFuVWmL,cplcFdFuVWmR,               & 
& ctcplcFdFuVWmL,ctcplcFdFuVWmR,MFd,MFd2,MFu,MFu2,MVWm,MVWm2,ZfDL,ZfDR,ZfUL,             & 
& ZfUR,ZfVWm,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFd2(3),MFu(3),MFu2(3),MVWm,MVWm2

Complex(dp), Intent(in) :: cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3)

Complex(dp), Intent(in) :: ctcplcFdFuVWmL(3,3),ctcplcFdFuVWmR(3,3)

Complex(dp), Intent(in) :: ZfDL(3,3),ZfDR(3,3),ZfUL(3,3),ZfUR(3,3),ZfVWm

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,3
  Do gt2=1,3
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MVWm 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1L = ctcplcFdFuVWmL(gt1,gt2) 
ZcoupT1R = ctcplcFdFuVWmR(gt1,gt2)
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*Conjg(ZfDL(i1,gt1))*cplcFdFuVWmL(i1,gt2)
ZcoupT1R = ZcoupT1R + 0.5_dp*ZfDR(i1,gt1)*cplcFdFuVWmR(i1,gt2)
End Do


! External Field 2 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfUL(i1,gt2)*cplcFdFuVWmL(gt1,i1)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfUR(i1,gt2))*cplcFdFuVWmR(gt1,i1)
End Do


! External Field 3 
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfVWm*cplcFdFuVWmL(gt1,gt2)
ZcoupT1R = ZcoupT1R + 0.5_dp*ZfVWm*cplcFdFuVWmR(gt1,gt2)


! Getting the amplitude 
Call TreeAmp_FtoFV(Mex1,Mex2,Mex3,ZcoupT1R,ZcoupT1L,AmpC) 
Amp(:,gt1, gt2) = -AmpC 
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_FdToFuVWm


Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFuVWm(MFd,MFu,Mhh,MHm,MVG,MVP,               & 
& MVWm,MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFuFuVGL,cplcFuFuVGR,               & 
& cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,             & 
& cplhhcHmVWm,cplhhcVWmVWm,cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFuhhL(3,3,6),& 
& cplcFuFuhhR(3,3,6),cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFuFuVGL(3,3),             & 
& cplcFuFuVGR(3,3),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),& 
& cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplhhcHmVWm(6,2),cplhhcVWmVWm(6),cplcHmVPVWm(2),     & 
& cplcVWmVPVWm,cplcHmVWmVZ(2),cplcVWmVWmVZ

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
Amp(:,gt1, gt2) = 0._dp 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MVWm 


! {Fd, hh, Hm}
Do i1=1,3
  Do i2=1,6
    Do i3=1,2
ML1 = MFd(i1) 
ML2 = Mhh(i2) 
ML3 = MHm(i3) 
coup1L = cplcFdFdhhL(gt1,i1,i2)
coup1R = cplcFdFdhhR(gt1,i1,i2)
coup2L = cplcFdFuHmL(i1,gt2,i3)
coup2R = cplcFdFuHmR(i1,gt2,i3)
coup3 = -cplhhcHmVWm(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Fd, VP, Hm}
Do i1=1,3
    Do i3=1,2
ML1 = MFd(i1) 
ML2 = MVP 
ML3 = MHm(i3) 
coup1L = cplcFdFdVPL(gt1,i1)
coup1R = cplcFdFdVPR(gt1,i1)
coup2L = cplcFdFuHmL(i1,gt2,i3)
coup2R = cplcFdFuHmR(i1,gt2,i3)
coup3 = cplcHmVPVWm(i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fd, VZ, Hm}
Do i1=1,3
    Do i3=1,2
ML1 = MFd(i1) 
ML2 = MVZ 
ML3 = MHm(i3) 
coup1L = cplcFdFdVZL(gt1,i1)
coup1R = cplcFdFdVZR(gt1,i1)
coup2L = cplcFdFuHmL(i1,gt2,i3)
coup2R = cplcFdFuHmR(i1,gt2,i3)
coup3 = cplcHmVWmVZ(i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fd, hh, VWm}
Do i1=1,3
  Do i2=1,6
ML1 = MFd(i1) 
ML2 = Mhh(i2) 
ML3 = MVWm 
coup1L = cplcFdFdhhL(gt1,i1,i2)
coup1R = cplcFdFdhhR(gt1,i1,i2)
coup2L = cplcFdFuVWmL(i1,gt2)
coup2R = cplcFdFuVWmR(i1,gt2)
coup3 = cplhhcVWmVWm(i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fd, VP, VWm}
Do i1=1,3
ML1 = MFd(i1) 
ML2 = MVP 
ML3 = MVWm 
coup1L = cplcFdFdVPL(gt1,i1)
coup1R = cplcFdFdVPR(gt1,i1)
coup2L = cplcFdFuVWmL(i1,gt2)
coup2R = cplcFdFuVWmR(i1,gt2)
coup3 = -cplcVWmVPVWm
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Fd, VZ, VWm}
Do i1=1,3
ML1 = MFd(i1) 
ML2 = MVZ 
ML3 = MVWm 
coup1L = cplcFdFdVZL(gt1,i1)
coup1R = cplcFdFdVZR(gt1,i1)
coup2L = cplcFdFuVWmL(i1,gt2)
coup2R = cplcFdFuVWmR(i1,gt2)
coup3 = cplcVWmVWmVZ
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Fu, conj[Hm], hh}
Do i1=1,3
  Do i2=1,2
    Do i3=1,6
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = Mhh(i3) 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = cplcFuFuhhL(i1,gt2,i3)
coup2R = cplcFuFuhhR(i1,gt2,i3)
coup3 = cplhhcHmVWm(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Fu, conj[VWm], hh}
Do i1=1,3
    Do i3=1,6
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = Mhh(i3) 
coup1L = cplcFdFuVWmL(gt1,i1)
coup1R = cplcFdFuVWmR(gt1,i1)
coup2L = cplcFuFuhhL(i1,gt2,i3)
coup2R = cplcFuFuhhR(i1,gt2,i3)
coup3 = cplhhcVWmVWm(i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fu, conj[Hm], VP}
Do i1=1,3
  Do i2=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MVP 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = cplcFuFuVPL(i1,gt2)
coup2R = cplcFuFuVPR(i1,gt2)
coup3 = cplcHmVPVWm(i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fu, conj[VWm], VP}
Do i1=1,3
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MVP 
coup1L = cplcFdFuVWmL(gt1,i1)
coup1R = cplcFdFuVWmR(gt1,i1)
coup2L = cplcFuFuVPL(i1,gt2)
coup2R = cplcFuFuVPR(i1,gt2)
coup3 = cplcVWmVPVWm
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Fu, conj[Hm], VZ}
Do i1=1,3
  Do i2=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MVZ 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = cplcFuFuVZL(i1,gt2)
coup2R = cplcFuFuVZR(i1,gt2)
coup3 = cplcHmVWmVZ(i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fu, conj[VWm], VZ}
Do i1=1,3
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MVZ 
coup1L = cplcFdFuVWmL(gt1,i1)
coup1R = cplcFdFuVWmR(gt1,i1)
coup2L = cplcFuFuVZL(i1,gt2)
coup2R = cplcFuFuVZR(i1,gt2)
coup3 = -cplcVWmVWmVZ
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {hh, bar[Fd], bar[Fu]}
Do i1=1,6
  Do i2=1,3
    Do i3=1,3
ML1 = Mhh(i1) 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFdhhL(gt1,i2,i1)
coup1R = cplcFdFdhhR(gt1,i2,i1)
coup2L = cplcFuFuhhL(i3,gt2,i1)
coup2R = cplcFuFuhhR(i3,gt2,i1)
coup3L = cplcFdFuVWmL(i2,i3)
coup3R = cplcFdFuVWmR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_SFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {VG, bar[Fd], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFdVGL(gt1,i2)
coup1R = cplcFdFdVGR(gt1,i2)
coup2L = cplcFuFuVGL(i3,gt2)
coup2R = cplcFuFuVGR(i3,gt2)
coup3L = cplcFdFuVWmL(i2,i3)
coup3R = cplcFdFuVWmR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(4._dp/3._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFdVPL(gt1,i2)
coup1R = cplcFdFdVPR(gt1,i2)
coup2L = cplcFuFuVPL(i3,gt2)
coup2R = cplcFuFuVPR(i3,gt2)
coup3L = cplcFdFuVWmL(i2,i3)
coup3R = cplcFdFuVWmR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, bar[Fd], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVZ 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFdVZL(gt1,i2)
coup1R = cplcFdFdVZR(gt1,i2)
coup2L = cplcFuFuVZL(i3,gt2)
coup2R = cplcFuFuVZR(i3,gt2)
coup3L = cplcFdFuVWmL(i2,i3)
coup3R = cplcFdFuVWmR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
  End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFuVWm


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFuVWm(MFd,MFu,Mhh,MHm,MVG,MVP,            & 
& MVWm,MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFuFuVGL,cplcFuFuVGR,               & 
& cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,             & 
& cplhhcHmVWm,cplhhcVWmVWm,cplcHmVPVWm,cplcVWmVPVWm,cplcHmVWmVZ,cplcVWmVWmVZ,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFuhhL(3,3,6),& 
& cplcFuFuhhR(3,3,6),cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFuFuVGL(3,3),             & 
& cplcFuFuVGR(3,3),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),& 
& cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplhhcHmVWm(6,2),cplhhcVWmVWm(6),cplcHmVPVWm(2),     & 
& cplcVWmVPVWm,cplcHmVWmVZ(2),cplcVWmVWmVZ

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
Amp(:,gt1, gt2) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFu(gt2) 
Mex3 = MVWm 


! {Fd, VP, Hm}
Do i1=1,3
    Do i3=1,2
ML1 = MFd(i1) 
ML2 = MVP 
ML3 = MHm(i3) 
coup1L = cplcFdFdVPL(gt1,i1)
coup1R = cplcFdFdVPR(gt1,i1)
coup2L = cplcFdFuHmL(i1,gt2,i3)
coup2R = cplcFdFuHmR(i1,gt2,i3)
coup3 = cplcHmVPVWm(i3)
Call Amp_VERTEX_FtoFV_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fd, VP, VWm}
Do i1=1,3
ML1 = MFd(i1) 
ML2 = MVP 
ML3 = MVWm 
coup1L = cplcFdFdVPL(gt1,i1)
coup1R = cplcFdFdVPR(gt1,i1)
coup2L = cplcFdFuVWmL(i1,gt2)
coup2R = cplcFdFuVWmR(i1,gt2)
coup3 = -cplcVWmVPVWm
Call Amp_VERTEX_FtoFV_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {Fu, conj[Hm], VP}
Do i1=1,3
  Do i2=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MVP 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = cplcFuFuVPL(i1,gt2)
coup2R = cplcFuFuVPR(i1,gt2)
coup3 = cplcHmVPVWm(i2)
Call Amp_VERTEX_FtoFV_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fu, conj[VWm], VP}
Do i1=1,3
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MVP 
coup1L = cplcFdFuVWmL(gt1,i1)
coup1R = cplcFdFuVWmR(gt1,i1)
coup2L = cplcFuFuVPL(i1,gt2)
coup2R = cplcFuFuVPR(i1,gt2)
coup3 = cplcVWmVPVWm
Call Amp_VERTEX_FtoFV_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {VG, bar[Fd], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFdVGL(gt1,i2)
coup1R = cplcFdFdVGR(gt1,i2)
coup2L = cplcFuFuVGL(i3,gt2)
coup2R = cplcFuFuVGR(i3,gt2)
coup3L = cplcFdFuVWmL(i2,i3)
coup3R = cplcFdFuVWmR(i2,i3)
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(4._dp/3._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFdVPL(gt1,i2)
coup1R = cplcFdFdVPR(gt1,i2)
coup2L = cplcFuFuVPL(i3,gt2)
coup2R = cplcFuFuVPR(i3,gt2)
coup3L = cplcFdFuVWmL(i2,i3)
coup3R = cplcFdFuVWmR(i2,i3)
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFuVWm


Subroutine Amplitude_WAVE_2HDMSCPV_FdToFdVG(cplcFdFdVGL,cplcFdFdVGR,ctcplcFdFdVGL,    & 
& ctcplcFdFdVGR,MFd,MFd2,MVG,MVG2,ZfDL,ZfDR,ZfVG,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFd2(3),MVG,MVG2

Complex(dp), Intent(in) :: cplcFdFdVGL(3,3),cplcFdFdVGR(3,3)

Complex(dp), Intent(in) :: ctcplcFdFdVGL(3,3),ctcplcFdFdVGR(3,3)

Complex(dp), Intent(in) :: ZfDL(3,3),ZfDR(3,3),ZfVG

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,3
  Do gt2=1,3
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = MVG 
!----------------------------- 
! Coupling counter term 
!----------------------------- 
ZcoupT1L = ctcplcFdFdVGL(gt1,gt2) 
ZcoupT1R = ctcplcFdFdVGR(gt1,gt2)
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*Conjg(ZfDL(i1,gt1))*cplcFdFdVGL(i1,gt2)
ZcoupT1R = ZcoupT1R + 0.5_dp*ZfDR(i1,gt1)*cplcFdFdVGR(i1,gt2)
End Do


! External Field 2 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfDL(i1,gt2)*cplcFdFdVGL(gt1,i1)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfDR(i1,gt2))*cplcFdFdVGR(gt1,i1)
End Do


! External Field 3 


! Getting the amplitude 
Call TreeAmp_FtoFV(Mex1,Mex2,Mex3,ZcoupT1R,ZcoupT1L,AmpC) 
Amp(:,gt1, gt2) = -AmpC 
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_FdToFdVG


Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFdVG(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,           & 
& MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,      & 
& cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFuFdcHmL,              & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFdFuHmL,cplcFdFuHmR,cplcFuFuVGL,          & 
& cplcFuFuVGR,cplcFdFuVWmL,cplcFdFuVWmR,cplVGVGVG,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),& 
& cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFdFuHmL(3,3,2),          & 
& cplcFdFuHmR(3,3,2),cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplVGVGVG

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
Amp(:,gt1, gt2) = 0._dp 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = MVG 


! {Fd, VG, VG}
Do i1=1,3
ML1 = MFd(i1) 
ML2 = MVG 
ML3 = MVG 
coup1L = cplcFdFdVGL(gt1,i1)
coup1R = cplcFdFdVGR(gt1,i1)
coup2L = cplcFdFdVGL(i1,gt2)
coup2R = cplcFdFdVGR(i1,gt2)
coup3 = cplVGVGVG
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(-3._dp/2._dp*(0.,1._dp))*AmpC 
End Do


! {hh, bar[Fd], bar[Fd]}
Do i1=1,6
  Do i2=1,3
    Do i3=1,3
ML1 = Mhh(i1) 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdhhL(gt1,i2,i1)
coup1R = cplcFdFdhhR(gt1,i2,i1)
coup2L = cplcFdFdhhL(i3,gt2,i1)
coup2R = cplcFdFdhhR(i3,gt2,i1)
coup3L = cplcFdFdVGL(i2,i3)
coup3R = cplcFdFdVGR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_SFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Hm, bar[Fu], bar[Fu]}
Do i1=1,2
  Do i2=1,3
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = MFu(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFuHmL(gt1,i2,i1)
coup1R = cplcFdFuHmR(gt1,i2,i1)
coup2L = cplcFuFdcHmL(i3,gt2,i1)
coup2R = cplcFuFdcHmR(i3,gt2,i1)
coup3L = cplcFuFuVGL(i2,i3)
coup3R = cplcFuFuVGR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_SFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {VG, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVGL(gt1,i2)
coup1R = cplcFdFdVGR(gt1,i2)
coup2L = cplcFdFdVGL(i3,gt2)
coup2R = cplcFdFdVGR(i3,gt2)
coup3L = cplcFdFdVGL(i2,i3)
coup3R = cplcFdFdVGR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(-1._dp/6._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVPL(gt1,i2)
coup1R = cplcFdFdVPR(gt1,i2)
coup2L = cplcFdFdVPL(i3,gt2)
coup2R = cplcFdFdVPR(i3,gt2)
coup3L = cplcFdFdVGL(i2,i3)
coup3R = cplcFdFdVGR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VWm, bar[Fu], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVWm 
ML2 = MFu(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFuVWmL(gt1,i2)
coup1R = cplcFdFuVWmR(gt1,i2)
coup2L = cplcFuFdcVWmL(i3,gt2)
coup2R = cplcFuFdcVWmR(i3,gt2)
coup3L = cplcFuFuVGL(i2,i3)
coup3R = cplcFuFuVGR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVZ 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVZL(gt1,i2)
coup1R = cplcFdFdVZR(gt1,i2)
coup2L = cplcFdFdVZL(i3,gt2)
coup2R = cplcFdFdVZR(i3,gt2)
coup3L = cplcFdFdVGL(i2,i3)
coup3R = cplcFdFdVGR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
  End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFdVG


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFdVG(MFd,MFu,Mhh,MHm,MVG,MVP,             & 
& MVWm,MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFdFuHmL,cplcFdFuHmR,         & 
& cplcFuFuVGL,cplcFuFuVGR,cplcFdFuVWmL,cplcFdFuVWmR,cplVGVGVG,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),& 
& cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFdFuHmL(3,3,2),          & 
& cplcFdFuHmR(3,3,2),cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplVGVGVG

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
Amp(:,gt1, gt2) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = MVG 


! {Fd, VG, VG}
Do i1=1,3
ML1 = MFd(i1) 
ML2 = MVG 
ML3 = MVG 
coup1L = cplcFdFdVGL(gt1,i1)
coup1R = cplcFdFdVGR(gt1,i1)
coup2L = cplcFdFdVGL(i1,gt2)
coup2R = cplcFdFdVGR(i1,gt2)
coup3 = cplVGVGVG
Call Amp_VERTEX_FtoFV_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(-3._dp/2._dp*(0.,1._dp))*AmpC 
End Do


! {VG, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVGL(gt1,i2)
coup1R = cplcFdFdVGR(gt1,i2)
coup2L = cplcFdFdVGL(i3,gt2)
coup2R = cplcFdFdVGR(i3,gt2)
coup3L = cplcFdFdVGL(i2,i3)
coup3R = cplcFdFdVGR(i2,i3)
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(-1._dp/6._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVPL(gt1,i2)
coup1R = cplcFdFdVPR(gt1,i2)
coup2L = cplcFdFdVPL(i3,gt2)
coup2R = cplcFdFdVPR(i3,gt2)
coup3L = cplcFdFdVGL(i2,i3)
coup3R = cplcFdFdVGR(i2,i3)
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFdVG


Subroutine Amplitude_WAVE_2HDMSCPV_FdToFdVP(cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,      & 
& cplcFdFdVZR,ctcplcFdFdVPL,ctcplcFdFdVPR,ctcplcFdFdVZL,ctcplcFdFdVZR,MFd,               & 
& MFd2,MVP,MVP2,ZfDL,ZfDR,ZfVP,ZfVZVP,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFd2(3),MVP,MVP2

Complex(dp), Intent(in) :: cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3)

Complex(dp), Intent(in) :: ctcplcFdFdVPL(3,3),ctcplcFdFdVPR(3,3),ctcplcFdFdVZL(3,3),ctcplcFdFdVZR(3,3)

Complex(dp), Intent(in) :: ZfDL(3,3),ZfDR(3,3),ZfVP,ZfVZVP

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Complex(dp) :: coupT1, coupT1L, coupT1R 
Complex(dp) :: TcoupT1, TcoupT1L, TcoupT1R 
Complex(dp) :: ZcoupT1, ZcoupT1L, ZcoupT1R 

Do gt1=1,3
  Do gt2=1,3
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = MVP 
ZcoupT1L = 0._dp 
ZcoupT1R = 0._dp 
!----------------------------- 
! Multiply Z-factors 
!----------------------------- 
! External Field 1 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*Conjg(ZfDL(i1,gt1))*cplcFdFdVPL(i1,gt2)
ZcoupT1R = ZcoupT1R + 0.5_dp*ZfDR(i1,gt1)*cplcFdFdVPR(i1,gt2)
End Do


! External Field 2 
Do i1=1,3
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfDL(i1,gt2)*cplcFdFdVPL(gt1,i1)
ZcoupT1R = ZcoupT1R + 0.5_dp*Conjg(ZfDR(i1,gt2))*cplcFdFdVPR(gt1,i1)
End Do


! External Field 3 
ZcoupT1L = ZcoupT1L + 0.5_dp*ZfVZVP*cplcFdFdVZL(gt1,gt2)
ZcoupT1R = ZcoupT1R + 0.5_dp*ZfVZVP*cplcFdFdVZR(gt1,gt2)


! Getting the amplitude 
Call TreeAmp_FtoFV(Mex1,Mex2,Mex3,ZcoupT1R,ZcoupT1L,AmpC) 
Amp(:,gt1, gt2) = -AmpC 
  End Do
End Do
End Subroutine Amplitude_WAVE_2HDMSCPV_FdToFdVP


Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFdVP(MFd,MFu,Mhh,MHm,MVG,MVP,MVWm,           & 
& MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,      & 
& cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFuFdcHmL,              & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFdFuHmL,cplcFdFuHmR,cplcFuFuVPL,          & 
& cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplHmcHmVP,cplHmcVWmVP,cplcHmVPVWm,              & 
& cplcVWmVPVWm,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),& 
& cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFdFuHmL(3,3,2),          & 
& cplcFdFuHmR(3,3,2),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),& 
& cplHmcHmVP(2,2),cplHmcVWmVP(2),cplcHmVPVWm(2),cplcVWmVPVWm

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
Amp(:,gt1, gt2) = 0._dp 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = MVP 


! {Fu, conj[Hm], conj[Hm]}
Do i1=1,3
  Do i2=1,2
    Do i3=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MHm(i3) 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = cplcFuFdcHmL(i1,gt2,i3)
coup2R = cplcFuFdcHmR(i1,gt2,i3)
coup3 = cplHmcHmVP(i3,i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FSS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Fu, conj[VWm], conj[Hm]}
Do i1=1,3
    Do i3=1,2
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MHm(i3) 
coup1L = cplcFdFuVWmL(gt1,i1)
coup1R = cplcFdFuVWmR(gt1,i1)
coup2L = cplcFuFdcHmL(i1,gt2,i3)
coup2R = cplcFuFdcHmR(i1,gt2,i3)
coup3 = cplHmcVWmVP(i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVS(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
End Do


! {Fu, conj[Hm], conj[VWm]}
Do i1=1,3
  Do i2=1,2
ML1 = MFu(i1) 
ML2 = MHm(i2) 
ML3 = MVWm 
coup1L = cplcFdFuHmL(gt1,i1,i2)
coup1R = cplcFdFuHmR(gt1,i1,i2)
coup2L = cplcFuFdcVWmL(i1,gt2)
coup2R = cplcFuFdcVWmR(i1,gt2)
coup3 = cplcHmVPVWm(i2)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FSV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
  End Do
End Do


! {Fu, conj[VWm], conj[VWm]}
Do i1=1,3
ML1 = MFu(i1) 
ML2 = MVWm 
ML3 = MVWm 
coup1L = cplcFdFuVWmL(gt1,i1)
coup1R = cplcFdFuVWmR(gt1,i1)
coup2L = cplcFuFdcVWmL(i1,gt2)
coup2R = cplcFuFdcVWmR(i1,gt2)
coup3 = -cplcVWmVPVWm
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_FVV(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
End Do


! {hh, bar[Fd], bar[Fd]}
Do i1=1,6
  Do i2=1,3
    Do i3=1,3
ML1 = Mhh(i1) 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdhhL(gt1,i2,i1)
coup1R = cplcFdFdhhR(gt1,i2,i1)
coup2L = cplcFdFdhhL(i3,gt2,i1)
coup2R = cplcFdFdhhR(i3,gt2,i1)
coup3L = cplcFdFdVPL(i2,i3)
coup3R = cplcFdFdVPR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_SFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {Hm, bar[Fu], bar[Fu]}
Do i1=1,2
  Do i2=1,3
    Do i3=1,3
ML1 = MHm(i1) 
ML2 = MFu(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFuHmL(gt1,i2,i1)
coup1R = cplcFdFuHmR(gt1,i2,i1)
coup2L = cplcFuFdcHmL(i3,gt2,i1)
coup2R = cplcFuFdcHmR(i3,gt2,i1)
coup3L = cplcFuFuVPL(i2,i3)
coup3R = cplcFuFuVPR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_SFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
End Do


! {VG, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVGL(gt1,i2)
coup1R = cplcFdFdVGR(gt1,i2)
coup2L = cplcFdFdVGL(i3,gt2)
coup2R = cplcFdFdVGR(i3,gt2)
coup3L = cplcFdFdVPL(i2,i3)
coup3R = cplcFdFdVPR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(4._dp/3._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVPL(gt1,i2)
coup1R = cplcFdFdVPR(gt1,i2)
coup2L = cplcFdFdVPL(i3,gt2)
coup2R = cplcFdFdVPR(i3,gt2)
coup3L = cplcFdFdVPL(i2,i3)
coup3R = cplcFdFdVPR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VWm, bar[Fu], bar[Fu]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVWm 
ML2 = MFu(i2) 
ML3 = MFu(i3) 
coup1L = cplcFdFuVWmL(gt1,i2)
coup1R = cplcFdFuVWmR(gt1,i2)
coup2L = cplcFuFdcVWmL(i3,gt2)
coup2R = cplcFuFdcVWmR(i3,gt2)
coup3L = cplcFuFuVPL(i2,i3)
coup3R = cplcFuFuVPR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do


! {VZ, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVZ 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVZL(gt1,i2)
coup1R = cplcFdFdVZR(gt1,i2)
coup2L = cplcFdFdVZL(i3,gt2)
coup2R = cplcFdFdVZR(i3,gt2)
coup3L = cplcFdFdVPL(i2,i3)
coup3R = cplcFdFdVPR(i2,i3)
If ((Abs(coup1L)+Abs(coup1R))*(Abs(coup2L)+Abs(coup2R))*(Abs(coup3L)+Abs(coup3R)).gt.epsCoup) Then 
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
Else
 AmpC = 0._dp
End if
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
  End Do
End Do
End Subroutine Amplitude_VERTEX_2HDMSCPV_FdToFdVP


Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFdVP(MFd,MFu,Mhh,MHm,MVG,MVP,             & 
& MVWm,MVZ,MFd2,MFu2,Mhh2,MHm2,MVG2,MVP2,MVWm2,MVZ2,cplcFdFdhhL,cplcFdFdhhR,             & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFdFuHmL,cplcFdFuHmR,         & 
& cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplHmcHmVP,cplHmcVWmVP,              & 
& cplcHmVPVWm,cplcVWmVPVWm,Amp)

Implicit None

Real(dp), Intent(in) :: MFd(3),MFu(3),Mhh(6),MHm(2),MVG,MVP,MVWm,MVZ,MFd2(3),MFu2(3),Mhh2(6),MHm2(2),         & 
& MVG2,MVP2,MVWm2,MVZ2

Complex(dp), Intent(in) :: cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),              & 
& cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFuFdcHmL(3,3,2),& 
& cplcFuFdcHmR(3,3,2),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFdFuHmL(3,3,2),          & 
& cplcFdFuHmR(3,3,2),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),& 
& cplHmcHmVP(2,2),cplHmcVWmVP(2),cplcHmVPVWm(2),cplcVWmVPVWm

Complex(dp), Intent(out) :: Amp(4,3,3) 

Integer :: i1, i2, i3, gt1, gt2, gt3 
Complex(dp) :: AmpC(4) 
Real(dp) :: Mex1, Mex2, Mex3, ExtRMsq 
Real(dp) :: ML1, ML2, ML3 
Complex(dp) :: coupT1, coupT1L, coupT1R, coup1, coup1L, coup1R 
Complex(dp) :: coup2, coup2L, coup2R, coup3, coup3L, coup3R, coup2a,coup2b,coup2c 
Do gt1=1,3
  Do gt2=1,3
Amp(:,gt1, gt2) = 0._dp 
IRdivOnly =.true. 
! External masses 
Mex1 = MFd(gt1) 
Mex2 = MFd(gt2) 
Mex3 = MVP 


! {VG, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVG 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVGL(gt1,i2)
coup1R = cplcFdFdVGR(gt1,i2)
coup2L = cplcFdFdVGL(i3,gt2)
coup2R = cplcFdFdVGR(i3,gt2)
coup3L = cplcFdFdVPL(i2,i3)
coup3R = cplcFdFdVPR(i2,i3)
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(4._dp/3._dp)*AmpC 
    End Do
  End Do


! {VP, bar[Fd], bar[Fd]}
  Do i2=1,3
    Do i3=1,3
ML1 = MVP 
ML2 = MFd(i2) 
ML3 = MFd(i3) 
coup1L = cplcFdFdVPL(gt1,i2)
coup1R = cplcFdFdVPR(gt1,i2)
coup2L = cplcFdFdVPL(i3,gt2)
coup2R = cplcFdFdVPR(i3,gt2)
coup3L = cplcFdFdVPL(i2,i3)
coup3R = cplcFdFdVPR(i2,i3)
Call Amp_VERTEX_FtoFV_Topology1_VFF(Mex1,Mex2,Mex3,ML1,ML2,ML3,coup1L,coup1R,coup2L,coup2R,coup3L,coup3R,AmpC) 
! Colour and symmetry Factor 
Amp(:,gt1, gt2) = Amp(:,gt1, gt2) + oo16pi2*(1)*AmpC 
    End Do
  End Do
  End Do
End Do

IRdivOnly =.false. 
End Subroutine Amplitude_IR_VERTEX_2HDMSCPV_FdToFdVP



End Module OneLoopDecay_Fd_2HDMSCPV
