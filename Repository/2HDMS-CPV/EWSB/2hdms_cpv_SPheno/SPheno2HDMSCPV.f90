! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.1 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 13:09 on 9.6.2025   
! ----------------------------------------------------------------------  
 
 
Program SPheno2HDMSCPV 
 
Use Control
Use InputOutput_2HDMSCPV
Use LoopFunctions
Use Settings
Use LowEnergy_2HDMSCPV
Use Mathematics
Use Model_Data_2HDMSCPV
Use Tadpoles_2HDMSCPV 
 !Use StandardModel
Use Unitarity_2HDMSCPV 
 Use Boundaries_2HDMSCPV
 Use HiggsCS_2HDMSCPV
Use TreeLevelMasses_2HDMSCPV
Use LoopMasses_2HDMSCPV
 
Use BranchingRatios_2HDMSCPV
 
Implicit None
 
Real(dp) :: epsI=0.00001_dp, deltaM = 0.000001_dp 
Real(dp) :: mGut = -1._dp, ratioWoM = 0._dp
Integer :: kont, n_tot 
 
Integer,Parameter :: p_max=100
Real(dp) :: Ecms(p_max),Pm(p_max),Pp(p_max), dt, tz, Qin, gSM(11) 
Real(dp) :: vev, sinw2
Complex(dp) :: YdSM(3,3), YuSM(3,3), YeSM(3,3)
Real(dp) :: vSM, g1SM, g2SM, g3SM
Integer :: i1 
Logical :: ISR(p_max)=.False.
Logical :: CalcTBD
Real(dp) :: Tpar,Spar,Upar,ae,amu,atau,EDMe,EDMmu,EDMtau,dRho,BrBsGamma,ratioBsGamma,             & 
& BrDmunu,ratioDmunu,BrDsmunu,ratioDsmunu,BrDstaunu,ratioDstaunu,BrBmunu,ratioBmunu,     & 
& BrBtaunu,ratioBtaunu,BrKmunu,ratioKmunu,RK,RKSM,muEgamma,tauEgamma,tauMuGamma,         & 
& CRmuEAl,CRmuETi,CRmuESr,CRmuESb,CRmuEAu,CRmuEPb,BRmuTo3e,BRtauTo3e,BRtauTo3mu,         & 
& BRtauToemumu,BRtauTomuee,BRtauToemumu2,BRtauTomuee2,BrZtoMuE,BrZtoTauE,BrZtoTauMu,     & 
& BrhtoMuE,BrhtoTauE,BrhtoTauMu,DeltaMBs,ratioDeltaMBs,DeltaMBq,ratioDeltaMBq,           & 
& BrTautoEPi,BrTautoEEta,BrTautoEEtap,BrTautoMuPi,BrTautoMuEta,BrTautoMuEtap,            & 
& BrB0dEE,ratioB0dEE,BrB0sEE,ratioB0sEE,BrB0dMuMu,ratioB0dMuMu,BrB0sMuMu,ratioB0sMuMu,   & 
& BrB0dTauTau,ratioB0dTauTau,BrB0sTauTau,ratioB0sTauTau,BrBtoSEE,ratioBtoSEE,            & 
& BrBtoSMuMu,ratioBtoSMuMu,BrBtoKee,ratioBtoKee,BrBtoKmumu,ratioBtoKmumu,BrBtoSnunu,     & 
& ratioBtoSnunu,BrBtoDnunu,ratioBtoDnunu,BrKptoPipnunu,ratioKptoPipnunu,BrKltoPinunu,    & 
& ratioKltoPinunu,BrK0eMu,ratioK0eMu,DelMK,ratioDelMK,epsK,ratioepsK

Tpar = 0._dp 
Spar = 0._dp 
Upar = 0._dp 
ae = 0._dp 
amu = 0._dp 
atau = 0._dp 
EDMe = 0._dp 
EDMmu = 0._dp 
EDMtau = 0._dp 
dRho = 0._dp 
BrBsGamma = 0._dp 
ratioBsGamma = 0._dp 
BrDmunu = 0._dp 
ratioDmunu = 0._dp 
BrDsmunu = 0._dp 
ratioDsmunu = 0._dp 
BrDstaunu = 0._dp 
ratioDstaunu = 0._dp 
BrBmunu = 0._dp 
ratioBmunu = 0._dp 
BrBtaunu = 0._dp 
ratioBtaunu = 0._dp 
BrKmunu = 0._dp 
ratioKmunu = 0._dp 
RK = 0._dp 
RKSM = 0._dp 
muEgamma = 0._dp 
tauEgamma = 0._dp 
tauMuGamma = 0._dp 
CRmuEAl = 0._dp 
CRmuETi = 0._dp 
CRmuESr = 0._dp 
CRmuESb = 0._dp 
CRmuEAu = 0._dp 
CRmuEPb = 0._dp 
BRmuTo3e = 0._dp 
BRtauTo3e = 0._dp 
BRtauTo3mu = 0._dp 
BRtauToemumu = 0._dp 
BRtauTomuee = 0._dp 
BRtauToemumu2 = 0._dp 
BRtauTomuee2 = 0._dp 
BrZtoMuE = 0._dp 
BrZtoTauE = 0._dp 
BrZtoTauMu = 0._dp 
BrhtoMuE = 0._dp 
BrhtoTauE = 0._dp 
BrhtoTauMu = 0._dp 
DeltaMBs = 0._dp 
ratioDeltaMBs = 0._dp 
DeltaMBq = 0._dp 
ratioDeltaMBq = 0._dp 
BrTautoEPi = 0._dp 
BrTautoEEta = 0._dp 
BrTautoEEtap = 0._dp 
BrTautoMuPi = 0._dp 
BrTautoMuEta = 0._dp 
BrTautoMuEtap = 0._dp 
BrB0dEE = 0._dp 
ratioB0dEE = 0._dp 
BrB0sEE = 0._dp 
ratioB0sEE = 0._dp 
BrB0dMuMu = 0._dp 
ratioB0dMuMu = 0._dp 
BrB0sMuMu = 0._dp 
ratioB0sMuMu = 0._dp 
BrB0dTauTau = 0._dp 
ratioB0dTauTau = 0._dp 
BrB0sTauTau = 0._dp 
ratioB0sTauTau = 0._dp 
BrBtoSEE = 0._dp 
ratioBtoSEE = 0._dp 
BrBtoSMuMu = 0._dp 
ratioBtoSMuMu = 0._dp 
BrBtoKee = 0._dp 
ratioBtoKee = 0._dp 
BrBtoKmumu = 0._dp 
ratioBtoKmumu = 0._dp 
BrBtoSnunu = 0._dp 
ratioBtoSnunu = 0._dp 
BrBtoDnunu = 0._dp 
ratioBtoDnunu = 0._dp 
BrKptoPipnunu = 0._dp 
ratioKptoPipnunu = 0._dp 
BrKltoPinunu = 0._dp 
ratioKltoPinunu = 0._dp 
BrK0eMu = 0._dp 
ratioK0eMu = 0._dp 
DelMK = 0._dp 
ratioDelMK = 0._dp 
epsK = 0._dp 
ratioepsK = 0._dp 
Call get_command_argument(1,inputFileName)
If (len_trim(inputFileName)==0) Then
  inputFileName="LesHouches.in.2HDMSCPV"
Else
  inputFileName=trim(inputFileName)
End if
Call get_command_argument(2,outputFileName)
If (len_trim(outputFileName)==0) Then
  outputFileName="SPheno.spc.2HDMSCPV"
Else
  outputFileName=trim(outputFileName)
End if 
g1SM = 0._dp 
g2SM = 0._dp 
g3SM = 0._dp 
vSM = 0._dp 
YdSM = 0._dp 
YeSM = 0._dp 
YuSM = 0._dp 
Call Set_All_Parameters_0() 
 
Qin = SetRenormalizationScale(1.6E2_dp**2)  
kont = 0 
delta_Mass = 0.0001_dp 
CalcTBD = .false. 
Call ReadingData(kont) 
 
 HighScaleModel = "LOW" 
If ((MatchingOrder.lt.-1).or.(MatchingOrder.gt.2)) Then 
  If (HighScaleModel.Eq."LOW") Then 
    If (.not.CalculateOneLoopMasses) Then 
       MatchingOrder = -1 
    Else 
       MatchingOrder =  2 
    End if 
   Else 
       MatchingOrder =  2 
   End If 
End If 
Select Case(MatchingOrder) 
 Case(0) 
   OneLoopMatching = .false. 
   TwoLoopMatching = .false. 
   GuessTwoLoopMatchingBSM = .false. 
 Case(1) 
   OneLoopMatching = .true. 
   TwoLoopMatching = .false. 
   GuessTwoLoopMatchingBSM = .false. 
 Case(2) 
   OneLoopMatching = .true. 
   TwoLoopMatching = .true. 
   GuessTwoLoopMatchingBSM = .true. 
End Select 
If (MatchingOrder.eq.-1) Then 
 ! Setting values 
 vd = vdIN 
 vu = vuIN 
 vS = vSIN 
 g1 = g1IN 
 g2 = g2IN 
 g3 = g3IN 
 Lam6 = Lam6IN 
 Lam5 = Lam5IN 
 Lam7 = Lam7IN 
 Lam1 = Lam1IN 
 Lam4 = Lam4IN 
 Lam3 = Lam3IN 
 Lam2 = Lam2IN 
 Lam1p = Lam1pIN 
 Lam2p = Lam2pIN 
 L3pp = L3ppIN 
 L1pp = L1ppIN 
 Lam4p = Lam4pIN 
 Lam6p = Lam6pIN 
 Lam7p = Lam7pIN 
 Lam5p = Lam5pIN 
 L2pp = L2ppIN 
 Lam3p = Lam3pIN 
 Yu = YuIN 
 epsU = epsUIN 
 Yd = YdIN 
 Ye = YeIN 
 epsD = epsDIN 
 epsE = epsEIN 
 mus1 = mus1IN 
 mu11 = mu11IN 
 mu12 = mu12IN 
 mu21 = mu21IN 
 mu22 = mu22IN 
 mus2 = mus2IN 
 M122 = M122IN 
 M112 = M112IN 
 M222 = M222IN 
 mS2 = mS2IN 
 mSp2 = mSp2IN 
 Lam1 = Lambda1Input
Lam2 = Lambda2Input
Lam3 = Lambda3Input
Lam4 = Lambda4Input
Lam5 = Cmplx(Real(Lambda5rInput,dp),Aimag(Lam5))
Lam5 = Cmplx(Real(Lam5,dp),Real(Lambda5iInput,dp))
Lam6 = Cmplx(Real(Lambda6rInput,dp),Aimag(Lam6))
Lam6 = Cmplx(Real(Lam6,dp),Real(Lambda6iInput,dp))
Lam7 = Cmplx(Real(Lambda7rInput,dp),Aimag(Lam7))
Lam7 = Cmplx(Real(Lam7,dp),Real(Lambda7iInput,dp))
M122 = Cmplx(Real(M122Input,dp),Aimag(M122))
mSp2 = Cmplx(Real(mSp2Input,dp),Aimag(mSp2))
Lam1p = Lambda1pInput
Lam2p = Lambda2pInput
Lam3p = Cmplx(Real(Lambda3prInput,dp),Aimag(Lam3p))
Lam3p = Cmplx(Real(Lam3p,dp),Real(Lambda3piInput,dp))
Lam4p = Cmplx(Real(Lambda4prInput,dp),Aimag(Lam4p))
Lam4p = Cmplx(Real(Lam4p,dp),Real(Lambda4piInput,dp))
Lam5p = Cmplx(Real(Lambda5prInput,dp),Aimag(Lam5p))
Lam5p = Cmplx(Real(Lam5p,dp),Real(Lambda5piInput,dp))
Lam6p = Cmplx(Real(Lambda6prInput,dp),Aimag(Lam6p))
Lam6p = Cmplx(Real(Lam6p,dp),Real(Lambda6piInput,dp))
Lam7p = Cmplx(Real(Lambda7prInput,dp),Aimag(Lam7p))
Lam7p = Cmplx(Real(Lam7p,dp),Real(Lambda7piInput,dp))
L1pp = Cmplx(Real(Lambda1pprInput,dp),Aimag(L1pp))
L1pp = Cmplx(Real(L1pp,dp),Real(Lambda1ppiInput,dp))
L2pp = Cmplx(Real(Lambda2pprInput,dp),Aimag(L2pp))
L2pp = Cmplx(Real(L2pp,dp),Real(Lambda2ppiInput,dp))
L3pp = Lambda3ppInput
vS = vSInput
mu11 = Cmplx(Real(mu11rInput,dp),Aimag(mu11))
mu11 = Cmplx(Real(mu11,dp),Real(mu11iInput,dp))
mu22 = Cmplx(Real(mu22rInput,dp),Aimag(mu22))
mu22 = Cmplx(Real(mu22,dp),Real(mu22iInput,dp))
mu12 = Cmplx(Real(mu12rInput,dp),Aimag(mu12))
mu12 = Cmplx(Real(mu12,dp),Real(mu12iInput,dp))
mu21 = Cmplx(Real(mu21rInput,dp),Aimag(mu21))
mu21 = Cmplx(Real(mu21,dp),Real(mu21iInput,dp))
mus1 = Cmplx(Real(mus1rInput,dp),Aimag(mus1))
mus1 = Cmplx(Real(mus1,dp),Real(mus1iInput,dp))
mus2 = Cmplx(Real(mus2rInput,dp),Aimag(mus2))
mus2 = Cmplx(Real(mus2,dp),Real(mus2iInput,dp))
eta = etaInput
zeta = zetaInput
tanbetaMZ = tanbeta 

 
 ! Setting VEVs used for low energy constraints 
 vdMZ = vd 
 vuMZ = vu 
 vSMZ = vS 
    sinW2=1._dp-mW2/mZ2 
   vSM=1/Sqrt((G_F*Sqrt(2._dp)))
   g1SM=sqrt(4*Pi*Alpha_MZ/(1-sinW2)) 
   g2SM=sqrt(4*Pi*Alpha_MZ/Sinw2 ) 
   g3SM=sqrt(AlphaS_MZ*4*Pi) 
   Do i1=1,3 
      YuSM(i1,i1)=sqrt(2._dp)*mf_u(i1)/vSM 
      YeSM(i1,i1)=sqrt(2._dp)*mf_l(i1)/vSM 
      YdSM(i1,i1)=sqrt(2._dp)*mf_d(i1)/vSM 
    End Do 
    If (GenerationMixing) YuSM = Matmul(Transpose(CKM),YuSM) 


! Transpose Yukawas to fit SPheno conventions 
YuSM= Transpose(YuSM) 
YdSM= Transpose(YdSM)
YeSM= Transpose(YeSM)

 ! Setting Boundary conditions 
 Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)

Lam1 = Lambda1Input
Lam2 = Lambda2Input
Lam3 = Lambda3Input
Lam4 = Lambda4Input
Lam5 = Cmplx(Real(Lambda5rInput,dp),Aimag(Lam5))
Lam5 = Cmplx(Real(Lam5,dp),Real(Lambda5iInput,dp))
Lam6 = Cmplx(Real(Lambda6rInput,dp),Aimag(Lam6))
Lam6 = Cmplx(Real(Lam6,dp),Real(Lambda6iInput,dp))
Lam7 = Cmplx(Real(Lambda7rInput,dp),Aimag(Lam7))
Lam7 = Cmplx(Real(Lam7,dp),Real(Lambda7iInput,dp))
M122 = Cmplx(Real(M122Input,dp),Aimag(M122))
mSp2 = Cmplx(Real(mSp2Input,dp),Aimag(mSp2))
Lam1p = Lambda1pInput
Lam2p = Lambda2pInput
Lam3p = Cmplx(Real(Lambda3prInput,dp),Aimag(Lam3p))
Lam3p = Cmplx(Real(Lam3p,dp),Real(Lambda3piInput,dp))
Lam4p = Cmplx(Real(Lambda4prInput,dp),Aimag(Lam4p))
Lam4p = Cmplx(Real(Lam4p,dp),Real(Lambda4piInput,dp))
Lam5p = Cmplx(Real(Lambda5prInput,dp),Aimag(Lam5p))
Lam5p = Cmplx(Real(Lam5p,dp),Real(Lambda5piInput,dp))
Lam6p = Cmplx(Real(Lambda6prInput,dp),Aimag(Lam6p))
Lam6p = Cmplx(Real(Lam6p,dp),Real(Lambda6piInput,dp))
Lam7p = Cmplx(Real(Lambda7prInput,dp),Aimag(Lam7p))
Lam7p = Cmplx(Real(Lam7p,dp),Real(Lambda7piInput,dp))
L1pp = Cmplx(Real(Lambda1pprInput,dp),Aimag(L1pp))
L1pp = Cmplx(Real(L1pp,dp),Real(Lambda1ppiInput,dp))
L2pp = Cmplx(Real(Lambda2pprInput,dp),Aimag(L2pp))
L2pp = Cmplx(Real(L2pp,dp),Real(Lambda2ppiInput,dp))
L3pp = Lambda3ppInput
vS = vSInput
mu11 = Cmplx(Real(mu11rInput,dp),Aimag(mu11))
mu11 = Cmplx(Real(mu11,dp),Real(mu11iInput,dp))
mu22 = Cmplx(Real(mu22rInput,dp),Aimag(mu22))
mu22 = Cmplx(Real(mu22,dp),Real(mu22iInput,dp))
mu12 = Cmplx(Real(mu12rInput,dp),Aimag(mu12))
mu12 = Cmplx(Real(mu12,dp),Real(mu12iInput,dp))
mu21 = Cmplx(Real(mu21rInput,dp),Aimag(mu21))
mu21 = Cmplx(Real(mu21,dp),Real(mu21iInput,dp))
mus1 = Cmplx(Real(mus1rInput,dp),Aimag(mus1))
mus1 = Cmplx(Real(mus1,dp),Real(mus1iInput,dp))
mus2 = Cmplx(Real(mus2rInput,dp),Aimag(mus2))
mus2 = Cmplx(Real(mus2,dp),Real(mus2iInput,dp))
eta = etaInput
zeta = zetaInput
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

Call OneLoopMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,           & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,kont)


 If (SignOfMassChanged) Then  
 If (.Not.IgnoreNegativeMasses) Then 
  Write(*,*) " Stopping calculation because of negative mass squared." 
  Call TerminateProgram 
 Else 
  SignOfMassChanged= .False. 
  kont=0  
 End If 
End If 
If (SignOfMuChanged) Then 
 If (.Not.IgnoreMuSignFlip) Then 
  Write(*,*) " Stopping calculation because of negative mass squared in tadpoles." 
  Call TerminateProgram 
 Else 
  SignOfMuChanged= .False. 
  kont=0 
 End If 
End If 

Else 
   If (GetMassUncertainty) Then 
   ! Uncertainty from Y_top 
 If ((CalculateOneLoopMasses).and.(CalculateTwoLoopHiggsMasses)) Then 
OneLoopMatching = .true. 
TwoLoopMatching = .false. 
GuessTwoLoopMatchingBSM = .True. 
Elseif ((CalculateOneLoopMasses).and.(.not.CalculateTwoLoopHiggsMasses)) Then  
OneLoopMatching = .true. 
TwoLoopMatching = .false. 
GuessTwoLoopMatchingBSM = .false. 
Else  
OneLoopMatching = .true. 
TwoLoopMatching = .false. 
GuessTwoLoopMatchingBSM = .false. 
End if 
Call CalculateSpectrum(n_run,delta_mass,WriteOut,kont,MFd,MFd2,MFe,MFe2,              & 
& MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,               & 
& ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,            & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,mGUT)

n_tot =1
mass_uncertainty_Yt(n_tot:n_tot+5) = Mhh! difference will be taken later 
n_tot = n_tot + 6 
mass_uncertainty_Yt(n_tot:n_tot+1) = MHm! difference will be taken later 
If ((CalculateOneLoopMasses).and.(CalculateTwoLoopHiggsMasses)) Then 
OneLoopMatching = .true. 
TwoLoopMatching = .true. 
GuessTwoLoopMatchingBSM = .false. 
Elseif ((CalculateOneLoopMasses).and.(.not.CalculateTwoLoopHiggsMasses)) Then  
OneLoopMatching = .false. 
TwoLoopMatching = .false. 
GuessTwoLoopMatchingBSM = .false. 
Else  
OneLoopMatching = .false. 
TwoLoopMatching = .false. 
GuessTwoLoopMatchingBSM = .false. 
End if 
  End if 
 Call CalculateSpectrum(n_run,delta_mass,WriteOut,kont,MFd,MFd2,MFe,MFe2,              & 
& MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,               & 
& ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,            & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,mGUT)

  If (GetMassUncertainty) Then 
 Call GetScaleUncertainty(delta_mass,WriteOut,kont,MFd,MFd2,MFe,MFe2,MFu,              & 
& MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,               & 
& ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,          & 
& Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,            & 
& mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,mass_uncertainty_Q)

  End if 
 End If 
 ! Save correct Higgs masses for calculation of L -> 3 L' 
MhhL = Mhh
Mhh2L = MhhL**2 
v = Sqrt(vd**2 + vu**2)
betaH = ASin(Abs(ZP(1,2)))
TW = ACos(Abs(ZZ(1,1)))
If ((L_BR).And.(kont.Eq.0)) Then 
 Call CalculateBR(CalcTBD,ratioWoM,epsI,deltaM,kont,MFd,MFd2,MFe,MFe2,MFu,             & 
& MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,               & 
& ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,          & 
& Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,            & 
& mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,gPFu,gTFu,BRFu,gPFe,             & 
& gTFe,BRFe,gPFd,gTFd,BRFd,gPhh,gThh,BRhh,gPHm,gTHm,BRHm)

Call HiggsCrossSections(Mhh,ratioGG,ratioPP,rHB_S_VWm,rHB_S_VZ,rHB_S_S_Fu(:,3)        & 
& ,CS_Higgs_LHC,kont)

End If 
 
 If (CalculateLowEnergy) then 
Call CalculateLowEnergyConstraints(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,            & 
& Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,              & 
& Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,              & 
& vS,Tpar,Spar,Upar,ae,amu,atau,EDMe,EDMmu,EDMtau,dRho,BrBsGamma,ratioBsGamma,           & 
& BrDmunu,ratioDmunu,BrDsmunu,ratioDsmunu,BrDstaunu,ratioDstaunu,BrBmunu,ratioBmunu,     & 
& BrBtaunu,ratioBtaunu,BrKmunu,ratioKmunu,RK,RKSM,muEgamma,tauEgamma,tauMuGamma,         & 
& CRmuEAl,CRmuETi,CRmuESr,CRmuESb,CRmuEAu,CRmuEPb,BRmuTo3e,BRtauTo3e,BRtauTo3mu,         & 
& BRtauToemumu,BRtauTomuee,BRtauToemumu2,BRtauTomuee2,BrZtoMuE,BrZtoTauE,BrZtoTauMu,     & 
& BrhtoMuE,BrhtoTauE,BrhtoTauMu,DeltaMBs,ratioDeltaMBs,DeltaMBq,ratioDeltaMBq,           & 
& BrTautoEPi,BrTautoEEta,BrTautoEEtap,BrTautoMuPi,BrTautoMuEta,BrTautoMuEtap,            & 
& BrB0dEE,ratioB0dEE,BrB0sEE,ratioB0sEE,BrB0dMuMu,ratioB0dMuMu,BrB0sMuMu,ratioB0sMuMu,   & 
& BrB0dTauTau,ratioB0dTauTau,BrB0sTauTau,ratioB0sTauTau,BrBtoSEE,ratioBtoSEE,            & 
& BrBtoSMuMu,ratioBtoSMuMu,BrBtoKee,ratioBtoKee,BrBtoKmumu,ratioBtoKmumu,BrBtoSnunu,     & 
& ratioBtoSnunu,BrBtoDnunu,ratioBtoDnunu,BrKptoPipnunu,ratioKptoPipnunu,BrKltoPinunu,    & 
& ratioKltoPinunu,BrK0eMu,ratioK0eMu,DelMK,ratioDelMK,epsK,ratioepsK)

MVZ = mz 
MVZ2 = mz2 
MVWm = mW 
MVWm2 = mW2 
If (WriteParametersAtQ) Then 
Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,GenerationMixing,kont)

End If 
 
End if 
 
If ((FoundIterativeSolution).or.(WriteOutputForNonConvergence)) Then 
If (OutputForMO) Then 
Call RunningFermionMasses(MFe,MFe2,MFd,MFd2,MFu,MFu2,vd,vu,vS,g1,g2,g3,               & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,kont)

End if 
If (TreeLevelUnitarityLimits) Then 
Write(*,*) "Calculating unitarity constraints " 
Call ScatteringEigenvalues(vd,vu,vS,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,           & 
& Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,              & 
& Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,deltaM,kont)

End if 
If (TrilinearUnitarity) Then 
If (.not.TreeLevelUnitarityLimits) Write(*,*) "Calculating unitarity constraints " 
Call ScatteringEigenvaluesWithTrilinears(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,              & 
& Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,               & 
& ZZ,betaH,vd,vu,vS,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,             & 
& L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,             & 
& mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,deltaM,kont)

End if 
Write(*,*) "Writing output files" 
Call LesHouches_Out(67,11,kont,MGUT,Tpar,Spar,Upar,ae,amu,atau,EDMe,EDMmu,            & 
& EDMtau,dRho,BrBsGamma,ratioBsGamma,BrDmunu,ratioDmunu,BrDsmunu,ratioDsmunu,            & 
& BrDstaunu,ratioDstaunu,BrBmunu,ratioBmunu,BrBtaunu,ratioBtaunu,BrKmunu,ratioKmunu,     & 
& RK,RKSM,muEgamma,tauEgamma,tauMuGamma,CRmuEAl,CRmuETi,CRmuESr,CRmuESb,CRmuEAu,         & 
& CRmuEPb,BRmuTo3e,BRtauTo3e,BRtauTo3mu,BRtauToemumu,BRtauTomuee,BRtauToemumu2,          & 
& BRtauTomuee2,BrZtoMuE,BrZtoTauE,BrZtoTauMu,BrhtoMuE,BrhtoTauE,BrhtoTauMu,              & 
& DeltaMBs,ratioDeltaMBs,DeltaMBq,ratioDeltaMBq,BrTautoEPi,BrTautoEEta,BrTautoEEtap,     & 
& BrTautoMuPi,BrTautoMuEta,BrTautoMuEtap,BrB0dEE,ratioB0dEE,BrB0sEE,ratioB0sEE,          & 
& BrB0dMuMu,ratioB0dMuMu,BrB0sMuMu,ratioB0sMuMu,BrB0dTauTau,ratioB0dTauTau,              & 
& BrB0sTauTau,ratioB0sTauTau,BrBtoSEE,ratioBtoSEE,BrBtoSMuMu,ratioBtoSMuMu,              & 
& BrBtoKee,ratioBtoKee,BrBtoKmumu,ratioBtoKmumu,BrBtoSnunu,ratioBtoSnunu,BrBtoDnunu,     & 
& ratioBtoDnunu,BrKptoPipnunu,ratioKptoPipnunu,BrKltoPinunu,ratioKltoPinunu,             & 
& BrK0eMu,ratioK0eMu,DelMK,ratioDelMK,epsK,ratioepsK,GenerationMixing)

End if 
Write(*,*) "Finished!" 
Contains 
 
Subroutine CalculateSpectrum(n_run,delta,WriteOut,kont,MFd,MFd2,MFe,MFe2,             & 
& MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,               & 
& ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,            & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,mGUT)

Implicit None 
Integer, Intent(in) :: n_run 
Integer, Intent(inout) :: kont 
Logical, Intent(in) :: WriteOut 
Real(dp), Intent(in) :: delta 
Real(dp), Intent(inout) :: mGUT 
Real(dp),Intent(inout) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp),Intent(inout) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Real(dp),Intent(inout) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp),Intent(inout) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp),Intent(inout) :: vd,vu,vS

kont = 0 
Call FirstGuess(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,kont)

!If (kont.ne.0) Call TerminateProgram 
 
If (SPA_Convention) Call SetRGEScale(1.e3_dp**2) 
 
If (.Not.UseFixedScale) Then 
 Call SetRGEScale(160._dp**2) 
End If
Call Match_and_Run(delta,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,           & 
& MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,g1,g2,g3,Lam6,           & 
& Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,           & 
& L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,            & 
& M222,mS2,mSp2,mGut,kont,WriteOut,n_run)

If (kont.ne.0) Then 
 Write(*,*) "Error appeared in calculation of masses "
 
 Call TerminateProgram 
End If 
 
End Subroutine CalculateSpectrum 
 

 
Subroutine ReadingData(kont)
Implicit None
Integer,Intent(out)::kont
Logical::file_exists
kont=-123456
Inquire(file=inputFileName,exist=file_exists)
If (file_exists) Then
kont=1
Call LesHouches_Input(kont,Ecms,Pm,Pp,ISR,F_GMSB)
LesHouches_Format= .True.
Else
Write(*,*)&
& "File ",inputFileName," does not exist"
Call TerminateProgram
End If
End Subroutine ReadingData

 
Subroutine GetScaleUncertainty(delta,WriteOut,kont,MFdinput,MFd2input,MFeinput,       & 
& MFe2input,MFuinput,MFu2input,Mhhinput,Mhh2input,MHminput,MHm2input,MVWminput,          & 
& MVWm2input,MVZinput,MVZ2input,TWinput,ZDRinput,ZERinput,ZURinput,vinput,               & 
& ZDLinput,ZELinput,ZULinput,ZHinput,ZPinput,ZWinput,ZZinput,betaHinput,vdinput,         & 
& vuinput,vSinput,g1input,g2input,g3input,Lam6input,Lam5input,Lam7input,Lam1input,       & 
& Lam4input,Lam3input,Lam2input,Lam1pinput,Lam2pinput,L3ppinput,L1ppinput,               & 
& Lam4pinput,Lam6pinput,Lam7pinput,Lam5pinput,L2ppinput,Lam3pinput,Yuinput,              & 
& epsUinput,Ydinput,Yeinput,epsDinput,epsEinput,mus1input,mu11input,mu12input,           & 
& mu21input,mu22input,mus2input,M122input,M112input,M222input,mS2input,mSp2input,        & 
& mass_Qerror)

Implicit None 
Integer, Intent(inout) :: kont 
Logical, Intent(in) :: WriteOut 
Real(dp), Intent(in) :: delta 
Real(dp) :: mass_in(17), mass_new(17) 
Real(dp), Intent(out) :: mass_Qerror(17) 
Real(dp) :: gD(160), Q, Qsave, Qstep, Qt, g_SM(62), mh_SM 
Integer :: i1, i2, iupdown, ntot 
Real(dp),Intent(in) :: g1input,g2input,g3input,Lam1input,Lam4input,Lam3input,Lam2input,Lam1pinput,           & 
& Lam2pinput,L3ppinput,M112input,M222input,mS2input

Complex(dp),Intent(in) :: Lam6input,Lam5input,Lam7input,L1ppinput,Lam4pinput,Lam6pinput,Lam7pinput,             & 
& Lam5pinput,L2ppinput,Lam3pinput,Yuinput(3,3),epsUinput(3,3),Ydinput(3,3),              & 
& Yeinput(3,3),epsDinput(3,3),epsEinput(3,3),mus1input,mu11input,mu12input,              & 
& mu21input,mu22input,mus2input,M122input,mSp2input

Real(dp),Intent(in) :: MFdinput(3),MFd2input(3),MFeinput(3),MFe2input(3),MFuinput(3),MFu2input(3),           & 
& Mhhinput(6),Mhh2input(6),MHminput(2),MHm2input(2),MVWminput,MVWm2input,MVZinput,       & 
& MVZ2input,TWinput,vinput,ZHinput(6,6),ZPinput(2,2),ZZinput(2,2),betaHinput

Complex(dp),Intent(in) :: ZDRinput(3,3),ZERinput(3,3),ZURinput(3,3),ZDLinput(3,3),ZELinput(3,3),ZULinput(3,3),  & 
& ZWinput(2,2)

Real(dp),Intent(in) :: vdinput,vuinput,vSinput

Real(dp) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Real(dp) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp) :: vd,vu,vS

kont = 0 
Write(*,*) "Check scale uncertainty" 
n_tot =1
mass_in(n_tot:n_tot+5) = Mhhinput
n_tot = n_tot + 6 
mass_in(n_tot:n_tot+1) = MHminput
mass_Qerror = 0._dp 
Qsave=sqrt(getRenormalizationScale()) 
Do iupdown=1,2 
If (iupdown.eq.1) Then 
  Qstep=Qsave/7._dp 
Else 
  Qstep=-0.5_dp*Qsave/7._dp 
End if 
Do i1=1,7 
Q=Qsave+i1*Qstep 
Qt = SetRenormalizationScale(Q**2) 
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

 
 ! --- GUT normalize gauge couplings --- 
g1 = Sqrt(5._dp/3._dp)*g1 
! ----------------------- 
 
Call ParametersToG160(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,              & 
& Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,            & 
& mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,gD)

If (iupdown.eq.1) Then 
 tz=Log(Q/Qsave)
 dt=-tz/50._dp
 Call odeint(gD,160,0._dp,tz,0.1_dp*delta,dt,0._dp,rge160,kont)
Else 
 tz=-Log(Q/Qsave)
 dt=tz/50._dp
 Call odeint(gD,160,tz,0._dp,0.1_dp*delta,dt,0._dp,rge160,kont)
End if 
Call GToParameters160(gD,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,           & 
& Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,            & 
& mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS)


 
 ! --- Remove GUT-normalization of gauge couplings --- 
g1 = Sqrt(3._dp/5._dp)*g1 
! ----------------------- 
 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

Call OneLoopMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,           & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,kont)

If (((Calculate_mh_within_SM).and.(Mhh(2).gt.300._dp)).OR.(Force_mh_within_SM))Then
g_SM=g_SM_save 
tz=0.5_dp*Log(mZ2/Q**2)
dt=tz/100._dp
g_SM(1)=Sqrt(5._dp/3._dp)*g_SM(1) 
Call odeint(g_SM,62,tz,0._dp,delta,dt,0._dp,rge62_SM,kont) 
g_SM(1)=Sqrt(3._dp/5._dp)*g_SM(1) 
Call Get_mh_pole_SM(g_SM,Q**2,delta,Mhh2(1),mh_SM)
Mhh2(1) = mh_SM**2 
Mhh(1) = mh_SM 
End if
n_tot =1
mass_new(n_tot:n_tot+5) = Mhh
n_tot = n_tot + 6 
mass_new(n_tot:n_tot+1) = MHm
  Do i2=1,17 
    If (Abs(mass_new(i2)-mass_in(i2)).gt.mass_Qerror(i2)) mass_Qerror(i2) = Abs(mass_new(i2)-mass_in(i2)) 
  End Do 
End Do 
End Do 
  Do i2=1,17  
    mass_uncertainty_Yt(i2) = Abs(mass_uncertainty_Yt(i2)-mass_in(i2)) 
  End Do 
If (kont.ne.0) Then 
 Write(*,*) "Error appeared in check of scale uncertainty "
 
 Call TerminateProgram 
End If 
 
Qt = SetRenormalizationScale(Qsave**2) 
End Subroutine GetScaleUncertainty 
 

 
End Program SPheno2HDMSCPV 
