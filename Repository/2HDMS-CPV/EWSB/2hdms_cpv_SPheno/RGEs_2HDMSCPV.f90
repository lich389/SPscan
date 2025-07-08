! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.1 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 13:04 on 9.6.2025   
! ----------------------------------------------------------------------  
 
 
Module RGEs_2HDMSCPV 
 
Use Control 
Use Settings 
Use Model_Data_2HDMSCPV 
Use Mathematics 
 
Logical,Private,Save::OnlyDiagonal

Real(dp),Parameter::id3R(3,3)=& 
   & Reshape(Source=(/& 
   & 1,0,0,& 
 &0,1,0,& 
 &0,0,1& 
 &/),shape=(/3,3/)) 
Contains 


Subroutine GToParameters157(g,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,            & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2)

Implicit None 
Real(dp), Intent(in) :: g(157) 
Real(dp),Intent(out) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp),Intent(out) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'GToParameters157' 
 
g1= g(1) 
g2= g(2) 
g3= g(3) 
Lam6= Cmplx(g(4),g(5),dp) 
Lam5= Cmplx(g(6),g(7),dp) 
Lam7= Cmplx(g(8),g(9),dp) 
Lam1= g(10) 
Lam4= g(11) 
Lam3= g(12) 
Lam2= g(13) 
Lam1p= g(14) 
Lam2p= g(15) 
L3pp= g(16) 
L1pp= Cmplx(g(17),g(18),dp) 
Lam4p= Cmplx(g(19),g(20),dp) 
Lam6p= Cmplx(g(21),g(22),dp) 
Lam7p= Cmplx(g(23),g(24),dp) 
Lam5p= Cmplx(g(25),g(26),dp) 
L2pp= Cmplx(g(27),g(28),dp) 
Lam3p= Cmplx(g(29),g(30),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yu(i1,i2) = Cmplx( g(SumI+31), g(SumI+32), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsU(i1,i2) = Cmplx( g(SumI+49), g(SumI+50), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yd(i1,i2) = Cmplx( g(SumI+67), g(SumI+68), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Ye(i1,i2) = Cmplx( g(SumI+85), g(SumI+86), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsD(i1,i2) = Cmplx( g(SumI+103), g(SumI+104), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsE(i1,i2) = Cmplx( g(SumI+121), g(SumI+122), dp) 
End Do 
 End Do 
 
mus1= Cmplx(g(139),g(140),dp) 
mu11= Cmplx(g(141),g(142),dp) 
mu12= Cmplx(g(143),g(144),dp) 
mu21= Cmplx(g(145),g(146),dp) 
mu22= Cmplx(g(147),g(148),dp) 
mus2= Cmplx(g(149),g(150),dp) 
M122= Cmplx(g(151),g(152),dp) 
M112= g(153) 
M222= g(154) 
mS2= g(155) 
mSp2= Cmplx(g(156),g(157),dp) 
Do i1=1,157 
If (g(i1).ne.g(i1)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Write(*,*) "At position ", i1 
 Call TerminateProgram 
End if 
End do 
Iname = Iname - 1 
 
End Subroutine GToParameters157

Subroutine ParametersToG157(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,              & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,g)

Implicit None 
Real(dp), Intent(out) :: g(157) 
Real(dp), Intent(in) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp), Intent(in) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'ParametersToG157' 
 
g(1) = g1  
g(2) = g2  
g(3) = g3  
g(4) = Real(Lam6,dp)  
g(5) = Aimag(Lam6)  
g(6) = Real(Lam5,dp)  
g(7) = Aimag(Lam5)  
g(8) = Real(Lam7,dp)  
g(9) = Aimag(Lam7)  
g(10) = Lam1  
g(11) = Lam4  
g(12) = Lam3  
g(13) = Lam2  
g(14) = Lam1p  
g(15) = Lam2p  
g(16) = L3pp  
g(17) = Real(L1pp,dp)  
g(18) = Aimag(L1pp)  
g(19) = Real(Lam4p,dp)  
g(20) = Aimag(Lam4p)  
g(21) = Real(Lam6p,dp)  
g(22) = Aimag(Lam6p)  
g(23) = Real(Lam7p,dp)  
g(24) = Aimag(Lam7p)  
g(25) = Real(Lam5p,dp)  
g(26) = Aimag(Lam5p)  
g(27) = Real(L2pp,dp)  
g(28) = Aimag(L2pp)  
g(29) = Real(Lam3p,dp)  
g(30) = Aimag(Lam3p)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+31) = Real(Yu(i1,i2), dp) 
g(SumI+32) = Aimag(Yu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+49) = Real(epsU(i1,i2), dp) 
g(SumI+50) = Aimag(epsU(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+67) = Real(Yd(i1,i2), dp) 
g(SumI+68) = Aimag(Yd(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+85) = Real(Ye(i1,i2), dp) 
g(SumI+86) = Aimag(Ye(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+103) = Real(epsD(i1,i2), dp) 
g(SumI+104) = Aimag(epsD(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+121) = Real(epsE(i1,i2), dp) 
g(SumI+122) = Aimag(epsE(i1,i2)) 
End Do 
End Do 

g(139) = Real(mus1,dp)  
g(140) = Aimag(mus1)  
g(141) = Real(mu11,dp)  
g(142) = Aimag(mu11)  
g(143) = Real(mu12,dp)  
g(144) = Aimag(mu12)  
g(145) = Real(mu21,dp)  
g(146) = Aimag(mu21)  
g(147) = Real(mu22,dp)  
g(148) = Aimag(mu22)  
g(149) = Real(mus2,dp)  
g(150) = Aimag(mus2)  
g(151) = Real(M122,dp)  
g(152) = Aimag(M122)  
g(153) = M112  
g(154) = M222  
g(155) = mS2  
g(156) = Real(mSp2,dp)  
g(157) = Aimag(mSp2)  
Iname = Iname - 1 
 
End Subroutine ParametersToG157

Subroutine rge157(len, T, GY, F) 
Implicit None 
Integer, Intent(in) :: len 
Real(dp), Intent(in) :: T, GY(len) 
Real(dp), Intent(out) :: F(len) 
Integer :: i1,i2,i3,i4 
Integer :: j1,j2,j3,j4,j5,j6,j7 
Real(dp) :: q 
Real(dp) :: g1,betag11,betag12,Dg1,g2,betag21,betag22,Dg2,g3,betag31,betag32,         & 
& Dg3,Lam1,betaLam11,betaLam12,DLam1,Lam4,betaLam41,betaLam42,DLam4,Lam3,betaLam31,      & 
& betaLam32,DLam3,Lam2,betaLam21,betaLam22,DLam2,Lam1p,betaLam1p1,betaLam1p2,            & 
& DLam1p,Lam2p,betaLam2p1,betaLam2p2,DLam2p,L3pp,betaL3pp1,betaL3pp2,DL3pp,              & 
& M112,betaM1121,betaM1122,DM112,M222,betaM2221,betaM2222,DM222,mS2,betamS21,            & 
& betamS22,DmS2
Complex(dp) :: Lam6,betaLam61,betaLam62,DLam6,Lam5,betaLam51,betaLam52,               & 
& DLam5,Lam7,betaLam71,betaLam72,DLam7,L1pp,betaL1pp1,betaL1pp2,DL1pp,Lam4p,             & 
& betaLam4p1,betaLam4p2,DLam4p,Lam6p,betaLam6p1,betaLam6p2,DLam6p,Lam7p,betaLam7p1,      & 
& betaLam7p2,DLam7p,Lam5p,betaLam5p1,betaLam5p2,DLam5p,L2pp,betaL2pp1,betaL2pp2,         & 
& DL2pp,Lam3p,betaLam3p1,betaLam3p2,DLam3p,Yu(3,3),betaYu1(3,3),betaYu2(3,3)             & 
& ,DYu(3,3),adjYu(3,3),epsU(3,3),betaepsU1(3,3),betaepsU2(3,3),DepsU(3,3),               & 
& adjepsU(3,3),Yd(3,3),betaYd1(3,3),betaYd2(3,3),DYd(3,3),adjYd(3,3),Ye(3,3)             & 
& ,betaYe1(3,3),betaYe2(3,3),DYe(3,3),adjYe(3,3),epsD(3,3),betaepsD1(3,3),               & 
& betaepsD2(3,3),DepsD(3,3),adjepsD(3,3),epsE(3,3),betaepsE1(3,3),betaepsE2(3,3)         & 
& ,DepsE(3,3),adjepsE(3,3),mus1,betamus11,betamus12,Dmus1,mu11,betamu111,betamu112,      & 
& Dmu11,mu12,betamu121,betamu122,Dmu12,mu21,betamu211,betamu212,Dmu21,mu22,              & 
& betamu221,betamu222,Dmu22,mus2,betamus21,betamus22,Dmus2,M122,betaM1221,               & 
& betaM1222,DM122,mSp2,betamSp21,betamSp22,DmSp2
Real(dp) :: AbsLam6,AbsLam5,AbsLam7,AbsL1pp,AbsLam4p,AbsLam6p,AbsLam7p,               & 
& AbsLam5p,AbsL2pp,AbsLam3p,Absmus1,Absmu11,Absmu12,Absmu21,Absmu22,Absmus2
Complex(dp) :: epsDadjepsD(3,3),epsDadjYd(3,3),epsEadjepsE(3,3),epsEadjYe(3,3),epsUadjepsU(3,3),     & 
& epsUadjYd(3,3),epsUadjYu(3,3),YdadjepsD(3,3),YdadjepsU(3,3),YdadjYd(3,3),              & 
& YeadjepsE(3,3),YeadjYe(3,3),YuadjepsD(3,3),YuadjepsU(3,3),YuadjYu(3,3),adjepsDepsD(3,3),& 
& adjepsDYd(3,3),adjepsEepsE(3,3),adjepsEYe(3,3),adjepsUepsU(3,3),adjepsUYu(3,3),        & 
& adjYdepsD(3,3),adjYdYd(3,3),adjYeepsE(3,3),adjYeYe(3,3),adjYuepsU(3,3),adjYuYu(3,3),   & 
& epsDadjepsDepsD(3,3),epsDadjepsDYd(3,3),epsDadjepsUepsU(3,3),epsDadjYdYd(3,3),         & 
& epsDadjYuepsU(3,3),epsDadjYuYu(3,3),epsEadjepsEepsE(3,3),epsEadjepsEYe(3,3),           & 
& epsEadjYeYe(3,3),epsUadjepsDepsD(3,3),epsUadjepsUepsU(3,3),epsUadjepsUYu(3,3),         & 
& epsUadjYdepsD(3,3),epsUadjYdYd(3,3),epsUadjYuYu(3,3),YdadjepsDepsD(3,3),               & 
& YdadjepsUepsU(3,3),YdadjepsUYu(3,3),YdadjYdepsD(3,3),YdadjYdYd(3,3),YdadjYuYu(3,3),    & 
& YeadjepsEepsE(3,3),YeadjYeepsE(3,3),YeadjYeYe(3,3),YuadjepsDepsD(3,3),YuadjepsDYd(3,3),& 
& YuadjepsUepsU(3,3),YuadjYdYd(3,3),YuadjYuepsU(3,3),YuadjYuYu(3,3),adjepsDepsDadjepsD(3,3),& 
& adjepsDYdadjepsD(3,3),adjepsDYdadjYd(3,3),adjepsEepsEadjepsE(3,3),adjepsEYeadjepsE(3,3),& 
& adjepsEYeadjYe(3,3),adjepsUepsUadjepsU(3,3),adjepsUepsUadjYu(3,3),adjepsUYuadjepsD(3,3),& 
& adjepsUYuadjYu(3,3),adjYdYdadjepsD(3,3),adjYdYdadjepsU(3,3),adjYdYdadjYd(3,3),         & 
& adjYeYeadjepsE(3,3),adjYeYeadjYe(3,3),adjYuepsUadjepsU(3,3),adjYuepsUadjYd(3,3),       & 
& adjYuepsUadjYu(3,3),adjYuYuadjepsD(3,3),adjYuYuadjepsU(3,3),adjYuYuadjYu(3,3),         & 
& epsDadjepsDepsDadjepsD(3,3),epsDadjepsDYdadjepsD(3,3),epsDadjepsDYdadjYd(3,3),         & 
& epsDadjYdYdadjepsD(3,3),epsDadjYuepsUadjYd(3,3),epsDadjYuYuadjepsD(3,3),               & 
& epsEadjepsEepsEadjepsE(3,3),epsEadjepsEYeadjepsE(3,3),epsEadjepsEYeadjYe(3,3),         & 
& epsEadjYeYeadjepsE(3,3),epsUadjepsUepsUadjepsU(3,3),epsUadjepsUepsUadjYu(3,3),         & 
& epsUadjepsUYuadjYu(3,3),epsUadjYdYdadjepsU(3,3),epsUadjYuepsUadjepsU(3,3),             & 
& epsUadjYuepsUadjYu(3,3),epsUadjYuYuadjepsU(3,3),epsUadjYuYuadjYu(3,3),YdadjepsDYdadjepsD(3,3),& 
& YdadjepsDYdadjYd(3,3),YdadjepsUYuadjepsD(3,3),YdadjYdYdadjepsD(3,3),YdadjYdYdadjYd(3,3),& 
& YeadjepsEYeadjepsE(3,3),YeadjepsEYeadjYe(3,3),YeadjYeYeadjepsE(3,3),YeadjYeYeadjYe(3,3),& 
& YuadjYuYuadjYu(3,3)

Complex(dp) :: TrepsDadjepsD,TrepsDadjYd,TrepsEadjepsE,TrepsEadjYe,TrepsUadjepsU,TrepsUadjYu,        & 
& TrYdadjepsD,TrYdadjYd,TrYeadjepsE,TrYeadjYe,TrYuadjepsU,TrYuadjYu,TrepsDadjepsDepsDadjepsD,& 
& TrepsDadjepsDYdadjepsD,TrepsDadjepsDYdadjYd,TrepsDadjYdYdadjepsD,TrepsDadjYuepsUadjYd, & 
& TrepsDadjYuYuadjepsD,TrepsEadjepsEepsEadjepsE,TrepsEadjepsEYeadjepsE,TrepsEadjepsEYeadjYe,& 
& TrepsEadjYeYeadjepsE,TrepsUadjepsUepsUadjepsU,TrepsUadjepsUepsUadjYu,TrepsUadjepsUYuadjYu,& 
& TrepsUadjYdYdadjepsU,TrepsUadjYuepsUadjepsU,TrepsUadjYuepsUadjYu,TrepsUadjYuYuadjepsU, & 
& TrepsUadjYuYuadjYu,TrYdadjepsDYdadjepsD,TrYdadjepsDYdadjYd,TrYdadjepsUYuadjepsD,       & 
& TrYdadjYdYdadjepsD,TrYdadjYdYdadjYd,TrYeadjepsEYeadjepsE,TrYeadjepsEYeadjYe,           & 
& TrYeadjYeYeadjepsE,TrYeadjYeYeadjYe,TrYuadjYuYuadjYu

Real(dp) :: g1p2,g1p3,g1p4,g2p2,g2p3,g2p4,g3p2,g3p3,Lam1p2,Lam1pp2,Lam2p2,Lam2pp2,Lam3p2,         & 
& L3ppp2,Lam4p2

Complex(dp) :: L2ppp2,Lam3pp2,Lam4pp2,Lam5pp2,Lam6p2,Lam7p2,mu11p2,mu22p2,mus2p2

Iname = Iname +1 
NameOfUnit(Iname) = 'rge157' 
 
OnlyDiagonal = .Not.GenerationMixing 
q = t 
 
Call GToParameters157(gy,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,           & 
& Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,            & 
& mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2)

AbsLam6 = Conjg(Lam6)*Lam6
AbsLam5 = Conjg(Lam5)*Lam5
AbsLam7 = Conjg(Lam7)*Lam7
AbsL1pp = Conjg(L1pp)*L1pp
AbsLam4p = Conjg(Lam4p)*Lam4p
AbsLam6p = Conjg(Lam6p)*Lam6p
AbsLam7p = Conjg(Lam7p)*Lam7p
AbsLam5p = Conjg(Lam5p)*Lam5p
AbsL2pp = Conjg(L2pp)*L2pp
AbsLam3p = Conjg(Lam3p)*Lam3p
Absmus1 = Conjg(mus1)*mus1
Absmu11 = Conjg(mu11)*mu11
Absmu12 = Conjg(mu12)*mu12
Absmu21 = Conjg(mu21)*mu21
Absmu22 = Conjg(mu22)*mu22
Absmus2 = Conjg(mus2)*mus2
Call Adjungate(Yu,adjYu)
Call Adjungate(epsU,adjepsU)
Call Adjungate(Yd,adjYd)
Call Adjungate(Ye,adjYe)
Call Adjungate(epsD,adjepsD)
Call Adjungate(epsE,adjepsE)
 epsDadjepsD = Matmul(epsD,adjepsD) 
Forall(i2=1:3)  epsDadjepsD(i2,i2) =  Real(epsDadjepsD(i2,i2),dp) 
 epsDadjYd = Matmul(epsD,adjYd) 
 epsEadjepsE = Matmul(epsE,adjepsE) 
Forall(i2=1:3)  epsEadjepsE(i2,i2) =  Real(epsEadjepsE(i2,i2),dp) 
 epsEadjYe = Matmul(epsE,adjYe) 
 epsUadjepsU = Matmul(epsU,adjepsU) 
Forall(i2=1:3)  epsUadjepsU(i2,i2) =  Real(epsUadjepsU(i2,i2),dp) 
 epsUadjYd = Matmul(epsU,adjYd) 
 epsUadjYu = Matmul(epsU,adjYu) 
 YdadjepsD = Matmul(Yd,adjepsD) 
 YdadjepsU = Matmul(Yd,adjepsU) 
 YdadjYd = Matmul(Yd,adjYd) 
Forall(i2=1:3)  YdadjYd(i2,i2) =  Real(YdadjYd(i2,i2),dp) 
 YeadjepsE = Matmul(Ye,adjepsE) 
 YeadjYe = Matmul(Ye,adjYe) 
Forall(i2=1:3)  YeadjYe(i2,i2) =  Real(YeadjYe(i2,i2),dp) 
 YuadjepsD = Matmul(Yu,adjepsD) 
 YuadjepsU = Matmul(Yu,adjepsU) 
 YuadjYu = Matmul(Yu,adjYu) 
Forall(i2=1:3)  YuadjYu(i2,i2) =  Real(YuadjYu(i2,i2),dp) 
 adjepsDepsD = Matmul(adjepsD,epsD) 
Forall(i2=1:3)  adjepsDepsD(i2,i2) =  Real(adjepsDepsD(i2,i2),dp) 
 adjepsDYd = Matmul(adjepsD,Yd) 
 adjepsEepsE = Matmul(adjepsE,epsE) 
Forall(i2=1:3)  adjepsEepsE(i2,i2) =  Real(adjepsEepsE(i2,i2),dp) 
 adjepsEYe = Matmul(adjepsE,Ye) 
 adjepsUepsU = Matmul(adjepsU,epsU) 
Forall(i2=1:3)  adjepsUepsU(i2,i2) =  Real(adjepsUepsU(i2,i2),dp) 
 adjepsUYu = Matmul(adjepsU,Yu) 
 adjYdepsD = Matmul(adjYd,epsD) 
 adjYdYd = Matmul(adjYd,Yd) 
Forall(i2=1:3)  adjYdYd(i2,i2) =  Real(adjYdYd(i2,i2),dp) 
 adjYeepsE = Matmul(adjYe,epsE) 
 adjYeYe = Matmul(adjYe,Ye) 
Forall(i2=1:3)  adjYeYe(i2,i2) =  Real(adjYeYe(i2,i2),dp) 
 adjYuepsU = Matmul(adjYu,epsU) 
 adjYuYu = Matmul(adjYu,Yu) 
Forall(i2=1:3)  adjYuYu(i2,i2) =  Real(adjYuYu(i2,i2),dp) 
 epsDadjepsDepsD = Matmul(epsD,adjepsDepsD) 
 epsDadjepsDYd = Matmul(epsD,adjepsDYd) 
 epsDadjepsUepsU = Matmul(epsD,adjepsUepsU) 
 epsDadjYdYd = Matmul(epsD,adjYdYd) 
 epsDadjYuepsU = Matmul(epsD,adjYuepsU) 
 epsDadjYuYu = Matmul(epsD,adjYuYu) 
 epsEadjepsEepsE = Matmul(epsE,adjepsEepsE) 
 epsEadjepsEYe = Matmul(epsE,adjepsEYe) 
 epsEadjYeYe = Matmul(epsE,adjYeYe) 
 epsUadjepsDepsD = Matmul(epsU,adjepsDepsD) 
 epsUadjepsUepsU = Matmul(epsU,adjepsUepsU) 
 epsUadjepsUYu = Matmul(epsU,adjepsUYu) 
 epsUadjYdepsD = Matmul(epsU,adjYdepsD) 
 epsUadjYdYd = Matmul(epsU,adjYdYd) 
 epsUadjYuYu = Matmul(epsU,adjYuYu) 
 YdadjepsDepsD = Matmul(Yd,adjepsDepsD) 
 YdadjepsUepsU = Matmul(Yd,adjepsUepsU) 
 YdadjepsUYu = Matmul(Yd,adjepsUYu) 
 YdadjYdepsD = Matmul(Yd,adjYdepsD) 
 YdadjYdYd = Matmul(Yd,adjYdYd) 
 YdadjYuYu = Matmul(Yd,adjYuYu) 
 YeadjepsEepsE = Matmul(Ye,adjepsEepsE) 
 YeadjYeepsE = Matmul(Ye,adjYeepsE) 
 YeadjYeYe = Matmul(Ye,adjYeYe) 
 YuadjepsDepsD = Matmul(Yu,adjepsDepsD) 
 YuadjepsDYd = Matmul(Yu,adjepsDYd) 
 YuadjepsUepsU = Matmul(Yu,adjepsUepsU) 
 YuadjYdYd = Matmul(Yu,adjYdYd) 
 YuadjYuepsU = Matmul(Yu,adjYuepsU) 
 YuadjYuYu = Matmul(Yu,adjYuYu) 
 adjepsDepsDadjepsD = Matmul(adjepsD,epsDadjepsD) 
 adjepsDYdadjepsD = Matmul(adjepsD,YdadjepsD) 
 adjepsDYdadjYd = Matmul(adjepsD,YdadjYd) 
 adjepsEepsEadjepsE = Matmul(adjepsE,epsEadjepsE) 
 adjepsEYeadjepsE = Matmul(adjepsE,YeadjepsE) 
 adjepsEYeadjYe = Matmul(adjepsE,YeadjYe) 
 adjepsUepsUadjepsU = Matmul(adjepsU,epsUadjepsU) 
 adjepsUepsUadjYu = Matmul(adjepsU,epsUadjYu) 
 adjepsUYuadjepsD = Matmul(adjepsU,YuadjepsD) 
 adjepsUYuadjYu = Matmul(adjepsU,YuadjYu) 
 adjYdYdadjepsD = Matmul(adjYd,YdadjepsD) 
 adjYdYdadjepsU = Matmul(adjYd,YdadjepsU) 
 adjYdYdadjYd = Matmul(adjYd,YdadjYd) 
 adjYeYeadjepsE = Matmul(adjYe,YeadjepsE) 
 adjYeYeadjYe = Matmul(adjYe,YeadjYe) 
 adjYuepsUadjepsU = Matmul(adjYu,epsUadjepsU) 
 adjYuepsUadjYd = Matmul(adjYu,epsUadjYd) 
 adjYuepsUadjYu = Matmul(adjYu,epsUadjYu) 
 adjYuYuadjepsD = Matmul(adjYu,YuadjepsD) 
 adjYuYuadjepsU = Matmul(adjYu,YuadjepsU) 
 adjYuYuadjYu = Matmul(adjYu,YuadjYu) 
 epsDadjepsDepsDadjepsD = Matmul(epsD,adjepsDepsDadjepsD) 
Forall(i2=1:3)  epsDadjepsDepsDadjepsD(i2,i2) =  Real(epsDadjepsDepsDadjepsD(i2,i2),dp) 
 epsDadjepsDYdadjepsD = Matmul(epsD,adjepsDYdadjepsD) 
 epsDadjepsDYdadjYd = Matmul(epsD,adjepsDYdadjYd) 
 epsDadjYdYdadjepsD = Matmul(epsD,adjYdYdadjepsD) 
Forall(i2=1:3)  epsDadjYdYdadjepsD(i2,i2) =  Real(epsDadjYdYdadjepsD(i2,i2),dp) 
 epsDadjYuepsUadjYd = Matmul(epsD,adjYuepsUadjYd) 
 epsDadjYuYuadjepsD = Matmul(epsD,adjYuYuadjepsD) 
Forall(i2=1:3)  epsDadjYuYuadjepsD(i2,i2) =  Real(epsDadjYuYuadjepsD(i2,i2),dp) 
 epsEadjepsEepsEadjepsE = Matmul(epsE,adjepsEepsEadjepsE) 
Forall(i2=1:3)  epsEadjepsEepsEadjepsE(i2,i2) =  Real(epsEadjepsEepsEadjepsE(i2,i2),dp) 
 epsEadjepsEYeadjepsE = Matmul(epsE,adjepsEYeadjepsE) 
 epsEadjepsEYeadjYe = Matmul(epsE,adjepsEYeadjYe) 
 epsEadjYeYeadjepsE = Matmul(epsE,adjYeYeadjepsE) 
Forall(i2=1:3)  epsEadjYeYeadjepsE(i2,i2) =  Real(epsEadjYeYeadjepsE(i2,i2),dp) 
 epsUadjepsUepsUadjepsU = Matmul(epsU,adjepsUepsUadjepsU) 
Forall(i2=1:3)  epsUadjepsUepsUadjepsU(i2,i2) =  Real(epsUadjepsUepsUadjepsU(i2,i2),dp) 
 epsUadjepsUepsUadjYu = Matmul(epsU,adjepsUepsUadjYu) 
 epsUadjepsUYuadjYu = Matmul(epsU,adjepsUYuadjYu) 
 epsUadjYdYdadjepsU = Matmul(epsU,adjYdYdadjepsU) 
Forall(i2=1:3)  epsUadjYdYdadjepsU(i2,i2) =  Real(epsUadjYdYdadjepsU(i2,i2),dp) 
 epsUadjYuepsUadjepsU = Matmul(epsU,adjYuepsUadjepsU) 
 epsUadjYuepsUadjYu = Matmul(epsU,adjYuepsUadjYu) 
 epsUadjYuYuadjepsU = Matmul(epsU,adjYuYuadjepsU) 
Forall(i2=1:3)  epsUadjYuYuadjepsU(i2,i2) =  Real(epsUadjYuYuadjepsU(i2,i2),dp) 
 epsUadjYuYuadjYu = Matmul(epsU,adjYuYuadjYu) 
 YdadjepsDYdadjepsD = Matmul(Yd,adjepsDYdadjepsD) 
 YdadjepsDYdadjYd = Matmul(Yd,adjepsDYdadjYd) 
 YdadjepsUYuadjepsD = Matmul(Yd,adjepsUYuadjepsD) 
 YdadjYdYdadjepsD = Matmul(Yd,adjYdYdadjepsD) 
 YdadjYdYdadjYd = Matmul(Yd,adjYdYdadjYd) 
Forall(i2=1:3)  YdadjYdYdadjYd(i2,i2) =  Real(YdadjYdYdadjYd(i2,i2),dp) 
 YeadjepsEYeadjepsE = Matmul(Ye,adjepsEYeadjepsE) 
 YeadjepsEYeadjYe = Matmul(Ye,adjepsEYeadjYe) 
 YeadjYeYeadjepsE = Matmul(Ye,adjYeYeadjepsE) 
 YeadjYeYeadjYe = Matmul(Ye,adjYeYeadjYe) 
Forall(i2=1:3)  YeadjYeYeadjYe(i2,i2) =  Real(YeadjYeYeadjYe(i2,i2),dp) 
 YuadjYuYuadjYu = Matmul(Yu,adjYuYuadjYu) 
Forall(i2=1:3)  YuadjYuYuadjYu(i2,i2) =  Real(YuadjYuYuadjYu(i2,i2),dp) 
 TrepsDadjepsD = Real(cTrace(epsDadjepsD),dp) 
 TrepsDadjYd = cTrace(epsDadjYd) 
 TrepsEadjepsE = Real(cTrace(epsEadjepsE),dp) 
 TrepsEadjYe = cTrace(epsEadjYe) 
 TrepsUadjepsU = Real(cTrace(epsUadjepsU),dp) 
 TrepsUadjYu = cTrace(epsUadjYu) 
 TrYdadjepsD = cTrace(YdadjepsD) 
 TrYdadjYd = Real(cTrace(YdadjYd),dp) 
 TrYeadjepsE = cTrace(YeadjepsE) 
 TrYeadjYe = Real(cTrace(YeadjYe),dp) 
 TrYuadjepsU = cTrace(YuadjepsU) 
 TrYuadjYu = Real(cTrace(YuadjYu),dp) 
 TrepsDadjepsDepsDadjepsD = Real(cTrace(epsDadjepsDepsDadjepsD),dp) 
 TrepsDadjepsDYdadjepsD = cTrace(epsDadjepsDYdadjepsD) 
 TrepsDadjepsDYdadjYd = cTrace(epsDadjepsDYdadjYd) 
 TrepsDadjYdYdadjepsD = Real(cTrace(epsDadjYdYdadjepsD),dp) 
 TrepsDadjYuepsUadjYd = cTrace(epsDadjYuepsUadjYd) 
 TrepsDadjYuYuadjepsD = Real(cTrace(epsDadjYuYuadjepsD),dp) 
 TrepsEadjepsEepsEadjepsE = Real(cTrace(epsEadjepsEepsEadjepsE),dp) 
 TrepsEadjepsEYeadjepsE = cTrace(epsEadjepsEYeadjepsE) 
 TrepsEadjepsEYeadjYe = cTrace(epsEadjepsEYeadjYe) 
 TrepsEadjYeYeadjepsE = Real(cTrace(epsEadjYeYeadjepsE),dp) 
 TrepsUadjepsUepsUadjepsU = Real(cTrace(epsUadjepsUepsUadjepsU),dp) 
 TrepsUadjepsUepsUadjYu = cTrace(epsUadjepsUepsUadjYu) 
 TrepsUadjepsUYuadjYu = cTrace(epsUadjepsUYuadjYu) 
 TrepsUadjYdYdadjepsU = Real(cTrace(epsUadjYdYdadjepsU),dp) 
 TrepsUadjYuepsUadjepsU = cTrace(epsUadjYuepsUadjepsU) 
 TrepsUadjYuepsUadjYu = cTrace(epsUadjYuepsUadjYu) 
 TrepsUadjYuYuadjepsU = Real(cTrace(epsUadjYuYuadjepsU),dp) 
 TrepsUadjYuYuadjYu = cTrace(epsUadjYuYuadjYu) 
 TrYdadjepsDYdadjepsD = cTrace(YdadjepsDYdadjepsD) 
 TrYdadjepsDYdadjYd = cTrace(YdadjepsDYdadjYd) 
 TrYdadjepsUYuadjepsD = cTrace(YdadjepsUYuadjepsD) 
 TrYdadjYdYdadjepsD = cTrace(YdadjYdYdadjepsD) 
 TrYdadjYdYdadjYd = Real(cTrace(YdadjYdYdadjYd),dp) 
 TrYeadjepsEYeadjepsE = cTrace(YeadjepsEYeadjepsE) 
 TrYeadjepsEYeadjYe = cTrace(YeadjepsEYeadjYe) 
 TrYeadjYeYeadjepsE = cTrace(YeadjYeYeadjepsE) 
 TrYeadjYeYeadjYe = Real(cTrace(YeadjYeYeadjYe),dp) 
 TrYuadjYuYuadjYu = Real(cTrace(YuadjYuYuadjYu),dp) 
 g1p2 =g1**2 
 g1p3 =g1**3 
 g1p4 =g1**4 
 g2p2 =g2**2 
 g2p3 =g2**3 
 g2p4 =g2**4 
 g3p2 =g3**2 
 g3p3 =g3**3 
 Lam1p2 =Lam1**2 
 Lam1pp2 =Lam1p**2 
 Lam2p2 =Lam2**2 
 Lam2pp2 =Lam2p**2 
 L2ppp2 =L2pp**2 
 Lam3p2 =Lam3**2 
 Lam3pp2 =Lam3p**2 
 L3ppp2 =L3pp**2 
 Lam4p2 =Lam4**2 
 Lam4pp2 =Lam4p**2 
 Lam5pp2 =Lam5p**2 
 Lam6p2 =Lam6**2 
 Lam7p2 =Lam7**2 
 mu11p2 =mu11**2 
 mu22p2 =mu22**2 
 mus2p2 =mus2**2 


If (TwoLoopRGE) Then 
End If 
 
 
!-------------------- 
! g1 
!-------------------- 
 
betag11  = 21._dp*(g1p3)/5._dp

 
 
If (TwoLoopRGE) Then 
betag12 = 0

 
Dg1 = oo16pi2*( betag11 + oo16pi2 * betag12 ) 

 
Else 
Dg1 = oo16pi2* betag11 
End If 
 
 
!-------------------- 
! g2 
!-------------------- 
 
betag21  = -3._dp*(g2p3)

 
 
If (TwoLoopRGE) Then 
betag22 = 0

 
Dg2 = oo16pi2*( betag21 + oo16pi2 * betag22 ) 

 
Else 
Dg2 = oo16pi2* betag21 
End If 
 
 
!-------------------- 
! g3 
!-------------------- 
 
betag31  = -7._dp*(g3p3)

 
 
If (TwoLoopRGE) Then 
betag32 = 0

 
Dg3 = oo16pi2*( betag31 + oo16pi2 * betag32 ) 

 
Else 
Dg3 = oo16pi2* betag31 
End If 
 
 
!-------------------- 
! Lam6 
!-------------------- 
 
betaLam61  = 2*Lam1p*Lam3p - (9*g1p2*Lam6)/5._dp - 9*g2p2*Lam6 + 12*Lam1*Lam6 +       & 
&  6*Lam3*Lam6 + 8*Lam4*Lam6 + 6*Lam3*Lam7 + 4*Lam4*Lam7 + 3*Lam6*TrepsDadjepsD +        & 
&  3*Lam5*TrepsDadjYd + Lam6*TrepsEadjepsE + Lam5*TrepsEadjYe + 3*Lam6*TrepsUadjepsU +   & 
&  3*Lam1*TrepsUadjYu + 3*Lam3*TrepsUadjYu + 3*Lam4*TrepsUadjYu - 12._dp*(TrepsUadjYuYuadjYu)& 
&  + 3*Lam1*TrYdadjepsD + 3*Lam3*TrYdadjepsD + 3*Lam4*TrYdadjepsD - 6._dp*(TrYdadjepsDYdadjYd)& 
&  + 9*Lam6*TrYdadjYd - 6._dp*(TrYdadjYdYdadjepsD) + Lam1*TrYeadjepsE + Lam3*TrYeadjepsE +& 
&  Lam4*TrYeadjepsE - 2._dp*(TrYeadjepsEYeadjYe) + 3*Lam6*TrYeadjYe - 2._dp*(TrYeadjYeYeadjepsE)& 
&  + 3*Lam5*TrYuadjepsU + 9*Lam6*TrYuadjYu + 4*Lam6p*Conjg(Lam4p) + 10*Lam5*Conjg(Lam6)  & 
&  + 2*Lam5*Conjg(Lam7) + 4*Lam4p*Conjg(Lam7p)

 
 
If (TwoLoopRGE) Then 
betaLam62 = 0

 
DLam6 = oo16pi2*( betaLam61 + oo16pi2 * betaLam62 ) 

 
Else 
DLam6 = oo16pi2* betaLam61 
End If 
 
 
Call Chop(DLam6) 

!-------------------- 
! Lam5 
!-------------------- 
 
betaLam51  = 2._dp*(Lam3pp2) + 10._dp*(Lam6p2) + 10._dp*(Lam7p2) - (9*g1p2*Lam5)      & 
& /5._dp - 9*g2p2*Lam5 + 2*Lam1*Lam5 + 2*Lam2*Lam5 + 8*Lam3*Lam5 + 12*Lam4*Lam5 +        & 
&  4*Lam6*Lam7 + 6*Lam5*TrepsDadjepsD + 2*Lam5*TrepsEadjepsE + 6*Lam5*TrepsUadjepsU +    & 
&  6*Lam6*TrepsUadjYu + 6*Lam7*TrepsUadjYu - 12._dp*(TrepsUadjYuepsUadjYu)               & 
&  + 6*Lam6*TrYdadjepsD + 6*Lam7*TrYdadjepsD - 12._dp*(TrYdadjepsDYdadjepsD)             & 
&  + 6*Lam5*TrYdadjYd + 2*Lam6*TrYeadjepsE + 2*Lam7*TrYeadjepsE - 4._dp*(TrYeadjepsEYeadjepsE)& 
&  + 2*Lam5*TrYeadjYe + 6*Lam5*TrYuadjYu + 8*Lam6p*Conjg(Lam7p)

 
 
If (TwoLoopRGE) Then 
betaLam52 = 0

 
DLam5 = oo16pi2*( betaLam51 + oo16pi2 * betaLam52 ) 

 
Else 
DLam5 = oo16pi2* betaLam51 
End If 
 
 
Call Chop(DLam5) 

!-------------------- 
! Lam7 
!-------------------- 
 
betaLam71  = 2*Lam2p*Lam3p + 6*Lam3*Lam6 + 4*Lam4*Lam6 - (9*g1p2*Lam7)/5._dp -        & 
&  9*g2p2*Lam7 + 12*Lam2*Lam7 + 6*Lam3*Lam7 + 8*Lam4*Lam7 + 9*Lam7*TrepsDadjepsD -       & 
&  12._dp*(TrepsDadjepsDYdadjepsD) + 3*Lam5*TrepsDadjYd + 3*Lam7*TrepsEadjepsE -         & 
&  4._dp*(TrepsEadjepsEYeadjepsE) + Lam5*TrepsEadjYe + 9*Lam7*TrepsUadjepsU -            & 
&  6._dp*(TrepsUadjepsUepsUadjYu) + 3*Lam2*TrepsUadjYu + 3*Lam3*TrepsUadjYu +            & 
&  3*Lam4*TrepsUadjYu - 6._dp*(TrepsUadjYuepsUadjepsU) + 3*Lam2*TrYdadjepsD +            & 
&  3*Lam3*TrYdadjepsD + 3*Lam4*TrYdadjepsD + 3*Lam7*TrYdadjYd + Lam2*TrYeadjepsE +       & 
&  Lam3*TrYeadjepsE + Lam4*TrYeadjepsE + Lam7*TrYeadjYe + 3*Lam5*TrYuadjepsU +           & 
&  3*Lam7*TrYuadjYu + 4*Lam6p*Conjg(Lam5p) + 2*Lam5*Conjg(Lam6) + 10*Lam5*Conjg(Lam7)    & 
&  + 4*Lam5p*Conjg(Lam7p)

 
 
If (TwoLoopRGE) Then 
betaLam72 = 0

 
DLam7 = oo16pi2*( betaLam71 + oo16pi2 * betaLam72 ) 

 
Else 
DLam7 = oo16pi2* betaLam71 
End If 
 
 
Call Chop(DLam7) 

!-------------------- 
! Lam1 
!-------------------- 
 
betaLam11  = 8._dp*(AbsLam4p) + 2._dp*(AbsLam5) + 24._dp*(AbsLam6) + 27._dp*(g1p4)    & 
& /100._dp + (9*g1p2*g2p2)/10._dp + 9._dp*(g2p4)/4._dp + 12._dp*(Lam1p2) +               & 
&  2._dp*(Lam1pp2) + 4._dp*(Lam3p2) + 2._dp*(Lam4p2) - (9*g1p2*Lam1)/5._dp -             & 
&  9*g2p2*Lam1 + 4*Lam3*Lam4 + 6*Lam6*TrepsDadjYd + 2*Lam6*TrepsEadjYe + 12*Lam1*TrYdadjYd -& 
&  12._dp*(TrYdadjYdYdadjYd) + 4*Lam1*TrYeadjYe - 4._dp*(TrYeadjYeYeadjYe)               & 
&  + 6*Lam6*TrYuadjepsU + 12*Lam1*TrYuadjYu - 12._dp*(TrYuadjYuYuadjYu) + 6*TrepsUadjYu*Conjg(Lam6)& 
&  + 6*TrYdadjepsD*Conjg(Lam6) + 2*TrYeadjepsE*Conjg(Lam6)

 
 
If (TwoLoopRGE) Then 
betaLam12 = 0

 
DLam1 = oo16pi2*( betaLam11 + oo16pi2 * betaLam12 ) 

 
Else 
DLam1 = oo16pi2* betaLam11 
End If 
 
 
!-------------------- 
! Lam4 
!-------------------- 
 
betaLam41  = 2._dp*(AbsLam3p) + 8._dp*(AbsLam5) + 10._dp*(AbsLam6) + 4._dp*(AbsLam6p) & 
&  + 10._dp*(AbsLam7) + 4._dp*(AbsLam7p) + (9*g1p2*g2p2)/5._dp + 4._dp*(Lam4p2)          & 
&  - (9*g1p2*Lam4)/5._dp - 9*g2p2*Lam4 + 2*Lam1*Lam4 + 2*Lam2*Lam4 + 8*Lam3*Lam4 +       & 
&  6*Lam4*TrepsDadjepsD + 3*Lam6*TrepsDadjYd + 3*Lam7*TrepsDadjYd - 12._dp*(TrepsDadjYdYdadjepsD)& 
&  - 12._dp*(TrepsDadjYuepsUadjYd) + 12._dp*(TrepsDadjYuYuadjepsD) + 2*Lam4*TrepsEadjepsE +& 
&  Lam6*TrepsEadjYe + Lam7*TrepsEadjYe - 4._dp*(TrepsEadjYeYeadjepsE) + 6*Lam4*TrepsUadjepsU +& 
&  12._dp*(TrepsUadjYdYdadjepsU) - 12._dp*(TrepsUadjYuYuadjepsU) - 12._dp*(TrYdadjepsUYuadjepsD)& 
&  + 6*Lam4*TrYdadjYd + 2*Lam4*TrYeadjYe + 3*Lam6*TrYuadjepsU + 3*Lam7*TrYuadjepsU +     & 
&  6*Lam4*TrYuadjYu + 2*Lam7*Conjg(Lam6) + 3*TrepsUadjYu*Conjg(Lam6) + 3*TrYdadjepsD*Conjg(Lam6)& 
&  + TrYeadjepsE*Conjg(Lam6) + 2*Lam6*Conjg(Lam7) + 3*TrepsUadjYu*Conjg(Lam7)            & 
&  + 3*TrYdadjepsD*Conjg(Lam7) + TrYeadjepsE*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam42 = 0

 
DLam4 = oo16pi2*( betaLam41 + oo16pi2 * betaLam42 ) 

 
Else 
DLam4 = oo16pi2* betaLam41 
End If 
 
 
!-------------------- 
! Lam3 
!-------------------- 
 
betaLam31  = 2._dp*(AbsLam5) + 4._dp*(AbsLam6) + 4._dp*(AbsLam7) + 27._dp*(g1p4)      & 
& /100._dp - (9*g1p2*g2p2)/10._dp + 9._dp*(g2p4)/4._dp + 4._dp*(Lam3p2) + 2._dp*(Lam4p2) & 
&  + 2*Lam1p*Lam2p - (9*g1p2*Lam3)/5._dp - 9*g2p2*Lam3 + 6*Lam1*Lam3 + 6*Lam2*Lam3 +     & 
&  2*Lam1*Lam4 + 2*Lam2*Lam4 + 6*Lam3*TrepsDadjepsD - 12._dp*(TrepsDadjepsDYdadjYd)      & 
&  + 3*Lam6*TrepsDadjYd + 3*Lam7*TrepsDadjYd + 12._dp*(TrepsDadjYuepsUadjYd)             & 
&  - 12._dp*(TrepsDadjYuYuadjepsD) + 2*Lam3*TrepsEadjepsE - 4._dp*(TrepsEadjepsEYeadjYe) & 
&  + Lam6*TrepsEadjYe + Lam7*TrepsEadjYe + 6*Lam3*TrepsUadjepsU - 12._dp*(TrepsUadjepsUYuadjYu)& 
&  - 12._dp*(TrepsUadjYdYdadjepsU) + 12._dp*(TrYdadjepsUYuadjepsD) + 6*Lam3*TrYdadjYd +  & 
&  2*Lam3*TrYeadjYe + 3*Lam6*TrYuadjepsU + 3*Lam7*TrYuadjepsU + 6*Lam3*TrYuadjYu +       & 
&  4*Lam5p*Conjg(Lam4p) + 4*Lam4p*Conjg(Lam5p) + 8*Lam7*Conjg(Lam6) + 3*TrepsUadjYu*Conjg(Lam6)& 
&  + 3*TrYdadjepsD*Conjg(Lam6) + TrYeadjepsE*Conjg(Lam6) + 8*Lam6*Conjg(Lam7)            & 
&  + 3*TrepsUadjYu*Conjg(Lam7) + 3*TrYdadjepsD*Conjg(Lam7) + TrYeadjepsE*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam32 = 0

 
DLam3 = oo16pi2*( betaLam31 + oo16pi2 * betaLam32 ) 

 
Else 
DLam3 = oo16pi2* betaLam31 
End If 
 
 
!-------------------- 
! Lam2 
!-------------------- 
 
betaLam21  = 2._dp*(AbsLam5) + 8._dp*(AbsLam5p) + 24._dp*(AbsLam7) + 27._dp*(g1p4)    & 
& /100._dp + (9*g1p2*g2p2)/10._dp + 9._dp*(g2p4)/4._dp + 12._dp*(Lam2p2) +               & 
&  2._dp*(Lam2pp2) + 4._dp*(Lam3p2) + 2._dp*(Lam4p2) - (9*g1p2*Lam2)/5._dp -             & 
&  9*g2p2*Lam2 + 4*Lam3*Lam4 + 12*Lam2*TrepsDadjepsD - 12._dp*(TrepsDadjepsDepsDadjepsD) & 
&  + 6*Lam7*TrepsDadjYd + 4*Lam2*TrepsEadjepsE - 4._dp*(TrepsEadjepsEepsEadjepsE)        & 
&  + 2*Lam7*TrepsEadjYe + 12*Lam2*TrepsUadjepsU - 12._dp*(TrepsUadjepsUepsUadjepsU)      & 
&  + 6*Lam7*TrYuadjepsU + 6*TrepsUadjYu*Conjg(Lam7) + 6*TrYdadjepsD*Conjg(Lam7)          & 
&  + 2*TrYeadjepsE*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam22 = 0

 
DLam2 = oo16pi2*( betaLam21 + oo16pi2 * betaLam22 ) 

 
Else 
DLam2 = oo16pi2* betaLam21 
End If 
 
 
!-------------------- 
! Lam1p 
!-------------------- 
 
betaLam1p1  = 16._dp*(AbsLam4p) + 8._dp*(AbsLam6p) + 8._dp*(AbsLam7p) +               & 
&  4._dp*(Lam1pp2) - (9*g1p2*Lam1p)/10._dp - (9*g2p2*Lam1p)/2._dp + 6*Lam1*Lam1p +       & 
&  4*Lam2p*Lam3 + 2*Lam1p*L3pp + 2*Lam2p*Lam4 + 3*Lam3p*TrepsDadjYd + Lam3p*TrepsEadjYe +& 
&  6*Lam1p*TrYdadjYd + 2*Lam1p*TrYeadjYe + 3*Lam3p*TrYuadjepsU + 6*Lam1p*TrYuadjYu +     & 
&  2*Lam4p*Conjg(L2pp) + (4._dp*(Lam3p) + 6._dp*(Lam6) + 3._dp*(TrepsUadjYu)             & 
&  + 3._dp*(TrYdadjepsD) + TrYeadjepsE)*Conjg(Lam3p) + 2*L2pp*Conjg(Lam4p)               & 
&  + 6*Lam3p*Conjg(Lam6)

 
 
If (TwoLoopRGE) Then 
betaLam1p2 = 0

 
DLam1p = oo16pi2*( betaLam1p1 + oo16pi2 * betaLam1p2 ) 

 
Else 
DLam1p = oo16pi2* betaLam1p1 
End If 
 
 
!-------------------- 
! Lam2p 
!-------------------- 
 
betaLam2p1  = 16._dp*(AbsLam5p) + 8._dp*(AbsLam6p) + 8._dp*(AbsLam7p) +               & 
&  4._dp*(Lam2pp2) - (9*g1p2*Lam2p)/10._dp - (9*g2p2*Lam2p)/2._dp + 6*Lam2*Lam2p +       & 
&  4*Lam1p*Lam3 + 2*Lam2p*L3pp + 2*Lam1p*Lam4 + 6*Lam2p*TrepsDadjepsD + 3*Lam3p*TrepsDadjYd +& 
&  2*Lam2p*TrepsEadjepsE + Lam3p*TrepsEadjYe + 6*Lam2p*TrepsUadjepsU + 3*Lam3p*TrYuadjepsU +& 
&  2*Lam5p*Conjg(L2pp) + (4._dp*(Lam3p) + 6._dp*(Lam7) + 3._dp*(TrepsUadjYu)             & 
&  + 3._dp*(TrYdadjepsD) + TrYeadjepsE)*Conjg(Lam3p) + 2*L2pp*Conjg(Lam5p)               & 
&  + 6*Lam3p*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam2p2 = 0

 
DLam2p = oo16pi2*( betaLam2p1 + oo16pi2 * betaLam2p2 ) 

 
Else 
DLam2p = oo16pi2* betaLam2p1 
End If 
 
 
!-------------------- 
! L3pp 
!-------------------- 
 
betaL3pp1  = AbsL1pp + 6._dp*(AbsL2pp) + 16._dp*(AbsLam3p) + 16._dp*(AbsLam4p)        & 
&  + 16._dp*(AbsLam5p) + 16._dp*(AbsLam6p) + 16._dp*(AbsLam7p) + 5._dp*(L3ppp2)          & 
&  + 8._dp*(Lam1pp2) + 8._dp*(Lam2pp2)

 
 
If (TwoLoopRGE) Then 
betaL3pp2 = 0

 
DL3pp = oo16pi2*( betaL3pp1 + oo16pi2 * betaL3pp2 ) 

 
Else 
DL3pp = oo16pi2* betaL3pp1 
End If 
 
 
!-------------------- 
! L1pp 
!-------------------- 
 
betaL1pp1  = 6*(L2ppp2 + L1pp*L3pp + 8*(Lam4pp2 + Lam5pp2 + 2*Lam6p*Lam7p))

 
 
If (TwoLoopRGE) Then 
betaL1pp2 = 0

 
DL1pp = oo16pi2*( betaL1pp1 + oo16pi2 * betaL1pp2 ) 

 
Else 
DL1pp = oo16pi2* betaL1pp1 
End If 
 
 
Call Chop(DL1pp) 

!-------------------- 
! Lam4p 
!-------------------- 
 
betaLam4p1  = Lam1p*L2pp - (9*g1p2*Lam4p)/10._dp - (9*g2p2*Lam4p)/2._dp +             & 
&  6*Lam1*Lam4p + 8*Lam1p*Lam4p + L3pp*Lam4p + 4*Lam3*Lam5p + 2*Lam4*Lam5p +             & 
&  4*Lam3p*Lam7p + 6*Lam6*Lam7p + 3*Lam6p*TrepsDadjYd + Lam6p*TrepsEadjYe +              & 
&  3*Lam7p*TrepsUadjYu + 3*Lam7p*TrYdadjepsD + 6*Lam4p*TrYdadjYd + Lam7p*TrYeadjepsE +   & 
&  2*Lam4p*TrYeadjYe + 3*Lam6p*TrYuadjepsU + 6*Lam4p*TrYuadjYu + 4*Lam6p*Conjg(Lam3p)    & 
&  + L1pp*Conjg(Lam4p) + 6*Lam6p*Conjg(Lam6)

 
 
If (TwoLoopRGE) Then 
betaLam4p2 = 0

 
DLam4p = oo16pi2*( betaLam4p1 + oo16pi2 * betaLam4p2 ) 

 
Else 
DLam4p = oo16pi2* betaLam4p1 
End If 
 
 
Call Chop(DLam4p) 

!-------------------- 
! Lam6p 
!-------------------- 
 
betaLam6p1  = L2pp*Lam3p + 4*Lam3p*Lam4p + 4*Lam3p*Lam5p + 6*Lam4p*Lam6 -             & 
&  (9*g1p2*Lam6p)/10._dp - (9*g2p2*Lam6p)/2._dp + 4*Lam1p*Lam6p + 4*Lam2p*Lam6p +        & 
&  2*Lam3*Lam6p + L3pp*Lam6p + 4*Lam4*Lam6p + 6*Lam5p*Lam7 + 6*Lam5*Lam7p +              & 
&  3*Lam6p*TrepsDadjepsD + Lam6p*TrepsEadjepsE + 3*Lam6p*TrepsUadjepsU + 3*Lam4p*TrepsUadjYu +& 
&  3*Lam5p*TrepsUadjYu + 3*Lam4p*TrYdadjepsD + 3*Lam5p*TrYdadjepsD + 3*Lam6p*TrYdadjYd + & 
&  Lam4p*TrYeadjepsE + Lam5p*TrYeadjepsE + Lam6p*TrYeadjYe + 3*Lam6p*TrYuadjYu +         & 
&  L1pp*Conjg(Lam7p)

 
 
If (TwoLoopRGE) Then 
betaLam6p2 = 0

 
DLam6p = oo16pi2*( betaLam6p1 + oo16pi2 * betaLam6p2 ) 

 
Else 
DLam6p = oo16pi2* betaLam6p1 
End If 
 
 
Call Chop(DLam6p) 

!-------------------- 
! Lam7p 
!-------------------- 
 
betaLam7p1  = (-9*g1p2*Lam7p)/10._dp - (9*g2p2*Lam7p)/2._dp + 4*Lam1p*Lam7p +         & 
&  4*Lam2p*Lam7p + 2*Lam3*Lam7p + L3pp*Lam7p + 4*Lam4*Lam7p + 3*Lam7p*TrepsDadjepsD +    & 
&  3*Lam4p*TrepsDadjYd + 3*Lam5p*TrepsDadjYd + Lam7p*TrepsEadjepsE + Lam4p*TrepsEadjYe + & 
&  Lam5p*TrepsEadjYe + 3*Lam7p*TrepsUadjepsU + 3*Lam7p*TrYdadjYd + Lam7p*TrYeadjYe +     & 
&  3*Lam4p*TrYuadjepsU + 3*Lam5p*TrYuadjepsU + 3*Lam7p*TrYuadjYu + (L2pp +               & 
&  4*(Lam4p + Lam5p))*Conjg(Lam3p) + 6*Lam6p*Conjg(Lam5) + 6*Lam4p*Conjg(Lam6)           & 
&  + L1pp*Conjg(Lam6p) + 6*Lam5p*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam7p2 = 0

 
DLam7p = oo16pi2*( betaLam7p1 + oo16pi2 * betaLam7p2 ) 

 
Else 
DLam7p = oo16pi2* betaLam7p1 
End If 
 
 
Call Chop(DLam7p) 

!-------------------- 
! Lam5p 
!-------------------- 
 
betaLam5p1  = Lam2p*L2pp + 4*Lam3*Lam4p + 2*Lam4*Lam4p - (9*g1p2*Lam5p)               & 
& /10._dp - (9*g2p2*Lam5p)/2._dp + 6*Lam2*Lam5p + 8*Lam2p*Lam5p + L3pp*Lam5p +           & 
&  4*Lam3p*Lam7p + 6*Lam7*Lam7p + 6*Lam5p*TrepsDadjepsD + 3*Lam6p*TrepsDadjYd +          & 
&  2*Lam5p*TrepsEadjepsE + Lam6p*TrepsEadjYe + 6*Lam5p*TrepsUadjepsU + 3*Lam7p*TrepsUadjYu +& 
&  3*Lam7p*TrYdadjepsD + Lam7p*TrYeadjepsE + 3*Lam6p*TrYuadjepsU + 4*Lam6p*Conjg(Lam3p)  & 
&  + L1pp*Conjg(Lam5p) + 6*Lam6p*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam5p2 = 0

 
DLam5p = oo16pi2*( betaLam5p1 + oo16pi2 * betaLam5p2 ) 

 
Else 
DLam5p = oo16pi2* betaLam5p1 
End If 
 
 
Call Chop(DLam5p) 

!-------------------- 
! L2pp 
!-------------------- 
 
betaL2pp1  = 3*(3*L2pp*L3pp + 8*Lam1p*Lam4p + 8*Lam2p*Lam5p + 8*Lam3p*Lam7p +         & 
&  L1pp*Conjg(L2pp) + 8*Lam6p*Conjg(Lam3p))

 
 
If (TwoLoopRGE) Then 
betaL2pp2 = 0

 
DL2pp = oo16pi2*( betaL2pp1 + oo16pi2 * betaL2pp2 ) 

 
Else 
DL2pp = oo16pi2* betaL2pp1 
End If 
 
 
Call Chop(DL2pp) 

!-------------------- 
! Lam3p 
!-------------------- 
 
betaLam3p1  = (-9*g1p2*Lam3p)/10._dp - (9*g2p2*Lam3p)/2._dp + 4*Lam1p*Lam3p +         & 
&  4*Lam2p*Lam3p + 2*Lam3*Lam3p + 2*Lam3p*L3pp + 4*Lam3p*Lam4 + 6*Lam1p*Lam6 +           & 
&  6*Lam2p*Lam7 + 3*Lam3p*TrepsDadjepsD + Lam3p*TrepsEadjepsE + 3*Lam3p*TrepsUadjepsU +  & 
&  3*Lam1p*TrepsUadjYu + 3*Lam2p*TrepsUadjYu + 3*Lam1p*TrYdadjepsD + 3*Lam2p*TrYdadjepsD +& 
&  3*Lam3p*TrYdadjYd + Lam1p*TrYeadjepsE + Lam2p*TrYeadjepsE + Lam3p*TrYeadjYe +         & 
&  3*Lam3p*TrYuadjYu + 2*Lam6p*Conjg(L2pp) + 6*Lam5*Conjg(Lam3p) + 8*Lam6p*Conjg(Lam4p)  & 
&  + 8*Lam6p*Conjg(Lam5p) + 2*L2pp*Conjg(Lam7p) + 8*Lam4p*Conjg(Lam7p) + 8*Lam5p*Conjg(Lam7p)

 
 
If (TwoLoopRGE) Then 
betaLam3p2 = 0

 
DLam3p = oo16pi2*( betaLam3p1 + oo16pi2 * betaLam3p2 ) 

 
Else 
DLam3p = oo16pi2* betaLam3p1 
End If 
 
 
Call Chop(DLam3p) 

!-------------------- 
! Yu 
!-------------------- 
 
betaYu1  = epsU*(3._dp*(TrepsDadjYd) + TrepsEadjYe + 3._dp*(TrYuadjepsU))             & 
&  + (-17._dp*(g1p2)/20._dp - 9._dp*(g2p2)/4._dp - 8._dp*(g3p2) + 3._dp*(TrYdadjYd)      & 
&  + TrYeadjYe + 3._dp*(TrYuadjYu))*Yu + (2._dp*(epsUadjepsUYu) - 4._dp*(epsUadjYdepsD)  & 
&  + YuadjepsDepsD + YuadjepsUepsU - 3._dp*(YuadjYdYd) + 3._dp*(YuadjYuYu))/2._dp

 
 
If (TwoLoopRGE) Then 
betaYu2 = 0

 
DYu = oo16pi2*( betaYu1 + oo16pi2 * betaYu2 ) 

 
Else 
DYu = oo16pi2* betaYu1 
End If 
 
 
Call Chop(DYu) 

!-------------------- 
! epsU 
!-------------------- 
 
betaepsU1  = epsU*(-17._dp*(g1p2)/20._dp - 9._dp*(g2p2)/4._dp - 8._dp*(g3p2)          & 
&  + 3._dp*(TrepsDadjepsD) + TrepsEadjepsE + 3._dp*(TrepsUadjepsU)) + (-3._dp*(epsUadjepsDepsD)& 
&  + 3._dp*(epsUadjepsUepsU) + epsUadjYdYd + epsUadjYuYu + 6*TrepsUadjYu*Yu +            & 
&  6*TrYdadjepsD*Yu + 2*TrYeadjepsE*Yu - 4._dp*(YuadjepsDYd) + 2._dp*(YuadjYuepsU))/2._dp

 
 
If (TwoLoopRGE) Then 
betaepsU2 = 0

 
DepsU = oo16pi2*( betaepsU1 + oo16pi2 * betaepsU2 ) 

 
Else 
DepsU = oo16pi2* betaepsU1 
End If 
 
 
Call Chop(DepsU) 

!-------------------- 
! Yd 
!-------------------- 
 
betaYd1  = epsD*(3._dp*(TrepsUadjYu) + 3._dp*(TrYdadjepsD) + TrYeadjepsE)             & 
&  - ((g1p2 + 9._dp*(g2p2) + 32._dp*(g3p2) - 12._dp*(TrYdadjYd) - 4._dp*(TrYeadjYe)      & 
&  - 12._dp*(TrYuadjYu))*Yd)/4._dp + (2._dp*(epsDadjepsDYd) - 4._dp*(epsDadjYuepsU)      & 
&  + YdadjepsDepsD + YdadjepsUepsU + 3._dp*(YdadjYdYd) - 3._dp*(YdadjYuYu))/2._dp

 
 
If (TwoLoopRGE) Then 
betaYd2 = 0

 
DYd = oo16pi2*( betaYd1 + oo16pi2 * betaYd2 ) 

 
Else 
DYd = oo16pi2* betaYd1 
End If 
 
 
Call Chop(DYd) 

!-------------------- 
! Ye 
!-------------------- 
 
betaYe1  = epsE*(3._dp*(TrepsUadjYu) + 3._dp*(TrYdadjepsD) + TrYeadjepsE)             & 
&  + (-9._dp*(g1p2)/4._dp - 9._dp*(g2p2)/4._dp + 3._dp*(TrYdadjYd) + TrYeadjYe +         & 
&  3._dp*(TrYuadjYu))*Ye + (2._dp*(epsEadjepsEYe) + YeadjepsEepsE + 3._dp*(YeadjYeYe))/2._dp

 
 
If (TwoLoopRGE) Then 
betaYe2 = 0

 
DYe = oo16pi2*( betaYe1 + oo16pi2 * betaYe2 ) 

 
Else 
DYe = oo16pi2* betaYe1 
End If 
 
 
Call Chop(DYe) 

!-------------------- 
! epsD 
!-------------------- 
 
betaepsD1  = epsD*(-1._dp/4._dp*g1p2 - 9._dp*(g2p2)/4._dp - 8._dp*(g3p2)              & 
&  + 3._dp*(TrepsDadjepsD) + TrepsEadjepsE + 3._dp*(TrepsUadjepsU)) + (3._dp*(epsDadjepsDepsD)& 
&  - 3._dp*(epsDadjepsUepsU) + epsDadjYdYd + epsDadjYuYu + 6*TrepsDadjYd*Yd +            & 
&  2*TrepsEadjYe*Yd + 6*TrYuadjepsU*Yd - 4._dp*(YdadjepsUYu) + 2._dp*(YdadjYdepsD))/2._dp

 
 
If (TwoLoopRGE) Then 
betaepsD2 = 0

 
DepsD = oo16pi2*( betaepsD1 + oo16pi2 * betaepsD2 ) 

 
Else 
DepsD = oo16pi2* betaepsD1 
End If 
 
 
Call Chop(DepsD) 

!-------------------- 
! epsE 
!-------------------- 
 
betaepsE1  = 3._dp*(epsEadjepsEepsE)/2._dp + epsEadjYeYe/2._dp + epsE*(-              & 
& 9._dp*(g1p2)/4._dp - 9._dp*(g2p2)/4._dp + 3._dp*(TrepsDadjepsD) + TrepsEadjepsE +      & 
&  3._dp*(TrepsUadjepsU)) + 3*TrepsDadjYd*Ye + TrepsEadjYe*Ye + 3*TrYuadjepsU*Ye +       & 
&  YeadjYeepsE

 
 
If (TwoLoopRGE) Then 
betaepsE2 = 0

 
DepsE = oo16pi2*( betaepsE1 + oo16pi2 * betaepsE2 ) 

 
Else 
DepsE = oo16pi2* betaepsE1 
End If 
 
 
Call Chop(DepsE) 

!-------------------- 
! mus1 
!-------------------- 
 
betamus11  = 3*(8*Lam4p*mu11 + 8*Lam7p*mu12 + 8*Lam6p*mu21 + 8*Lam5p*mu22 +           & 
&  L3pp*mus1 + 2*L2pp*mus2 + L1pp*Conjg(mus2))

 
 
If (TwoLoopRGE) Then 
betamus12 = 0

 
Dmus1 = oo16pi2*( betamus11 + oo16pi2 * betamus12 ) 

 
Else 
Dmus1 = oo16pi2* betamus11 
End If 
 
 
Call Chop(Dmus1) 

!-------------------- 
! mu11 
!-------------------- 
 
betamu111  = (-9*g1p2*mu11)/10._dp - (9*g2p2*mu11)/2._dp + 6*Lam1*mu11 +              & 
&  4*Lam1p*mu11 + 2*Lam3p*mu21 + 6*Lam6*mu21 + 4*Lam3*mu22 + 2*Lam4*mu22 +               & 
&  2*Lam1p*mus2 + 3*mu12*TrepsDadjYd + mu12*TrepsEadjYe + 3*mu21*TrepsUadjYu +           & 
&  3*mu21*TrYdadjepsD + 6*mu11*TrYdadjYd + mu21*TrYeadjepsE + 2*mu11*TrYeadjYe +         & 
&  3*mu12*TrYuadjepsU + 6*mu11*TrYuadjYu + 2*mu12*Conjg(Lam3p) + 2*mus1*Conjg(Lam4p)     & 
&  + 6*mu12*Conjg(Lam6) + 8*Lam4p*Conjg(mu11) + 4*Lam6p*Conjg(mu12) + 4*Lam7p*Conjg(mu21)& 
&  + 2*Lam4p*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamu112 = 0

 
Dmu11 = oo16pi2*( betamu111 + oo16pi2 * betamu112 ) 

 
Else 
Dmu11 = oo16pi2* betamu111 
End If 
 
 
Call Chop(Dmu11) 

!-------------------- 
! mu12 
!-------------------- 
 
betamu121  = 2*Lam3p*mu11 + 6*Lam6*mu11 - (9*g1p2*mu12)/10._dp - (9*g2p2*mu12)        & 
& /2._dp + 2*Lam1p*mu12 + 2*Lam2p*mu12 + 2*Lam3*mu12 + 4*Lam4*mu12 + 6*Lam5*mu21 +       & 
&  2*Lam3p*mu22 + 6*Lam7*mu22 + 2*Lam3p*mus2 + 3*mu12*TrepsDadjepsD + mu12*TrepsEadjepsE +& 
&  3*mu12*TrepsUadjepsU + 3*mu11*TrepsUadjYu + 3*mu22*TrepsUadjYu + 3*mu11*TrYdadjepsD + & 
&  3*mu22*TrYdadjepsD + 3*mu12*TrYdadjYd + mu11*TrYeadjepsE + mu22*TrYeadjepsE +         & 
&  mu12*TrYeadjYe + 3*mu12*TrYuadjYu + 2*mus1*Conjg(Lam7p) + 4*Lam6p*Conjg(mu11)         & 
&  + 4*Lam4p*Conjg(mu21) + 4*Lam5p*Conjg(mu21) + 4*Lam6p*Conjg(mu22) + 2*Lam6p*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamu122 = 0

 
Dmu12 = oo16pi2*( betamu121 + oo16pi2 * betamu122 ) 

 
Else 
Dmu12 = oo16pi2* betamu121 
End If 
 
 
Call Chop(Dmu12) 

!-------------------- 
! mu21 
!-------------------- 
 
betamu211  = (-9*g1p2*mu21)/10._dp - (9*g2p2*mu21)/2._dp + 2*Lam1p*mu21 +             & 
&  2*Lam2p*mu21 + 2*Lam3*mu21 + 4*Lam4*mu21 + 3*mu21*TrepsDadjepsD + 3*mu11*TrepsDadjYd +& 
&  3*mu22*TrepsDadjYd + mu21*TrepsEadjepsE + mu11*TrepsEadjYe + mu22*TrepsEadjYe +       & 
&  3*mu21*TrepsUadjepsU + 3*mu21*TrYdadjYd + mu21*TrYeadjYe + 3*mu11*TrYuadjepsU +       & 
&  3*mu22*TrYuadjepsU + 3*mu21*TrYuadjYu + 2*(mu11 + mu22 + mus2)*Conjg(Lam3p)           & 
&  + 6*mu12*Conjg(Lam5) + 6*mu11*Conjg(Lam6) + 2*mus1*Conjg(Lam6p) + 6*mu22*Conjg(Lam7)  & 
&  + 4*Lam7p*Conjg(mu11) + 4*Lam4p*Conjg(mu12) + 4*Lam5p*Conjg(mu12) + 4*Lam7p*Conjg(mu22)& 
&  + 2*Lam7p*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamu212 = 0

 
Dmu21 = oo16pi2*( betamu211 + oo16pi2 * betamu212 ) 

 
Else 
Dmu21 = oo16pi2* betamu211 
End If 
 
 
Call Chop(Dmu21) 

!-------------------- 
! mu22 
!-------------------- 
 
betamu221  = 4*Lam3*mu11 + 2*Lam4*mu11 + 2*Lam3p*mu21 + 6*Lam7*mu21 - (9*g1p2*mu22)   & 
& /10._dp - (9*g2p2*mu22)/2._dp + 6*Lam2*mu22 + 4*Lam2p*mu22 + 2*Lam2p*mus2 +            & 
&  6*mu22*TrepsDadjepsD + 3*mu12*TrepsDadjYd + 2*mu22*TrepsEadjepsE + mu12*TrepsEadjYe + & 
&  6*mu22*TrepsUadjepsU + 3*mu21*TrepsUadjYu + 3*mu21*TrYdadjepsD + mu21*TrYeadjepsE +   & 
&  3*mu12*TrYuadjepsU + 2*mu12*Conjg(Lam3p) + 2*mus1*Conjg(Lam5p) + 6*mu12*Conjg(Lam7)   & 
&  + 4*Lam6p*Conjg(mu12) + 4*Lam7p*Conjg(mu21) + 8*Lam5p*Conjg(mu22) + 2*Lam5p*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamu222 = 0

 
Dmu22 = oo16pi2*( betamu221 + oo16pi2 * betamu222 ) 

 
Else 
Dmu22 = oo16pi2* betamu221 
End If 
 
 
Call Chop(Dmu22) 

!-------------------- 
! mus2 
!-------------------- 
 
betamus21  = 8*Lam1p*mu11 + 8*Lam3p*mu21 + 8*Lam2p*mu22 + 5*L3pp*mus2 +               & 
&  2*mus1*Conjg(L2pp) + 8*mu12*Conjg(Lam3p) + 8*Lam4p*Conjg(mu11) + 8*Lam6p*Conjg(mu12)  & 
&  + 8*Lam7p*Conjg(mu21) + 8*Lam5p*Conjg(mu22) + L1pp*Conjg(mus1) + 4*L2pp*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamus22 = 0

 
Dmus2 = oo16pi2*( betamus21 + oo16pi2 * betamus22 ) 

 
Else 
Dmus2 = oo16pi2* betamus21 
End If 
 
 
Call Chop(Dmus2) 

!-------------------- 
! M122 
!-------------------- 
 
betaM1221  = -6*Lam6*M112 - (9*g1p2*M122)/10._dp - (9*g2p2*M122)/2._dp +              & 
&  2*Lam3*M122 + 4*Lam4*M122 - 6*Lam7*M222 - 2*Lam3p*mS2 + 3*M122*TrepsDadjepsD +        & 
&  M122*TrepsEadjepsE + 3*M122*TrepsUadjepsU + 3*M122*TrYdadjYd + M122*TrYeadjYe +       & 
&  3*M122*TrYuadjYu - 2*mSp2*Conjg(Lam7p) + 6*Lam5*Conjg(M122) - 2*Lam6p*Conjg(mSp2)     & 
&  - 2*mu12*Conjg(mu11) - 2*mu11*Conjg(mu21) - 2*mu22*Conjg(mu21) - 2*mu12*Conjg(mu22)

 
 
If (TwoLoopRGE) Then 
betaM1222 = 0

 
DM122 = oo16pi2*( betaM1221 + oo16pi2 * betaM1222 ) 

 
Else 
DM122 = oo16pi2* betaM1221 
End If 
 
 
Call Chop(DM122) 

!-------------------- 
! M112 
!-------------------- 
 
betaM1121  = 4._dp*(Absmu11) + 2._dp*(Absmu12) + 2._dp*(Absmu21) - (9*g1p2*M112)      & 
& /10._dp - (9*g2p2*M112)/2._dp + 6*Lam1*M112 + 4*Lam3*M222 + 2*Lam4*M222 +              & 
&  2*Lam1p*mS2 + 6*M112*TrYdadjYd + 2*M112*TrYeadjYe + 6*M112*TrYuadjYu + 2*mSp2*Conjg(Lam4p)& 
&  - 6*M122*Conjg(Lam6) - 6*Lam6*Conjg(M122) + 2*Lam4p*Conjg(mSp2)

 
 
If (TwoLoopRGE) Then 
betaM1122 = 0

 
DM112 = oo16pi2*( betaM1121 + oo16pi2 * betaM1122 ) 

 
Else 
DM112 = oo16pi2* betaM1121 
End If 
 
 
!-------------------- 
! M222 
!-------------------- 
 
betaM2221  = 2._dp*(Absmu12) + 2._dp*(Absmu21) + 4._dp*(Absmu22) + 4*Lam3*M112 +      & 
&  2*Lam4*M112 - (9*g1p2*M222)/10._dp - (9*g2p2*M222)/2._dp + 6*Lam2*M222 +              & 
&  2*Lam2p*mS2 + 6*M222*TrepsDadjepsD + 2*M222*TrepsEadjepsE + 6*M222*TrepsUadjepsU +    & 
&  2*mSp2*Conjg(Lam5p) - 6*M122*Conjg(Lam7) - 6*Lam7*Conjg(M122) + 2*Lam5p*Conjg(mSp2)

 
 
If (TwoLoopRGE) Then 
betaM2222 = 0

 
DM222 = oo16pi2*( betaM2221 + oo16pi2 * betaM2222 ) 

 
Else 
DM222 = oo16pi2* betaM2221 
End If 
 
 
!-------------------- 
! mS2 
!-------------------- 
 
betamS21  = 4._dp*(Absmu11) + 4._dp*(Absmu12) + 4._dp*(Absmu21) + 4._dp*(Absmu22)     & 
&  + Absmus1 + 3._dp*(Absmus2) + 4*Lam1p*M112 + 4*Lam2p*M222 + 2*L3pp*mS2 +              & 
&  mSp2*Conjg(L2pp) - 4*M122*Conjg(Lam3p) - 4*Lam3p*Conjg(M122) + L2pp*Conjg(mSp2)

 
 
If (TwoLoopRGE) Then 
betamS22 = 0

 
DmS2 = oo16pi2*( betamS21 + oo16pi2 * betamS22 ) 

 
Else 
DmS2 = oo16pi2* betamS21 
End If 
 
 
!-------------------- 
! mSp2 
!-------------------- 
 
betamSp21  = 8*Lam4p*M112 - 8*Lam7p*M122 + 8*Lam5p*M222 + 2*L2pp*mS2 + L3pp*mSp2 +    & 
&  4._dp*(mu11p2) + 8*mu12*mu21 + 4._dp*(mu22p2) + 2._dp*(mus2p2) - 8*Lam6p*Conjg(M122)  & 
&  + L1pp*Conjg(mSp2) + 2*mus1*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamSp22 = 0

 
DmSp2 = oo16pi2*( betamSp21 + oo16pi2 * betamSp22 ) 

 
Else 
DmSp2 = oo16pi2* betamSp21 
End If 
 
 
Call Chop(DmSp2) 

Call ParametersToG157(Dg1,Dg2,Dg3,DLam6,DLam5,DLam7,DLam1,DLam4,DLam3,DLam2,          & 
& DLam1p,DLam2p,DL3pp,DL1pp,DLam4p,DLam6p,DLam7p,DLam5p,DL2pp,DLam3p,DYu,DepsU,          & 
& DYd,DYe,DepsD,DepsE,Dmus1,Dmu11,Dmu12,Dmu21,Dmu22,Dmus2,DM122,DM112,DM222,             & 
& DmS2,DmSp2,f)

Iname = Iname - 1 
 
End Subroutine rge157  

Subroutine GToParameters160(g,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,            & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS)

Implicit None 
Real(dp), Intent(in) :: g(160) 
Real(dp),Intent(out) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp),Intent(out) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'GToParameters160' 
 
g1= g(1) 
g2= g(2) 
g3= g(3) 
Lam6= Cmplx(g(4),g(5),dp) 
Lam5= Cmplx(g(6),g(7),dp) 
Lam7= Cmplx(g(8),g(9),dp) 
Lam1= g(10) 
Lam4= g(11) 
Lam3= g(12) 
Lam2= g(13) 
Lam1p= g(14) 
Lam2p= g(15) 
L3pp= g(16) 
L1pp= Cmplx(g(17),g(18),dp) 
Lam4p= Cmplx(g(19),g(20),dp) 
Lam6p= Cmplx(g(21),g(22),dp) 
Lam7p= Cmplx(g(23),g(24),dp) 
Lam5p= Cmplx(g(25),g(26),dp) 
L2pp= Cmplx(g(27),g(28),dp) 
Lam3p= Cmplx(g(29),g(30),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yu(i1,i2) = Cmplx( g(SumI+31), g(SumI+32), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsU(i1,i2) = Cmplx( g(SumI+49), g(SumI+50), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yd(i1,i2) = Cmplx( g(SumI+67), g(SumI+68), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Ye(i1,i2) = Cmplx( g(SumI+85), g(SumI+86), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsD(i1,i2) = Cmplx( g(SumI+103), g(SumI+104), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsE(i1,i2) = Cmplx( g(SumI+121), g(SumI+122), dp) 
End Do 
 End Do 
 
mus1= Cmplx(g(139),g(140),dp) 
mu11= Cmplx(g(141),g(142),dp) 
mu12= Cmplx(g(143),g(144),dp) 
mu21= Cmplx(g(145),g(146),dp) 
mu22= Cmplx(g(147),g(148),dp) 
mus2= Cmplx(g(149),g(150),dp) 
M122= Cmplx(g(151),g(152),dp) 
M112= g(153) 
M222= g(154) 
mS2= g(155) 
mSp2= Cmplx(g(156),g(157),dp) 
vd= g(158) 
vu= g(159) 
vS= g(160) 
Do i1=1,160 
If (g(i1).ne.g(i1)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Write(*,*) "At position ", i1 
 Call TerminateProgram 
End if 
End do 
Iname = Iname - 1 
 
End Subroutine GToParameters160

Subroutine ParametersToG160(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,              & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,g)

Implicit None 
Real(dp), Intent(out) :: g(160) 
Real(dp), Intent(in) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp), Intent(in) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'ParametersToG160' 
 
g(1) = g1  
g(2) = g2  
g(3) = g3  
g(4) = Real(Lam6,dp)  
g(5) = Aimag(Lam6)  
g(6) = Real(Lam5,dp)  
g(7) = Aimag(Lam5)  
g(8) = Real(Lam7,dp)  
g(9) = Aimag(Lam7)  
g(10) = Lam1  
g(11) = Lam4  
g(12) = Lam3  
g(13) = Lam2  
g(14) = Lam1p  
g(15) = Lam2p  
g(16) = L3pp  
g(17) = Real(L1pp,dp)  
g(18) = Aimag(L1pp)  
g(19) = Real(Lam4p,dp)  
g(20) = Aimag(Lam4p)  
g(21) = Real(Lam6p,dp)  
g(22) = Aimag(Lam6p)  
g(23) = Real(Lam7p,dp)  
g(24) = Aimag(Lam7p)  
g(25) = Real(Lam5p,dp)  
g(26) = Aimag(Lam5p)  
g(27) = Real(L2pp,dp)  
g(28) = Aimag(L2pp)  
g(29) = Real(Lam3p,dp)  
g(30) = Aimag(Lam3p)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+31) = Real(Yu(i1,i2), dp) 
g(SumI+32) = Aimag(Yu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+49) = Real(epsU(i1,i2), dp) 
g(SumI+50) = Aimag(epsU(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+67) = Real(Yd(i1,i2), dp) 
g(SumI+68) = Aimag(Yd(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+85) = Real(Ye(i1,i2), dp) 
g(SumI+86) = Aimag(Ye(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+103) = Real(epsD(i1,i2), dp) 
g(SumI+104) = Aimag(epsD(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+121) = Real(epsE(i1,i2), dp) 
g(SumI+122) = Aimag(epsE(i1,i2)) 
End Do 
End Do 

g(139) = Real(mus1,dp)  
g(140) = Aimag(mus1)  
g(141) = Real(mu11,dp)  
g(142) = Aimag(mu11)  
g(143) = Real(mu12,dp)  
g(144) = Aimag(mu12)  
g(145) = Real(mu21,dp)  
g(146) = Aimag(mu21)  
g(147) = Real(mu22,dp)  
g(148) = Aimag(mu22)  
g(149) = Real(mus2,dp)  
g(150) = Aimag(mus2)  
g(151) = Real(M122,dp)  
g(152) = Aimag(M122)  
g(153) = M112  
g(154) = M222  
g(155) = mS2  
g(156) = Real(mSp2,dp)  
g(157) = Aimag(mSp2)  
g(158) = vd  
g(159) = vu  
g(160) = vS  
Iname = Iname - 1 
 
End Subroutine ParametersToG160

Subroutine rge160(len, T, GY, F) 
Implicit None 
Integer, Intent(in) :: len 
Real(dp), Intent(in) :: T, GY(len) 
Real(dp), Intent(out) :: F(len) 
Integer :: i1,i2,i3,i4 
Integer :: j1,j2,j3,j4,j5,j6,j7 
Real(dp) :: q 
Real(dp) :: g1,betag11,betag12,Dg1,g2,betag21,betag22,Dg2,g3,betag31,betag32,         & 
& Dg3,Lam1,betaLam11,betaLam12,DLam1,Lam4,betaLam41,betaLam42,DLam4,Lam3,betaLam31,      & 
& betaLam32,DLam3,Lam2,betaLam21,betaLam22,DLam2,Lam1p,betaLam1p1,betaLam1p2,            & 
& DLam1p,Lam2p,betaLam2p1,betaLam2p2,DLam2p,L3pp,betaL3pp1,betaL3pp2,DL3pp,              & 
& M112,betaM1121,betaM1122,DM112,M222,betaM2221,betaM2222,DM222,mS2,betamS21,            & 
& betamS22,DmS2,vd,betavd1,betavd2,Dvd,vu,betavu1,betavu2,Dvu,vS,betavS1,betavS2,DvS
Complex(dp) :: Lam6,betaLam61,betaLam62,DLam6,Lam5,betaLam51,betaLam52,               & 
& DLam5,Lam7,betaLam71,betaLam72,DLam7,L1pp,betaL1pp1,betaL1pp2,DL1pp,Lam4p,             & 
& betaLam4p1,betaLam4p2,DLam4p,Lam6p,betaLam6p1,betaLam6p2,DLam6p,Lam7p,betaLam7p1,      & 
& betaLam7p2,DLam7p,Lam5p,betaLam5p1,betaLam5p2,DLam5p,L2pp,betaL2pp1,betaL2pp2,         & 
& DL2pp,Lam3p,betaLam3p1,betaLam3p2,DLam3p,Yu(3,3),betaYu1(3,3),betaYu2(3,3)             & 
& ,DYu(3,3),adjYu(3,3),epsU(3,3),betaepsU1(3,3),betaepsU2(3,3),DepsU(3,3),               & 
& adjepsU(3,3),Yd(3,3),betaYd1(3,3),betaYd2(3,3),DYd(3,3),adjYd(3,3),Ye(3,3)             & 
& ,betaYe1(3,3),betaYe2(3,3),DYe(3,3),adjYe(3,3),epsD(3,3),betaepsD1(3,3),               & 
& betaepsD2(3,3),DepsD(3,3),adjepsD(3,3),epsE(3,3),betaepsE1(3,3),betaepsE2(3,3)         & 
& ,DepsE(3,3),adjepsE(3,3),mus1,betamus11,betamus12,Dmus1,mu11,betamu111,betamu112,      & 
& Dmu11,mu12,betamu121,betamu122,Dmu12,mu21,betamu211,betamu212,Dmu21,mu22,              & 
& betamu221,betamu222,Dmu22,mus2,betamus21,betamus22,Dmus2,M122,betaM1221,               & 
& betaM1222,DM122,mSp2,betamSp21,betamSp22,DmSp2
Real(dp) :: AbsLam6,AbsLam5,AbsLam7,AbsL1pp,AbsLam4p,AbsLam6p,AbsLam7p,               & 
& AbsLam5p,AbsL2pp,AbsLam3p,Absmus1,Absmu11,Absmu12,Absmu21,Absmu22,Absmus2
Complex(dp) :: epsDadjepsD(3,3),epsDadjYd(3,3),epsEadjepsE(3,3),epsEadjYe(3,3),epsUadjepsU(3,3),     & 
& epsUadjYd(3,3),epsUadjYu(3,3),YdadjepsD(3,3),YdadjepsU(3,3),YdadjYd(3,3),              & 
& YeadjepsE(3,3),YeadjYe(3,3),YuadjepsD(3,3),YuadjepsU(3,3),YuadjYu(3,3),adjepsDepsD(3,3),& 
& adjepsDYd(3,3),adjepsEepsE(3,3),adjepsEYe(3,3),adjepsUepsU(3,3),adjepsUYu(3,3),        & 
& adjYdepsD(3,3),adjYdYd(3,3),adjYeepsE(3,3),adjYeYe(3,3),adjYuepsU(3,3),adjYuYu(3,3),   & 
& epsDadjepsDepsD(3,3),epsDadjepsDYd(3,3),epsDadjepsUepsU(3,3),epsDadjYdYd(3,3),         & 
& epsDadjYuepsU(3,3),epsDadjYuYu(3,3),epsEadjepsEepsE(3,3),epsEadjepsEYe(3,3),           & 
& epsEadjYeYe(3,3),epsUadjepsDepsD(3,3),epsUadjepsUepsU(3,3),epsUadjepsUYu(3,3),         & 
& epsUadjYdepsD(3,3),epsUadjYdYd(3,3),epsUadjYuYu(3,3),YdadjepsDepsD(3,3),               & 
& YdadjepsUepsU(3,3),YdadjepsUYu(3,3),YdadjYdepsD(3,3),YdadjYdYd(3,3),YdadjYuYu(3,3),    & 
& YeadjepsEepsE(3,3),YeadjYeepsE(3,3),YeadjYeYe(3,3),YuadjepsDepsD(3,3),YuadjepsDYd(3,3),& 
& YuadjepsUepsU(3,3),YuadjYdYd(3,3),YuadjYuepsU(3,3),YuadjYuYu(3,3),adjepsDepsDadjepsD(3,3),& 
& adjepsDYdadjepsD(3,3),adjepsDYdadjYd(3,3),adjepsEepsEadjepsE(3,3),adjepsEYeadjepsE(3,3),& 
& adjepsEYeadjYe(3,3),adjepsUepsUadjepsU(3,3),adjepsUepsUadjYu(3,3),adjepsUYuadjepsD(3,3),& 
& adjepsUYuadjYu(3,3),adjYdYdadjepsD(3,3),adjYdYdadjepsU(3,3),adjYdYdadjYd(3,3),         & 
& adjYeYeadjepsE(3,3),adjYeYeadjYe(3,3),adjYuepsUadjepsU(3,3),adjYuepsUadjYd(3,3),       & 
& adjYuepsUadjYu(3,3),adjYuYuadjepsD(3,3),adjYuYuadjepsU(3,3),adjYuYuadjYu(3,3),         & 
& epsDadjepsDepsDadjepsD(3,3),epsDadjepsDYdadjepsD(3,3),epsDadjepsDYdadjYd(3,3),         & 
& epsDadjYdYdadjepsD(3,3),epsDadjYuepsUadjYd(3,3),epsDadjYuYuadjepsD(3,3),               & 
& epsEadjepsEepsEadjepsE(3,3),epsEadjepsEYeadjepsE(3,3),epsEadjepsEYeadjYe(3,3),         & 
& epsEadjYeYeadjepsE(3,3),epsUadjepsUepsUadjepsU(3,3),epsUadjepsUepsUadjYu(3,3),         & 
& epsUadjepsUYuadjYu(3,3),epsUadjYdYdadjepsU(3,3),epsUadjYuepsUadjepsU(3,3),             & 
& epsUadjYuepsUadjYu(3,3),epsUadjYuYuadjepsU(3,3),epsUadjYuYuadjYu(3,3),YdadjepsDYdadjepsD(3,3),& 
& YdadjepsDYdadjYd(3,3),YdadjepsUYuadjepsD(3,3),YdadjYdYdadjepsD(3,3),YdadjYdYdadjYd(3,3),& 
& YeadjepsEYeadjepsE(3,3),YeadjepsEYeadjYe(3,3),YeadjYeYeadjepsE(3,3),YeadjYeYeadjYe(3,3),& 
& YuadjYuYuadjYu(3,3)

Complex(dp) :: TrepsDadjepsD,TrepsDadjYd,TrepsEadjepsE,TrepsEadjYe,TrepsUadjepsU,TrepsUadjYu,        & 
& TrYdadjepsD,TrYdadjYd,TrYeadjepsE,TrYeadjYe,TrYuadjepsU,TrYuadjYu,TrepsDadjepsDepsDadjepsD,& 
& TrepsDadjepsDYdadjepsD,TrepsDadjepsDYdadjYd,TrepsDadjYdYdadjepsD,TrepsDadjYuepsUadjYd, & 
& TrepsDadjYuYuadjepsD,TrepsEadjepsEepsEadjepsE,TrepsEadjepsEYeadjepsE,TrepsEadjepsEYeadjYe,& 
& TrepsEadjYeYeadjepsE,TrepsUadjepsUepsUadjepsU,TrepsUadjepsUepsUadjYu,TrepsUadjepsUYuadjYu,& 
& TrepsUadjYdYdadjepsU,TrepsUadjYuepsUadjepsU,TrepsUadjYuepsUadjYu,TrepsUadjYuYuadjepsU, & 
& TrepsUadjYuYuadjYu,TrYdadjepsDYdadjepsD,TrYdadjepsDYdadjYd,TrYdadjepsUYuadjepsD,       & 
& TrYdadjYdYdadjepsD,TrYdadjYdYdadjYd,TrYeadjepsEYeadjepsE,TrYeadjepsEYeadjYe,           & 
& TrYeadjYeYeadjepsE,TrYeadjYeYeadjYe,TrYuadjYuYuadjYu

Real(dp) :: g1p2,g1p3,g1p4,g2p2,g2p3,g2p4,g3p2,g3p3,Lam1p2,Lam1pp2,Lam2p2,Lam2pp2,Lam3p2,         & 
& L3ppp2,Lam4p2

Complex(dp) :: L2ppp2,Lam3pp2,Lam4pp2,Lam5pp2,Lam6p2,Lam7p2,mu11p2,mu22p2,mus2p2

Iname = Iname +1 
NameOfUnit(Iname) = 'rge160' 
 
OnlyDiagonal = .Not.GenerationMixing 
q = t 
 
Call GToParameters160(gy,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,           & 
& Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,            & 
& mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS)

AbsLam6 = Conjg(Lam6)*Lam6
AbsLam5 = Conjg(Lam5)*Lam5
AbsLam7 = Conjg(Lam7)*Lam7
AbsL1pp = Conjg(L1pp)*L1pp
AbsLam4p = Conjg(Lam4p)*Lam4p
AbsLam6p = Conjg(Lam6p)*Lam6p
AbsLam7p = Conjg(Lam7p)*Lam7p
AbsLam5p = Conjg(Lam5p)*Lam5p
AbsL2pp = Conjg(L2pp)*L2pp
AbsLam3p = Conjg(Lam3p)*Lam3p
Absmus1 = Conjg(mus1)*mus1
Absmu11 = Conjg(mu11)*mu11
Absmu12 = Conjg(mu12)*mu12
Absmu21 = Conjg(mu21)*mu21
Absmu22 = Conjg(mu22)*mu22
Absmus2 = Conjg(mus2)*mus2
Call Adjungate(Yu,adjYu)
Call Adjungate(epsU,adjepsU)
Call Adjungate(Yd,adjYd)
Call Adjungate(Ye,adjYe)
Call Adjungate(epsD,adjepsD)
Call Adjungate(epsE,adjepsE)
 epsDadjepsD = Matmul(epsD,adjepsD) 
Forall(i2=1:3)  epsDadjepsD(i2,i2) =  Real(epsDadjepsD(i2,i2),dp) 
 epsDadjYd = Matmul(epsD,adjYd) 
 epsEadjepsE = Matmul(epsE,adjepsE) 
Forall(i2=1:3)  epsEadjepsE(i2,i2) =  Real(epsEadjepsE(i2,i2),dp) 
 epsEadjYe = Matmul(epsE,adjYe) 
 epsUadjepsU = Matmul(epsU,adjepsU) 
Forall(i2=1:3)  epsUadjepsU(i2,i2) =  Real(epsUadjepsU(i2,i2),dp) 
 epsUadjYd = Matmul(epsU,adjYd) 
 epsUadjYu = Matmul(epsU,adjYu) 
 YdadjepsD = Matmul(Yd,adjepsD) 
 YdadjepsU = Matmul(Yd,adjepsU) 
 YdadjYd = Matmul(Yd,adjYd) 
Forall(i2=1:3)  YdadjYd(i2,i2) =  Real(YdadjYd(i2,i2),dp) 
 YeadjepsE = Matmul(Ye,adjepsE) 
 YeadjYe = Matmul(Ye,adjYe) 
Forall(i2=1:3)  YeadjYe(i2,i2) =  Real(YeadjYe(i2,i2),dp) 
 YuadjepsD = Matmul(Yu,adjepsD) 
 YuadjepsU = Matmul(Yu,adjepsU) 
 YuadjYu = Matmul(Yu,adjYu) 
Forall(i2=1:3)  YuadjYu(i2,i2) =  Real(YuadjYu(i2,i2),dp) 
 adjepsDepsD = Matmul(adjepsD,epsD) 
Forall(i2=1:3)  adjepsDepsD(i2,i2) =  Real(adjepsDepsD(i2,i2),dp) 
 adjepsDYd = Matmul(adjepsD,Yd) 
 adjepsEepsE = Matmul(adjepsE,epsE) 
Forall(i2=1:3)  adjepsEepsE(i2,i2) =  Real(adjepsEepsE(i2,i2),dp) 
 adjepsEYe = Matmul(adjepsE,Ye) 
 adjepsUepsU = Matmul(adjepsU,epsU) 
Forall(i2=1:3)  adjepsUepsU(i2,i2) =  Real(adjepsUepsU(i2,i2),dp) 
 adjepsUYu = Matmul(adjepsU,Yu) 
 adjYdepsD = Matmul(adjYd,epsD) 
 adjYdYd = Matmul(adjYd,Yd) 
Forall(i2=1:3)  adjYdYd(i2,i2) =  Real(adjYdYd(i2,i2),dp) 
 adjYeepsE = Matmul(adjYe,epsE) 
 adjYeYe = Matmul(adjYe,Ye) 
Forall(i2=1:3)  adjYeYe(i2,i2) =  Real(adjYeYe(i2,i2),dp) 
 adjYuepsU = Matmul(adjYu,epsU) 
 adjYuYu = Matmul(adjYu,Yu) 
Forall(i2=1:3)  adjYuYu(i2,i2) =  Real(adjYuYu(i2,i2),dp) 
 epsDadjepsDepsD = Matmul(epsD,adjepsDepsD) 
 epsDadjepsDYd = Matmul(epsD,adjepsDYd) 
 epsDadjepsUepsU = Matmul(epsD,adjepsUepsU) 
 epsDadjYdYd = Matmul(epsD,adjYdYd) 
 epsDadjYuepsU = Matmul(epsD,adjYuepsU) 
 epsDadjYuYu = Matmul(epsD,adjYuYu) 
 epsEadjepsEepsE = Matmul(epsE,adjepsEepsE) 
 epsEadjepsEYe = Matmul(epsE,adjepsEYe) 
 epsEadjYeYe = Matmul(epsE,adjYeYe) 
 epsUadjepsDepsD = Matmul(epsU,adjepsDepsD) 
 epsUadjepsUepsU = Matmul(epsU,adjepsUepsU) 
 epsUadjepsUYu = Matmul(epsU,adjepsUYu) 
 epsUadjYdepsD = Matmul(epsU,adjYdepsD) 
 epsUadjYdYd = Matmul(epsU,adjYdYd) 
 epsUadjYuYu = Matmul(epsU,adjYuYu) 
 YdadjepsDepsD = Matmul(Yd,adjepsDepsD) 
 YdadjepsUepsU = Matmul(Yd,adjepsUepsU) 
 YdadjepsUYu = Matmul(Yd,adjepsUYu) 
 YdadjYdepsD = Matmul(Yd,adjYdepsD) 
 YdadjYdYd = Matmul(Yd,adjYdYd) 
 YdadjYuYu = Matmul(Yd,adjYuYu) 
 YeadjepsEepsE = Matmul(Ye,adjepsEepsE) 
 YeadjYeepsE = Matmul(Ye,adjYeepsE) 
 YeadjYeYe = Matmul(Ye,adjYeYe) 
 YuadjepsDepsD = Matmul(Yu,adjepsDepsD) 
 YuadjepsDYd = Matmul(Yu,adjepsDYd) 
 YuadjepsUepsU = Matmul(Yu,adjepsUepsU) 
 YuadjYdYd = Matmul(Yu,adjYdYd) 
 YuadjYuepsU = Matmul(Yu,adjYuepsU) 
 YuadjYuYu = Matmul(Yu,adjYuYu) 
 adjepsDepsDadjepsD = Matmul(adjepsD,epsDadjepsD) 
 adjepsDYdadjepsD = Matmul(adjepsD,YdadjepsD) 
 adjepsDYdadjYd = Matmul(adjepsD,YdadjYd) 
 adjepsEepsEadjepsE = Matmul(adjepsE,epsEadjepsE) 
 adjepsEYeadjepsE = Matmul(adjepsE,YeadjepsE) 
 adjepsEYeadjYe = Matmul(adjepsE,YeadjYe) 
 adjepsUepsUadjepsU = Matmul(adjepsU,epsUadjepsU) 
 adjepsUepsUadjYu = Matmul(adjepsU,epsUadjYu) 
 adjepsUYuadjepsD = Matmul(adjepsU,YuadjepsD) 
 adjepsUYuadjYu = Matmul(adjepsU,YuadjYu) 
 adjYdYdadjepsD = Matmul(adjYd,YdadjepsD) 
 adjYdYdadjepsU = Matmul(adjYd,YdadjepsU) 
 adjYdYdadjYd = Matmul(adjYd,YdadjYd) 
 adjYeYeadjepsE = Matmul(adjYe,YeadjepsE) 
 adjYeYeadjYe = Matmul(adjYe,YeadjYe) 
 adjYuepsUadjepsU = Matmul(adjYu,epsUadjepsU) 
 adjYuepsUadjYd = Matmul(adjYu,epsUadjYd) 
 adjYuepsUadjYu = Matmul(adjYu,epsUadjYu) 
 adjYuYuadjepsD = Matmul(adjYu,YuadjepsD) 
 adjYuYuadjepsU = Matmul(adjYu,YuadjepsU) 
 adjYuYuadjYu = Matmul(adjYu,YuadjYu) 
 epsDadjepsDepsDadjepsD = Matmul(epsD,adjepsDepsDadjepsD) 
Forall(i2=1:3)  epsDadjepsDepsDadjepsD(i2,i2) =  Real(epsDadjepsDepsDadjepsD(i2,i2),dp) 
 epsDadjepsDYdadjepsD = Matmul(epsD,adjepsDYdadjepsD) 
 epsDadjepsDYdadjYd = Matmul(epsD,adjepsDYdadjYd) 
 epsDadjYdYdadjepsD = Matmul(epsD,adjYdYdadjepsD) 
Forall(i2=1:3)  epsDadjYdYdadjepsD(i2,i2) =  Real(epsDadjYdYdadjepsD(i2,i2),dp) 
 epsDadjYuepsUadjYd = Matmul(epsD,adjYuepsUadjYd) 
 epsDadjYuYuadjepsD = Matmul(epsD,adjYuYuadjepsD) 
Forall(i2=1:3)  epsDadjYuYuadjepsD(i2,i2) =  Real(epsDadjYuYuadjepsD(i2,i2),dp) 
 epsEadjepsEepsEadjepsE = Matmul(epsE,adjepsEepsEadjepsE) 
Forall(i2=1:3)  epsEadjepsEepsEadjepsE(i2,i2) =  Real(epsEadjepsEepsEadjepsE(i2,i2),dp) 
 epsEadjepsEYeadjepsE = Matmul(epsE,adjepsEYeadjepsE) 
 epsEadjepsEYeadjYe = Matmul(epsE,adjepsEYeadjYe) 
 epsEadjYeYeadjepsE = Matmul(epsE,adjYeYeadjepsE) 
Forall(i2=1:3)  epsEadjYeYeadjepsE(i2,i2) =  Real(epsEadjYeYeadjepsE(i2,i2),dp) 
 epsUadjepsUepsUadjepsU = Matmul(epsU,adjepsUepsUadjepsU) 
Forall(i2=1:3)  epsUadjepsUepsUadjepsU(i2,i2) =  Real(epsUadjepsUepsUadjepsU(i2,i2),dp) 
 epsUadjepsUepsUadjYu = Matmul(epsU,adjepsUepsUadjYu) 
 epsUadjepsUYuadjYu = Matmul(epsU,adjepsUYuadjYu) 
 epsUadjYdYdadjepsU = Matmul(epsU,adjYdYdadjepsU) 
Forall(i2=1:3)  epsUadjYdYdadjepsU(i2,i2) =  Real(epsUadjYdYdadjepsU(i2,i2),dp) 
 epsUadjYuepsUadjepsU = Matmul(epsU,adjYuepsUadjepsU) 
 epsUadjYuepsUadjYu = Matmul(epsU,adjYuepsUadjYu) 
 epsUadjYuYuadjepsU = Matmul(epsU,adjYuYuadjepsU) 
Forall(i2=1:3)  epsUadjYuYuadjepsU(i2,i2) =  Real(epsUadjYuYuadjepsU(i2,i2),dp) 
 epsUadjYuYuadjYu = Matmul(epsU,adjYuYuadjYu) 
 YdadjepsDYdadjepsD = Matmul(Yd,adjepsDYdadjepsD) 
 YdadjepsDYdadjYd = Matmul(Yd,adjepsDYdadjYd) 
 YdadjepsUYuadjepsD = Matmul(Yd,adjepsUYuadjepsD) 
 YdadjYdYdadjepsD = Matmul(Yd,adjYdYdadjepsD) 
 YdadjYdYdadjYd = Matmul(Yd,adjYdYdadjYd) 
Forall(i2=1:3)  YdadjYdYdadjYd(i2,i2) =  Real(YdadjYdYdadjYd(i2,i2),dp) 
 YeadjepsEYeadjepsE = Matmul(Ye,adjepsEYeadjepsE) 
 YeadjepsEYeadjYe = Matmul(Ye,adjepsEYeadjYe) 
 YeadjYeYeadjepsE = Matmul(Ye,adjYeYeadjepsE) 
 YeadjYeYeadjYe = Matmul(Ye,adjYeYeadjYe) 
Forall(i2=1:3)  YeadjYeYeadjYe(i2,i2) =  Real(YeadjYeYeadjYe(i2,i2),dp) 
 YuadjYuYuadjYu = Matmul(Yu,adjYuYuadjYu) 
Forall(i2=1:3)  YuadjYuYuadjYu(i2,i2) =  Real(YuadjYuYuadjYu(i2,i2),dp) 
 TrepsDadjepsD = Real(cTrace(epsDadjepsD),dp) 
 TrepsDadjYd = cTrace(epsDadjYd) 
 TrepsEadjepsE = Real(cTrace(epsEadjepsE),dp) 
 TrepsEadjYe = cTrace(epsEadjYe) 
 TrepsUadjepsU = Real(cTrace(epsUadjepsU),dp) 
 TrepsUadjYu = cTrace(epsUadjYu) 
 TrYdadjepsD = cTrace(YdadjepsD) 
 TrYdadjYd = Real(cTrace(YdadjYd),dp) 
 TrYeadjepsE = cTrace(YeadjepsE) 
 TrYeadjYe = Real(cTrace(YeadjYe),dp) 
 TrYuadjepsU = cTrace(YuadjepsU) 
 TrYuadjYu = Real(cTrace(YuadjYu),dp) 
 TrepsDadjepsDepsDadjepsD = Real(cTrace(epsDadjepsDepsDadjepsD),dp) 
 TrepsDadjepsDYdadjepsD = cTrace(epsDadjepsDYdadjepsD) 
 TrepsDadjepsDYdadjYd = cTrace(epsDadjepsDYdadjYd) 
 TrepsDadjYdYdadjepsD = Real(cTrace(epsDadjYdYdadjepsD),dp) 
 TrepsDadjYuepsUadjYd = cTrace(epsDadjYuepsUadjYd) 
 TrepsDadjYuYuadjepsD = Real(cTrace(epsDadjYuYuadjepsD),dp) 
 TrepsEadjepsEepsEadjepsE = Real(cTrace(epsEadjepsEepsEadjepsE),dp) 
 TrepsEadjepsEYeadjepsE = cTrace(epsEadjepsEYeadjepsE) 
 TrepsEadjepsEYeadjYe = cTrace(epsEadjepsEYeadjYe) 
 TrepsEadjYeYeadjepsE = Real(cTrace(epsEadjYeYeadjepsE),dp) 
 TrepsUadjepsUepsUadjepsU = Real(cTrace(epsUadjepsUepsUadjepsU),dp) 
 TrepsUadjepsUepsUadjYu = cTrace(epsUadjepsUepsUadjYu) 
 TrepsUadjepsUYuadjYu = cTrace(epsUadjepsUYuadjYu) 
 TrepsUadjYdYdadjepsU = Real(cTrace(epsUadjYdYdadjepsU),dp) 
 TrepsUadjYuepsUadjepsU = cTrace(epsUadjYuepsUadjepsU) 
 TrepsUadjYuepsUadjYu = cTrace(epsUadjYuepsUadjYu) 
 TrepsUadjYuYuadjepsU = Real(cTrace(epsUadjYuYuadjepsU),dp) 
 TrepsUadjYuYuadjYu = cTrace(epsUadjYuYuadjYu) 
 TrYdadjepsDYdadjepsD = cTrace(YdadjepsDYdadjepsD) 
 TrYdadjepsDYdadjYd = cTrace(YdadjepsDYdadjYd) 
 TrYdadjepsUYuadjepsD = cTrace(YdadjepsUYuadjepsD) 
 TrYdadjYdYdadjepsD = cTrace(YdadjYdYdadjepsD) 
 TrYdadjYdYdadjYd = Real(cTrace(YdadjYdYdadjYd),dp) 
 TrYeadjepsEYeadjepsE = cTrace(YeadjepsEYeadjepsE) 
 TrYeadjepsEYeadjYe = cTrace(YeadjepsEYeadjYe) 
 TrYeadjYeYeadjepsE = cTrace(YeadjYeYeadjepsE) 
 TrYeadjYeYeadjYe = Real(cTrace(YeadjYeYeadjYe),dp) 
 TrYuadjYuYuadjYu = Real(cTrace(YuadjYuYuadjYu),dp) 
 g1p2 =g1**2 
 g1p3 =g1**3 
 g1p4 =g1**4 
 g2p2 =g2**2 
 g2p3 =g2**3 
 g2p4 =g2**4 
 g3p2 =g3**2 
 g3p3 =g3**3 
 Lam1p2 =Lam1**2 
 Lam1pp2 =Lam1p**2 
 Lam2p2 =Lam2**2 
 Lam2pp2 =Lam2p**2 
 L2ppp2 =L2pp**2 
 Lam3p2 =Lam3**2 
 Lam3pp2 =Lam3p**2 
 L3ppp2 =L3pp**2 
 Lam4p2 =Lam4**2 
 Lam4pp2 =Lam4p**2 
 Lam5pp2 =Lam5p**2 
 Lam6p2 =Lam6**2 
 Lam7p2 =Lam7**2 
 mu11p2 =mu11**2 
 mu22p2 =mu22**2 
 mus2p2 =mus2**2 


If (TwoLoopRGE) Then 
End If 
 
 
!-------------------- 
! g1 
!-------------------- 
 
betag11  = 21._dp*(g1p3)/5._dp

 
 
If (TwoLoopRGE) Then 
betag12 = 0

 
Dg1 = oo16pi2*( betag11 + oo16pi2 * betag12 ) 

 
Else 
Dg1 = oo16pi2* betag11 
End If 
 
 
!-------------------- 
! g2 
!-------------------- 
 
betag21  = -3._dp*(g2p3)

 
 
If (TwoLoopRGE) Then 
betag22 = 0

 
Dg2 = oo16pi2*( betag21 + oo16pi2 * betag22 ) 

 
Else 
Dg2 = oo16pi2* betag21 
End If 
 
 
!-------------------- 
! g3 
!-------------------- 
 
betag31  = -7._dp*(g3p3)

 
 
If (TwoLoopRGE) Then 
betag32 = 0

 
Dg3 = oo16pi2*( betag31 + oo16pi2 * betag32 ) 

 
Else 
Dg3 = oo16pi2* betag31 
End If 
 
 
!-------------------- 
! Lam6 
!-------------------- 
 
betaLam61  = 2*Lam1p*Lam3p - (9*g1p2*Lam6)/5._dp - 9*g2p2*Lam6 + 12*Lam1*Lam6 +       & 
&  6*Lam3*Lam6 + 8*Lam4*Lam6 + 6*Lam3*Lam7 + 4*Lam4*Lam7 + 3*Lam6*TrepsDadjepsD +        & 
&  3*Lam5*TrepsDadjYd + Lam6*TrepsEadjepsE + Lam5*TrepsEadjYe + 3*Lam6*TrepsUadjepsU +   & 
&  3*Lam1*TrepsUadjYu + 3*Lam3*TrepsUadjYu + 3*Lam4*TrepsUadjYu - 12._dp*(TrepsUadjYuYuadjYu)& 
&  + 3*Lam1*TrYdadjepsD + 3*Lam3*TrYdadjepsD + 3*Lam4*TrYdadjepsD - 6._dp*(TrYdadjepsDYdadjYd)& 
&  + 9*Lam6*TrYdadjYd - 6._dp*(TrYdadjYdYdadjepsD) + Lam1*TrYeadjepsE + Lam3*TrYeadjepsE +& 
&  Lam4*TrYeadjepsE - 2._dp*(TrYeadjepsEYeadjYe) + 3*Lam6*TrYeadjYe - 2._dp*(TrYeadjYeYeadjepsE)& 
&  + 3*Lam5*TrYuadjepsU + 9*Lam6*TrYuadjYu + 4*Lam6p*Conjg(Lam4p) + 10*Lam5*Conjg(Lam6)  & 
&  + 2*Lam5*Conjg(Lam7) + 4*Lam4p*Conjg(Lam7p)

 
 
If (TwoLoopRGE) Then 
betaLam62 = 0

 
DLam6 = oo16pi2*( betaLam61 + oo16pi2 * betaLam62 ) 

 
Else 
DLam6 = oo16pi2* betaLam61 
End If 
 
 
Call Chop(DLam6) 

!-------------------- 
! Lam5 
!-------------------- 
 
betaLam51  = 2._dp*(Lam3pp2) + 10._dp*(Lam6p2) + 10._dp*(Lam7p2) - (9*g1p2*Lam5)      & 
& /5._dp - 9*g2p2*Lam5 + 2*Lam1*Lam5 + 2*Lam2*Lam5 + 8*Lam3*Lam5 + 12*Lam4*Lam5 +        & 
&  4*Lam6*Lam7 + 6*Lam5*TrepsDadjepsD + 2*Lam5*TrepsEadjepsE + 6*Lam5*TrepsUadjepsU +    & 
&  6*Lam6*TrepsUadjYu + 6*Lam7*TrepsUadjYu - 12._dp*(TrepsUadjYuepsUadjYu)               & 
&  + 6*Lam6*TrYdadjepsD + 6*Lam7*TrYdadjepsD - 12._dp*(TrYdadjepsDYdadjepsD)             & 
&  + 6*Lam5*TrYdadjYd + 2*Lam6*TrYeadjepsE + 2*Lam7*TrYeadjepsE - 4._dp*(TrYeadjepsEYeadjepsE)& 
&  + 2*Lam5*TrYeadjYe + 6*Lam5*TrYuadjYu + 8*Lam6p*Conjg(Lam7p)

 
 
If (TwoLoopRGE) Then 
betaLam52 = 0

 
DLam5 = oo16pi2*( betaLam51 + oo16pi2 * betaLam52 ) 

 
Else 
DLam5 = oo16pi2* betaLam51 
End If 
 
 
Call Chop(DLam5) 

!-------------------- 
! Lam7 
!-------------------- 
 
betaLam71  = 2*Lam2p*Lam3p + 6*Lam3*Lam6 + 4*Lam4*Lam6 - (9*g1p2*Lam7)/5._dp -        & 
&  9*g2p2*Lam7 + 12*Lam2*Lam7 + 6*Lam3*Lam7 + 8*Lam4*Lam7 + 9*Lam7*TrepsDadjepsD -       & 
&  12._dp*(TrepsDadjepsDYdadjepsD) + 3*Lam5*TrepsDadjYd + 3*Lam7*TrepsEadjepsE -         & 
&  4._dp*(TrepsEadjepsEYeadjepsE) + Lam5*TrepsEadjYe + 9*Lam7*TrepsUadjepsU -            & 
&  6._dp*(TrepsUadjepsUepsUadjYu) + 3*Lam2*TrepsUadjYu + 3*Lam3*TrepsUadjYu +            & 
&  3*Lam4*TrepsUadjYu - 6._dp*(TrepsUadjYuepsUadjepsU) + 3*Lam2*TrYdadjepsD +            & 
&  3*Lam3*TrYdadjepsD + 3*Lam4*TrYdadjepsD + 3*Lam7*TrYdadjYd + Lam2*TrYeadjepsE +       & 
&  Lam3*TrYeadjepsE + Lam4*TrYeadjepsE + Lam7*TrYeadjYe + 3*Lam5*TrYuadjepsU +           & 
&  3*Lam7*TrYuadjYu + 4*Lam6p*Conjg(Lam5p) + 2*Lam5*Conjg(Lam6) + 10*Lam5*Conjg(Lam7)    & 
&  + 4*Lam5p*Conjg(Lam7p)

 
 
If (TwoLoopRGE) Then 
betaLam72 = 0

 
DLam7 = oo16pi2*( betaLam71 + oo16pi2 * betaLam72 ) 

 
Else 
DLam7 = oo16pi2* betaLam71 
End If 
 
 
Call Chop(DLam7) 

!-------------------- 
! Lam1 
!-------------------- 
 
betaLam11  = 8._dp*(AbsLam4p) + 2._dp*(AbsLam5) + 24._dp*(AbsLam6) + 27._dp*(g1p4)    & 
& /100._dp + (9*g1p2*g2p2)/10._dp + 9._dp*(g2p4)/4._dp + 12._dp*(Lam1p2) +               & 
&  2._dp*(Lam1pp2) + 4._dp*(Lam3p2) + 2._dp*(Lam4p2) - (9*g1p2*Lam1)/5._dp -             & 
&  9*g2p2*Lam1 + 4*Lam3*Lam4 + 6*Lam6*TrepsDadjYd + 2*Lam6*TrepsEadjYe + 12*Lam1*TrYdadjYd -& 
&  12._dp*(TrYdadjYdYdadjYd) + 4*Lam1*TrYeadjYe - 4._dp*(TrYeadjYeYeadjYe)               & 
&  + 6*Lam6*TrYuadjepsU + 12*Lam1*TrYuadjYu - 12._dp*(TrYuadjYuYuadjYu) + 6*TrepsUadjYu*Conjg(Lam6)& 
&  + 6*TrYdadjepsD*Conjg(Lam6) + 2*TrYeadjepsE*Conjg(Lam6)

 
 
If (TwoLoopRGE) Then 
betaLam12 = 0

 
DLam1 = oo16pi2*( betaLam11 + oo16pi2 * betaLam12 ) 

 
Else 
DLam1 = oo16pi2* betaLam11 
End If 
 
 
!-------------------- 
! Lam4 
!-------------------- 
 
betaLam41  = 2._dp*(AbsLam3p) + 8._dp*(AbsLam5) + 10._dp*(AbsLam6) + 4._dp*(AbsLam6p) & 
&  + 10._dp*(AbsLam7) + 4._dp*(AbsLam7p) + (9*g1p2*g2p2)/5._dp + 4._dp*(Lam4p2)          & 
&  - (9*g1p2*Lam4)/5._dp - 9*g2p2*Lam4 + 2*Lam1*Lam4 + 2*Lam2*Lam4 + 8*Lam3*Lam4 +       & 
&  6*Lam4*TrepsDadjepsD + 3*Lam6*TrepsDadjYd + 3*Lam7*TrepsDadjYd - 12._dp*(TrepsDadjYdYdadjepsD)& 
&  - 12._dp*(TrepsDadjYuepsUadjYd) + 12._dp*(TrepsDadjYuYuadjepsD) + 2*Lam4*TrepsEadjepsE +& 
&  Lam6*TrepsEadjYe + Lam7*TrepsEadjYe - 4._dp*(TrepsEadjYeYeadjepsE) + 6*Lam4*TrepsUadjepsU +& 
&  12._dp*(TrepsUadjYdYdadjepsU) - 12._dp*(TrepsUadjYuYuadjepsU) - 12._dp*(TrYdadjepsUYuadjepsD)& 
&  + 6*Lam4*TrYdadjYd + 2*Lam4*TrYeadjYe + 3*Lam6*TrYuadjepsU + 3*Lam7*TrYuadjepsU +     & 
&  6*Lam4*TrYuadjYu + 2*Lam7*Conjg(Lam6) + 3*TrepsUadjYu*Conjg(Lam6) + 3*TrYdadjepsD*Conjg(Lam6)& 
&  + TrYeadjepsE*Conjg(Lam6) + 2*Lam6*Conjg(Lam7) + 3*TrepsUadjYu*Conjg(Lam7)            & 
&  + 3*TrYdadjepsD*Conjg(Lam7) + TrYeadjepsE*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam42 = 0

 
DLam4 = oo16pi2*( betaLam41 + oo16pi2 * betaLam42 ) 

 
Else 
DLam4 = oo16pi2* betaLam41 
End If 
 
 
!-------------------- 
! Lam3 
!-------------------- 
 
betaLam31  = 2._dp*(AbsLam5) + 4._dp*(AbsLam6) + 4._dp*(AbsLam7) + 27._dp*(g1p4)      & 
& /100._dp - (9*g1p2*g2p2)/10._dp + 9._dp*(g2p4)/4._dp + 4._dp*(Lam3p2) + 2._dp*(Lam4p2) & 
&  + 2*Lam1p*Lam2p - (9*g1p2*Lam3)/5._dp - 9*g2p2*Lam3 + 6*Lam1*Lam3 + 6*Lam2*Lam3 +     & 
&  2*Lam1*Lam4 + 2*Lam2*Lam4 + 6*Lam3*TrepsDadjepsD - 12._dp*(TrepsDadjepsDYdadjYd)      & 
&  + 3*Lam6*TrepsDadjYd + 3*Lam7*TrepsDadjYd + 12._dp*(TrepsDadjYuepsUadjYd)             & 
&  - 12._dp*(TrepsDadjYuYuadjepsD) + 2*Lam3*TrepsEadjepsE - 4._dp*(TrepsEadjepsEYeadjYe) & 
&  + Lam6*TrepsEadjYe + Lam7*TrepsEadjYe + 6*Lam3*TrepsUadjepsU - 12._dp*(TrepsUadjepsUYuadjYu)& 
&  - 12._dp*(TrepsUadjYdYdadjepsU) + 12._dp*(TrYdadjepsUYuadjepsD) + 6*Lam3*TrYdadjYd +  & 
&  2*Lam3*TrYeadjYe + 3*Lam6*TrYuadjepsU + 3*Lam7*TrYuadjepsU + 6*Lam3*TrYuadjYu +       & 
&  4*Lam5p*Conjg(Lam4p) + 4*Lam4p*Conjg(Lam5p) + 8*Lam7*Conjg(Lam6) + 3*TrepsUadjYu*Conjg(Lam6)& 
&  + 3*TrYdadjepsD*Conjg(Lam6) + TrYeadjepsE*Conjg(Lam6) + 8*Lam6*Conjg(Lam7)            & 
&  + 3*TrepsUadjYu*Conjg(Lam7) + 3*TrYdadjepsD*Conjg(Lam7) + TrYeadjepsE*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam32 = 0

 
DLam3 = oo16pi2*( betaLam31 + oo16pi2 * betaLam32 ) 

 
Else 
DLam3 = oo16pi2* betaLam31 
End If 
 
 
!-------------------- 
! Lam2 
!-------------------- 
 
betaLam21  = 2._dp*(AbsLam5) + 8._dp*(AbsLam5p) + 24._dp*(AbsLam7) + 27._dp*(g1p4)    & 
& /100._dp + (9*g1p2*g2p2)/10._dp + 9._dp*(g2p4)/4._dp + 12._dp*(Lam2p2) +               & 
&  2._dp*(Lam2pp2) + 4._dp*(Lam3p2) + 2._dp*(Lam4p2) - (9*g1p2*Lam2)/5._dp -             & 
&  9*g2p2*Lam2 + 4*Lam3*Lam4 + 12*Lam2*TrepsDadjepsD - 12._dp*(TrepsDadjepsDepsDadjepsD) & 
&  + 6*Lam7*TrepsDadjYd + 4*Lam2*TrepsEadjepsE - 4._dp*(TrepsEadjepsEepsEadjepsE)        & 
&  + 2*Lam7*TrepsEadjYe + 12*Lam2*TrepsUadjepsU - 12._dp*(TrepsUadjepsUepsUadjepsU)      & 
&  + 6*Lam7*TrYuadjepsU + 6*TrepsUadjYu*Conjg(Lam7) + 6*TrYdadjepsD*Conjg(Lam7)          & 
&  + 2*TrYeadjepsE*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam22 = 0

 
DLam2 = oo16pi2*( betaLam21 + oo16pi2 * betaLam22 ) 

 
Else 
DLam2 = oo16pi2* betaLam21 
End If 
 
 
!-------------------- 
! Lam1p 
!-------------------- 
 
betaLam1p1  = 16._dp*(AbsLam4p) + 8._dp*(AbsLam6p) + 8._dp*(AbsLam7p) +               & 
&  4._dp*(Lam1pp2) - (9*g1p2*Lam1p)/10._dp - (9*g2p2*Lam1p)/2._dp + 6*Lam1*Lam1p +       & 
&  4*Lam2p*Lam3 + 2*Lam1p*L3pp + 2*Lam2p*Lam4 + 3*Lam3p*TrepsDadjYd + Lam3p*TrepsEadjYe +& 
&  6*Lam1p*TrYdadjYd + 2*Lam1p*TrYeadjYe + 3*Lam3p*TrYuadjepsU + 6*Lam1p*TrYuadjYu +     & 
&  2*Lam4p*Conjg(L2pp) + (4._dp*(Lam3p) + 6._dp*(Lam6) + 3._dp*(TrepsUadjYu)             & 
&  + 3._dp*(TrYdadjepsD) + TrYeadjepsE)*Conjg(Lam3p) + 2*L2pp*Conjg(Lam4p)               & 
&  + 6*Lam3p*Conjg(Lam6)

 
 
If (TwoLoopRGE) Then 
betaLam1p2 = 0

 
DLam1p = oo16pi2*( betaLam1p1 + oo16pi2 * betaLam1p2 ) 

 
Else 
DLam1p = oo16pi2* betaLam1p1 
End If 
 
 
!-------------------- 
! Lam2p 
!-------------------- 
 
betaLam2p1  = 16._dp*(AbsLam5p) + 8._dp*(AbsLam6p) + 8._dp*(AbsLam7p) +               & 
&  4._dp*(Lam2pp2) - (9*g1p2*Lam2p)/10._dp - (9*g2p2*Lam2p)/2._dp + 6*Lam2*Lam2p +       & 
&  4*Lam1p*Lam3 + 2*Lam2p*L3pp + 2*Lam1p*Lam4 + 6*Lam2p*TrepsDadjepsD + 3*Lam3p*TrepsDadjYd +& 
&  2*Lam2p*TrepsEadjepsE + Lam3p*TrepsEadjYe + 6*Lam2p*TrepsUadjepsU + 3*Lam3p*TrYuadjepsU +& 
&  2*Lam5p*Conjg(L2pp) + (4._dp*(Lam3p) + 6._dp*(Lam7) + 3._dp*(TrepsUadjYu)             & 
&  + 3._dp*(TrYdadjepsD) + TrYeadjepsE)*Conjg(Lam3p) + 2*L2pp*Conjg(Lam5p)               & 
&  + 6*Lam3p*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam2p2 = 0

 
DLam2p = oo16pi2*( betaLam2p1 + oo16pi2 * betaLam2p2 ) 

 
Else 
DLam2p = oo16pi2* betaLam2p1 
End If 
 
 
!-------------------- 
! L3pp 
!-------------------- 
 
betaL3pp1  = AbsL1pp + 6._dp*(AbsL2pp) + 16._dp*(AbsLam3p) + 16._dp*(AbsLam4p)        & 
&  + 16._dp*(AbsLam5p) + 16._dp*(AbsLam6p) + 16._dp*(AbsLam7p) + 5._dp*(L3ppp2)          & 
&  + 8._dp*(Lam1pp2) + 8._dp*(Lam2pp2)

 
 
If (TwoLoopRGE) Then 
betaL3pp2 = 0

 
DL3pp = oo16pi2*( betaL3pp1 + oo16pi2 * betaL3pp2 ) 

 
Else 
DL3pp = oo16pi2* betaL3pp1 
End If 
 
 
!-------------------- 
! L1pp 
!-------------------- 
 
betaL1pp1  = 6*(L2ppp2 + L1pp*L3pp + 8*(Lam4pp2 + Lam5pp2 + 2*Lam6p*Lam7p))

 
 
If (TwoLoopRGE) Then 
betaL1pp2 = 0

 
DL1pp = oo16pi2*( betaL1pp1 + oo16pi2 * betaL1pp2 ) 

 
Else 
DL1pp = oo16pi2* betaL1pp1 
End If 
 
 
Call Chop(DL1pp) 

!-------------------- 
! Lam4p 
!-------------------- 
 
betaLam4p1  = Lam1p*L2pp - (9*g1p2*Lam4p)/10._dp - (9*g2p2*Lam4p)/2._dp +             & 
&  6*Lam1*Lam4p + 8*Lam1p*Lam4p + L3pp*Lam4p + 4*Lam3*Lam5p + 2*Lam4*Lam5p +             & 
&  4*Lam3p*Lam7p + 6*Lam6*Lam7p + 3*Lam6p*TrepsDadjYd + Lam6p*TrepsEadjYe +              & 
&  3*Lam7p*TrepsUadjYu + 3*Lam7p*TrYdadjepsD + 6*Lam4p*TrYdadjYd + Lam7p*TrYeadjepsE +   & 
&  2*Lam4p*TrYeadjYe + 3*Lam6p*TrYuadjepsU + 6*Lam4p*TrYuadjYu + 4*Lam6p*Conjg(Lam3p)    & 
&  + L1pp*Conjg(Lam4p) + 6*Lam6p*Conjg(Lam6)

 
 
If (TwoLoopRGE) Then 
betaLam4p2 = 0

 
DLam4p = oo16pi2*( betaLam4p1 + oo16pi2 * betaLam4p2 ) 

 
Else 
DLam4p = oo16pi2* betaLam4p1 
End If 
 
 
Call Chop(DLam4p) 

!-------------------- 
! Lam6p 
!-------------------- 
 
betaLam6p1  = L2pp*Lam3p + 4*Lam3p*Lam4p + 4*Lam3p*Lam5p + 6*Lam4p*Lam6 -             & 
&  (9*g1p2*Lam6p)/10._dp - (9*g2p2*Lam6p)/2._dp + 4*Lam1p*Lam6p + 4*Lam2p*Lam6p +        & 
&  2*Lam3*Lam6p + L3pp*Lam6p + 4*Lam4*Lam6p + 6*Lam5p*Lam7 + 6*Lam5*Lam7p +              & 
&  3*Lam6p*TrepsDadjepsD + Lam6p*TrepsEadjepsE + 3*Lam6p*TrepsUadjepsU + 3*Lam4p*TrepsUadjYu +& 
&  3*Lam5p*TrepsUadjYu + 3*Lam4p*TrYdadjepsD + 3*Lam5p*TrYdadjepsD + 3*Lam6p*TrYdadjYd + & 
&  Lam4p*TrYeadjepsE + Lam5p*TrYeadjepsE + Lam6p*TrYeadjYe + 3*Lam6p*TrYuadjYu +         & 
&  L1pp*Conjg(Lam7p)

 
 
If (TwoLoopRGE) Then 
betaLam6p2 = 0

 
DLam6p = oo16pi2*( betaLam6p1 + oo16pi2 * betaLam6p2 ) 

 
Else 
DLam6p = oo16pi2* betaLam6p1 
End If 
 
 
Call Chop(DLam6p) 

!-------------------- 
! Lam7p 
!-------------------- 
 
betaLam7p1  = (-9*g1p2*Lam7p)/10._dp - (9*g2p2*Lam7p)/2._dp + 4*Lam1p*Lam7p +         & 
&  4*Lam2p*Lam7p + 2*Lam3*Lam7p + L3pp*Lam7p + 4*Lam4*Lam7p + 3*Lam7p*TrepsDadjepsD +    & 
&  3*Lam4p*TrepsDadjYd + 3*Lam5p*TrepsDadjYd + Lam7p*TrepsEadjepsE + Lam4p*TrepsEadjYe + & 
&  Lam5p*TrepsEadjYe + 3*Lam7p*TrepsUadjepsU + 3*Lam7p*TrYdadjYd + Lam7p*TrYeadjYe +     & 
&  3*Lam4p*TrYuadjepsU + 3*Lam5p*TrYuadjepsU + 3*Lam7p*TrYuadjYu + (L2pp +               & 
&  4*(Lam4p + Lam5p))*Conjg(Lam3p) + 6*Lam6p*Conjg(Lam5) + 6*Lam4p*Conjg(Lam6)           & 
&  + L1pp*Conjg(Lam6p) + 6*Lam5p*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam7p2 = 0

 
DLam7p = oo16pi2*( betaLam7p1 + oo16pi2 * betaLam7p2 ) 

 
Else 
DLam7p = oo16pi2* betaLam7p1 
End If 
 
 
Call Chop(DLam7p) 

!-------------------- 
! Lam5p 
!-------------------- 
 
betaLam5p1  = Lam2p*L2pp + 4*Lam3*Lam4p + 2*Lam4*Lam4p - (9*g1p2*Lam5p)               & 
& /10._dp - (9*g2p2*Lam5p)/2._dp + 6*Lam2*Lam5p + 8*Lam2p*Lam5p + L3pp*Lam5p +           & 
&  4*Lam3p*Lam7p + 6*Lam7*Lam7p + 6*Lam5p*TrepsDadjepsD + 3*Lam6p*TrepsDadjYd +          & 
&  2*Lam5p*TrepsEadjepsE + Lam6p*TrepsEadjYe + 6*Lam5p*TrepsUadjepsU + 3*Lam7p*TrepsUadjYu +& 
&  3*Lam7p*TrYdadjepsD + Lam7p*TrYeadjepsE + 3*Lam6p*TrYuadjepsU + 4*Lam6p*Conjg(Lam3p)  & 
&  + L1pp*Conjg(Lam5p) + 6*Lam6p*Conjg(Lam7)

 
 
If (TwoLoopRGE) Then 
betaLam5p2 = 0

 
DLam5p = oo16pi2*( betaLam5p1 + oo16pi2 * betaLam5p2 ) 

 
Else 
DLam5p = oo16pi2* betaLam5p1 
End If 
 
 
Call Chop(DLam5p) 

!-------------------- 
! L2pp 
!-------------------- 
 
betaL2pp1  = 3*(3*L2pp*L3pp + 8*Lam1p*Lam4p + 8*Lam2p*Lam5p + 8*Lam3p*Lam7p +         & 
&  L1pp*Conjg(L2pp) + 8*Lam6p*Conjg(Lam3p))

 
 
If (TwoLoopRGE) Then 
betaL2pp2 = 0

 
DL2pp = oo16pi2*( betaL2pp1 + oo16pi2 * betaL2pp2 ) 

 
Else 
DL2pp = oo16pi2* betaL2pp1 
End If 
 
 
Call Chop(DL2pp) 

!-------------------- 
! Lam3p 
!-------------------- 
 
betaLam3p1  = (-9*g1p2*Lam3p)/10._dp - (9*g2p2*Lam3p)/2._dp + 4*Lam1p*Lam3p +         & 
&  4*Lam2p*Lam3p + 2*Lam3*Lam3p + 2*Lam3p*L3pp + 4*Lam3p*Lam4 + 6*Lam1p*Lam6 +           & 
&  6*Lam2p*Lam7 + 3*Lam3p*TrepsDadjepsD + Lam3p*TrepsEadjepsE + 3*Lam3p*TrepsUadjepsU +  & 
&  3*Lam1p*TrepsUadjYu + 3*Lam2p*TrepsUadjYu + 3*Lam1p*TrYdadjepsD + 3*Lam2p*TrYdadjepsD +& 
&  3*Lam3p*TrYdadjYd + Lam1p*TrYeadjepsE + Lam2p*TrYeadjepsE + Lam3p*TrYeadjYe +         & 
&  3*Lam3p*TrYuadjYu + 2*Lam6p*Conjg(L2pp) + 6*Lam5*Conjg(Lam3p) + 8*Lam6p*Conjg(Lam4p)  & 
&  + 8*Lam6p*Conjg(Lam5p) + 2*L2pp*Conjg(Lam7p) + 8*Lam4p*Conjg(Lam7p) + 8*Lam5p*Conjg(Lam7p)

 
 
If (TwoLoopRGE) Then 
betaLam3p2 = 0

 
DLam3p = oo16pi2*( betaLam3p1 + oo16pi2 * betaLam3p2 ) 

 
Else 
DLam3p = oo16pi2* betaLam3p1 
End If 
 
 
Call Chop(DLam3p) 

!-------------------- 
! Yu 
!-------------------- 
 
betaYu1  = epsU*(3._dp*(TrepsDadjYd) + TrepsEadjYe + 3._dp*(TrYuadjepsU))             & 
&  + (-17._dp*(g1p2)/20._dp - 9._dp*(g2p2)/4._dp - 8._dp*(g3p2) + 3._dp*(TrYdadjYd)      & 
&  + TrYeadjYe + 3._dp*(TrYuadjYu))*Yu + (2._dp*(epsUadjepsUYu) - 4._dp*(epsUadjYdepsD)  & 
&  + YuadjepsDepsD + YuadjepsUepsU - 3._dp*(YuadjYdYd) + 3._dp*(YuadjYuYu))/2._dp

 
 
If (TwoLoopRGE) Then 
betaYu2 = 0

 
DYu = oo16pi2*( betaYu1 + oo16pi2 * betaYu2 ) 

 
Else 
DYu = oo16pi2* betaYu1 
End If 
 
 
Call Chop(DYu) 

!-------------------- 
! epsU 
!-------------------- 
 
betaepsU1  = epsU*(-17._dp*(g1p2)/20._dp - 9._dp*(g2p2)/4._dp - 8._dp*(g3p2)          & 
&  + 3._dp*(TrepsDadjepsD) + TrepsEadjepsE + 3._dp*(TrepsUadjepsU)) + (-3._dp*(epsUadjepsDepsD)& 
&  + 3._dp*(epsUadjepsUepsU) + epsUadjYdYd + epsUadjYuYu + 6*TrepsUadjYu*Yu +            & 
&  6*TrYdadjepsD*Yu + 2*TrYeadjepsE*Yu - 4._dp*(YuadjepsDYd) + 2._dp*(YuadjYuepsU))/2._dp

 
 
If (TwoLoopRGE) Then 
betaepsU2 = 0

 
DepsU = oo16pi2*( betaepsU1 + oo16pi2 * betaepsU2 ) 

 
Else 
DepsU = oo16pi2* betaepsU1 
End If 
 
 
Call Chop(DepsU) 

!-------------------- 
! Yd 
!-------------------- 
 
betaYd1  = epsD*(3._dp*(TrepsUadjYu) + 3._dp*(TrYdadjepsD) + TrYeadjepsE)             & 
&  - ((g1p2 + 9._dp*(g2p2) + 32._dp*(g3p2) - 12._dp*(TrYdadjYd) - 4._dp*(TrYeadjYe)      & 
&  - 12._dp*(TrYuadjYu))*Yd)/4._dp + (2._dp*(epsDadjepsDYd) - 4._dp*(epsDadjYuepsU)      & 
&  + YdadjepsDepsD + YdadjepsUepsU + 3._dp*(YdadjYdYd) - 3._dp*(YdadjYuYu))/2._dp

 
 
If (TwoLoopRGE) Then 
betaYd2 = 0

 
DYd = oo16pi2*( betaYd1 + oo16pi2 * betaYd2 ) 

 
Else 
DYd = oo16pi2* betaYd1 
End If 
 
 
Call Chop(DYd) 

!-------------------- 
! Ye 
!-------------------- 
 
betaYe1  = epsE*(3._dp*(TrepsUadjYu) + 3._dp*(TrYdadjepsD) + TrYeadjepsE)             & 
&  + (-9._dp*(g1p2)/4._dp - 9._dp*(g2p2)/4._dp + 3._dp*(TrYdadjYd) + TrYeadjYe +         & 
&  3._dp*(TrYuadjYu))*Ye + (2._dp*(epsEadjepsEYe) + YeadjepsEepsE + 3._dp*(YeadjYeYe))/2._dp

 
 
If (TwoLoopRGE) Then 
betaYe2 = 0

 
DYe = oo16pi2*( betaYe1 + oo16pi2 * betaYe2 ) 

 
Else 
DYe = oo16pi2* betaYe1 
End If 
 
 
Call Chop(DYe) 

!-------------------- 
! epsD 
!-------------------- 
 
betaepsD1  = epsD*(-1._dp/4._dp*g1p2 - 9._dp*(g2p2)/4._dp - 8._dp*(g3p2)              & 
&  + 3._dp*(TrepsDadjepsD) + TrepsEadjepsE + 3._dp*(TrepsUadjepsU)) + (3._dp*(epsDadjepsDepsD)& 
&  - 3._dp*(epsDadjepsUepsU) + epsDadjYdYd + epsDadjYuYu + 6*TrepsDadjYd*Yd +            & 
&  2*TrepsEadjYe*Yd + 6*TrYuadjepsU*Yd - 4._dp*(YdadjepsUYu) + 2._dp*(YdadjYdepsD))/2._dp

 
 
If (TwoLoopRGE) Then 
betaepsD2 = 0

 
DepsD = oo16pi2*( betaepsD1 + oo16pi2 * betaepsD2 ) 

 
Else 
DepsD = oo16pi2* betaepsD1 
End If 
 
 
Call Chop(DepsD) 

!-------------------- 
! epsE 
!-------------------- 
 
betaepsE1  = 3._dp*(epsEadjepsEepsE)/2._dp + epsEadjYeYe/2._dp + epsE*(-              & 
& 9._dp*(g1p2)/4._dp - 9._dp*(g2p2)/4._dp + 3._dp*(TrepsDadjepsD) + TrepsEadjepsE +      & 
&  3._dp*(TrepsUadjepsU)) + 3*TrepsDadjYd*Ye + TrepsEadjYe*Ye + 3*TrYuadjepsU*Ye +       & 
&  YeadjYeepsE

 
 
If (TwoLoopRGE) Then 
betaepsE2 = 0

 
DepsE = oo16pi2*( betaepsE1 + oo16pi2 * betaepsE2 ) 

 
Else 
DepsE = oo16pi2* betaepsE1 
End If 
 
 
Call Chop(DepsE) 

!-------------------- 
! mus1 
!-------------------- 
 
betamus11  = 3*(8*Lam4p*mu11 + 8*Lam7p*mu12 + 8*Lam6p*mu21 + 8*Lam5p*mu22 +           & 
&  L3pp*mus1 + 2*L2pp*mus2 + L1pp*Conjg(mus2))

 
 
If (TwoLoopRGE) Then 
betamus12 = 0

 
Dmus1 = oo16pi2*( betamus11 + oo16pi2 * betamus12 ) 

 
Else 
Dmus1 = oo16pi2* betamus11 
End If 
 
 
Call Chop(Dmus1) 

!-------------------- 
! mu11 
!-------------------- 
 
betamu111  = (-9*g1p2*mu11)/10._dp - (9*g2p2*mu11)/2._dp + 6*Lam1*mu11 +              & 
&  4*Lam1p*mu11 + 2*Lam3p*mu21 + 6*Lam6*mu21 + 4*Lam3*mu22 + 2*Lam4*mu22 +               & 
&  2*Lam1p*mus2 + 3*mu12*TrepsDadjYd + mu12*TrepsEadjYe + 3*mu21*TrepsUadjYu +           & 
&  3*mu21*TrYdadjepsD + 6*mu11*TrYdadjYd + mu21*TrYeadjepsE + 2*mu11*TrYeadjYe +         & 
&  3*mu12*TrYuadjepsU + 6*mu11*TrYuadjYu + 2*mu12*Conjg(Lam3p) + 2*mus1*Conjg(Lam4p)     & 
&  + 6*mu12*Conjg(Lam6) + 8*Lam4p*Conjg(mu11) + 4*Lam6p*Conjg(mu12) + 4*Lam7p*Conjg(mu21)& 
&  + 2*Lam4p*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamu112 = 0

 
Dmu11 = oo16pi2*( betamu111 + oo16pi2 * betamu112 ) 

 
Else 
Dmu11 = oo16pi2* betamu111 
End If 
 
 
Call Chop(Dmu11) 

!-------------------- 
! mu12 
!-------------------- 
 
betamu121  = 2*Lam3p*mu11 + 6*Lam6*mu11 - (9*g1p2*mu12)/10._dp - (9*g2p2*mu12)        & 
& /2._dp + 2*Lam1p*mu12 + 2*Lam2p*mu12 + 2*Lam3*mu12 + 4*Lam4*mu12 + 6*Lam5*mu21 +       & 
&  2*Lam3p*mu22 + 6*Lam7*mu22 + 2*Lam3p*mus2 + 3*mu12*TrepsDadjepsD + mu12*TrepsEadjepsE +& 
&  3*mu12*TrepsUadjepsU + 3*mu11*TrepsUadjYu + 3*mu22*TrepsUadjYu + 3*mu11*TrYdadjepsD + & 
&  3*mu22*TrYdadjepsD + 3*mu12*TrYdadjYd + mu11*TrYeadjepsE + mu22*TrYeadjepsE +         & 
&  mu12*TrYeadjYe + 3*mu12*TrYuadjYu + 2*mus1*Conjg(Lam7p) + 4*Lam6p*Conjg(mu11)         & 
&  + 4*Lam4p*Conjg(mu21) + 4*Lam5p*Conjg(mu21) + 4*Lam6p*Conjg(mu22) + 2*Lam6p*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamu122 = 0

 
Dmu12 = oo16pi2*( betamu121 + oo16pi2 * betamu122 ) 

 
Else 
Dmu12 = oo16pi2* betamu121 
End If 
 
 
Call Chop(Dmu12) 

!-------------------- 
! mu21 
!-------------------- 
 
betamu211  = (-9*g1p2*mu21)/10._dp - (9*g2p2*mu21)/2._dp + 2*Lam1p*mu21 +             & 
&  2*Lam2p*mu21 + 2*Lam3*mu21 + 4*Lam4*mu21 + 3*mu21*TrepsDadjepsD + 3*mu11*TrepsDadjYd +& 
&  3*mu22*TrepsDadjYd + mu21*TrepsEadjepsE + mu11*TrepsEadjYe + mu22*TrepsEadjYe +       & 
&  3*mu21*TrepsUadjepsU + 3*mu21*TrYdadjYd + mu21*TrYeadjYe + 3*mu11*TrYuadjepsU +       & 
&  3*mu22*TrYuadjepsU + 3*mu21*TrYuadjYu + 2*(mu11 + mu22 + mus2)*Conjg(Lam3p)           & 
&  + 6*mu12*Conjg(Lam5) + 6*mu11*Conjg(Lam6) + 2*mus1*Conjg(Lam6p) + 6*mu22*Conjg(Lam7)  & 
&  + 4*Lam7p*Conjg(mu11) + 4*Lam4p*Conjg(mu12) + 4*Lam5p*Conjg(mu12) + 4*Lam7p*Conjg(mu22)& 
&  + 2*Lam7p*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamu212 = 0

 
Dmu21 = oo16pi2*( betamu211 + oo16pi2 * betamu212 ) 

 
Else 
Dmu21 = oo16pi2* betamu211 
End If 
 
 
Call Chop(Dmu21) 

!-------------------- 
! mu22 
!-------------------- 
 
betamu221  = 4*Lam3*mu11 + 2*Lam4*mu11 + 2*Lam3p*mu21 + 6*Lam7*mu21 - (9*g1p2*mu22)   & 
& /10._dp - (9*g2p2*mu22)/2._dp + 6*Lam2*mu22 + 4*Lam2p*mu22 + 2*Lam2p*mus2 +            & 
&  6*mu22*TrepsDadjepsD + 3*mu12*TrepsDadjYd + 2*mu22*TrepsEadjepsE + mu12*TrepsEadjYe + & 
&  6*mu22*TrepsUadjepsU + 3*mu21*TrepsUadjYu + 3*mu21*TrYdadjepsD + mu21*TrYeadjepsE +   & 
&  3*mu12*TrYuadjepsU + 2*mu12*Conjg(Lam3p) + 2*mus1*Conjg(Lam5p) + 6*mu12*Conjg(Lam7)   & 
&  + 4*Lam6p*Conjg(mu12) + 4*Lam7p*Conjg(mu21) + 8*Lam5p*Conjg(mu22) + 2*Lam5p*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamu222 = 0

 
Dmu22 = oo16pi2*( betamu221 + oo16pi2 * betamu222 ) 

 
Else 
Dmu22 = oo16pi2* betamu221 
End If 
 
 
Call Chop(Dmu22) 

!-------------------- 
! mus2 
!-------------------- 
 
betamus21  = 8*Lam1p*mu11 + 8*Lam3p*mu21 + 8*Lam2p*mu22 + 5*L3pp*mus2 +               & 
&  2*mus1*Conjg(L2pp) + 8*mu12*Conjg(Lam3p) + 8*Lam4p*Conjg(mu11) + 8*Lam6p*Conjg(mu12)  & 
&  + 8*Lam7p*Conjg(mu21) + 8*Lam5p*Conjg(mu22) + L1pp*Conjg(mus1) + 4*L2pp*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamus22 = 0

 
Dmus2 = oo16pi2*( betamus21 + oo16pi2 * betamus22 ) 

 
Else 
Dmus2 = oo16pi2* betamus21 
End If 
 
 
Call Chop(Dmus2) 

!-------------------- 
! M122 
!-------------------- 
 
betaM1221  = -6*Lam6*M112 - (9*g1p2*M122)/10._dp - (9*g2p2*M122)/2._dp +              & 
&  2*Lam3*M122 + 4*Lam4*M122 - 6*Lam7*M222 - 2*Lam3p*mS2 + 3*M122*TrepsDadjepsD +        & 
&  M122*TrepsEadjepsE + 3*M122*TrepsUadjepsU + 3*M122*TrYdadjYd + M122*TrYeadjYe +       & 
&  3*M122*TrYuadjYu - 2*mSp2*Conjg(Lam7p) + 6*Lam5*Conjg(M122) - 2*Lam6p*Conjg(mSp2)     & 
&  - 2*mu12*Conjg(mu11) - 2*mu11*Conjg(mu21) - 2*mu22*Conjg(mu21) - 2*mu12*Conjg(mu22)

 
 
If (TwoLoopRGE) Then 
betaM1222 = 0

 
DM122 = oo16pi2*( betaM1221 + oo16pi2 * betaM1222 ) 

 
Else 
DM122 = oo16pi2* betaM1221 
End If 
 
 
Call Chop(DM122) 

!-------------------- 
! M112 
!-------------------- 
 
betaM1121  = 4._dp*(Absmu11) + 2._dp*(Absmu12) + 2._dp*(Absmu21) - (9*g1p2*M112)      & 
& /10._dp - (9*g2p2*M112)/2._dp + 6*Lam1*M112 + 4*Lam3*M222 + 2*Lam4*M222 +              & 
&  2*Lam1p*mS2 + 6*M112*TrYdadjYd + 2*M112*TrYeadjYe + 6*M112*TrYuadjYu + 2*mSp2*Conjg(Lam4p)& 
&  - 6*M122*Conjg(Lam6) - 6*Lam6*Conjg(M122) + 2*Lam4p*Conjg(mSp2)

 
 
If (TwoLoopRGE) Then 
betaM1122 = 0

 
DM112 = oo16pi2*( betaM1121 + oo16pi2 * betaM1122 ) 

 
Else 
DM112 = oo16pi2* betaM1121 
End If 
 
 
!-------------------- 
! M222 
!-------------------- 
 
betaM2221  = 2._dp*(Absmu12) + 2._dp*(Absmu21) + 4._dp*(Absmu22) + 4*Lam3*M112 +      & 
&  2*Lam4*M112 - (9*g1p2*M222)/10._dp - (9*g2p2*M222)/2._dp + 6*Lam2*M222 +              & 
&  2*Lam2p*mS2 + 6*M222*TrepsDadjepsD + 2*M222*TrepsEadjepsE + 6*M222*TrepsUadjepsU +    & 
&  2*mSp2*Conjg(Lam5p) - 6*M122*Conjg(Lam7) - 6*Lam7*Conjg(M122) + 2*Lam5p*Conjg(mSp2)

 
 
If (TwoLoopRGE) Then 
betaM2222 = 0

 
DM222 = oo16pi2*( betaM2221 + oo16pi2 * betaM2222 ) 

 
Else 
DM222 = oo16pi2* betaM2221 
End If 
 
 
!-------------------- 
! mS2 
!-------------------- 
 
betamS21  = 4._dp*(Absmu11) + 4._dp*(Absmu12) + 4._dp*(Absmu21) + 4._dp*(Absmu22)     & 
&  + Absmus1 + 3._dp*(Absmus2) + 4*Lam1p*M112 + 4*Lam2p*M222 + 2*L3pp*mS2 +              & 
&  mSp2*Conjg(L2pp) - 4*M122*Conjg(Lam3p) - 4*Lam3p*Conjg(M122) + L2pp*Conjg(mSp2)

 
 
If (TwoLoopRGE) Then 
betamS22 = 0

 
DmS2 = oo16pi2*( betamS21 + oo16pi2 * betamS22 ) 

 
Else 
DmS2 = oo16pi2* betamS21 
End If 
 
 
!-------------------- 
! mSp2 
!-------------------- 
 
betamSp21  = 8*Lam4p*M112 - 8*Lam7p*M122 + 8*Lam5p*M222 + 2*L2pp*mS2 + L3pp*mSp2 +    & 
&  4._dp*(mu11p2) + 8*mu12*mu21 + 4._dp*(mu22p2) + 2._dp*(mus2p2) - 8*Lam6p*Conjg(M122)  & 
&  + L1pp*Conjg(mSp2) + 2*mus1*Conjg(mus2)

 
 
If (TwoLoopRGE) Then 
betamSp22 = 0

 
DmSp2 = oo16pi2*( betamSp21 + oo16pi2 * betamSp22 ) 

 
Else 
DmSp2 = oo16pi2* betamSp21 
End If 
 
 
Call Chop(DmSp2) 

!-------------------- 
! vd 
!-------------------- 
 
betavd1  = (9*g1p2*vd + 45*g2p2*vd - 60*TrYdadjYd*vd - 20*TrYeadjYe*vd -              & 
&  60*TrYuadjYu*vd - 30*TrepsDadjYd*vu - 10*TrepsEadjYe*vu - 30*TrepsUadjYu*vu -         & 
&  30*TrYdadjepsD*vu - 10*TrYeadjepsE*vu - 30*TrYuadjepsU*vu + 3*g1p2*vd*Xi +            & 
&  15*g2p2*vd*Xi)/20._dp

 
 
If (TwoLoopRGE) Then 
betavd2 = 0

 
Dvd = oo16pi2*( betavd1 + oo16pi2 * betavd2 ) 

 
Else 
Dvd = oo16pi2* betavd1 
End If 
 
 
!-------------------- 
! vu 
!-------------------- 
 
betavu1  = (-30*TrepsDadjYd*vd - 10*TrepsEadjYe*vd - 30*TrepsUadjYu*vd -              & 
&  30*TrYdadjepsD*vd - 10*TrYeadjepsE*vd - 30*TrYuadjepsU*vd + 9*g1p2*vu +               & 
&  45*g2p2*vu - 60*TrepsDadjepsD*vu - 20*TrepsEadjepsE*vu - 60*TrepsUadjepsU*vu +        & 
&  3*g1p2*vu*Xi + 15*g2p2*vu*Xi)/20._dp

 
 
If (TwoLoopRGE) Then 
betavu2 = 0

 
Dvu = oo16pi2*( betavu1 + oo16pi2 * betavu2 ) 

 
Else 
Dvu = oo16pi2* betavu1 
End If 
 
 
!-------------------- 
! vS 
!-------------------- 
 
betavS1  = 0

 
 
If (TwoLoopRGE) Then 
betavS2 = 0

 
DvS = oo16pi2*( betavS1 + oo16pi2 * betavS2 ) 

 
Else 
DvS = oo16pi2* betavS1 
End If 
 
 
Call ParametersToG160(Dg1,Dg2,Dg3,DLam6,DLam5,DLam7,DLam1,DLam4,DLam3,DLam2,          & 
& DLam1p,DLam2p,DL3pp,DL1pp,DLam4p,DLam6p,DLam7p,DLam5p,DL2pp,DLam3p,DYu,DepsU,          & 
& DYd,DYe,DepsD,DepsE,Dmus1,Dmu11,Dmu12,Dmu21,Dmu22,Dmus2,DM122,DM112,DM222,             & 
& DmS2,DmSp2,Dvd,Dvu,DvS,f)

Iname = Iname - 1 
 
End Subroutine rge160  

End Module RGEs_2HDMSCPV 
 
