! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.1 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 13:09 on 9.6.2025   
! ----------------------------------------------------------------------  
 
 
Module Unitarity_2HDMSCPV 
 
Use Control 
Use Settings 
Use LoopFunctions 
Use Mathematics 
Use Model_Data_2HDMSCPV 
Use RGEs_2HDMSCPV 
Use LoopMasses_2HDMSCPV 
Use TreeLevelMasses_2HDMSCPV 
Use Couplings_2HDMSCPV 
Use Tadpoles_2HDMSCPV 
 Use StandardModel 
 
Logical :: IncludeGoldstoneContributions=.true. 
Logical :: IncludeGoldstoneExternal=.true. 
Logical :: AddR=.true. 
Real(dp) :: cut_elements = 0.0001_dp 
Real(dp) :: cut_amplitudes = 0.01_dp 
Logical :: Ignore_poles=.false. 
 
Contains 

Subroutine ScatteringEigenvalues(vdinput,vuinput,vSinput,g1input,g2input,             & 
& g3input,Lam6input,Lam5input,Lam7input,Lam1input,Lam4input,Lam3input,Lam2input,         & 
& Lam1pinput,Lam2pinput,L3ppinput,L1ppinput,Lam4pinput,Lam6pinput,Lam7pinput,            & 
& Lam5pinput,L2ppinput,Lam3pinput,Yuinput,epsUinput,Ydinput,Yeinput,epsDinput,           & 
& epsEinput,mus1input,mu11input,mu12input,mu21input,mu22input,mus2input,M122input,       & 
& M112input,M222input,mS2input,mSp2input,delta0,kont)

Implicit None 
Integer, Intent(inout) :: kont 
Integer :: ierr 
Real(dp) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Real(dp) :: vd,vu,vS

Real(dp) :: gD(160) 
Real(dp) :: tz,dt,q,q2,mudim 
Real(dp), Intent(in) :: delta0 
Integer :: iter 
Complex(dp) :: scatter_matrix(55,55) 
Complex(dp) :: rot_matrix(55,55) 
Real(dp) :: eigenvalues_matrix(55), test(2), unitarity_s, scattering_eigenvalue, step_size
Real(dp),Intent(in) :: g1input,g2input,g3input,Lam1input,Lam4input,Lam3input,Lam2input,Lam1pinput,           & 
& Lam2pinput,L3ppinput,M112input,M222input,mS2input,vdinput,vuinput,vSinput

Complex(dp),Intent(in) :: Lam6input,Lam5input,Lam7input,L1ppinput,Lam4pinput,Lam6pinput,Lam7pinput,             & 
& Lam5pinput,L2ppinput,Lam3pinput,Yuinput(3,3),epsUinput(3,3),Ydinput(3,3),              & 
& Yeinput(3,3),epsDinput(3,3),epsEinput(3,3),mus1input,mu11input,mu12input,              & 
& mu21input,mu22input,mus2input,M122input,mSp2input

max_scattering_eigenvalue = 0._dp 

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
scatter_matrix=0._dp 
scatter_matrix(1,41) =-1._dp*(Lam1)
scatter_matrix(1,43) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(1,50) =-(exp(2*(0.,1._dp)*eta)*Conjg(Lam5))
scatter_matrix(2,42) =-1._dp*(Lam1)
scatter_matrix(2,44) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(2,47) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(2,51) =-(exp(2*(0.,1._dp)*eta)*Conjg(Lam5))
scatter_matrix(3,41) =-((sqrt(2._dp)*Lam6)/exp((0._dp,1._dp)*eta))
scatter_matrix(3,43) =-1._dp*(Lam3) - Lam4
scatter_matrix(3,50) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(4,42) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(4,44) =-1._dp*(Lam3)
scatter_matrix(4,47) =-1._dp*(Lam4)
scatter_matrix(4,51) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(5,36) =-2*exp(2*(0.,1._dp)*zeta)*Lam4p
scatter_matrix(5,38) =-2*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p
scatter_matrix(5,45) =-1._dp*(Lam1p)
scatter_matrix(5,52) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(6,6) =-2._dp*(Lam1)
scatter_matrix(6,8) =-2*exp((0._dp,1._dp)*eta)*Conjg(Lam6)
scatter_matrix(6,16) =-1._dp*(Lam1)
scatter_matrix(6,18) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(6,23) =-2._dp*(Lam6)/exp((0._dp,1._dp)*eta)
scatter_matrix(6,25) =-1._dp*(Lam3) - Lam4
scatter_matrix(6,31) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(6,33) =-1._dp*(Lam3)
scatter_matrix(6,35) =-(sqrt(2._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p)
scatter_matrix(6,40) =-1._dp*(Lam1p)
scatter_matrix(6,55) =-((sqrt(2._dp)*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta))
scatter_matrix(7,15) =-1._dp*(Lam1)
scatter_matrix(7,17) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(7,30) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(7,32) =-1._dp*(Lam4)
scatter_matrix(8,6) =-2*exp((0._dp,1._dp)*eta)*Conjg(Lam6)
scatter_matrix(8,8) =-2*exp(2*(0.,1._dp)*eta)*Conjg(Lam5)
scatter_matrix(8,16) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(8,18) =-(exp(2*(0.,1._dp)*eta)*Conjg(Lam5))
scatter_matrix(8,23) =-1._dp*(Lam3) - Lam4
scatter_matrix(8,25) =-2*exp((0._dp,1._dp)*eta)*Conjg(Lam7)
scatter_matrix(8,31) =-1._dp*(Lam4)
scatter_matrix(8,33) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(8,35) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p)
scatter_matrix(8,40) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(8,55) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam6p))
scatter_matrix(9,15) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(9,17) =-(exp(2*(0.,1._dp)*eta)*Conjg(Lam5))
scatter_matrix(9,30) =-1._dp*(Lam3)
scatter_matrix(9,32) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(10,36) =-1._dp*(Lam1p)
scatter_matrix(10,38) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(10,45) =(-2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta)
scatter_matrix(10,52) =-2*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam6p)
scatter_matrix(11,46) =-1._dp*(Lam1)
scatter_matrix(11,48) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(11,53) =-(exp(2*(0.,1._dp)*eta)*Conjg(Lam5))
scatter_matrix(12,42) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(12,44) =-1._dp*(Lam4)
scatter_matrix(12,47) =-1._dp*(Lam3)
scatter_matrix(12,51) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(13,46) =-((sqrt(2._dp)*Lam6)/exp((0._dp,1._dp)*eta))
scatter_matrix(13,48) =-1._dp*(Lam3) - Lam4
scatter_matrix(13,53) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(14,37) =-2*exp(2*(0.,1._dp)*zeta)*Lam4p
scatter_matrix(14,39) =-2*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p
scatter_matrix(14,49) =-1._dp*(Lam1p)
scatter_matrix(14,54) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(15,7) =-1._dp*(Lam1)
scatter_matrix(15,9) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(15,24) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(15,26) =-1._dp*(Lam4)
scatter_matrix(16,6) =-1._dp*(Lam1)
scatter_matrix(16,8) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(16,16) =-2._dp*(Lam1)
scatter_matrix(16,18) =-2*exp((0._dp,1._dp)*eta)*Conjg(Lam6)
scatter_matrix(16,23) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(16,25) =-1._dp*(Lam3)
scatter_matrix(16,31) =-2._dp*(Lam6)/exp((0._dp,1._dp)*eta)
scatter_matrix(16,33) =-1._dp*(Lam3) - Lam4
scatter_matrix(16,35) =-(sqrt(2._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p)
scatter_matrix(16,40) =-1._dp*(Lam1p)
scatter_matrix(16,55) =-((sqrt(2._dp)*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta))
scatter_matrix(17,7) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(17,9) =-(exp(2*(0.,1._dp)*eta)*Conjg(Lam5))
scatter_matrix(17,24) =-1._dp*(Lam3)
scatter_matrix(17,26) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(18,6) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(18,8) =-(exp(2*(0.,1._dp)*eta)*Conjg(Lam5))
scatter_matrix(18,16) =-2*exp((0._dp,1._dp)*eta)*Conjg(Lam6)
scatter_matrix(18,18) =-2*exp(2*(0.,1._dp)*eta)*Conjg(Lam5)
scatter_matrix(18,23) =-1._dp*(Lam4)
scatter_matrix(18,25) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(18,31) =-1._dp*(Lam3) - Lam4
scatter_matrix(18,33) =-2*exp((0._dp,1._dp)*eta)*Conjg(Lam7)
scatter_matrix(18,35) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p)
scatter_matrix(18,40) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(18,55) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam6p))
scatter_matrix(19,37) =-1._dp*(Lam1p)
scatter_matrix(19,39) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(19,49) =(-2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta)
scatter_matrix(19,54) =-2*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam6p)
scatter_matrix(20,41) =-(Lam5/exp(2*(0.,1._dp)*eta))
scatter_matrix(20,43) =-((sqrt(2._dp)*Lam7)/exp((0._dp,1._dp)*eta))
scatter_matrix(20,50) =-1._dp*(Lam2)
scatter_matrix(21,42) =-(Lam5/exp(2*(0.,1._dp)*eta))
scatter_matrix(21,44) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(21,47) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(21,51) =-1._dp*(Lam2)
scatter_matrix(22,36) =-2*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p
scatter_matrix(22,38) =-2*exp(2*(0.,1._dp)*zeta)*Lam5p
scatter_matrix(22,45) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(22,52) =-1._dp*(Lam2p)
scatter_matrix(23,6) =-2._dp*(Lam6)/exp((0._dp,1._dp)*eta)
scatter_matrix(23,8) =-1._dp*(Lam3) - Lam4
scatter_matrix(23,16) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(23,18) =-1._dp*(Lam4)
scatter_matrix(23,23) =-2._dp*(Lam5)/exp(2*(0.,1._dp)*eta)
scatter_matrix(23,25) =-2._dp*(Lam7)/exp((0._dp,1._dp)*eta)
scatter_matrix(23,31) =-(Lam5/exp(2*(0.,1._dp)*eta))
scatter_matrix(23,33) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(23,35) =-(sqrt(2._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p)
scatter_matrix(23,40) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(23,55) =-(sqrt(2._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam7p))
scatter_matrix(24,15) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(24,17) =-1._dp*(Lam3)
scatter_matrix(24,30) =-(Lam5/exp(2*(0.,1._dp)*eta))
scatter_matrix(24,32) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(25,6) =-1._dp*(Lam3) - Lam4
scatter_matrix(25,8) =-2*exp((0._dp,1._dp)*eta)*Conjg(Lam7)
scatter_matrix(25,16) =-1._dp*(Lam3)
scatter_matrix(25,18) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(25,23) =-2._dp*(Lam7)/exp((0._dp,1._dp)*eta)
scatter_matrix(25,25) =-2._dp*(Lam2)
scatter_matrix(25,31) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(25,33) =-1._dp*(Lam2)
scatter_matrix(25,35) =-(sqrt(2._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p)
scatter_matrix(25,40) =-1._dp*(Lam2p)
scatter_matrix(25,55) =-((sqrt(2._dp)*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta))
scatter_matrix(26,15) =-1._dp*(Lam4)
scatter_matrix(26,17) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(26,30) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(26,32) =-1._dp*(Lam2)
scatter_matrix(27,36) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(27,38) =-1._dp*(Lam2p)
scatter_matrix(27,45) =-2*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam7p)
scatter_matrix(27,52) =(-2*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta)
scatter_matrix(28,46) =-(Lam5/exp(2*(0.,1._dp)*eta))
scatter_matrix(28,48) =-((sqrt(2._dp)*Lam7)/exp((0._dp,1._dp)*eta))
scatter_matrix(28,53) =-1._dp*(Lam2)
scatter_matrix(29,37) =-2*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p
scatter_matrix(29,39) =-2*exp(2*(0.,1._dp)*zeta)*Lam5p
scatter_matrix(29,49) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(29,54) =-1._dp*(Lam2p)
scatter_matrix(30,7) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(30,9) =-1._dp*(Lam3)
scatter_matrix(30,24) =-(Lam5/exp(2*(0.,1._dp)*eta))
scatter_matrix(30,26) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(31,6) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(31,8) =-1._dp*(Lam4)
scatter_matrix(31,16) =-2._dp*(Lam6)/exp((0._dp,1._dp)*eta)
scatter_matrix(31,18) =-1._dp*(Lam3) - Lam4
scatter_matrix(31,23) =-(Lam5/exp(2*(0.,1._dp)*eta))
scatter_matrix(31,25) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(31,31) =-2._dp*(Lam5)/exp(2*(0.,1._dp)*eta)
scatter_matrix(31,33) =-2._dp*(Lam7)/exp((0._dp,1._dp)*eta)
scatter_matrix(31,35) =-(sqrt(2._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p)
scatter_matrix(31,40) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(31,55) =-(sqrt(2._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam7p))
scatter_matrix(32,7) =-1._dp*(Lam4)
scatter_matrix(32,9) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(32,24) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(32,26) =-1._dp*(Lam2)
scatter_matrix(33,6) =-1._dp*(Lam3)
scatter_matrix(33,8) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(33,16) =-1._dp*(Lam3) - Lam4
scatter_matrix(33,18) =-2*exp((0._dp,1._dp)*eta)*Conjg(Lam7)
scatter_matrix(33,23) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(33,25) =-1._dp*(Lam2)
scatter_matrix(33,31) =-2._dp*(Lam7)/exp((0._dp,1._dp)*eta)
scatter_matrix(33,33) =-2._dp*(Lam2)
scatter_matrix(33,35) =-(sqrt(2._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p)
scatter_matrix(33,40) =-1._dp*(Lam2p)
scatter_matrix(33,55) =-((sqrt(2._dp)*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta))
scatter_matrix(34,37) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(34,39) =-1._dp*(Lam2p)
scatter_matrix(34,49) =-2*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam7p)
scatter_matrix(34,54) =(-2*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta)
scatter_matrix(35,6) =-(sqrt(2._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p)
scatter_matrix(35,8) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p)
scatter_matrix(35,16) =-(sqrt(2._dp)*exp(2*(0.,1._dp)*zeta)*Lam4p)
scatter_matrix(35,18) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p)
scatter_matrix(35,23) =-(sqrt(2._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p)
scatter_matrix(35,25) =-(sqrt(2._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p)
scatter_matrix(35,31) =-(sqrt(2._dp)*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p)
scatter_matrix(35,33) =-(sqrt(2._dp)*exp(2*(0.,1._dp)*zeta)*Lam5p)
scatter_matrix(35,35) =-1._dp/2._dp*(exp(4*(0.,1._dp)*zeta)*L1pp)
scatter_matrix(35,40) =-((exp(2*(0.,1._dp)*zeta)*L2pp)/sqrt(2._dp))
scatter_matrix(35,55) =-1._dp/2._dp*L3pp
scatter_matrix(36,5) =-2*exp(2*(0.,1._dp)*zeta)*Lam4p
scatter_matrix(36,10) =-1._dp*(Lam1p)
scatter_matrix(36,22) =-2*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p
scatter_matrix(36,27) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(37,14) =-2*exp(2*(0.,1._dp)*zeta)*Lam4p
scatter_matrix(37,19) =-1._dp*(Lam1p)
scatter_matrix(37,29) =-2*exp(-1*(0.,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam6p
scatter_matrix(37,34) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(38,5) =-2*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p
scatter_matrix(38,10) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(38,22) =-2*exp(2*(0.,1._dp)*zeta)*Lam5p
scatter_matrix(38,27) =-1._dp*(Lam2p)
scatter_matrix(39,14) =-2*exp((0._dp,1._dp)*eta + 2*(0.,1._dp)*zeta)*Lam7p
scatter_matrix(39,19) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(39,29) =-2*exp(2*(0.,1._dp)*zeta)*Lam5p
scatter_matrix(39,34) =-1._dp*(Lam2p)
scatter_matrix(40,6) =-1._dp*(Lam1p)
scatter_matrix(40,8) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(40,16) =-1._dp*(Lam1p)
scatter_matrix(40,18) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(40,23) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(40,25) =-1._dp*(Lam2p)
scatter_matrix(40,31) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(40,33) =-1._dp*(Lam2p)
scatter_matrix(40,35) =-((exp(2*(0.,1._dp)*zeta)*L2pp)/sqrt(2._dp))
scatter_matrix(40,40) =-1._dp*(L3pp)
scatter_matrix(40,55) =-(Conjg(L2pp)/(sqrt(2._dp)*exp(2*(0.,1._dp)*zeta)))
scatter_matrix(41,1) =-1._dp*(Lam1)
scatter_matrix(41,3) =-((sqrt(2._dp)*Lam6)/exp((0._dp,1._dp)*eta))
scatter_matrix(41,20) =-(Lam5/exp(2*(0.,1._dp)*eta))
scatter_matrix(42,2) =-1._dp*(Lam1)
scatter_matrix(42,4) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(42,12) =-(Lam6/exp((0._dp,1._dp)*eta))
scatter_matrix(42,21) =-(Lam5/exp(2*(0.,1._dp)*eta))
scatter_matrix(43,1) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(43,3) =-1._dp*(Lam3) - Lam4
scatter_matrix(43,20) =-((sqrt(2._dp)*Lam7)/exp((0._dp,1._dp)*eta))
scatter_matrix(44,2) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(44,4) =-1._dp*(Lam3)
scatter_matrix(44,12) =-1._dp*(Lam4)
scatter_matrix(44,21) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(45,5) =-1._dp*(Lam1p)
scatter_matrix(45,10) =(-2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta)
scatter_matrix(45,22) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(45,27) =-2*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam7p)
scatter_matrix(46,11) =-1._dp*(Lam1)
scatter_matrix(46,13) =-((sqrt(2._dp)*Lam6)/exp((0._dp,1._dp)*eta))
scatter_matrix(46,28) =-(Lam5/exp(2*(0.,1._dp)*eta))
scatter_matrix(47,2) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(47,4) =-1._dp*(Lam4)
scatter_matrix(47,12) =-1._dp*(Lam3)
scatter_matrix(47,21) =-(Lam7/exp((0._dp,1._dp)*eta))
scatter_matrix(48,11) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta)*Conjg(Lam6))
scatter_matrix(48,13) =-1._dp*(Lam3) - Lam4
scatter_matrix(48,28) =-((sqrt(2._dp)*Lam7)/exp((0._dp,1._dp)*eta))
scatter_matrix(49,14) =-1._dp*(Lam1p)
scatter_matrix(49,19) =(-2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta)
scatter_matrix(49,29) =-(Lam3p/exp((0._dp,1._dp)*eta))
scatter_matrix(49,34) =-2*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam7p)
scatter_matrix(50,1) =-(exp(2*(0.,1._dp)*eta)*Conjg(Lam5))
scatter_matrix(50,3) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(50,20) =-1._dp*(Lam2)
scatter_matrix(51,2) =-(exp(2*(0.,1._dp)*eta)*Conjg(Lam5))
scatter_matrix(51,4) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(51,12) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(51,21) =-1._dp*(Lam2)
scatter_matrix(52,5) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(52,10) =-2*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam6p)
scatter_matrix(52,22) =-1._dp*(Lam2p)
scatter_matrix(52,27) =(-2*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta)
scatter_matrix(53,11) =-(exp(2*(0.,1._dp)*eta)*Conjg(Lam5))
scatter_matrix(53,13) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta)*Conjg(Lam7))
scatter_matrix(53,28) =-1._dp*(Lam2)
scatter_matrix(54,14) =-(exp((0._dp,1._dp)*eta)*Conjg(Lam3p))
scatter_matrix(54,19) =-2*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam6p)
scatter_matrix(54,29) =-1._dp*(Lam2p)
scatter_matrix(54,34) =(-2*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta)
scatter_matrix(55,6) =-((sqrt(2._dp)*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta))
scatter_matrix(55,8) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam6p))
scatter_matrix(55,16) =-((sqrt(2._dp)*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta))
scatter_matrix(55,18) =-(sqrt(2._dp)*exp((0._dp,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam6p))
scatter_matrix(55,23) =-(sqrt(2._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam7p))
scatter_matrix(55,25) =-((sqrt(2._dp)*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta))
scatter_matrix(55,31) =-(sqrt(2._dp)*exp(-1*(0.,1._dp)*eta - 2*(0.,1._dp)*zeta)*Conjg(Lam7p))
scatter_matrix(55,33) =-((sqrt(2._dp)*Conjg(Lam5p))/exp(2*(0.,1._dp)*zeta))
scatter_matrix(55,35) =-1._dp/2._dp*L3pp
scatter_matrix(55,40) =-(Conjg(L2pp)/(sqrt(2._dp)*exp(2*(0.,1._dp)*zeta)))
scatter_matrix(55,55) =-1._dp/2._dp*Conjg(L1pp)/exp(4*(0.,1._dp)*zeta)
Call EigenSystem( oo16pi*scatter_matrix,eigenvalues_matrix,rot_matrix,ierr,test) 

scattering_eigenvalue=MaxVal(Abs(eigenvalues_matrix)) 
max_scattering_eigenvalue=scattering_eigenvalue 
If (max_scattering_eigenvalue.gt.0.5_dp) TreeUnitarity=0._dp 
End Subroutine ScatteringEigenvalues

Subroutine ScatteringEigenvaluesWithTrilinears(MFdinput,MFd2input,MFeinput,           & 
& MFe2input,MFuinput,MFu2input,Mhhinput,Mhh2input,MHminput,MHm2input,MVWminput,          & 
& MVWm2input,MVZinput,MVZ2input,TWinput,ZDRinput,ZERinput,ZURinput,vinput,               & 
& ZDLinput,ZELinput,ZULinput,ZHinput,ZPinput,ZWinput,ZZinput,betaHinput,vdinput,         & 
& vuinput,vSinput,g1input,g2input,g3input,Lam6input,Lam5input,Lam7input,Lam1input,       & 
& Lam4input,Lam3input,Lam2input,Lam1pinput,Lam2pinput,L3ppinput,L1ppinput,               & 
& Lam4pinput,Lam6pinput,Lam7pinput,Lam5pinput,L2ppinput,Lam3pinput,Yuinput,              & 
& epsUinput,Ydinput,Yeinput,epsDinput,epsEinput,mus1input,mu11input,mu12input,           & 
& mu21input,mu22input,mus2input,M122input,M112input,M222input,mS2input,mSp2input,        & 
& delta0,kont)

Implicit None 
Integer, Intent(inout) :: kont 
Integer :: ierr 
Logical :: Pole_Present, SPole_Present, TPole_Present, UPole_Present, any_pole_present 
Integer :: RemoveTUpoles(99) 
Integer :: best_submatrix 
Real(dp) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Real(dp) :: vd,vu,vS

Complex(dp) :: cplhhhhhh(6,6,6),cplhhHmcHm(6,2,2),cplhhhhhhhh(6,6,6,6),cplhhhhHmcHm(6,6,2,2),        & 
& cplHmHmcHmcHm(2,2,2,2)

Real(dp) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

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

Complex(dp) :: scatter_matrix1(25,25) 
Complex(dp) :: scatter_matrix1B(25,25) 
Complex(dp) :: rot_matrix1(25,25) 
Real(dp) :: eigenvalues_matrix1(25)
Complex(dp) :: scatter_matrix2(12,12) 
Complex(dp) :: scatter_matrix2B(12,12) 
Complex(dp) :: rot_matrix2(12,12) 
Real(dp) :: eigenvalues_matrix2(12)
Complex(dp) :: scatter_matrix3(3,3) 
Complex(dp) :: scatter_matrix3B(3,3) 
Complex(dp) :: rot_matrix3(3,3) 
Real(dp) :: eigenvalues_matrix3(3)
Real(dp) :: step_size,scattering_eigenvalue_trilinears, unitarity_s, test(2) 
Real(dp) :: gD(160) 
Real(dp) :: tz,dt,q,q2,mudim, max_element_removed  
Real(dp), Intent(in) :: delta0 
Integer :: iter, i, il,ir, count 
best_submatrix = 0 
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
Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,.True.,kont)

Call CouplingsColourStructures(Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,              & 
& Lam2p,L3pp,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,            & 
& Lam3p,eta,zeta,vd,vu,vS,ZH,ZP,cplhhhhhh,cplhhHmcHm,cplhhhhhhhh,cplhhhhHmcHm,           & 
& cplHmHmcHmcHm)

max_scattering_eigenvalue_trilinears = 0._dp 
If (unitarity_steps.eq.1) Then  
  step_size = 0._dp
Else  
 If (unitarity_steps.gt.0) Then 
  step_size = ((Abs(unitarity_s_max)) -(abs(unitarity_s_min)))/(1._dp*(Abs(unitarity_steps)-1)) 
 Else 
  step_size = (log(Abs(unitarity_s_max)) -log(abs(unitarity_s_min)))/(1._dp*(Abs(unitarity_steps)-1)) 
 End if 
End if 
Do iter=0,Abs(unitarity_steps)-1 
If (unitarity_steps.lt.0) Then 
  unitarity_s=exp(log(unitarity_s_min) + iter*step_size)**2 
Else 
  unitarity_s=(unitarity_s_min + iter*step_size)**2 
End if 
any_pole_present = .False. 
!! 1. sub-matrix  
Pole_Present = .false. 
max_element_removed = 0._dp 
RemoveTUpoles = 0 
scatter_matrix1=0._dp 
If (IncludeGoldstoneExternal) scatter_matrix1(1,1) = a0_hhhh_hhhh_00(unitarity_s,1,1,1,1,1,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,2) = a0_hhhh_hhhh_00(unitarity_s,1,1,1,2,1,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,3) = a0_hhhh_hhhh_00(unitarity_s,1,1,1,3,1,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,4) = a0_hhhh_hhhh_00(unitarity_s,1,1,1,4,1,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,5) = a0_hhhh_hhhh_00(unitarity_s,1,1,1,5,1,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,6) = a0_hhhh_hhhh_00(unitarity_s,1,1,1,6,1,6) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,7) = a0_hhhh_hhhh_00(unitarity_s,1,1,2,2,1,7) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,8) = a0_hhhh_hhhh_00(unitarity_s,1,1,2,3,1,8) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,9) = a0_hhhh_hhhh_00(unitarity_s,1,1,2,4,1,9) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,10) = a0_hhhh_hhhh_00(unitarity_s,1,1,2,5,1,10) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,11) = a0_hhhh_hhhh_00(unitarity_s,1,1,2,6,1,11) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,12) = a0_hhhh_hhhh_00(unitarity_s,1,1,3,3,1,12) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,13) = a0_hhhh_hhhh_00(unitarity_s,1,1,3,4,1,13) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,14) = a0_hhhh_hhhh_00(unitarity_s,1,1,3,5,1,14) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,15) = a0_hhhh_hhhh_00(unitarity_s,1,1,3,6,1,15) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,16) = a0_hhhh_hhhh_00(unitarity_s,1,1,4,4,1,16) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,17) = a0_hhhh_hhhh_00(unitarity_s,1,1,4,5,1,17) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,18) = a0_hhhh_hhhh_00(unitarity_s,1,1,4,6,1,18) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,19) = a0_hhhh_hhhh_00(unitarity_s,1,1,5,5,1,19) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,20) = a0_hhhh_hhhh_00(unitarity_s,1,1,5,6,1,20) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,21) = a0_hhhh_hhhh_00(unitarity_s,1,1,6,6,1,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,22) = a0_hhhh_HmHmc_00(unitarity_s,1,1,1,1,1,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,23) = a0_hhhh_HmHmc_00(unitarity_s,1,1,1,2,1,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,24) = a0_hhhh_HmHmc_00(unitarity_s,1,1,2,1,1,24) 
If (IncludeGoldstoneExternal) scatter_matrix1(1,25) = a0_hhhh_HmHmc_00(unitarity_s,1,1,2,2,1,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,1) = a0_hhhh_hhhh_00(unitarity_s,1,2,1,1,2,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,2) = a0_hhhh_hhhh_00(unitarity_s,1,2,1,2,2,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,3) = a0_hhhh_hhhh_00(unitarity_s,1,2,1,3,2,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,4) = a0_hhhh_hhhh_00(unitarity_s,1,2,1,4,2,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,5) = a0_hhhh_hhhh_00(unitarity_s,1,2,1,5,2,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,6) = a0_hhhh_hhhh_00(unitarity_s,1,2,1,6,2,6) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,7) = a0_hhhh_hhhh_00(unitarity_s,1,2,2,2,2,7) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,8) = a0_hhhh_hhhh_00(unitarity_s,1,2,2,3,2,8) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,9) = a0_hhhh_hhhh_00(unitarity_s,1,2,2,4,2,9) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,10) = a0_hhhh_hhhh_00(unitarity_s,1,2,2,5,2,10) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,11) = a0_hhhh_hhhh_00(unitarity_s,1,2,2,6,2,11) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,12) = a0_hhhh_hhhh_00(unitarity_s,1,2,3,3,2,12) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,13) = a0_hhhh_hhhh_00(unitarity_s,1,2,3,4,2,13) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,14) = a0_hhhh_hhhh_00(unitarity_s,1,2,3,5,2,14) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,15) = a0_hhhh_hhhh_00(unitarity_s,1,2,3,6,2,15) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,16) = a0_hhhh_hhhh_00(unitarity_s,1,2,4,4,2,16) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,17) = a0_hhhh_hhhh_00(unitarity_s,1,2,4,5,2,17) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,18) = a0_hhhh_hhhh_00(unitarity_s,1,2,4,6,2,18) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,19) = a0_hhhh_hhhh_00(unitarity_s,1,2,5,5,2,19) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,20) = a0_hhhh_hhhh_00(unitarity_s,1,2,5,6,2,20) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,21) = a0_hhhh_hhhh_00(unitarity_s,1,2,6,6,2,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,22) = a0_hhhh_HmHmc_00(unitarity_s,1,2,1,1,2,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,23) = a0_hhhh_HmHmc_00(unitarity_s,1,2,1,2,2,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,24) = a0_hhhh_HmHmc_00(unitarity_s,1,2,2,1,2,24) 
If (IncludeGoldstoneExternal) scatter_matrix1(2,25) = a0_hhhh_HmHmc_00(unitarity_s,1,2,2,2,2,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,1) = a0_hhhh_hhhh_00(unitarity_s,1,3,1,1,3,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,2) = a0_hhhh_hhhh_00(unitarity_s,1,3,1,2,3,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,3) = a0_hhhh_hhhh_00(unitarity_s,1,3,1,3,3,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,4) = a0_hhhh_hhhh_00(unitarity_s,1,3,1,4,3,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,5) = a0_hhhh_hhhh_00(unitarity_s,1,3,1,5,3,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,6) = a0_hhhh_hhhh_00(unitarity_s,1,3,1,6,3,6) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,7) = a0_hhhh_hhhh_00(unitarity_s,1,3,2,2,3,7) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,8) = a0_hhhh_hhhh_00(unitarity_s,1,3,2,3,3,8) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,9) = a0_hhhh_hhhh_00(unitarity_s,1,3,2,4,3,9) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,10) = a0_hhhh_hhhh_00(unitarity_s,1,3,2,5,3,10) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,11) = a0_hhhh_hhhh_00(unitarity_s,1,3,2,6,3,11) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,12) = a0_hhhh_hhhh_00(unitarity_s,1,3,3,3,3,12) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,13) = a0_hhhh_hhhh_00(unitarity_s,1,3,3,4,3,13) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,14) = a0_hhhh_hhhh_00(unitarity_s,1,3,3,5,3,14) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,15) = a0_hhhh_hhhh_00(unitarity_s,1,3,3,6,3,15) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,16) = a0_hhhh_hhhh_00(unitarity_s,1,3,4,4,3,16) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,17) = a0_hhhh_hhhh_00(unitarity_s,1,3,4,5,3,17) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,18) = a0_hhhh_hhhh_00(unitarity_s,1,3,4,6,3,18) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,19) = a0_hhhh_hhhh_00(unitarity_s,1,3,5,5,3,19) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,20) = a0_hhhh_hhhh_00(unitarity_s,1,3,5,6,3,20) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,21) = a0_hhhh_hhhh_00(unitarity_s,1,3,6,6,3,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,22) = a0_hhhh_HmHmc_00(unitarity_s,1,3,1,1,3,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,23) = a0_hhhh_HmHmc_00(unitarity_s,1,3,1,2,3,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,24) = a0_hhhh_HmHmc_00(unitarity_s,1,3,2,1,3,24) 
If (IncludeGoldstoneExternal) scatter_matrix1(3,25) = a0_hhhh_HmHmc_00(unitarity_s,1,3,2,2,3,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,1) = a0_hhhh_hhhh_00(unitarity_s,1,4,1,1,4,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,2) = a0_hhhh_hhhh_00(unitarity_s,1,4,1,2,4,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,3) = a0_hhhh_hhhh_00(unitarity_s,1,4,1,3,4,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,4) = a0_hhhh_hhhh_00(unitarity_s,1,4,1,4,4,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,5) = a0_hhhh_hhhh_00(unitarity_s,1,4,1,5,4,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,6) = a0_hhhh_hhhh_00(unitarity_s,1,4,1,6,4,6) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,7) = a0_hhhh_hhhh_00(unitarity_s,1,4,2,2,4,7) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,8) = a0_hhhh_hhhh_00(unitarity_s,1,4,2,3,4,8) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,9) = a0_hhhh_hhhh_00(unitarity_s,1,4,2,4,4,9) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,10) = a0_hhhh_hhhh_00(unitarity_s,1,4,2,5,4,10) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,11) = a0_hhhh_hhhh_00(unitarity_s,1,4,2,6,4,11) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,12) = a0_hhhh_hhhh_00(unitarity_s,1,4,3,3,4,12) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,13) = a0_hhhh_hhhh_00(unitarity_s,1,4,3,4,4,13) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,14) = a0_hhhh_hhhh_00(unitarity_s,1,4,3,5,4,14) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,15) = a0_hhhh_hhhh_00(unitarity_s,1,4,3,6,4,15) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,16) = a0_hhhh_hhhh_00(unitarity_s,1,4,4,4,4,16) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,17) = a0_hhhh_hhhh_00(unitarity_s,1,4,4,5,4,17) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,18) = a0_hhhh_hhhh_00(unitarity_s,1,4,4,6,4,18) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,19) = a0_hhhh_hhhh_00(unitarity_s,1,4,5,5,4,19) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,20) = a0_hhhh_hhhh_00(unitarity_s,1,4,5,6,4,20) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,21) = a0_hhhh_hhhh_00(unitarity_s,1,4,6,6,4,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,22) = a0_hhhh_HmHmc_00(unitarity_s,1,4,1,1,4,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,23) = a0_hhhh_HmHmc_00(unitarity_s,1,4,1,2,4,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,24) = a0_hhhh_HmHmc_00(unitarity_s,1,4,2,1,4,24) 
If (IncludeGoldstoneExternal) scatter_matrix1(4,25) = a0_hhhh_HmHmc_00(unitarity_s,1,4,2,2,4,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,1) = a0_hhhh_hhhh_00(unitarity_s,1,5,1,1,5,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,2) = a0_hhhh_hhhh_00(unitarity_s,1,5,1,2,5,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,3) = a0_hhhh_hhhh_00(unitarity_s,1,5,1,3,5,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,4) = a0_hhhh_hhhh_00(unitarity_s,1,5,1,4,5,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,5) = a0_hhhh_hhhh_00(unitarity_s,1,5,1,5,5,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,6) = a0_hhhh_hhhh_00(unitarity_s,1,5,1,6,5,6) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,7) = a0_hhhh_hhhh_00(unitarity_s,1,5,2,2,5,7) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,8) = a0_hhhh_hhhh_00(unitarity_s,1,5,2,3,5,8) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,9) = a0_hhhh_hhhh_00(unitarity_s,1,5,2,4,5,9) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,10) = a0_hhhh_hhhh_00(unitarity_s,1,5,2,5,5,10) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,11) = a0_hhhh_hhhh_00(unitarity_s,1,5,2,6,5,11) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,12) = a0_hhhh_hhhh_00(unitarity_s,1,5,3,3,5,12) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,13) = a0_hhhh_hhhh_00(unitarity_s,1,5,3,4,5,13) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,14) = a0_hhhh_hhhh_00(unitarity_s,1,5,3,5,5,14) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,15) = a0_hhhh_hhhh_00(unitarity_s,1,5,3,6,5,15) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,16) = a0_hhhh_hhhh_00(unitarity_s,1,5,4,4,5,16) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,17) = a0_hhhh_hhhh_00(unitarity_s,1,5,4,5,5,17) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,18) = a0_hhhh_hhhh_00(unitarity_s,1,5,4,6,5,18) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,19) = a0_hhhh_hhhh_00(unitarity_s,1,5,5,5,5,19) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,20) = a0_hhhh_hhhh_00(unitarity_s,1,5,5,6,5,20) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,21) = a0_hhhh_hhhh_00(unitarity_s,1,5,6,6,5,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,22) = a0_hhhh_HmHmc_00(unitarity_s,1,5,1,1,5,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,23) = a0_hhhh_HmHmc_00(unitarity_s,1,5,1,2,5,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,24) = a0_hhhh_HmHmc_00(unitarity_s,1,5,2,1,5,24) 
If (IncludeGoldstoneExternal) scatter_matrix1(5,25) = a0_hhhh_HmHmc_00(unitarity_s,1,5,2,2,5,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,1) = a0_hhhh_hhhh_00(unitarity_s,1,6,1,1,6,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,2) = a0_hhhh_hhhh_00(unitarity_s,1,6,1,2,6,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,3) = a0_hhhh_hhhh_00(unitarity_s,1,6,1,3,6,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,4) = a0_hhhh_hhhh_00(unitarity_s,1,6,1,4,6,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,5) = a0_hhhh_hhhh_00(unitarity_s,1,6,1,5,6,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,6) = a0_hhhh_hhhh_00(unitarity_s,1,6,1,6,6,6) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,7) = a0_hhhh_hhhh_00(unitarity_s,1,6,2,2,6,7) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,8) = a0_hhhh_hhhh_00(unitarity_s,1,6,2,3,6,8) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,9) = a0_hhhh_hhhh_00(unitarity_s,1,6,2,4,6,9) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,10) = a0_hhhh_hhhh_00(unitarity_s,1,6,2,5,6,10) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,11) = a0_hhhh_hhhh_00(unitarity_s,1,6,2,6,6,11) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,12) = a0_hhhh_hhhh_00(unitarity_s,1,6,3,3,6,12) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,13) = a0_hhhh_hhhh_00(unitarity_s,1,6,3,4,6,13) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,14) = a0_hhhh_hhhh_00(unitarity_s,1,6,3,5,6,14) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,15) = a0_hhhh_hhhh_00(unitarity_s,1,6,3,6,6,15) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,16) = a0_hhhh_hhhh_00(unitarity_s,1,6,4,4,6,16) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,17) = a0_hhhh_hhhh_00(unitarity_s,1,6,4,5,6,17) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,18) = a0_hhhh_hhhh_00(unitarity_s,1,6,4,6,6,18) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,19) = a0_hhhh_hhhh_00(unitarity_s,1,6,5,5,6,19) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,20) = a0_hhhh_hhhh_00(unitarity_s,1,6,5,6,6,20) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,21) = a0_hhhh_hhhh_00(unitarity_s,1,6,6,6,6,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,22) = a0_hhhh_HmHmc_00(unitarity_s,1,6,1,1,6,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,23) = a0_hhhh_HmHmc_00(unitarity_s,1,6,1,2,6,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,24) = a0_hhhh_HmHmc_00(unitarity_s,1,6,2,1,6,24) 
If (IncludeGoldstoneExternal) scatter_matrix1(6,25) = a0_hhhh_HmHmc_00(unitarity_s,1,6,2,2,6,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(7,1) = a0_hhhh_hhhh_00(unitarity_s,2,2,1,1,7,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(7,2) = a0_hhhh_hhhh_00(unitarity_s,2,2,1,2,7,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(7,3) = a0_hhhh_hhhh_00(unitarity_s,2,2,1,3,7,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(7,4) = a0_hhhh_hhhh_00(unitarity_s,2,2,1,4,7,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(7,5) = a0_hhhh_hhhh_00(unitarity_s,2,2,1,5,7,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(7,6) = a0_hhhh_hhhh_00(unitarity_s,2,2,1,6,7,6) 
scatter_matrix1(7,7) = a0_hhhh_hhhh_00(unitarity_s,2,2,2,2,7,7) 
scatter_matrix1(7,8) = a0_hhhh_hhhh_00(unitarity_s,2,2,2,3,7,8) 
scatter_matrix1(7,9) = a0_hhhh_hhhh_00(unitarity_s,2,2,2,4,7,9) 
scatter_matrix1(7,10) = a0_hhhh_hhhh_00(unitarity_s,2,2,2,5,7,10) 
scatter_matrix1(7,11) = a0_hhhh_hhhh_00(unitarity_s,2,2,2,6,7,11) 
scatter_matrix1(7,12) = a0_hhhh_hhhh_00(unitarity_s,2,2,3,3,7,12) 
scatter_matrix1(7,13) = a0_hhhh_hhhh_00(unitarity_s,2,2,3,4,7,13) 
scatter_matrix1(7,14) = a0_hhhh_hhhh_00(unitarity_s,2,2,3,5,7,14) 
scatter_matrix1(7,15) = a0_hhhh_hhhh_00(unitarity_s,2,2,3,6,7,15) 
scatter_matrix1(7,16) = a0_hhhh_hhhh_00(unitarity_s,2,2,4,4,7,16) 
scatter_matrix1(7,17) = a0_hhhh_hhhh_00(unitarity_s,2,2,4,5,7,17) 
scatter_matrix1(7,18) = a0_hhhh_hhhh_00(unitarity_s,2,2,4,6,7,18) 
scatter_matrix1(7,19) = a0_hhhh_hhhh_00(unitarity_s,2,2,5,5,7,19) 
scatter_matrix1(7,20) = a0_hhhh_hhhh_00(unitarity_s,2,2,5,6,7,20) 
scatter_matrix1(7,21) = a0_hhhh_hhhh_00(unitarity_s,2,2,6,6,7,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(7,22) = a0_hhhh_HmHmc_00(unitarity_s,2,2,1,1,7,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(7,23) = a0_hhhh_HmHmc_00(unitarity_s,2,2,1,2,7,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(7,24) = a0_hhhh_HmHmc_00(unitarity_s,2,2,2,1,7,24) 
scatter_matrix1(7,25) = a0_hhhh_HmHmc_00(unitarity_s,2,2,2,2,7,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(8,1) = a0_hhhh_hhhh_00(unitarity_s,2,3,1,1,8,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(8,2) = a0_hhhh_hhhh_00(unitarity_s,2,3,1,2,8,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(8,3) = a0_hhhh_hhhh_00(unitarity_s,2,3,1,3,8,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(8,4) = a0_hhhh_hhhh_00(unitarity_s,2,3,1,4,8,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(8,5) = a0_hhhh_hhhh_00(unitarity_s,2,3,1,5,8,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(8,6) = a0_hhhh_hhhh_00(unitarity_s,2,3,1,6,8,6) 
scatter_matrix1(8,7) = a0_hhhh_hhhh_00(unitarity_s,2,3,2,2,8,7) 
scatter_matrix1(8,8) = a0_hhhh_hhhh_00(unitarity_s,2,3,2,3,8,8) 
scatter_matrix1(8,9) = a0_hhhh_hhhh_00(unitarity_s,2,3,2,4,8,9) 
scatter_matrix1(8,10) = a0_hhhh_hhhh_00(unitarity_s,2,3,2,5,8,10) 
scatter_matrix1(8,11) = a0_hhhh_hhhh_00(unitarity_s,2,3,2,6,8,11) 
scatter_matrix1(8,12) = a0_hhhh_hhhh_00(unitarity_s,2,3,3,3,8,12) 
scatter_matrix1(8,13) = a0_hhhh_hhhh_00(unitarity_s,2,3,3,4,8,13) 
scatter_matrix1(8,14) = a0_hhhh_hhhh_00(unitarity_s,2,3,3,5,8,14) 
scatter_matrix1(8,15) = a0_hhhh_hhhh_00(unitarity_s,2,3,3,6,8,15) 
scatter_matrix1(8,16) = a0_hhhh_hhhh_00(unitarity_s,2,3,4,4,8,16) 
scatter_matrix1(8,17) = a0_hhhh_hhhh_00(unitarity_s,2,3,4,5,8,17) 
scatter_matrix1(8,18) = a0_hhhh_hhhh_00(unitarity_s,2,3,4,6,8,18) 
scatter_matrix1(8,19) = a0_hhhh_hhhh_00(unitarity_s,2,3,5,5,8,19) 
scatter_matrix1(8,20) = a0_hhhh_hhhh_00(unitarity_s,2,3,5,6,8,20) 
scatter_matrix1(8,21) = a0_hhhh_hhhh_00(unitarity_s,2,3,6,6,8,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(8,22) = a0_hhhh_HmHmc_00(unitarity_s,2,3,1,1,8,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(8,23) = a0_hhhh_HmHmc_00(unitarity_s,2,3,1,2,8,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(8,24) = a0_hhhh_HmHmc_00(unitarity_s,2,3,2,1,8,24) 
scatter_matrix1(8,25) = a0_hhhh_HmHmc_00(unitarity_s,2,3,2,2,8,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(9,1) = a0_hhhh_hhhh_00(unitarity_s,2,4,1,1,9,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(9,2) = a0_hhhh_hhhh_00(unitarity_s,2,4,1,2,9,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(9,3) = a0_hhhh_hhhh_00(unitarity_s,2,4,1,3,9,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(9,4) = a0_hhhh_hhhh_00(unitarity_s,2,4,1,4,9,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(9,5) = a0_hhhh_hhhh_00(unitarity_s,2,4,1,5,9,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(9,6) = a0_hhhh_hhhh_00(unitarity_s,2,4,1,6,9,6) 
scatter_matrix1(9,7) = a0_hhhh_hhhh_00(unitarity_s,2,4,2,2,9,7) 
scatter_matrix1(9,8) = a0_hhhh_hhhh_00(unitarity_s,2,4,2,3,9,8) 
scatter_matrix1(9,9) = a0_hhhh_hhhh_00(unitarity_s,2,4,2,4,9,9) 
scatter_matrix1(9,10) = a0_hhhh_hhhh_00(unitarity_s,2,4,2,5,9,10) 
scatter_matrix1(9,11) = a0_hhhh_hhhh_00(unitarity_s,2,4,2,6,9,11) 
scatter_matrix1(9,12) = a0_hhhh_hhhh_00(unitarity_s,2,4,3,3,9,12) 
scatter_matrix1(9,13) = a0_hhhh_hhhh_00(unitarity_s,2,4,3,4,9,13) 
scatter_matrix1(9,14) = a0_hhhh_hhhh_00(unitarity_s,2,4,3,5,9,14) 
scatter_matrix1(9,15) = a0_hhhh_hhhh_00(unitarity_s,2,4,3,6,9,15) 
scatter_matrix1(9,16) = a0_hhhh_hhhh_00(unitarity_s,2,4,4,4,9,16) 
scatter_matrix1(9,17) = a0_hhhh_hhhh_00(unitarity_s,2,4,4,5,9,17) 
scatter_matrix1(9,18) = a0_hhhh_hhhh_00(unitarity_s,2,4,4,6,9,18) 
scatter_matrix1(9,19) = a0_hhhh_hhhh_00(unitarity_s,2,4,5,5,9,19) 
scatter_matrix1(9,20) = a0_hhhh_hhhh_00(unitarity_s,2,4,5,6,9,20) 
scatter_matrix1(9,21) = a0_hhhh_hhhh_00(unitarity_s,2,4,6,6,9,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(9,22) = a0_hhhh_HmHmc_00(unitarity_s,2,4,1,1,9,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(9,23) = a0_hhhh_HmHmc_00(unitarity_s,2,4,1,2,9,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(9,24) = a0_hhhh_HmHmc_00(unitarity_s,2,4,2,1,9,24) 
scatter_matrix1(9,25) = a0_hhhh_HmHmc_00(unitarity_s,2,4,2,2,9,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(10,1) = a0_hhhh_hhhh_00(unitarity_s,2,5,1,1,10,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(10,2) = a0_hhhh_hhhh_00(unitarity_s,2,5,1,2,10,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(10,3) = a0_hhhh_hhhh_00(unitarity_s,2,5,1,3,10,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(10,4) = a0_hhhh_hhhh_00(unitarity_s,2,5,1,4,10,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(10,5) = a0_hhhh_hhhh_00(unitarity_s,2,5,1,5,10,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(10,6) = a0_hhhh_hhhh_00(unitarity_s,2,5,1,6,10,6) 
scatter_matrix1(10,7) = a0_hhhh_hhhh_00(unitarity_s,2,5,2,2,10,7) 
scatter_matrix1(10,8) = a0_hhhh_hhhh_00(unitarity_s,2,5,2,3,10,8) 
scatter_matrix1(10,9) = a0_hhhh_hhhh_00(unitarity_s,2,5,2,4,10,9) 
scatter_matrix1(10,10) = a0_hhhh_hhhh_00(unitarity_s,2,5,2,5,10,10) 
scatter_matrix1(10,11) = a0_hhhh_hhhh_00(unitarity_s,2,5,2,6,10,11) 
scatter_matrix1(10,12) = a0_hhhh_hhhh_00(unitarity_s,2,5,3,3,10,12) 
scatter_matrix1(10,13) = a0_hhhh_hhhh_00(unitarity_s,2,5,3,4,10,13) 
scatter_matrix1(10,14) = a0_hhhh_hhhh_00(unitarity_s,2,5,3,5,10,14) 
scatter_matrix1(10,15) = a0_hhhh_hhhh_00(unitarity_s,2,5,3,6,10,15) 
scatter_matrix1(10,16) = a0_hhhh_hhhh_00(unitarity_s,2,5,4,4,10,16) 
scatter_matrix1(10,17) = a0_hhhh_hhhh_00(unitarity_s,2,5,4,5,10,17) 
scatter_matrix1(10,18) = a0_hhhh_hhhh_00(unitarity_s,2,5,4,6,10,18) 
scatter_matrix1(10,19) = a0_hhhh_hhhh_00(unitarity_s,2,5,5,5,10,19) 
scatter_matrix1(10,20) = a0_hhhh_hhhh_00(unitarity_s,2,5,5,6,10,20) 
scatter_matrix1(10,21) = a0_hhhh_hhhh_00(unitarity_s,2,5,6,6,10,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(10,22) = a0_hhhh_HmHmc_00(unitarity_s,2,5,1,1,10,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(10,23) = a0_hhhh_HmHmc_00(unitarity_s,2,5,1,2,10,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(10,24) = a0_hhhh_HmHmc_00(unitarity_s,2,5,2,1,10,24) 
scatter_matrix1(10,25) = a0_hhhh_HmHmc_00(unitarity_s,2,5,2,2,10,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(11,1) = a0_hhhh_hhhh_00(unitarity_s,2,6,1,1,11,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(11,2) = a0_hhhh_hhhh_00(unitarity_s,2,6,1,2,11,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(11,3) = a0_hhhh_hhhh_00(unitarity_s,2,6,1,3,11,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(11,4) = a0_hhhh_hhhh_00(unitarity_s,2,6,1,4,11,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(11,5) = a0_hhhh_hhhh_00(unitarity_s,2,6,1,5,11,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(11,6) = a0_hhhh_hhhh_00(unitarity_s,2,6,1,6,11,6) 
scatter_matrix1(11,7) = a0_hhhh_hhhh_00(unitarity_s,2,6,2,2,11,7) 
scatter_matrix1(11,8) = a0_hhhh_hhhh_00(unitarity_s,2,6,2,3,11,8) 
scatter_matrix1(11,9) = a0_hhhh_hhhh_00(unitarity_s,2,6,2,4,11,9) 
scatter_matrix1(11,10) = a0_hhhh_hhhh_00(unitarity_s,2,6,2,5,11,10) 
scatter_matrix1(11,11) = a0_hhhh_hhhh_00(unitarity_s,2,6,2,6,11,11) 
scatter_matrix1(11,12) = a0_hhhh_hhhh_00(unitarity_s,2,6,3,3,11,12) 
scatter_matrix1(11,13) = a0_hhhh_hhhh_00(unitarity_s,2,6,3,4,11,13) 
scatter_matrix1(11,14) = a0_hhhh_hhhh_00(unitarity_s,2,6,3,5,11,14) 
scatter_matrix1(11,15) = a0_hhhh_hhhh_00(unitarity_s,2,6,3,6,11,15) 
scatter_matrix1(11,16) = a0_hhhh_hhhh_00(unitarity_s,2,6,4,4,11,16) 
scatter_matrix1(11,17) = a0_hhhh_hhhh_00(unitarity_s,2,6,4,5,11,17) 
scatter_matrix1(11,18) = a0_hhhh_hhhh_00(unitarity_s,2,6,4,6,11,18) 
scatter_matrix1(11,19) = a0_hhhh_hhhh_00(unitarity_s,2,6,5,5,11,19) 
scatter_matrix1(11,20) = a0_hhhh_hhhh_00(unitarity_s,2,6,5,6,11,20) 
scatter_matrix1(11,21) = a0_hhhh_hhhh_00(unitarity_s,2,6,6,6,11,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(11,22) = a0_hhhh_HmHmc_00(unitarity_s,2,6,1,1,11,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(11,23) = a0_hhhh_HmHmc_00(unitarity_s,2,6,1,2,11,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(11,24) = a0_hhhh_HmHmc_00(unitarity_s,2,6,2,1,11,24) 
scatter_matrix1(11,25) = a0_hhhh_HmHmc_00(unitarity_s,2,6,2,2,11,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(12,1) = a0_hhhh_hhhh_00(unitarity_s,3,3,1,1,12,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(12,2) = a0_hhhh_hhhh_00(unitarity_s,3,3,1,2,12,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(12,3) = a0_hhhh_hhhh_00(unitarity_s,3,3,1,3,12,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(12,4) = a0_hhhh_hhhh_00(unitarity_s,3,3,1,4,12,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(12,5) = a0_hhhh_hhhh_00(unitarity_s,3,3,1,5,12,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(12,6) = a0_hhhh_hhhh_00(unitarity_s,3,3,1,6,12,6) 
scatter_matrix1(12,7) = a0_hhhh_hhhh_00(unitarity_s,3,3,2,2,12,7) 
scatter_matrix1(12,8) = a0_hhhh_hhhh_00(unitarity_s,3,3,2,3,12,8) 
scatter_matrix1(12,9) = a0_hhhh_hhhh_00(unitarity_s,3,3,2,4,12,9) 
scatter_matrix1(12,10) = a0_hhhh_hhhh_00(unitarity_s,3,3,2,5,12,10) 
scatter_matrix1(12,11) = a0_hhhh_hhhh_00(unitarity_s,3,3,2,6,12,11) 
scatter_matrix1(12,12) = a0_hhhh_hhhh_00(unitarity_s,3,3,3,3,12,12) 
scatter_matrix1(12,13) = a0_hhhh_hhhh_00(unitarity_s,3,3,3,4,12,13) 
scatter_matrix1(12,14) = a0_hhhh_hhhh_00(unitarity_s,3,3,3,5,12,14) 
scatter_matrix1(12,15) = a0_hhhh_hhhh_00(unitarity_s,3,3,3,6,12,15) 
scatter_matrix1(12,16) = a0_hhhh_hhhh_00(unitarity_s,3,3,4,4,12,16) 
scatter_matrix1(12,17) = a0_hhhh_hhhh_00(unitarity_s,3,3,4,5,12,17) 
scatter_matrix1(12,18) = a0_hhhh_hhhh_00(unitarity_s,3,3,4,6,12,18) 
scatter_matrix1(12,19) = a0_hhhh_hhhh_00(unitarity_s,3,3,5,5,12,19) 
scatter_matrix1(12,20) = a0_hhhh_hhhh_00(unitarity_s,3,3,5,6,12,20) 
scatter_matrix1(12,21) = a0_hhhh_hhhh_00(unitarity_s,3,3,6,6,12,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(12,22) = a0_hhhh_HmHmc_00(unitarity_s,3,3,1,1,12,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(12,23) = a0_hhhh_HmHmc_00(unitarity_s,3,3,1,2,12,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(12,24) = a0_hhhh_HmHmc_00(unitarity_s,3,3,2,1,12,24) 
scatter_matrix1(12,25) = a0_hhhh_HmHmc_00(unitarity_s,3,3,2,2,12,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(13,1) = a0_hhhh_hhhh_00(unitarity_s,3,4,1,1,13,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(13,2) = a0_hhhh_hhhh_00(unitarity_s,3,4,1,2,13,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(13,3) = a0_hhhh_hhhh_00(unitarity_s,3,4,1,3,13,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(13,4) = a0_hhhh_hhhh_00(unitarity_s,3,4,1,4,13,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(13,5) = a0_hhhh_hhhh_00(unitarity_s,3,4,1,5,13,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(13,6) = a0_hhhh_hhhh_00(unitarity_s,3,4,1,6,13,6) 
scatter_matrix1(13,7) = a0_hhhh_hhhh_00(unitarity_s,3,4,2,2,13,7) 
scatter_matrix1(13,8) = a0_hhhh_hhhh_00(unitarity_s,3,4,2,3,13,8) 
scatter_matrix1(13,9) = a0_hhhh_hhhh_00(unitarity_s,3,4,2,4,13,9) 
scatter_matrix1(13,10) = a0_hhhh_hhhh_00(unitarity_s,3,4,2,5,13,10) 
scatter_matrix1(13,11) = a0_hhhh_hhhh_00(unitarity_s,3,4,2,6,13,11) 
scatter_matrix1(13,12) = a0_hhhh_hhhh_00(unitarity_s,3,4,3,3,13,12) 
scatter_matrix1(13,13) = a0_hhhh_hhhh_00(unitarity_s,3,4,3,4,13,13) 
scatter_matrix1(13,14) = a0_hhhh_hhhh_00(unitarity_s,3,4,3,5,13,14) 
scatter_matrix1(13,15) = a0_hhhh_hhhh_00(unitarity_s,3,4,3,6,13,15) 
scatter_matrix1(13,16) = a0_hhhh_hhhh_00(unitarity_s,3,4,4,4,13,16) 
scatter_matrix1(13,17) = a0_hhhh_hhhh_00(unitarity_s,3,4,4,5,13,17) 
scatter_matrix1(13,18) = a0_hhhh_hhhh_00(unitarity_s,3,4,4,6,13,18) 
scatter_matrix1(13,19) = a0_hhhh_hhhh_00(unitarity_s,3,4,5,5,13,19) 
scatter_matrix1(13,20) = a0_hhhh_hhhh_00(unitarity_s,3,4,5,6,13,20) 
scatter_matrix1(13,21) = a0_hhhh_hhhh_00(unitarity_s,3,4,6,6,13,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(13,22) = a0_hhhh_HmHmc_00(unitarity_s,3,4,1,1,13,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(13,23) = a0_hhhh_HmHmc_00(unitarity_s,3,4,1,2,13,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(13,24) = a0_hhhh_HmHmc_00(unitarity_s,3,4,2,1,13,24) 
scatter_matrix1(13,25) = a0_hhhh_HmHmc_00(unitarity_s,3,4,2,2,13,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(14,1) = a0_hhhh_hhhh_00(unitarity_s,3,5,1,1,14,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(14,2) = a0_hhhh_hhhh_00(unitarity_s,3,5,1,2,14,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(14,3) = a0_hhhh_hhhh_00(unitarity_s,3,5,1,3,14,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(14,4) = a0_hhhh_hhhh_00(unitarity_s,3,5,1,4,14,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(14,5) = a0_hhhh_hhhh_00(unitarity_s,3,5,1,5,14,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(14,6) = a0_hhhh_hhhh_00(unitarity_s,3,5,1,6,14,6) 
scatter_matrix1(14,7) = a0_hhhh_hhhh_00(unitarity_s,3,5,2,2,14,7) 
scatter_matrix1(14,8) = a0_hhhh_hhhh_00(unitarity_s,3,5,2,3,14,8) 
scatter_matrix1(14,9) = a0_hhhh_hhhh_00(unitarity_s,3,5,2,4,14,9) 
scatter_matrix1(14,10) = a0_hhhh_hhhh_00(unitarity_s,3,5,2,5,14,10) 
scatter_matrix1(14,11) = a0_hhhh_hhhh_00(unitarity_s,3,5,2,6,14,11) 
scatter_matrix1(14,12) = a0_hhhh_hhhh_00(unitarity_s,3,5,3,3,14,12) 
scatter_matrix1(14,13) = a0_hhhh_hhhh_00(unitarity_s,3,5,3,4,14,13) 
scatter_matrix1(14,14) = a0_hhhh_hhhh_00(unitarity_s,3,5,3,5,14,14) 
scatter_matrix1(14,15) = a0_hhhh_hhhh_00(unitarity_s,3,5,3,6,14,15) 
scatter_matrix1(14,16) = a0_hhhh_hhhh_00(unitarity_s,3,5,4,4,14,16) 
scatter_matrix1(14,17) = a0_hhhh_hhhh_00(unitarity_s,3,5,4,5,14,17) 
scatter_matrix1(14,18) = a0_hhhh_hhhh_00(unitarity_s,3,5,4,6,14,18) 
scatter_matrix1(14,19) = a0_hhhh_hhhh_00(unitarity_s,3,5,5,5,14,19) 
scatter_matrix1(14,20) = a0_hhhh_hhhh_00(unitarity_s,3,5,5,6,14,20) 
scatter_matrix1(14,21) = a0_hhhh_hhhh_00(unitarity_s,3,5,6,6,14,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(14,22) = a0_hhhh_HmHmc_00(unitarity_s,3,5,1,1,14,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(14,23) = a0_hhhh_HmHmc_00(unitarity_s,3,5,1,2,14,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(14,24) = a0_hhhh_HmHmc_00(unitarity_s,3,5,2,1,14,24) 
scatter_matrix1(14,25) = a0_hhhh_HmHmc_00(unitarity_s,3,5,2,2,14,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(15,1) = a0_hhhh_hhhh_00(unitarity_s,3,6,1,1,15,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(15,2) = a0_hhhh_hhhh_00(unitarity_s,3,6,1,2,15,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(15,3) = a0_hhhh_hhhh_00(unitarity_s,3,6,1,3,15,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(15,4) = a0_hhhh_hhhh_00(unitarity_s,3,6,1,4,15,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(15,5) = a0_hhhh_hhhh_00(unitarity_s,3,6,1,5,15,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(15,6) = a0_hhhh_hhhh_00(unitarity_s,3,6,1,6,15,6) 
scatter_matrix1(15,7) = a0_hhhh_hhhh_00(unitarity_s,3,6,2,2,15,7) 
scatter_matrix1(15,8) = a0_hhhh_hhhh_00(unitarity_s,3,6,2,3,15,8) 
scatter_matrix1(15,9) = a0_hhhh_hhhh_00(unitarity_s,3,6,2,4,15,9) 
scatter_matrix1(15,10) = a0_hhhh_hhhh_00(unitarity_s,3,6,2,5,15,10) 
scatter_matrix1(15,11) = a0_hhhh_hhhh_00(unitarity_s,3,6,2,6,15,11) 
scatter_matrix1(15,12) = a0_hhhh_hhhh_00(unitarity_s,3,6,3,3,15,12) 
scatter_matrix1(15,13) = a0_hhhh_hhhh_00(unitarity_s,3,6,3,4,15,13) 
scatter_matrix1(15,14) = a0_hhhh_hhhh_00(unitarity_s,3,6,3,5,15,14) 
scatter_matrix1(15,15) = a0_hhhh_hhhh_00(unitarity_s,3,6,3,6,15,15) 
scatter_matrix1(15,16) = a0_hhhh_hhhh_00(unitarity_s,3,6,4,4,15,16) 
scatter_matrix1(15,17) = a0_hhhh_hhhh_00(unitarity_s,3,6,4,5,15,17) 
scatter_matrix1(15,18) = a0_hhhh_hhhh_00(unitarity_s,3,6,4,6,15,18) 
scatter_matrix1(15,19) = a0_hhhh_hhhh_00(unitarity_s,3,6,5,5,15,19) 
scatter_matrix1(15,20) = a0_hhhh_hhhh_00(unitarity_s,3,6,5,6,15,20) 
scatter_matrix1(15,21) = a0_hhhh_hhhh_00(unitarity_s,3,6,6,6,15,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(15,22) = a0_hhhh_HmHmc_00(unitarity_s,3,6,1,1,15,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(15,23) = a0_hhhh_HmHmc_00(unitarity_s,3,6,1,2,15,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(15,24) = a0_hhhh_HmHmc_00(unitarity_s,3,6,2,1,15,24) 
scatter_matrix1(15,25) = a0_hhhh_HmHmc_00(unitarity_s,3,6,2,2,15,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(16,1) = a0_hhhh_hhhh_00(unitarity_s,4,4,1,1,16,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(16,2) = a0_hhhh_hhhh_00(unitarity_s,4,4,1,2,16,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(16,3) = a0_hhhh_hhhh_00(unitarity_s,4,4,1,3,16,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(16,4) = a0_hhhh_hhhh_00(unitarity_s,4,4,1,4,16,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(16,5) = a0_hhhh_hhhh_00(unitarity_s,4,4,1,5,16,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(16,6) = a0_hhhh_hhhh_00(unitarity_s,4,4,1,6,16,6) 
scatter_matrix1(16,7) = a0_hhhh_hhhh_00(unitarity_s,4,4,2,2,16,7) 
scatter_matrix1(16,8) = a0_hhhh_hhhh_00(unitarity_s,4,4,2,3,16,8) 
scatter_matrix1(16,9) = a0_hhhh_hhhh_00(unitarity_s,4,4,2,4,16,9) 
scatter_matrix1(16,10) = a0_hhhh_hhhh_00(unitarity_s,4,4,2,5,16,10) 
scatter_matrix1(16,11) = a0_hhhh_hhhh_00(unitarity_s,4,4,2,6,16,11) 
scatter_matrix1(16,12) = a0_hhhh_hhhh_00(unitarity_s,4,4,3,3,16,12) 
scatter_matrix1(16,13) = a0_hhhh_hhhh_00(unitarity_s,4,4,3,4,16,13) 
scatter_matrix1(16,14) = a0_hhhh_hhhh_00(unitarity_s,4,4,3,5,16,14) 
scatter_matrix1(16,15) = a0_hhhh_hhhh_00(unitarity_s,4,4,3,6,16,15) 
scatter_matrix1(16,16) = a0_hhhh_hhhh_00(unitarity_s,4,4,4,4,16,16) 
scatter_matrix1(16,17) = a0_hhhh_hhhh_00(unitarity_s,4,4,4,5,16,17) 
scatter_matrix1(16,18) = a0_hhhh_hhhh_00(unitarity_s,4,4,4,6,16,18) 
scatter_matrix1(16,19) = a0_hhhh_hhhh_00(unitarity_s,4,4,5,5,16,19) 
scatter_matrix1(16,20) = a0_hhhh_hhhh_00(unitarity_s,4,4,5,6,16,20) 
scatter_matrix1(16,21) = a0_hhhh_hhhh_00(unitarity_s,4,4,6,6,16,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(16,22) = a0_hhhh_HmHmc_00(unitarity_s,4,4,1,1,16,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(16,23) = a0_hhhh_HmHmc_00(unitarity_s,4,4,1,2,16,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(16,24) = a0_hhhh_HmHmc_00(unitarity_s,4,4,2,1,16,24) 
scatter_matrix1(16,25) = a0_hhhh_HmHmc_00(unitarity_s,4,4,2,2,16,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(17,1) = a0_hhhh_hhhh_00(unitarity_s,4,5,1,1,17,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(17,2) = a0_hhhh_hhhh_00(unitarity_s,4,5,1,2,17,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(17,3) = a0_hhhh_hhhh_00(unitarity_s,4,5,1,3,17,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(17,4) = a0_hhhh_hhhh_00(unitarity_s,4,5,1,4,17,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(17,5) = a0_hhhh_hhhh_00(unitarity_s,4,5,1,5,17,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(17,6) = a0_hhhh_hhhh_00(unitarity_s,4,5,1,6,17,6) 
scatter_matrix1(17,7) = a0_hhhh_hhhh_00(unitarity_s,4,5,2,2,17,7) 
scatter_matrix1(17,8) = a0_hhhh_hhhh_00(unitarity_s,4,5,2,3,17,8) 
scatter_matrix1(17,9) = a0_hhhh_hhhh_00(unitarity_s,4,5,2,4,17,9) 
scatter_matrix1(17,10) = a0_hhhh_hhhh_00(unitarity_s,4,5,2,5,17,10) 
scatter_matrix1(17,11) = a0_hhhh_hhhh_00(unitarity_s,4,5,2,6,17,11) 
scatter_matrix1(17,12) = a0_hhhh_hhhh_00(unitarity_s,4,5,3,3,17,12) 
scatter_matrix1(17,13) = a0_hhhh_hhhh_00(unitarity_s,4,5,3,4,17,13) 
scatter_matrix1(17,14) = a0_hhhh_hhhh_00(unitarity_s,4,5,3,5,17,14) 
scatter_matrix1(17,15) = a0_hhhh_hhhh_00(unitarity_s,4,5,3,6,17,15) 
scatter_matrix1(17,16) = a0_hhhh_hhhh_00(unitarity_s,4,5,4,4,17,16) 
scatter_matrix1(17,17) = a0_hhhh_hhhh_00(unitarity_s,4,5,4,5,17,17) 
scatter_matrix1(17,18) = a0_hhhh_hhhh_00(unitarity_s,4,5,4,6,17,18) 
scatter_matrix1(17,19) = a0_hhhh_hhhh_00(unitarity_s,4,5,5,5,17,19) 
scatter_matrix1(17,20) = a0_hhhh_hhhh_00(unitarity_s,4,5,5,6,17,20) 
scatter_matrix1(17,21) = a0_hhhh_hhhh_00(unitarity_s,4,5,6,6,17,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(17,22) = a0_hhhh_HmHmc_00(unitarity_s,4,5,1,1,17,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(17,23) = a0_hhhh_HmHmc_00(unitarity_s,4,5,1,2,17,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(17,24) = a0_hhhh_HmHmc_00(unitarity_s,4,5,2,1,17,24) 
scatter_matrix1(17,25) = a0_hhhh_HmHmc_00(unitarity_s,4,5,2,2,17,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(18,1) = a0_hhhh_hhhh_00(unitarity_s,4,6,1,1,18,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(18,2) = a0_hhhh_hhhh_00(unitarity_s,4,6,1,2,18,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(18,3) = a0_hhhh_hhhh_00(unitarity_s,4,6,1,3,18,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(18,4) = a0_hhhh_hhhh_00(unitarity_s,4,6,1,4,18,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(18,5) = a0_hhhh_hhhh_00(unitarity_s,4,6,1,5,18,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(18,6) = a0_hhhh_hhhh_00(unitarity_s,4,6,1,6,18,6) 
scatter_matrix1(18,7) = a0_hhhh_hhhh_00(unitarity_s,4,6,2,2,18,7) 
scatter_matrix1(18,8) = a0_hhhh_hhhh_00(unitarity_s,4,6,2,3,18,8) 
scatter_matrix1(18,9) = a0_hhhh_hhhh_00(unitarity_s,4,6,2,4,18,9) 
scatter_matrix1(18,10) = a0_hhhh_hhhh_00(unitarity_s,4,6,2,5,18,10) 
scatter_matrix1(18,11) = a0_hhhh_hhhh_00(unitarity_s,4,6,2,6,18,11) 
scatter_matrix1(18,12) = a0_hhhh_hhhh_00(unitarity_s,4,6,3,3,18,12) 
scatter_matrix1(18,13) = a0_hhhh_hhhh_00(unitarity_s,4,6,3,4,18,13) 
scatter_matrix1(18,14) = a0_hhhh_hhhh_00(unitarity_s,4,6,3,5,18,14) 
scatter_matrix1(18,15) = a0_hhhh_hhhh_00(unitarity_s,4,6,3,6,18,15) 
scatter_matrix1(18,16) = a0_hhhh_hhhh_00(unitarity_s,4,6,4,4,18,16) 
scatter_matrix1(18,17) = a0_hhhh_hhhh_00(unitarity_s,4,6,4,5,18,17) 
scatter_matrix1(18,18) = a0_hhhh_hhhh_00(unitarity_s,4,6,4,6,18,18) 
scatter_matrix1(18,19) = a0_hhhh_hhhh_00(unitarity_s,4,6,5,5,18,19) 
scatter_matrix1(18,20) = a0_hhhh_hhhh_00(unitarity_s,4,6,5,6,18,20) 
scatter_matrix1(18,21) = a0_hhhh_hhhh_00(unitarity_s,4,6,6,6,18,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(18,22) = a0_hhhh_HmHmc_00(unitarity_s,4,6,1,1,18,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(18,23) = a0_hhhh_HmHmc_00(unitarity_s,4,6,1,2,18,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(18,24) = a0_hhhh_HmHmc_00(unitarity_s,4,6,2,1,18,24) 
scatter_matrix1(18,25) = a0_hhhh_HmHmc_00(unitarity_s,4,6,2,2,18,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(19,1) = a0_hhhh_hhhh_00(unitarity_s,5,5,1,1,19,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(19,2) = a0_hhhh_hhhh_00(unitarity_s,5,5,1,2,19,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(19,3) = a0_hhhh_hhhh_00(unitarity_s,5,5,1,3,19,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(19,4) = a0_hhhh_hhhh_00(unitarity_s,5,5,1,4,19,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(19,5) = a0_hhhh_hhhh_00(unitarity_s,5,5,1,5,19,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(19,6) = a0_hhhh_hhhh_00(unitarity_s,5,5,1,6,19,6) 
scatter_matrix1(19,7) = a0_hhhh_hhhh_00(unitarity_s,5,5,2,2,19,7) 
scatter_matrix1(19,8) = a0_hhhh_hhhh_00(unitarity_s,5,5,2,3,19,8) 
scatter_matrix1(19,9) = a0_hhhh_hhhh_00(unitarity_s,5,5,2,4,19,9) 
scatter_matrix1(19,10) = a0_hhhh_hhhh_00(unitarity_s,5,5,2,5,19,10) 
scatter_matrix1(19,11) = a0_hhhh_hhhh_00(unitarity_s,5,5,2,6,19,11) 
scatter_matrix1(19,12) = a0_hhhh_hhhh_00(unitarity_s,5,5,3,3,19,12) 
scatter_matrix1(19,13) = a0_hhhh_hhhh_00(unitarity_s,5,5,3,4,19,13) 
scatter_matrix1(19,14) = a0_hhhh_hhhh_00(unitarity_s,5,5,3,5,19,14) 
scatter_matrix1(19,15) = a0_hhhh_hhhh_00(unitarity_s,5,5,3,6,19,15) 
scatter_matrix1(19,16) = a0_hhhh_hhhh_00(unitarity_s,5,5,4,4,19,16) 
scatter_matrix1(19,17) = a0_hhhh_hhhh_00(unitarity_s,5,5,4,5,19,17) 
scatter_matrix1(19,18) = a0_hhhh_hhhh_00(unitarity_s,5,5,4,6,19,18) 
scatter_matrix1(19,19) = a0_hhhh_hhhh_00(unitarity_s,5,5,5,5,19,19) 
scatter_matrix1(19,20) = a0_hhhh_hhhh_00(unitarity_s,5,5,5,6,19,20) 
scatter_matrix1(19,21) = a0_hhhh_hhhh_00(unitarity_s,5,5,6,6,19,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(19,22) = a0_hhhh_HmHmc_00(unitarity_s,5,5,1,1,19,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(19,23) = a0_hhhh_HmHmc_00(unitarity_s,5,5,1,2,19,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(19,24) = a0_hhhh_HmHmc_00(unitarity_s,5,5,2,1,19,24) 
scatter_matrix1(19,25) = a0_hhhh_HmHmc_00(unitarity_s,5,5,2,2,19,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(20,1) = a0_hhhh_hhhh_00(unitarity_s,5,6,1,1,20,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(20,2) = a0_hhhh_hhhh_00(unitarity_s,5,6,1,2,20,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(20,3) = a0_hhhh_hhhh_00(unitarity_s,5,6,1,3,20,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(20,4) = a0_hhhh_hhhh_00(unitarity_s,5,6,1,4,20,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(20,5) = a0_hhhh_hhhh_00(unitarity_s,5,6,1,5,20,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(20,6) = a0_hhhh_hhhh_00(unitarity_s,5,6,1,6,20,6) 
scatter_matrix1(20,7) = a0_hhhh_hhhh_00(unitarity_s,5,6,2,2,20,7) 
scatter_matrix1(20,8) = a0_hhhh_hhhh_00(unitarity_s,5,6,2,3,20,8) 
scatter_matrix1(20,9) = a0_hhhh_hhhh_00(unitarity_s,5,6,2,4,20,9) 
scatter_matrix1(20,10) = a0_hhhh_hhhh_00(unitarity_s,5,6,2,5,20,10) 
scatter_matrix1(20,11) = a0_hhhh_hhhh_00(unitarity_s,5,6,2,6,20,11) 
scatter_matrix1(20,12) = a0_hhhh_hhhh_00(unitarity_s,5,6,3,3,20,12) 
scatter_matrix1(20,13) = a0_hhhh_hhhh_00(unitarity_s,5,6,3,4,20,13) 
scatter_matrix1(20,14) = a0_hhhh_hhhh_00(unitarity_s,5,6,3,5,20,14) 
scatter_matrix1(20,15) = a0_hhhh_hhhh_00(unitarity_s,5,6,3,6,20,15) 
scatter_matrix1(20,16) = a0_hhhh_hhhh_00(unitarity_s,5,6,4,4,20,16) 
scatter_matrix1(20,17) = a0_hhhh_hhhh_00(unitarity_s,5,6,4,5,20,17) 
scatter_matrix1(20,18) = a0_hhhh_hhhh_00(unitarity_s,5,6,4,6,20,18) 
scatter_matrix1(20,19) = a0_hhhh_hhhh_00(unitarity_s,5,6,5,5,20,19) 
scatter_matrix1(20,20) = a0_hhhh_hhhh_00(unitarity_s,5,6,5,6,20,20) 
scatter_matrix1(20,21) = a0_hhhh_hhhh_00(unitarity_s,5,6,6,6,20,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(20,22) = a0_hhhh_HmHmc_00(unitarity_s,5,6,1,1,20,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(20,23) = a0_hhhh_HmHmc_00(unitarity_s,5,6,1,2,20,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(20,24) = a0_hhhh_HmHmc_00(unitarity_s,5,6,2,1,20,24) 
scatter_matrix1(20,25) = a0_hhhh_HmHmc_00(unitarity_s,5,6,2,2,20,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(21,1) = a0_hhhh_hhhh_00(unitarity_s,6,6,1,1,21,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(21,2) = a0_hhhh_hhhh_00(unitarity_s,6,6,1,2,21,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(21,3) = a0_hhhh_hhhh_00(unitarity_s,6,6,1,3,21,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(21,4) = a0_hhhh_hhhh_00(unitarity_s,6,6,1,4,21,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(21,5) = a0_hhhh_hhhh_00(unitarity_s,6,6,1,5,21,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(21,6) = a0_hhhh_hhhh_00(unitarity_s,6,6,1,6,21,6) 
scatter_matrix1(21,7) = a0_hhhh_hhhh_00(unitarity_s,6,6,2,2,21,7) 
scatter_matrix1(21,8) = a0_hhhh_hhhh_00(unitarity_s,6,6,2,3,21,8) 
scatter_matrix1(21,9) = a0_hhhh_hhhh_00(unitarity_s,6,6,2,4,21,9) 
scatter_matrix1(21,10) = a0_hhhh_hhhh_00(unitarity_s,6,6,2,5,21,10) 
scatter_matrix1(21,11) = a0_hhhh_hhhh_00(unitarity_s,6,6,2,6,21,11) 
scatter_matrix1(21,12) = a0_hhhh_hhhh_00(unitarity_s,6,6,3,3,21,12) 
scatter_matrix1(21,13) = a0_hhhh_hhhh_00(unitarity_s,6,6,3,4,21,13) 
scatter_matrix1(21,14) = a0_hhhh_hhhh_00(unitarity_s,6,6,3,5,21,14) 
scatter_matrix1(21,15) = a0_hhhh_hhhh_00(unitarity_s,6,6,3,6,21,15) 
scatter_matrix1(21,16) = a0_hhhh_hhhh_00(unitarity_s,6,6,4,4,21,16) 
scatter_matrix1(21,17) = a0_hhhh_hhhh_00(unitarity_s,6,6,4,5,21,17) 
scatter_matrix1(21,18) = a0_hhhh_hhhh_00(unitarity_s,6,6,4,6,21,18) 
scatter_matrix1(21,19) = a0_hhhh_hhhh_00(unitarity_s,6,6,5,5,21,19) 
scatter_matrix1(21,20) = a0_hhhh_hhhh_00(unitarity_s,6,6,5,6,21,20) 
scatter_matrix1(21,21) = a0_hhhh_hhhh_00(unitarity_s,6,6,6,6,21,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(21,22) = a0_hhhh_HmHmc_00(unitarity_s,6,6,1,1,21,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(21,23) = a0_hhhh_HmHmc_00(unitarity_s,6,6,1,2,21,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(21,24) = a0_hhhh_HmHmc_00(unitarity_s,6,6,2,1,21,24) 
scatter_matrix1(21,25) = a0_hhhh_HmHmc_00(unitarity_s,6,6,2,2,21,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,1) = a0_HmHmc_hhhh_00(unitarity_s,1,1,1,1,22,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,2) = a0_HmHmc_hhhh_00(unitarity_s,1,1,1,2,22,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,3) = a0_HmHmc_hhhh_00(unitarity_s,1,1,1,3,22,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,4) = a0_HmHmc_hhhh_00(unitarity_s,1,1,1,4,22,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,5) = a0_HmHmc_hhhh_00(unitarity_s,1,1,1,5,22,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,6) = a0_HmHmc_hhhh_00(unitarity_s,1,1,1,6,22,6) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,7) = a0_HmHmc_hhhh_00(unitarity_s,1,1,2,2,22,7) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,8) = a0_HmHmc_hhhh_00(unitarity_s,1,1,2,3,22,8) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,9) = a0_HmHmc_hhhh_00(unitarity_s,1,1,2,4,22,9) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,10) = a0_HmHmc_hhhh_00(unitarity_s,1,1,2,5,22,10) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,11) = a0_HmHmc_hhhh_00(unitarity_s,1,1,2,6,22,11) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,12) = a0_HmHmc_hhhh_00(unitarity_s,1,1,3,3,22,12) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,13) = a0_HmHmc_hhhh_00(unitarity_s,1,1,3,4,22,13) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,14) = a0_HmHmc_hhhh_00(unitarity_s,1,1,3,5,22,14) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,15) = a0_HmHmc_hhhh_00(unitarity_s,1,1,3,6,22,15) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,16) = a0_HmHmc_hhhh_00(unitarity_s,1,1,4,4,22,16) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,17) = a0_HmHmc_hhhh_00(unitarity_s,1,1,4,5,22,17) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,18) = a0_HmHmc_hhhh_00(unitarity_s,1,1,4,6,22,18) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,19) = a0_HmHmc_hhhh_00(unitarity_s,1,1,5,5,22,19) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,20) = a0_HmHmc_hhhh_00(unitarity_s,1,1,5,6,22,20) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,21) = a0_HmHmc_hhhh_00(unitarity_s,1,1,6,6,22,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,22) = a0_HmHmc_HmHmc_00(unitarity_s,1,1,1,1,22,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,23) = a0_HmHmc_HmHmc_00(unitarity_s,1,1,1,2,22,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,24) = a0_HmHmc_HmHmc_00(unitarity_s,1,1,2,1,22,24) 
If (IncludeGoldstoneExternal) scatter_matrix1(22,25) = a0_HmHmc_HmHmc_00(unitarity_s,1,1,2,2,22,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,1) = a0_HmHmc_hhhh_00(unitarity_s,1,2,1,1,23,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,2) = a0_HmHmc_hhhh_00(unitarity_s,1,2,1,2,23,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,3) = a0_HmHmc_hhhh_00(unitarity_s,1,2,1,3,23,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,4) = a0_HmHmc_hhhh_00(unitarity_s,1,2,1,4,23,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,5) = a0_HmHmc_hhhh_00(unitarity_s,1,2,1,5,23,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,6) = a0_HmHmc_hhhh_00(unitarity_s,1,2,1,6,23,6) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,7) = a0_HmHmc_hhhh_00(unitarity_s,1,2,2,2,23,7) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,8) = a0_HmHmc_hhhh_00(unitarity_s,1,2,2,3,23,8) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,9) = a0_HmHmc_hhhh_00(unitarity_s,1,2,2,4,23,9) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,10) = a0_HmHmc_hhhh_00(unitarity_s,1,2,2,5,23,10) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,11) = a0_HmHmc_hhhh_00(unitarity_s,1,2,2,6,23,11) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,12) = a0_HmHmc_hhhh_00(unitarity_s,1,2,3,3,23,12) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,13) = a0_HmHmc_hhhh_00(unitarity_s,1,2,3,4,23,13) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,14) = a0_HmHmc_hhhh_00(unitarity_s,1,2,3,5,23,14) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,15) = a0_HmHmc_hhhh_00(unitarity_s,1,2,3,6,23,15) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,16) = a0_HmHmc_hhhh_00(unitarity_s,1,2,4,4,23,16) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,17) = a0_HmHmc_hhhh_00(unitarity_s,1,2,4,5,23,17) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,18) = a0_HmHmc_hhhh_00(unitarity_s,1,2,4,6,23,18) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,19) = a0_HmHmc_hhhh_00(unitarity_s,1,2,5,5,23,19) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,20) = a0_HmHmc_hhhh_00(unitarity_s,1,2,5,6,23,20) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,21) = a0_HmHmc_hhhh_00(unitarity_s,1,2,6,6,23,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,22) = a0_HmHmc_HmHmc_00(unitarity_s,1,2,1,1,23,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,23) = a0_HmHmc_HmHmc_00(unitarity_s,1,2,1,2,23,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,24) = a0_HmHmc_HmHmc_00(unitarity_s,1,2,2,1,23,24) 
If (IncludeGoldstoneExternal) scatter_matrix1(23,25) = a0_HmHmc_HmHmc_00(unitarity_s,1,2,2,2,23,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,1) = a0_HmHmc_hhhh_00(unitarity_s,2,1,1,1,24,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,2) = a0_HmHmc_hhhh_00(unitarity_s,2,1,1,2,24,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,3) = a0_HmHmc_hhhh_00(unitarity_s,2,1,1,3,24,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,4) = a0_HmHmc_hhhh_00(unitarity_s,2,1,1,4,24,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,5) = a0_HmHmc_hhhh_00(unitarity_s,2,1,1,5,24,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,6) = a0_HmHmc_hhhh_00(unitarity_s,2,1,1,6,24,6) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,7) = a0_HmHmc_hhhh_00(unitarity_s,2,1,2,2,24,7) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,8) = a0_HmHmc_hhhh_00(unitarity_s,2,1,2,3,24,8) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,9) = a0_HmHmc_hhhh_00(unitarity_s,2,1,2,4,24,9) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,10) = a0_HmHmc_hhhh_00(unitarity_s,2,1,2,5,24,10) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,11) = a0_HmHmc_hhhh_00(unitarity_s,2,1,2,6,24,11) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,12) = a0_HmHmc_hhhh_00(unitarity_s,2,1,3,3,24,12) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,13) = a0_HmHmc_hhhh_00(unitarity_s,2,1,3,4,24,13) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,14) = a0_HmHmc_hhhh_00(unitarity_s,2,1,3,5,24,14) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,15) = a0_HmHmc_hhhh_00(unitarity_s,2,1,3,6,24,15) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,16) = a0_HmHmc_hhhh_00(unitarity_s,2,1,4,4,24,16) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,17) = a0_HmHmc_hhhh_00(unitarity_s,2,1,4,5,24,17) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,18) = a0_HmHmc_hhhh_00(unitarity_s,2,1,4,6,24,18) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,19) = a0_HmHmc_hhhh_00(unitarity_s,2,1,5,5,24,19) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,20) = a0_HmHmc_hhhh_00(unitarity_s,2,1,5,6,24,20) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,21) = a0_HmHmc_hhhh_00(unitarity_s,2,1,6,6,24,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,22) = a0_HmHmc_HmHmc_00(unitarity_s,2,1,1,1,24,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,23) = a0_HmHmc_HmHmc_00(unitarity_s,2,1,1,2,24,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,24) = a0_HmHmc_HmHmc_00(unitarity_s,2,1,2,1,24,24) 
If (IncludeGoldstoneExternal) scatter_matrix1(24,25) = a0_HmHmc_HmHmc_00(unitarity_s,2,1,2,2,24,25) 
If (IncludeGoldstoneExternal) scatter_matrix1(25,1) = a0_HmHmc_hhhh_00(unitarity_s,2,2,1,1,25,1) 
If (IncludeGoldstoneExternal) scatter_matrix1(25,2) = a0_HmHmc_hhhh_00(unitarity_s,2,2,1,2,25,2) 
If (IncludeGoldstoneExternal) scatter_matrix1(25,3) = a0_HmHmc_hhhh_00(unitarity_s,2,2,1,3,25,3) 
If (IncludeGoldstoneExternal) scatter_matrix1(25,4) = a0_HmHmc_hhhh_00(unitarity_s,2,2,1,4,25,4) 
If (IncludeGoldstoneExternal) scatter_matrix1(25,5) = a0_HmHmc_hhhh_00(unitarity_s,2,2,1,5,25,5) 
If (IncludeGoldstoneExternal) scatter_matrix1(25,6) = a0_HmHmc_hhhh_00(unitarity_s,2,2,1,6,25,6) 
scatter_matrix1(25,7) = a0_HmHmc_hhhh_00(unitarity_s,2,2,2,2,25,7) 
scatter_matrix1(25,8) = a0_HmHmc_hhhh_00(unitarity_s,2,2,2,3,25,8) 
scatter_matrix1(25,9) = a0_HmHmc_hhhh_00(unitarity_s,2,2,2,4,25,9) 
scatter_matrix1(25,10) = a0_HmHmc_hhhh_00(unitarity_s,2,2,2,5,25,10) 
scatter_matrix1(25,11) = a0_HmHmc_hhhh_00(unitarity_s,2,2,2,6,25,11) 
scatter_matrix1(25,12) = a0_HmHmc_hhhh_00(unitarity_s,2,2,3,3,25,12) 
scatter_matrix1(25,13) = a0_HmHmc_hhhh_00(unitarity_s,2,2,3,4,25,13) 
scatter_matrix1(25,14) = a0_HmHmc_hhhh_00(unitarity_s,2,2,3,5,25,14) 
scatter_matrix1(25,15) = a0_HmHmc_hhhh_00(unitarity_s,2,2,3,6,25,15) 
scatter_matrix1(25,16) = a0_HmHmc_hhhh_00(unitarity_s,2,2,4,4,25,16) 
scatter_matrix1(25,17) = a0_HmHmc_hhhh_00(unitarity_s,2,2,4,5,25,17) 
scatter_matrix1(25,18) = a0_HmHmc_hhhh_00(unitarity_s,2,2,4,6,25,18) 
scatter_matrix1(25,19) = a0_HmHmc_hhhh_00(unitarity_s,2,2,5,5,25,19) 
scatter_matrix1(25,20) = a0_HmHmc_hhhh_00(unitarity_s,2,2,5,6,25,20) 
scatter_matrix1(25,21) = a0_HmHmc_hhhh_00(unitarity_s,2,2,6,6,25,21) 
If (IncludeGoldstoneExternal) scatter_matrix1(25,22) = a0_HmHmc_HmHmc_00(unitarity_s,2,2,1,1,25,22) 
If (IncludeGoldstoneExternal) scatter_matrix1(25,23) = a0_HmHmc_HmHmc_00(unitarity_s,2,2,1,2,25,23) 
If (IncludeGoldstoneExternal) scatter_matrix1(25,24) = a0_HmHmc_HmHmc_00(unitarity_s,2,2,2,1,25,24) 
scatter_matrix1(25,25) = a0_HmHmc_HmHmc_00(unitarity_s,2,2,2,2,25,25) 


Select CASE (TUcutLevel)  
CASE (2) 
  scatter_matrix1B = scatter_matrix1
Do i=1,25 
  If (RemoveTUpoles(i).eq.1) Then
   scatter_matrix1(i,:) = 0._dp 
   scatter_matrix1(:,i) = 0._dp 
    If (AddR) scatter_matrix1(i,i) = -1111._dp ! to get a fixed order of the eigenvalues 
   scatter_matrix1B(:,i) = 0._dp 
  Else 
   scatter_matrix1B(i,:) = 0._dp 
  End If 
End Do 
CASE (1) 
If ((Abs(max_element_removed)/MaxVal(Abs(scatter_matrix1))).gt.cut_elements) Then 
 ! Write(*,*)  (Abs(max_element_removed)/MaxVal(Abs(scatter_matrix1)))  
End if 
End Select 
If ((.not. pole_present) .and. (.not. any_pole_present) ) Then 
Call EigenSystem(scatter_matrix1,eigenvalues_matrix1,rot_matrix1,ierr,test)
 If ((TUcutLevel.eq.2).and.(AddR)) Then ! Calculate 'R' 
  scatter_matrix1B = MatMul(scatter_matrix1B,Conjg(Transpose(rot_matrix1))) 
   Do i=1,25 
    If (eigenvalues_matrix1 (i).lt.-1000._dp) Then
     eigenvalues_matrix1(i) = 0._dp 
    Else 
     eigenvalues_matrix1(i) = sqrt(eigenvalues_matrix1(i)**2+  sum(scatter_matrix1B(i,:)**2) )
    End If
   End Do 
 End If 
scattering_eigenvalue_trilinears=MaxVal(Abs(eigenvalues_matrix1)) 
Else 
  scattering_eigenvalue_trilinears = 0._dp 
End if 
If (scattering_eigenvalue_trilinears.gt.max_scattering_eigenvalue_trilinears) Then 
   max_scattering_eigenvalue_trilinears=scattering_eigenvalue_trilinears 
   unitarity_s_best=sqrt(unitarity_s)
   best_submatrix=1
End if 
 
!! 2. sub-matrix  
Pole_Present = .false. 
max_element_removed = 0._dp 
RemoveTUpoles = 0 
scatter_matrix2=0._dp 
If (IncludeGoldstoneExternal) scatter_matrix2(1,1) = a0_hhHmc_hhHm_00(unitarity_s,1,1,1,1,1,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(1,2) = a0_hhHmc_hhHm_00(unitarity_s,1,1,1,2,1,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(1,3) = a0_hhHmc_hhHm_00(unitarity_s,1,1,2,1,1,3) 
If (IncludeGoldstoneExternal) scatter_matrix2(1,4) = a0_hhHmc_hhHm_00(unitarity_s,1,1,2,2,1,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(1,5) = a0_hhHmc_hhHm_00(unitarity_s,1,1,3,1,1,5) 
If (IncludeGoldstoneExternal) scatter_matrix2(1,6) = a0_hhHmc_hhHm_00(unitarity_s,1,1,3,2,1,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(1,7) = a0_hhHmc_hhHm_00(unitarity_s,1,1,4,1,1,7) 
If (IncludeGoldstoneExternal) scatter_matrix2(1,8) = a0_hhHmc_hhHm_00(unitarity_s,1,1,4,2,1,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(1,9) = a0_hhHmc_hhHm_00(unitarity_s,1,1,5,1,1,9) 
If (IncludeGoldstoneExternal) scatter_matrix2(1,10) = a0_hhHmc_hhHm_00(unitarity_s,1,1,5,2,1,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(1,11) = a0_hhHmc_hhHm_00(unitarity_s,1,1,6,1,1,11) 
If (IncludeGoldstoneExternal) scatter_matrix2(1,12) = a0_hhHmc_hhHm_00(unitarity_s,1,1,6,2,1,12) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,1) = a0_hhHmc_hhHm_00(unitarity_s,1,2,1,1,2,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,2) = a0_hhHmc_hhHm_00(unitarity_s,1,2,1,2,2,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,3) = a0_hhHmc_hhHm_00(unitarity_s,1,2,2,1,2,3) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,4) = a0_hhHmc_hhHm_00(unitarity_s,1,2,2,2,2,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,5) = a0_hhHmc_hhHm_00(unitarity_s,1,2,3,1,2,5) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,6) = a0_hhHmc_hhHm_00(unitarity_s,1,2,3,2,2,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,7) = a0_hhHmc_hhHm_00(unitarity_s,1,2,4,1,2,7) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,8) = a0_hhHmc_hhHm_00(unitarity_s,1,2,4,2,2,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,9) = a0_hhHmc_hhHm_00(unitarity_s,1,2,5,1,2,9) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,10) = a0_hhHmc_hhHm_00(unitarity_s,1,2,5,2,2,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,11) = a0_hhHmc_hhHm_00(unitarity_s,1,2,6,1,2,11) 
If (IncludeGoldstoneExternal) scatter_matrix2(2,12) = a0_hhHmc_hhHm_00(unitarity_s,1,2,6,2,2,12) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,1) = a0_hhHmc_hhHm_00(unitarity_s,2,1,1,1,3,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,2) = a0_hhHmc_hhHm_00(unitarity_s,2,1,1,2,3,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,3) = a0_hhHmc_hhHm_00(unitarity_s,2,1,2,1,3,3) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,4) = a0_hhHmc_hhHm_00(unitarity_s,2,1,2,2,3,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,5) = a0_hhHmc_hhHm_00(unitarity_s,2,1,3,1,3,5) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,6) = a0_hhHmc_hhHm_00(unitarity_s,2,1,3,2,3,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,7) = a0_hhHmc_hhHm_00(unitarity_s,2,1,4,1,3,7) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,8) = a0_hhHmc_hhHm_00(unitarity_s,2,1,4,2,3,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,9) = a0_hhHmc_hhHm_00(unitarity_s,2,1,5,1,3,9) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,10) = a0_hhHmc_hhHm_00(unitarity_s,2,1,5,2,3,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,11) = a0_hhHmc_hhHm_00(unitarity_s,2,1,6,1,3,11) 
If (IncludeGoldstoneExternal) scatter_matrix2(3,12) = a0_hhHmc_hhHm_00(unitarity_s,2,1,6,2,3,12) 
If (IncludeGoldstoneExternal) scatter_matrix2(4,1) = a0_hhHmc_hhHm_00(unitarity_s,2,2,1,1,4,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(4,2) = a0_hhHmc_hhHm_00(unitarity_s,2,2,1,2,4,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(4,3) = a0_hhHmc_hhHm_00(unitarity_s,2,2,2,1,4,3) 
scatter_matrix2(4,4) = a0_hhHmc_hhHm_00(unitarity_s,2,2,2,2,4,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(4,5) = a0_hhHmc_hhHm_00(unitarity_s,2,2,3,1,4,5) 
scatter_matrix2(4,6) = a0_hhHmc_hhHm_00(unitarity_s,2,2,3,2,4,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(4,7) = a0_hhHmc_hhHm_00(unitarity_s,2,2,4,1,4,7) 
scatter_matrix2(4,8) = a0_hhHmc_hhHm_00(unitarity_s,2,2,4,2,4,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(4,9) = a0_hhHmc_hhHm_00(unitarity_s,2,2,5,1,4,9) 
scatter_matrix2(4,10) = a0_hhHmc_hhHm_00(unitarity_s,2,2,5,2,4,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(4,11) = a0_hhHmc_hhHm_00(unitarity_s,2,2,6,1,4,11) 
scatter_matrix2(4,12) = a0_hhHmc_hhHm_00(unitarity_s,2,2,6,2,4,12) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,1) = a0_hhHmc_hhHm_00(unitarity_s,3,1,1,1,5,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,2) = a0_hhHmc_hhHm_00(unitarity_s,3,1,1,2,5,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,3) = a0_hhHmc_hhHm_00(unitarity_s,3,1,2,1,5,3) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,4) = a0_hhHmc_hhHm_00(unitarity_s,3,1,2,2,5,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,5) = a0_hhHmc_hhHm_00(unitarity_s,3,1,3,1,5,5) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,6) = a0_hhHmc_hhHm_00(unitarity_s,3,1,3,2,5,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,7) = a0_hhHmc_hhHm_00(unitarity_s,3,1,4,1,5,7) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,8) = a0_hhHmc_hhHm_00(unitarity_s,3,1,4,2,5,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,9) = a0_hhHmc_hhHm_00(unitarity_s,3,1,5,1,5,9) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,10) = a0_hhHmc_hhHm_00(unitarity_s,3,1,5,2,5,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,11) = a0_hhHmc_hhHm_00(unitarity_s,3,1,6,1,5,11) 
If (IncludeGoldstoneExternal) scatter_matrix2(5,12) = a0_hhHmc_hhHm_00(unitarity_s,3,1,6,2,5,12) 
If (IncludeGoldstoneExternal) scatter_matrix2(6,1) = a0_hhHmc_hhHm_00(unitarity_s,3,2,1,1,6,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(6,2) = a0_hhHmc_hhHm_00(unitarity_s,3,2,1,2,6,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(6,3) = a0_hhHmc_hhHm_00(unitarity_s,3,2,2,1,6,3) 
scatter_matrix2(6,4) = a0_hhHmc_hhHm_00(unitarity_s,3,2,2,2,6,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(6,5) = a0_hhHmc_hhHm_00(unitarity_s,3,2,3,1,6,5) 
scatter_matrix2(6,6) = a0_hhHmc_hhHm_00(unitarity_s,3,2,3,2,6,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(6,7) = a0_hhHmc_hhHm_00(unitarity_s,3,2,4,1,6,7) 
scatter_matrix2(6,8) = a0_hhHmc_hhHm_00(unitarity_s,3,2,4,2,6,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(6,9) = a0_hhHmc_hhHm_00(unitarity_s,3,2,5,1,6,9) 
scatter_matrix2(6,10) = a0_hhHmc_hhHm_00(unitarity_s,3,2,5,2,6,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(6,11) = a0_hhHmc_hhHm_00(unitarity_s,3,2,6,1,6,11) 
scatter_matrix2(6,12) = a0_hhHmc_hhHm_00(unitarity_s,3,2,6,2,6,12) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,1) = a0_hhHmc_hhHm_00(unitarity_s,4,1,1,1,7,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,2) = a0_hhHmc_hhHm_00(unitarity_s,4,1,1,2,7,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,3) = a0_hhHmc_hhHm_00(unitarity_s,4,1,2,1,7,3) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,4) = a0_hhHmc_hhHm_00(unitarity_s,4,1,2,2,7,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,5) = a0_hhHmc_hhHm_00(unitarity_s,4,1,3,1,7,5) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,6) = a0_hhHmc_hhHm_00(unitarity_s,4,1,3,2,7,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,7) = a0_hhHmc_hhHm_00(unitarity_s,4,1,4,1,7,7) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,8) = a0_hhHmc_hhHm_00(unitarity_s,4,1,4,2,7,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,9) = a0_hhHmc_hhHm_00(unitarity_s,4,1,5,1,7,9) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,10) = a0_hhHmc_hhHm_00(unitarity_s,4,1,5,2,7,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,11) = a0_hhHmc_hhHm_00(unitarity_s,4,1,6,1,7,11) 
If (IncludeGoldstoneExternal) scatter_matrix2(7,12) = a0_hhHmc_hhHm_00(unitarity_s,4,1,6,2,7,12) 
If (IncludeGoldstoneExternal) scatter_matrix2(8,1) = a0_hhHmc_hhHm_00(unitarity_s,4,2,1,1,8,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(8,2) = a0_hhHmc_hhHm_00(unitarity_s,4,2,1,2,8,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(8,3) = a0_hhHmc_hhHm_00(unitarity_s,4,2,2,1,8,3) 
scatter_matrix2(8,4) = a0_hhHmc_hhHm_00(unitarity_s,4,2,2,2,8,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(8,5) = a0_hhHmc_hhHm_00(unitarity_s,4,2,3,1,8,5) 
scatter_matrix2(8,6) = a0_hhHmc_hhHm_00(unitarity_s,4,2,3,2,8,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(8,7) = a0_hhHmc_hhHm_00(unitarity_s,4,2,4,1,8,7) 
scatter_matrix2(8,8) = a0_hhHmc_hhHm_00(unitarity_s,4,2,4,2,8,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(8,9) = a0_hhHmc_hhHm_00(unitarity_s,4,2,5,1,8,9) 
scatter_matrix2(8,10) = a0_hhHmc_hhHm_00(unitarity_s,4,2,5,2,8,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(8,11) = a0_hhHmc_hhHm_00(unitarity_s,4,2,6,1,8,11) 
scatter_matrix2(8,12) = a0_hhHmc_hhHm_00(unitarity_s,4,2,6,2,8,12) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,1) = a0_hhHmc_hhHm_00(unitarity_s,5,1,1,1,9,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,2) = a0_hhHmc_hhHm_00(unitarity_s,5,1,1,2,9,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,3) = a0_hhHmc_hhHm_00(unitarity_s,5,1,2,1,9,3) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,4) = a0_hhHmc_hhHm_00(unitarity_s,5,1,2,2,9,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,5) = a0_hhHmc_hhHm_00(unitarity_s,5,1,3,1,9,5) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,6) = a0_hhHmc_hhHm_00(unitarity_s,5,1,3,2,9,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,7) = a0_hhHmc_hhHm_00(unitarity_s,5,1,4,1,9,7) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,8) = a0_hhHmc_hhHm_00(unitarity_s,5,1,4,2,9,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,9) = a0_hhHmc_hhHm_00(unitarity_s,5,1,5,1,9,9) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,10) = a0_hhHmc_hhHm_00(unitarity_s,5,1,5,2,9,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,11) = a0_hhHmc_hhHm_00(unitarity_s,5,1,6,1,9,11) 
If (IncludeGoldstoneExternal) scatter_matrix2(9,12) = a0_hhHmc_hhHm_00(unitarity_s,5,1,6,2,9,12) 
If (IncludeGoldstoneExternal) scatter_matrix2(10,1) = a0_hhHmc_hhHm_00(unitarity_s,5,2,1,1,10,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(10,2) = a0_hhHmc_hhHm_00(unitarity_s,5,2,1,2,10,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(10,3) = a0_hhHmc_hhHm_00(unitarity_s,5,2,2,1,10,3) 
scatter_matrix2(10,4) = a0_hhHmc_hhHm_00(unitarity_s,5,2,2,2,10,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(10,5) = a0_hhHmc_hhHm_00(unitarity_s,5,2,3,1,10,5) 
scatter_matrix2(10,6) = a0_hhHmc_hhHm_00(unitarity_s,5,2,3,2,10,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(10,7) = a0_hhHmc_hhHm_00(unitarity_s,5,2,4,1,10,7) 
scatter_matrix2(10,8) = a0_hhHmc_hhHm_00(unitarity_s,5,2,4,2,10,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(10,9) = a0_hhHmc_hhHm_00(unitarity_s,5,2,5,1,10,9) 
scatter_matrix2(10,10) = a0_hhHmc_hhHm_00(unitarity_s,5,2,5,2,10,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(10,11) = a0_hhHmc_hhHm_00(unitarity_s,5,2,6,1,10,11) 
scatter_matrix2(10,12) = a0_hhHmc_hhHm_00(unitarity_s,5,2,6,2,10,12) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,1) = a0_hhHmc_hhHm_00(unitarity_s,6,1,1,1,11,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,2) = a0_hhHmc_hhHm_00(unitarity_s,6,1,1,2,11,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,3) = a0_hhHmc_hhHm_00(unitarity_s,6,1,2,1,11,3) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,4) = a0_hhHmc_hhHm_00(unitarity_s,6,1,2,2,11,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,5) = a0_hhHmc_hhHm_00(unitarity_s,6,1,3,1,11,5) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,6) = a0_hhHmc_hhHm_00(unitarity_s,6,1,3,2,11,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,7) = a0_hhHmc_hhHm_00(unitarity_s,6,1,4,1,11,7) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,8) = a0_hhHmc_hhHm_00(unitarity_s,6,1,4,2,11,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,9) = a0_hhHmc_hhHm_00(unitarity_s,6,1,5,1,11,9) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,10) = a0_hhHmc_hhHm_00(unitarity_s,6,1,5,2,11,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,11) = a0_hhHmc_hhHm_00(unitarity_s,6,1,6,1,11,11) 
If (IncludeGoldstoneExternal) scatter_matrix2(11,12) = a0_hhHmc_hhHm_00(unitarity_s,6,1,6,2,11,12) 
If (IncludeGoldstoneExternal) scatter_matrix2(12,1) = a0_hhHmc_hhHm_00(unitarity_s,6,2,1,1,12,1) 
If (IncludeGoldstoneExternal) scatter_matrix2(12,2) = a0_hhHmc_hhHm_00(unitarity_s,6,2,1,2,12,2) 
If (IncludeGoldstoneExternal) scatter_matrix2(12,3) = a0_hhHmc_hhHm_00(unitarity_s,6,2,2,1,12,3) 
scatter_matrix2(12,4) = a0_hhHmc_hhHm_00(unitarity_s,6,2,2,2,12,4) 
If (IncludeGoldstoneExternal) scatter_matrix2(12,5) = a0_hhHmc_hhHm_00(unitarity_s,6,2,3,1,12,5) 
scatter_matrix2(12,6) = a0_hhHmc_hhHm_00(unitarity_s,6,2,3,2,12,6) 
If (IncludeGoldstoneExternal) scatter_matrix2(12,7) = a0_hhHmc_hhHm_00(unitarity_s,6,2,4,1,12,7) 
scatter_matrix2(12,8) = a0_hhHmc_hhHm_00(unitarity_s,6,2,4,2,12,8) 
If (IncludeGoldstoneExternal) scatter_matrix2(12,9) = a0_hhHmc_hhHm_00(unitarity_s,6,2,5,1,12,9) 
scatter_matrix2(12,10) = a0_hhHmc_hhHm_00(unitarity_s,6,2,5,2,12,10) 
If (IncludeGoldstoneExternal) scatter_matrix2(12,11) = a0_hhHmc_hhHm_00(unitarity_s,6,2,6,1,12,11) 
scatter_matrix2(12,12) = a0_hhHmc_hhHm_00(unitarity_s,6,2,6,2,12,12) 


Select CASE (TUcutLevel)  
CASE (2) 
  scatter_matrix2B = scatter_matrix2
Do i=1,12 
  If (RemoveTUpoles(i).eq.1) Then
   scatter_matrix2(i,:) = 0._dp 
   scatter_matrix2(:,i) = 0._dp 
    If (AddR) scatter_matrix2(i,i) = -1111._dp ! to get a fixed order of the eigenvalues 
   scatter_matrix2B(:,i) = 0._dp 
  Else 
   scatter_matrix2B(i,:) = 0._dp 
  End If 
End Do 
CASE (1) 
If ((Abs(max_element_removed)/MaxVal(Abs(scatter_matrix2))).gt.cut_elements) Then 
 ! Write(*,*)  (Abs(max_element_removed)/MaxVal(Abs(scatter_matrix2)))  
End if 
End Select 
If ((.not. pole_present) .and. (.not. any_pole_present) ) Then 
Call EigenSystem(scatter_matrix2,eigenvalues_matrix2,rot_matrix2,ierr,test)
 If ((TUcutLevel.eq.2).and.(AddR)) Then ! Calculate 'R' 
  scatter_matrix2B = MatMul(scatter_matrix2B,Conjg(Transpose(rot_matrix2))) 
   Do i=1,12 
    If (eigenvalues_matrix2 (i).lt.-1000._dp) Then
     eigenvalues_matrix2(i) = 0._dp 
    Else 
     eigenvalues_matrix2(i) = sqrt(eigenvalues_matrix2(i)**2+  sum(scatter_matrix2B(i,:)**2) )
    End If
   End Do 
 End If 
scattering_eigenvalue_trilinears=MaxVal(Abs(eigenvalues_matrix2)) 
Else 
  scattering_eigenvalue_trilinears = 0._dp 
End if 
If (scattering_eigenvalue_trilinears.gt.max_scattering_eigenvalue_trilinears) Then 
   max_scattering_eigenvalue_trilinears=scattering_eigenvalue_trilinears 
   unitarity_s_best=sqrt(unitarity_s)
   best_submatrix=2
End if 
 
!! 3. sub-matrix  
Pole_Present = .false. 
max_element_removed = 0._dp 
RemoveTUpoles = 0 
scatter_matrix3=0._dp 
If (IncludeGoldstoneExternal) scatter_matrix3(1,1) = a0_HmcHmc_HmHm_00(unitarity_s,1,1,1,1,1,1) 
If (IncludeGoldstoneExternal) scatter_matrix3(1,2) = a0_HmcHmc_HmHm_00(unitarity_s,1,1,1,2,1,2) 
If (IncludeGoldstoneExternal) scatter_matrix3(1,3) = a0_HmcHmc_HmHm_00(unitarity_s,1,1,2,2,1,3) 
If (IncludeGoldstoneExternal) scatter_matrix3(2,1) = a0_HmcHmc_HmHm_00(unitarity_s,1,2,1,1,2,1) 
If (IncludeGoldstoneExternal) scatter_matrix3(2,2) = a0_HmcHmc_HmHm_00(unitarity_s,1,2,1,2,2,2) 
If (IncludeGoldstoneExternal) scatter_matrix3(2,3) = a0_HmcHmc_HmHm_00(unitarity_s,1,2,2,2,2,3) 
If (IncludeGoldstoneExternal) scatter_matrix3(3,1) = a0_HmcHmc_HmHm_00(unitarity_s,2,2,1,1,3,1) 
If (IncludeGoldstoneExternal) scatter_matrix3(3,2) = a0_HmcHmc_HmHm_00(unitarity_s,2,2,1,2,3,2) 
scatter_matrix3(3,3) = a0_HmcHmc_HmHm_00(unitarity_s,2,2,2,2,3,3) 


Select CASE (TUcutLevel)  
CASE (2) 
  scatter_matrix3B = scatter_matrix3
Do i=1,3 
  If (RemoveTUpoles(i).eq.1) Then
   scatter_matrix3(i,:) = 0._dp 
   scatter_matrix3(:,i) = 0._dp 
    If (AddR) scatter_matrix3(i,i) = -1111._dp ! to get a fixed order of the eigenvalues 
   scatter_matrix3B(:,i) = 0._dp 
  Else 
   scatter_matrix3B(i,:) = 0._dp 
  End If 
End Do 
CASE (1) 
If ((Abs(max_element_removed)/MaxVal(Abs(scatter_matrix3))).gt.cut_elements) Then 
 ! Write(*,*)  (Abs(max_element_removed)/MaxVal(Abs(scatter_matrix3)))  
End if 
End Select 
If ((.not. pole_present) .and. (.not. any_pole_present) ) Then 
Call EigenSystem(scatter_matrix3,eigenvalues_matrix3,rot_matrix3,ierr,test)
 If ((TUcutLevel.eq.2).and.(AddR)) Then ! Calculate 'R' 
  scatter_matrix3B = MatMul(scatter_matrix3B,Conjg(Transpose(rot_matrix3))) 
   Do i=1,3 
    If (eigenvalues_matrix3 (i).lt.-1000._dp) Then
     eigenvalues_matrix3(i) = 0._dp 
    Else 
     eigenvalues_matrix3(i) = sqrt(eigenvalues_matrix3(i)**2+  sum(scatter_matrix3B(i,:)**2) )
    End If
   End Do 
 End If 
scattering_eigenvalue_trilinears=MaxVal(Abs(eigenvalues_matrix3)) 
Else 
  scattering_eigenvalue_trilinears = 0._dp 
End if 
If (scattering_eigenvalue_trilinears.gt.max_scattering_eigenvalue_trilinears) Then 
   max_scattering_eigenvalue_trilinears=scattering_eigenvalue_trilinears 
   unitarity_s_best=sqrt(unitarity_s)
   best_submatrix=3
End if 
 
End do 

If (max_scattering_eigenvalue_trilinears.gt.0.5_dp) TreeUnitarityTrilinear=0._dp 
 
 Write(*,*) "Best submatrix: ",best_submatrix 
 
! Write(*,*) (max_scattering_eigenvalue_trilinears) 
 


 Contains 

Complex(dp) Function a0_hhhh_hhhh_00(s,i1,i2,i3,i4,ind1,ind2)  Result(amp)
Implicit None 
Integer, Intent(in) :: i1,i2,i3,i4,ind1,ind2 
Real(dp), Intent(in) :: s 
Integer :: iprop, istart,c1,c2,c2end 
Logical :: pole_s_channel=.False. 
Real(dp) :: m1,m2,m3,m4 
Complex(dp) :: tempamp2(1,1) 
Complex(dp) :: amp_poles 
Complex(dp) :: unicpl1(8),unicpl2(8) 
amp = 0._dp 
tempamp2(:,:) = 0._dp 
amp_poles = 0._dp 
m1 = Mhh(i1)
m2 = Mhh(i2)
m3 = Mhh(i3)
m4 = Mhh(i4)
If ((s.gt.1.01_dp*(m3+m4)**2).and.(s.gt.1.01_dp*(m1+m2)**2)) Then 


! Quartic 
unicpl1(1)=cplhhhhhhhh(i1,i2,i3,i4)
amp = amp +(-2._dp)*(unicpl1(1))


! S-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhhhhh(i1,i2,iprop)
unicpl2(1)=cplhhhhhh(i3,i4,iprop)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Schannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If (Abs(1-s/Mhh(iProp)**2).lt.CutSpole) Then 
 Any_Pole_Present = .true. 
 Pole_Present = .true. 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! T-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhhhhh(i1,i3,iprop)
unicpl2(1)=cplhhhhhh(i2,i4,iprop)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Tchannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckTpole(m1**2,m2**2,m3**2,m4**2,Mhh(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "T",m1,m2,m3,m4,Mhh(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! U-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhhhhh(i1,i4,iprop)
unicpl2(1)=cplhhhhhh(i2,i3,iprop)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Uchannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckUpole(m1**2,m2**2,m3**2,m4**2,Mhh(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "U",m1,m2,m3,m4,Mhh(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 
End if 
amp = 0.5_dp*oo16pi*amp*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (i1.eq.i2) amp=amp/sqrt(2._dp) 
If (i3.eq.i4) amp=amp/sqrt(2._dp) 
If (TUcutLevel.eq.1) Then 
 amp_poles = 0.5_dp*oo16pi*amp_poles*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (i1.eq.i2) amp_poles=amp_poles/sqrt(2._dp) 
If (i3.eq.i4) amp_poles=amp_poles/sqrt(2._dp) 
  If ((Abs(amp_poles)/Abs(amp)).gt.cut_amplitudes) Then 
   ! Write(*,*) "TU ratio", (Abs(amp_poles)/Abs(amp))  
   If (Abs(amp).gt.max_element_removed) max_element_removed = Abs(amp) 
   amp = 0._dp 
  End if 
End if 
End Function a0_hhhh_hhhh_00

Complex(dp) Function a0_hhhh_HmHmc_00(s,i1,i2,i3,i4,ind1,ind2)  Result(amp)
Implicit None 
Integer, Intent(in) :: i1,i2,i3,i4,ind1,ind2 
Real(dp), Intent(in) :: s 
Integer :: iprop, istart,c1,c2,c2end 
Logical :: pole_s_channel=.False. 
Real(dp) :: m1,m2,m3,m4 
Complex(dp) :: tempamp2(1,1) 
Complex(dp) :: amp_poles 
Complex(dp) :: unicpl1(8),unicpl2(8) 
amp = 0._dp 
tempamp2(:,:) = 0._dp 
amp_poles = 0._dp 
m1 = Mhh(i1)
m2 = Mhh(i2)
m3 = MHm(i3)
m4 = MHm(i4)
If ((s.gt.1.01_dp*(m3+m4)**2).and.(s.gt.1.01_dp*(m1+m2)**2)) Then 


! Quartic 
unicpl1(1)=cplhhhhHmcHm(i1,i2,i3,i4)
amp = amp +(-2._dp)*(unicpl1(1))


! S-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhhhhh(i1,i2,iprop)
unicpl2(1)=cplhhHmcHm(iprop,i3,i4)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Schannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If (Abs(1-s/Mhh(iProp)**2).lt.CutSpole) Then 
 Any_Pole_Present = .true. 
 Pole_Present = .true. 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! T-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,2
unicpl1(1)=cplhhHmcHm(i1,i3,iprop)
unicpl2(1)=cplhhHmcHm(i2,iprop,i4)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Tchannel(m1,m2,m3,m4,MHm(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckTpole(m1**2,m2**2,m3**2,m4**2,MHm(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "T",m1,m2,m3,m4,MHm(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! U-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,2
unicpl1(1)=cplhhHmcHm(i1,iprop,i4)
unicpl2(1)=cplhhHmcHm(i2,i3,iprop)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Uchannel(m1,m2,m3,m4,MHm(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckUpole(m1**2,m2**2,m3**2,m4**2,MHm(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "U",m1,m2,m3,m4,MHm(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 
End if 
amp = 0.5_dp*oo16pi*amp*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (i1.eq.i2) amp=amp/sqrt(2._dp) 
If (TUcutLevel.eq.1) Then 
 amp_poles = 0.5_dp*oo16pi*amp_poles*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (i1.eq.i2) amp_poles=amp_poles/sqrt(2._dp) 
  If ((Abs(amp_poles)/Abs(amp)).gt.cut_amplitudes) Then 
   ! Write(*,*) "TU ratio", (Abs(amp_poles)/Abs(amp))  
   If (Abs(amp).gt.max_element_removed) max_element_removed = Abs(amp) 
   amp = 0._dp 
  End if 
End if 
End Function a0_hhhh_HmHmc_00

Complex(dp) Function a0_hhHm_hhHmc_00(s,i1,i2,i3,i4,ind1,ind2)  Result(amp)
Implicit None 
Integer, Intent(in) :: i1,i2,i3,i4,ind1,ind2 
Real(dp), Intent(in) :: s 
Integer :: iprop, istart,c1,c2,c2end 
Logical :: pole_s_channel=.False. 
Real(dp) :: m1,m2,m3,m4 
Complex(dp) :: tempamp2(1,1) 
Complex(dp) :: amp_poles 
Complex(dp) :: unicpl1(8),unicpl2(8) 
amp = 0._dp 
tempamp2(:,:) = 0._dp 
amp_poles = 0._dp 
m1 = Mhh(i1)
m2 = MHm(i2)
m3 = Mhh(i3)
m4 = MHm(i4)
If ((s.gt.1.01_dp*(m3+m4)**2).and.(s.gt.1.01_dp*(m1+m2)**2)) Then 


! Quartic 
unicpl1(1)=cplhhhhHmcHm(i1,i3,i2,i4)
amp = amp +(-2._dp)*(unicpl1(1))


! S-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,2
unicpl1(1)=cplhhHmcHm(i1,i2,iprop)
unicpl2(1)=cplhhHmcHm(i3,iprop,i4)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Schannel(m1,m2,m3,m4,MHm(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If (Abs(1-s/MHm(iProp)**2).lt.CutSpole) Then 
 Any_Pole_Present = .true. 
 Pole_Present = .true. 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! T-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhhhhh(i1,i3,iprop)
unicpl2(1)=cplhhHmcHm(iprop,i2,i4)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Tchannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckTpole(m1**2,m2**2,m3**2,m4**2,Mhh(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "T",m1,m2,m3,m4,Mhh(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! U-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,2
unicpl1(1)=cplhhHmcHm(i1,iprop,i4)
unicpl2(1)=cplhhHmcHm(i3,i2,iprop)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Uchannel(m1,m2,m3,m4,MHm(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckUpole(m1**2,m2**2,m3**2,m4**2,MHm(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "U",m1,m2,m3,m4,MHm(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 
End if 
amp = 0.5_dp*oo16pi*amp*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (TUcutLevel.eq.1) Then 
 amp_poles = 0.5_dp*oo16pi*amp_poles*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
  If ((Abs(amp_poles)/Abs(amp)).gt.cut_amplitudes) Then 
   ! Write(*,*) "TU ratio", (Abs(amp_poles)/Abs(amp))  
   If (Abs(amp).gt.max_element_removed) max_element_removed = Abs(amp) 
   amp = 0._dp 
  End if 
End if 
End Function a0_hhHm_hhHmc_00

Complex(dp) Function a0_hhHmc_hhHm_00(s,i1,i2,i3,i4,ind1,ind2)  Result(amp)
Implicit None 
Integer, Intent(in) :: i1,i2,i3,i4,ind1,ind2 
Real(dp), Intent(in) :: s 
Integer :: iprop, istart,c1,c2,c2end 
Logical :: pole_s_channel=.False. 
Real(dp) :: m1,m2,m3,m4 
Complex(dp) :: tempamp2(1,1) 
Complex(dp) :: amp_poles 
Complex(dp) :: unicpl1(8),unicpl2(8) 
amp = 0._dp 
tempamp2(:,:) = 0._dp 
amp_poles = 0._dp 
m1 = Mhh(i1)
m2 = MHm(i2)
m3 = Mhh(i3)
m4 = MHm(i4)
If ((s.gt.1.01_dp*(m3+m4)**2).and.(s.gt.1.01_dp*(m1+m2)**2)) Then 


! Quartic 
unicpl1(1)=cplhhhhHmcHm(i1,i3,i4,i2)
amp = amp +(-2._dp)*(unicpl1(1))


! S-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,2
unicpl1(1)=cplhhHmcHm(i1,iprop,i2)
unicpl2(1)=cplhhHmcHm(i3,i4,iprop)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Schannel(m1,m2,m3,m4,MHm(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If (Abs(1-s/MHm(iProp)**2).lt.CutSpole) Then 
 Any_Pole_Present = .true. 
 Pole_Present = .true. 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! T-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhhhhh(i1,i3,iprop)
unicpl2(1)=cplhhHmcHm(iprop,i4,i2)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Tchannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckTpole(m1**2,m2**2,m3**2,m4**2,Mhh(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "T",m1,m2,m3,m4,Mhh(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! U-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,2
unicpl1(1)=cplhhHmcHm(i1,i4,iprop)
unicpl2(1)=cplhhHmcHm(i3,iprop,i2)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Uchannel(m1,m2,m3,m4,MHm(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckUpole(m1**2,m2**2,m3**2,m4**2,MHm(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "U",m1,m2,m3,m4,MHm(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 
End if 
amp = 0.5_dp*oo16pi*amp*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (TUcutLevel.eq.1) Then 
 amp_poles = 0.5_dp*oo16pi*amp_poles*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
  If ((Abs(amp_poles)/Abs(amp)).gt.cut_amplitudes) Then 
   ! Write(*,*) "TU ratio", (Abs(amp_poles)/Abs(amp))  
   If (Abs(amp).gt.max_element_removed) max_element_removed = Abs(amp) 
   amp = 0._dp 
  End if 
End if 
End Function a0_hhHmc_hhHm_00

Complex(dp) Function a0_HmHm_HmcHmc_00(s,i1,i2,i3,i4,ind1,ind2)  Result(amp)
Implicit None 
Integer, Intent(in) :: i1,i2,i3,i4,ind1,ind2 
Real(dp), Intent(in) :: s 
Integer :: iprop, istart,c1,c2,c2end 
Logical :: pole_s_channel=.False. 
Real(dp) :: m1,m2,m3,m4 
Complex(dp) :: tempamp2(1,1) 
Complex(dp) :: amp_poles 
Complex(dp) :: unicpl1(8),unicpl2(8) 
amp = 0._dp 
tempamp2(:,:) = 0._dp 
amp_poles = 0._dp 
m1 = MHm(i1)
m2 = MHm(i2)
m3 = MHm(i3)
m4 = MHm(i4)
If ((s.gt.1.01_dp*(m3+m4)**2).and.(s.gt.1.01_dp*(m1+m2)**2)) Then 


! Quartic 
unicpl1(1)=cplHmHmcHmcHm(i1,i2,i3,i4)
amp = amp +(-2._dp)*(unicpl1(1))


! S-Channel 


! T-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhHmcHm(iprop,i1,i3)
unicpl2(1)=cplhhHmcHm(iprop,i2,i4)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Tchannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckTpole(m1**2,m2**2,m3**2,m4**2,Mhh(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "T",m1,m2,m3,m4,Mhh(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! U-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhHmcHm(iprop,i1,i4)
unicpl2(1)=cplhhHmcHm(iprop,i2,i3)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Uchannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckUpole(m1**2,m2**2,m3**2,m4**2,Mhh(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "U",m1,m2,m3,m4,Mhh(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 
End if 
amp = 0.5_dp*oo16pi*amp*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (i1.eq.i2) amp=amp/sqrt(2._dp) 
If (i3.eq.i4) amp=amp/sqrt(2._dp) 
If (TUcutLevel.eq.1) Then 
 amp_poles = 0.5_dp*oo16pi*amp_poles*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (i1.eq.i2) amp_poles=amp_poles/sqrt(2._dp) 
If (i3.eq.i4) amp_poles=amp_poles/sqrt(2._dp) 
  If ((Abs(amp_poles)/Abs(amp)).gt.cut_amplitudes) Then 
   ! Write(*,*) "TU ratio", (Abs(amp_poles)/Abs(amp))  
   If (Abs(amp).gt.max_element_removed) max_element_removed = Abs(amp) 
   amp = 0._dp 
  End if 
End if 
End Function a0_HmHm_HmcHmc_00

Complex(dp) Function a0_HmHmc_hhhh_00(s,i1,i2,i3,i4,ind1,ind2)  Result(amp)
Implicit None 
Integer, Intent(in) :: i1,i2,i3,i4,ind1,ind2 
Real(dp), Intent(in) :: s 
Integer :: iprop, istart,c1,c2,c2end 
Logical :: pole_s_channel=.False. 
Real(dp) :: m1,m2,m3,m4 
Complex(dp) :: tempamp2(1,1) 
Complex(dp) :: amp_poles 
Complex(dp) :: unicpl1(8),unicpl2(8) 
amp = 0._dp 
tempamp2(:,:) = 0._dp 
amp_poles = 0._dp 
m1 = MHm(i1)
m2 = MHm(i2)
m3 = Mhh(i3)
m4 = Mhh(i4)
If ((s.gt.1.01_dp*(m3+m4)**2).and.(s.gt.1.01_dp*(m1+m2)**2)) Then 


! Quartic 
unicpl1(1)=cplhhhhHmcHm(i3,i4,i1,i2)
amp = amp +(-2._dp)*(unicpl1(1))


! S-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhHmcHm(iprop,i1,i2)
unicpl2(1)=cplhhhhhh(i3,i4,iprop)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Schannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If (Abs(1-s/Mhh(iProp)**2).lt.CutSpole) Then 
 Any_Pole_Present = .true. 
 Pole_Present = .true. 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! T-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,2
unicpl1(1)=cplhhHmcHm(i3,i1,iprop)
unicpl2(1)=cplhhHmcHm(i4,iprop,i2)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Tchannel(m1,m2,m3,m4,MHm(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckTpole(m1**2,m2**2,m3**2,m4**2,MHm(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "T",m1,m2,m3,m4,MHm(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! U-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,2
unicpl1(1)=cplhhHmcHm(i4,i1,iprop)
unicpl2(1)=cplhhHmcHm(i3,iprop,i2)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Uchannel(m1,m2,m3,m4,MHm(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckUpole(m1**2,m2**2,m3**2,m4**2,MHm(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "U",m1,m2,m3,m4,MHm(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 
End if 
amp = 0.5_dp*oo16pi*amp*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (i3.eq.i4) amp=amp/sqrt(2._dp) 
If (TUcutLevel.eq.1) Then 
 amp_poles = 0.5_dp*oo16pi*amp_poles*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (i3.eq.i4) amp_poles=amp_poles/sqrt(2._dp) 
  If ((Abs(amp_poles)/Abs(amp)).gt.cut_amplitudes) Then 
   ! Write(*,*) "TU ratio", (Abs(amp_poles)/Abs(amp))  
   If (Abs(amp).gt.max_element_removed) max_element_removed = Abs(amp) 
   amp = 0._dp 
  End if 
End if 
End Function a0_HmHmc_hhhh_00

Complex(dp) Function a0_HmHmc_HmHmc_00(s,i1,i2,i3,i4,ind1,ind2)  Result(amp)
Implicit None 
Integer, Intent(in) :: i1,i2,i3,i4,ind1,ind2 
Real(dp), Intent(in) :: s 
Integer :: iprop, istart,c1,c2,c2end 
Logical :: pole_s_channel=.False. 
Real(dp) :: m1,m2,m3,m4 
Complex(dp) :: tempamp2(1,1) 
Complex(dp) :: amp_poles 
Complex(dp) :: unicpl1(8),unicpl2(8) 
amp = 0._dp 
tempamp2(:,:) = 0._dp 
amp_poles = 0._dp 
m1 = MHm(i1)
m2 = MHm(i2)
m3 = MHm(i3)
m4 = MHm(i4)
If ((s.gt.1.01_dp*(m3+m4)**2).and.(s.gt.1.01_dp*(m1+m2)**2)) Then 


! Quartic 
unicpl1(1)=cplHmHmcHmcHm(i1,i3,i2,i4)
amp = amp +(-2._dp)*(unicpl1(1))


! S-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhHmcHm(iprop,i1,i2)
unicpl2(1)=cplhhHmcHm(iprop,i3,i4)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Schannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If (Abs(1-s/Mhh(iProp)**2).lt.CutSpole) Then 
 Any_Pole_Present = .true. 
 Pole_Present = .true. 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! T-Channel 


! U-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhHmcHm(iprop,i1,i4)
unicpl2(1)=cplhhHmcHm(iprop,i3,i2)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Uchannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckUpole(m1**2,m2**2,m3**2,m4**2,Mhh(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "U",m1,m2,m3,m4,Mhh(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 
End if 
amp = 0.5_dp*oo16pi*amp*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (TUcutLevel.eq.1) Then 
 amp_poles = 0.5_dp*oo16pi*amp_poles*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
  If ((Abs(amp_poles)/Abs(amp)).gt.cut_amplitudes) Then 
   ! Write(*,*) "TU ratio", (Abs(amp_poles)/Abs(amp))  
   If (Abs(amp).gt.max_element_removed) max_element_removed = Abs(amp) 
   amp = 0._dp 
  End if 
End if 
End Function a0_HmHmc_HmHmc_00

Complex(dp) Function a0_HmcHmc_HmHm_00(s,i1,i2,i3,i4,ind1,ind2)  Result(amp)
Implicit None 
Integer, Intent(in) :: i1,i2,i3,i4,ind1,ind2 
Real(dp), Intent(in) :: s 
Integer :: iprop, istart,c1,c2,c2end 
Logical :: pole_s_channel=.False. 
Real(dp) :: m1,m2,m3,m4 
Complex(dp) :: tempamp2(1,1) 
Complex(dp) :: amp_poles 
Complex(dp) :: unicpl1(8),unicpl2(8) 
amp = 0._dp 
tempamp2(:,:) = 0._dp 
amp_poles = 0._dp 
m1 = MHm(i1)
m2 = MHm(i2)
m3 = MHm(i3)
m4 = MHm(i4)
If ((s.gt.1.01_dp*(m3+m4)**2).and.(s.gt.1.01_dp*(m1+m2)**2)) Then 


! Quartic 
unicpl1(1)=cplHmHmcHmcHm(i3,i4,i1,i2)
amp = amp +(-2._dp)*(unicpl1(1))


! S-Channel 


! T-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhHmcHm(iprop,i3,i1)
unicpl2(1)=cplhhHmcHm(iprop,i4,i2)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Tchannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckTpole(m1**2,m2**2,m3**2,m4**2,Mhh(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "T",m1,m2,m3,m4,Mhh(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 


! U-Channel 
istart=1
If (.not.IncludeGoldstoneContributions) istart=2
Do iprop=istart,6
unicpl1(1)=cplhhHmcHm(iprop,i4,i1)
unicpl2(1)=cplhhHmcHm(iprop,i3,i2)
tempamp2(1,1)= unicpl1(1)*unicpl2(1)*Uchannel(m1,m2,m3,m4,Mhh(iProp),s,(1._dp,0._dp),(1._dp,0._dp)) 
If  (((s.lt.(CheckUpole(m1**2,m2**2,m3**2,m4**2,Mhh(iProp)**2)))).and.(maxval(Abs(tempamp2)).gt.1.0E-10_dp)) Then 
! Write(*,*) "U",m1,m2,m3,m4,Mhh(iProp)  
Select Case (TUcutLevel) 
 Case (4) 
   Any_Pole_Present = .True. 
 Case (3) 
   Pole_Present = .True. 
 Case (2) 
  RemoveTUpoles(ind1) = 1 
  RemoveTUpoles(ind2) = 1 
 Case (1) 
  amp_poles  = 0._dp
 Case (0) 
  amp = amp + tempamp2(1,1)
End Select 
Else 
  amp = amp + tempamp2(1,1)
End if 
End Do 
End if 
amp = 0.5_dp*oo16pi*amp*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (i1.eq.i2) amp=amp/sqrt(2._dp) 
If (i3.eq.i4) amp=amp/sqrt(2._dp) 
If (TUcutLevel.eq.1) Then 
 amp_poles = 0.5_dp*oo16pi*amp_poles*sqrt(sqrt(Kaehler(s,m1**2,m2**2)*Kaehler(s,m3**2,m4**2)))/s 
If (i1.eq.i2) amp_poles=amp_poles/sqrt(2._dp) 
If (i3.eq.i4) amp_poles=amp_poles/sqrt(2._dp) 
  If ((Abs(amp_poles)/Abs(amp)).gt.cut_amplitudes) Then 
   ! Write(*,*) "TU ratio", (Abs(amp_poles)/Abs(amp))  
   If (Abs(amp).gt.max_element_removed) max_element_removed = Abs(amp) 
   amp = 0._dp 
  End if 
End if 
End Function a0_HmcHmc_HmHm_00

End Subroutine ScatteringEigenvaluesWithTrilinears

Complex(dp) Function Kaehler(a,b,c) 
Implicit None 
Real(dp),Intent(in)::a,b,c
Kaehler = a**2-2._dp*a*(b+c)+(b-c)**2 
End Function Kaehler 
  
Real(dp) Function CheckTpole(m1,m2,m3,m4,mP) 
Implicit None 
Real(dp),Intent(in)::m1,m2,m3,m4,mP
Complex(dp):: res
res = (m2*m3 - m3*m4 + m2*mP + m3*mP + m4*mP - mP**2 + m1*(-m2 + m4 + mP) + Sqrt(m1**2 + (m3 - mP)**2 &
  &  - 2*m1*(m3 + mP))*Sqrt(m2**2 + (m4 - mP)**2 - 2*m2*(m4 + mP)))/(2.*mP)
If (res.ne.res) res=0._dp 
If (Aimag(res).gt.1._dp) Then 
 CheckTpole = 0._dp 
Else 
 CheckTpole = Real(1.05_dp*res,dp) 
End If 
End Function CheckTpole 
 
Real(dp) Function CheckUpole(m1,m2,m3,m4,mP) 
Implicit None 
Real(dp),Intent(in)::m1,m2,m3,m4,mP
Complex(dp) :: res
res =(m2*m4-m3*m4+m2*mP+m3*mP+m4*mP-mP**2+m1*(-m2+m3+mP)+Sqrt(m2**2+(m3-mP)**2 &
  &-2*m2*(m3+mP))*Sqrt(m1**2+(m4-mP)**2-2*m1*(m4+mP)))/(2.*mP)
If (res.ne.res) res=0._dp 
If (Aimag(res).gt.1._dp) Then 
 CheckUpole = 0._dp 
Else 
 CheckUpole = Real(1.05_dp*res,dp) 
End If 
End Function CheckUpole 
 
Complex(dp) Function Schannel(m1,m2,m3,m4,mP,s,c1,c2) 
Implicit None 
Real(dp),Intent(in)::m1,m2,m3,m4,mP,s
Complex(dp),Intent(in)::c1,c2
Schannel = 2._dp/(-mP**2+s) 
Schannel = c1*c2*Schannel 
End Function Schannel 
 
Complex(dp) Function Uchannel(m1r,m2r,m3r,m4r,mPr,s,c1,c2) 
Implicit None 
Real(dp),Intent(in)::m1r,m2r,m3r,m4r,mPr,s
Complex(dp),Intent(in)::c1,c2
Complex(dp)::m1,m2,m3,m4,mP 
m1=Cmplx(m1r,0._dp)
m2=Cmplx(m2r,0._dp)
m3=Cmplx(m3r,0._dp)
m4=Cmplx(m4r,0._dp)
mP=Cmplx(mPr,0._dp)
Uchannel = (2*s*Log(-(((m1 - m2)*(m1 + m2)*(m3 - m4)*(m3 + m4) + (m1**2 + m2**2 + m3**2 + m4**2 - 2*mP**2)*s & 
  & - s**2 + Sqrt((m1**4 + (m2**2 - s)**2 - 2*m1**2*(m2**2 + s))*(m3**4 + (m4**2 - s)**2 - 2*m3**2*(m4**2 + s))))/& 
  &((-m1 + m2)*(m1 + m2)*(m3 - m4)*(m3 + m4) - (m1**2 + m2**2 + m3**2 + m4**2 - 2*mP**2)*s + s**2 + & 
  & Sqrt((m1**4 + (m2**2 - s)**2 - 2*m1**2*(m2**2 + s))*(m3**4 + (m4**2 - s)**2 - 2*m3**2*(m4**2 + s)))))))/& 
 &Sqrt((m1**4 + (m2**2 - s)**2 - 2*m1**2*(m2**2 + s))*(m3**4 + (m4**2 - s)**2 - 2*m3**2*(m4**2 + s))) 
Uchannel = c1*c2*Uchannel 
End Function Uchannel 
  
Complex(dp) Function Tchannel(m1r,m2r,m3r,m4r,mPr,s,c1,c2) 
Implicit None 
Real(dp),Intent(in)::m1r,m2r,m3r,m4r,mPr,s
Complex(dp),Intent(in)::c1,c2
Complex(dp)::m1,m2,m3,m4,mP 
m1=Cmplx(m1r,0._dp)
m2=Cmplx(m2r,0._dp)
m3=Cmplx(m3r,0._dp)
m4=Cmplx(m4r,0._dp)
mP=Cmplx(mPr,0._dp)
Tchannel =(2*s*Log(((m1-m2)*(m1+m2)*(m3-m4)*(m3+m4)-(m1**2+m2**2+m3**2+m4**2-2*mP**2)*s+s**2& 
  & -Sqrt((m1**4+(m2**2-s)**2-2*m1**2*(m2**2+s))*(m3**4+(m4**2-s)**2-2*m3**2*(m4**2+s))))/& 
  & ((m1-m2)*(m1+m2)*(m3-m4)*(m3+m4)-(m1**2+m2**2+m3**2+m4**2-2*mP**2)*s+s**2+Sqrt((m1**4+(m2**2-s)**2& 
  & -2*m1**2*(m2**2+s))*(m3**4+(m4**2-s)**2-2*m3**2*(m4**2+s))))))/& 
  & Sqrt((m1**4+(m2**2-s)**2-2*m1**2*(m2**2+s))*(m3**4+(m4**2-s)**2-2*m3**2*(m4**2+s))) 
Tchannel = c1*c2*Tchannel 
End Function Tchannel 
  
End Module Unitarity_2HDMSCPV 
