! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.4 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 11:15 on 2.9.2025   
! ----------------------------------------------------------------------  
 
 
Module RGEs_2HDMS 
 
Use Control 
Use Settings 
Use Model_Data_2HDMS 
Use Mathematics 
 
Logical,Private,Save::OnlyDiagonal

Real(dp),Parameter::id3R(3,3)=& 
   & Reshape(Source=(/& 
   & 1,0,0,& 
 &0,1,0,& 
 &0,0,1& 
 &/),shape=(/3,3/)) 
Contains 


Subroutine GToParameters167(g,g1,g2,g3,Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,         & 
& Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,Lam3pp,Yu,epsU,Yd,Ye,             & 
& epsD,epsE,MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2)

Implicit None 
Real(dp), Intent(in) :: g(167) 
Real(dp),Intent(out) :: g1,g2,g3

Complex(dp),Intent(out) :: Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,            & 
& Lam2,Lam1p,Lam2p,Lam3pp,Yu(3,3),epsU(3,3),Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),         & 
& MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'GToParameters167' 
 
g1= g(1) 
g2= g(2) 
g3= g(3) 
Lam1pp= Cmplx(g(4),g(5),dp) 
Lam4p= Cmplx(g(6),g(7),dp) 
Lam6p= Cmplx(g(8),g(9),dp) 
Lam7p= Cmplx(g(10),g(11),dp) 
Lam5p= Cmplx(g(12),g(13),dp) 
Lam2pp= Cmplx(g(14),g(15),dp) 
Lam6= Cmplx(g(16),g(17),dp) 
Lam5= Cmplx(g(18),g(19),dp) 
Lam7= Cmplx(g(20),g(21),dp) 
Lam3p= Cmplx(g(22),g(23),dp) 
Lam1= Cmplx(g(24),g(25),dp) 
Lam4= Cmplx(g(26),g(27),dp) 
Lam3= Cmplx(g(28),g(29),dp) 
Lam2= Cmplx(g(30),g(31),dp) 
Lam1p= Cmplx(g(32),g(33),dp) 
Lam2p= Cmplx(g(34),g(35),dp) 
Lam3pp= Cmplx(g(36),g(37),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yu(i1,i2) = Cmplx( g(SumI+38), g(SumI+39), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsU(i1,i2) = Cmplx( g(SumI+56), g(SumI+57), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yd(i1,i2) = Cmplx( g(SumI+74), g(SumI+75), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Ye(i1,i2) = Cmplx( g(SumI+92), g(SumI+93), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsD(i1,i2) = Cmplx( g(SumI+110), g(SumI+111), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsE(i1,i2) = Cmplx( g(SumI+128), g(SumI+129), dp) 
End Do 
 End Do 
 
MUS1= Cmplx(g(146),g(147),dp) 
MU11= Cmplx(g(148),g(149),dp) 
MU12= Cmplx(g(150),g(151),dp) 
MU21= Cmplx(g(152),g(153),dp) 
MU22= Cmplx(g(154),g(155),dp) 
MUS2= Cmplx(g(156),g(157),dp) 
MSp= Cmplx(g(158),g(159),dp) 
M12= Cmplx(g(160),g(161),dp) 
M112= Cmplx(g(162),g(163),dp) 
M222= Cmplx(g(164),g(165),dp) 
MS2= Cmplx(g(166),g(167),dp) 
Do i1=1,167 
If (g(i1).ne.g(i1)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Write(*,*) "At position ", i1 
 Call TerminateProgram 
End if 
End do 
Iname = Iname - 1 
 
End Subroutine GToParameters167

Subroutine ParametersToG167(g1,g2,g3,Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,           & 
& Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,Lam3pp,Yu,epsU,Yd,Ye,             & 
& epsD,epsE,MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2,g)

Implicit None 
Real(dp), Intent(out) :: g(167) 
Real(dp), Intent(in) :: g1,g2,g3

Complex(dp), Intent(in) :: Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,            & 
& Lam2,Lam1p,Lam2p,Lam3pp,Yu(3,3),epsU(3,3),Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),         & 
& MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'ParametersToG167' 
 
g(1) = g1  
g(2) = g2  
g(3) = g3  
g(4) = Real(Lam1pp,dp)  
g(5) = Aimag(Lam1pp)  
g(6) = Real(Lam4p,dp)  
g(7) = Aimag(Lam4p)  
g(8) = Real(Lam6p,dp)  
g(9) = Aimag(Lam6p)  
g(10) = Real(Lam7p,dp)  
g(11) = Aimag(Lam7p)  
g(12) = Real(Lam5p,dp)  
g(13) = Aimag(Lam5p)  
g(14) = Real(Lam2pp,dp)  
g(15) = Aimag(Lam2pp)  
g(16) = Real(Lam6,dp)  
g(17) = Aimag(Lam6)  
g(18) = Real(Lam5,dp)  
g(19) = Aimag(Lam5)  
g(20) = Real(Lam7,dp)  
g(21) = Aimag(Lam7)  
g(22) = Real(Lam3p,dp)  
g(23) = Aimag(Lam3p)  
g(24) = Real(Lam1,dp)  
g(25) = Aimag(Lam1)  
g(26) = Real(Lam4,dp)  
g(27) = Aimag(Lam4)  
g(28) = Real(Lam3,dp)  
g(29) = Aimag(Lam3)  
g(30) = Real(Lam2,dp)  
g(31) = Aimag(Lam2)  
g(32) = Real(Lam1p,dp)  
g(33) = Aimag(Lam1p)  
g(34) = Real(Lam2p,dp)  
g(35) = Aimag(Lam2p)  
g(36) = Real(Lam3pp,dp)  
g(37) = Aimag(Lam3pp)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+38) = Real(Yu(i1,i2), dp) 
g(SumI+39) = Aimag(Yu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+56) = Real(epsU(i1,i2), dp) 
g(SumI+57) = Aimag(epsU(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+74) = Real(Yd(i1,i2), dp) 
g(SumI+75) = Aimag(Yd(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+92) = Real(Ye(i1,i2), dp) 
g(SumI+93) = Aimag(Ye(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+110) = Real(epsD(i1,i2), dp) 
g(SumI+111) = Aimag(epsD(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+128) = Real(epsE(i1,i2), dp) 
g(SumI+129) = Aimag(epsE(i1,i2)) 
End Do 
End Do 

g(146) = Real(MUS1,dp)  
g(147) = Aimag(MUS1)  
g(148) = Real(MU11,dp)  
g(149) = Aimag(MU11)  
g(150) = Real(MU12,dp)  
g(151) = Aimag(MU12)  
g(152) = Real(MU21,dp)  
g(153) = Aimag(MU21)  
g(154) = Real(MU22,dp)  
g(155) = Aimag(MU22)  
g(156) = Real(MUS2,dp)  
g(157) = Aimag(MUS2)  
g(158) = Real(MSp,dp)  
g(159) = Aimag(MSp)  
g(160) = Real(M12,dp)  
g(161) = Aimag(M12)  
g(162) = Real(M112,dp)  
g(163) = Aimag(M112)  
g(164) = Real(M222,dp)  
g(165) = Aimag(M222)  
g(166) = Real(MS2,dp)  
g(167) = Aimag(MS2)  
Iname = Iname - 1 
 
End Subroutine ParametersToG167

Subroutine rge167(len, T, GY, F) 
Implicit None 
Integer, Intent(in) :: len 
Real(dp), Intent(in) :: T, GY(len) 
Real(dp), Intent(out) :: F(len) 
Integer :: i1,i2,i3,i4 
Integer :: j1,j2,j3,j4,j5,j6,j7 
Real(dp) :: q 
Real(dp) :: g1,betag11,betag12,Dg1,g2,betag21,betag22,Dg2,g3,betag31,betag32,Dg3
Complex(dp) :: Lam1pp,betaLam1pp1,betaLam1pp2,DLam1pp,Lam4p,betaLam4p1,               & 
& betaLam4p2,DLam4p,Lam6p,betaLam6p1,betaLam6p2,DLam6p,Lam7p,betaLam7p1,betaLam7p2,      & 
& DLam7p,Lam5p,betaLam5p1,betaLam5p2,DLam5p,Lam2pp,betaLam2pp1,betaLam2pp2,              & 
& DLam2pp,Lam6,betaLam61,betaLam62,DLam6,Lam5,betaLam51,betaLam52,DLam5,Lam7,            & 
& betaLam71,betaLam72,DLam7,Lam3p,betaLam3p1,betaLam3p2,DLam3p,Lam1,betaLam11,           & 
& betaLam12,DLam1,Lam4,betaLam41,betaLam42,DLam4,Lam3,betaLam31,betaLam32,               & 
& DLam3,Lam2,betaLam21,betaLam22,DLam2,Lam1p,betaLam1p1,betaLam1p2,DLam1p,               & 
& Lam2p,betaLam2p1,betaLam2p2,DLam2p,Lam3pp,betaLam3pp1,betaLam3pp2,DLam3pp,             & 
& Yu(3,3),betaYu1(3,3),betaYu2(3,3),DYu(3,3),adjYu(3,3),epsU(3,3),betaepsU1(3,3)         & 
& ,betaepsU2(3,3),DepsU(3,3),adjepsU(3,3),Yd(3,3),betaYd1(3,3),betaYd2(3,3)              & 
& ,DYd(3,3),adjYd(3,3),Ye(3,3),betaYe1(3,3),betaYe2(3,3),DYe(3,3),adjYe(3,3)             & 
& ,epsD(3,3),betaepsD1(3,3),betaepsD2(3,3),DepsD(3,3),adjepsD(3,3),epsE(3,3)             & 
& ,betaepsE1(3,3),betaepsE2(3,3),DepsE(3,3),adjepsE(3,3),MUS1,betaMUS11,betaMUS12,       & 
& DMUS1,MU11,betaMU111,betaMU112,DMU11,MU12,betaMU121,betaMU122,DMU12,MU21,              & 
& betaMU211,betaMU212,DMU21,MU22,betaMU221,betaMU222,DMU22,MUS2,betaMUS21,               & 
& betaMUS22,DMUS2,MSp,betaMSp1,betaMSp2,DMSp,M12,betaM121,betaM122,DM12,M112,            & 
& betaM1121,betaM1122,DM112,M222,betaM2221,betaM2222,DM222,MS2,betaMS21,betaMS22,DMS2
Iname = Iname +1 
NameOfUnit(Iname) = 'rge167' 
 
OnlyDiagonal = .Not.GenerationMixing 
q = t 
 
Call GToParameters167(gy,g1,g2,g3,Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,              & 
& Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,Lam3pp,Yu,epsU,Yd,Ye,             & 
& epsD,epsE,MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2)

Call Adjungate(Yu,adjYu)
Call Adjungate(epsU,adjepsU)
Call Adjungate(Yd,adjYd)
Call Adjungate(Ye,adjYe)
Call Adjungate(epsD,adjepsD)
Call Adjungate(epsE,adjepsE)


If (TwoLoopRGE) Then 
End If 
 
 
!-------------------- 
! g1 
!-------------------- 
 
betag11  = 0

 
 
If (TwoLoopRGE) Then 
betag12 = 0

 
Dg1 = oo16pi2*( betag11 + oo16pi2 * betag12 ) 

 
Else 
Dg1 = oo16pi2* betag11 
End If 
 
 
!-------------------- 
! g2 
!-------------------- 
 
betag21  = 0

 
 
If (TwoLoopRGE) Then 
betag22 = 0

 
Dg2 = oo16pi2*( betag21 + oo16pi2 * betag22 ) 

 
Else 
Dg2 = oo16pi2* betag21 
End If 
 
 
!-------------------- 
! g3 
!-------------------- 
 
betag31  = 0

 
 
If (TwoLoopRGE) Then 
betag32 = 0

 
Dg3 = oo16pi2*( betag31 + oo16pi2 * betag32 ) 

 
Else 
Dg3 = oo16pi2* betag31 
End If 
 
 
!-------------------- 
! Lam1pp 
!-------------------- 
 
betaLam1pp1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam1pp2 = 0

 
DLam1pp = oo16pi2*( betaLam1pp1 + oo16pi2 * betaLam1pp2 ) 

 
Else 
DLam1pp = oo16pi2* betaLam1pp1 
End If 
 
 
Call Chop(DLam1pp) 

!-------------------- 
! Lam4p 
!-------------------- 
 
betaLam4p1  = 0

 
 
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
 
betaLam6p1  = 0

 
 
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
 
betaLam7p1  = 0

 
 
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
 
betaLam5p1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam5p2 = 0

 
DLam5p = oo16pi2*( betaLam5p1 + oo16pi2 * betaLam5p2 ) 

 
Else 
DLam5p = oo16pi2* betaLam5p1 
End If 
 
 
Call Chop(DLam5p) 

!-------------------- 
! Lam2pp 
!-------------------- 
 
betaLam2pp1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam2pp2 = 0

 
DLam2pp = oo16pi2*( betaLam2pp1 + oo16pi2 * betaLam2pp2 ) 

 
Else 
DLam2pp = oo16pi2* betaLam2pp1 
End If 
 
 
Call Chop(DLam2pp) 

!-------------------- 
! Lam6 
!-------------------- 
 
betaLam61  = 0

 
 
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
 
betaLam51  = 0

 
 
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
 
betaLam71  = 0

 
 
If (TwoLoopRGE) Then 
betaLam72 = 0

 
DLam7 = oo16pi2*( betaLam71 + oo16pi2 * betaLam72 ) 

 
Else 
DLam7 = oo16pi2* betaLam71 
End If 
 
 
Call Chop(DLam7) 

!-------------------- 
! Lam3p 
!-------------------- 
 
betaLam3p1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam3p2 = 0

 
DLam3p = oo16pi2*( betaLam3p1 + oo16pi2 * betaLam3p2 ) 

 
Else 
DLam3p = oo16pi2* betaLam3p1 
End If 
 
 
Call Chop(DLam3p) 

!-------------------- 
! Lam1 
!-------------------- 
 
betaLam11  = 0

 
 
If (TwoLoopRGE) Then 
betaLam12 = 0

 
DLam1 = oo16pi2*( betaLam11 + oo16pi2 * betaLam12 ) 

 
Else 
DLam1 = oo16pi2* betaLam11 
End If 
 
 
Call Chop(DLam1) 

!-------------------- 
! Lam4 
!-------------------- 
 
betaLam41  = 0

 
 
If (TwoLoopRGE) Then 
betaLam42 = 0

 
DLam4 = oo16pi2*( betaLam41 + oo16pi2 * betaLam42 ) 

 
Else 
DLam4 = oo16pi2* betaLam41 
End If 
 
 
Call Chop(DLam4) 

!-------------------- 
! Lam3 
!-------------------- 
 
betaLam31  = 0

 
 
If (TwoLoopRGE) Then 
betaLam32 = 0

 
DLam3 = oo16pi2*( betaLam31 + oo16pi2 * betaLam32 ) 

 
Else 
DLam3 = oo16pi2* betaLam31 
End If 
 
 
Call Chop(DLam3) 

!-------------------- 
! Lam2 
!-------------------- 
 
betaLam21  = 0

 
 
If (TwoLoopRGE) Then 
betaLam22 = 0

 
DLam2 = oo16pi2*( betaLam21 + oo16pi2 * betaLam22 ) 

 
Else 
DLam2 = oo16pi2* betaLam21 
End If 
 
 
Call Chop(DLam2) 

!-------------------- 
! Lam1p 
!-------------------- 
 
betaLam1p1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam1p2 = 0

 
DLam1p = oo16pi2*( betaLam1p1 + oo16pi2 * betaLam1p2 ) 

 
Else 
DLam1p = oo16pi2* betaLam1p1 
End If 
 
 
Call Chop(DLam1p) 

!-------------------- 
! Lam2p 
!-------------------- 
 
betaLam2p1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam2p2 = 0

 
DLam2p = oo16pi2*( betaLam2p1 + oo16pi2 * betaLam2p2 ) 

 
Else 
DLam2p = oo16pi2* betaLam2p1 
End If 
 
 
Call Chop(DLam2p) 

!-------------------- 
! Lam3pp 
!-------------------- 
 
betaLam3pp1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam3pp2 = 0

 
DLam3pp = oo16pi2*( betaLam3pp1 + oo16pi2 * betaLam3pp2 ) 

 
Else 
DLam3pp = oo16pi2* betaLam3pp1 
End If 
 
 
Call Chop(DLam3pp) 

!-------------------- 
! Yu 
!-------------------- 
 
betaYu1  = 0

 
 
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
 
betaepsU1  = 0

 
 
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
 
betaYd1  = 0

 
 
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
 
betaYe1  = 0

 
 
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
 
betaepsD1  = 0

 
 
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
 
betaepsE1  = 0

 
 
If (TwoLoopRGE) Then 
betaepsE2 = 0

 
DepsE = oo16pi2*( betaepsE1 + oo16pi2 * betaepsE2 ) 

 
Else 
DepsE = oo16pi2* betaepsE1 
End If 
 
 
Call Chop(DepsE) 

!-------------------- 
! MUS1 
!-------------------- 
 
betaMUS11  = 0

 
 
If (TwoLoopRGE) Then 
betaMUS12 = 0

 
DMUS1 = oo16pi2*( betaMUS11 + oo16pi2 * betaMUS12 ) 

 
Else 
DMUS1 = oo16pi2* betaMUS11 
End If 
 
 
Call Chop(DMUS1) 

!-------------------- 
! MU11 
!-------------------- 
 
betaMU111  = 0

 
 
If (TwoLoopRGE) Then 
betaMU112 = 0

 
DMU11 = oo16pi2*( betaMU111 + oo16pi2 * betaMU112 ) 

 
Else 
DMU11 = oo16pi2* betaMU111 
End If 
 
 
Call Chop(DMU11) 

!-------------------- 
! MU12 
!-------------------- 
 
betaMU121  = 0

 
 
If (TwoLoopRGE) Then 
betaMU122 = 0

 
DMU12 = oo16pi2*( betaMU121 + oo16pi2 * betaMU122 ) 

 
Else 
DMU12 = oo16pi2* betaMU121 
End If 
 
 
Call Chop(DMU12) 

!-------------------- 
! MU21 
!-------------------- 
 
betaMU211  = 0

 
 
If (TwoLoopRGE) Then 
betaMU212 = 0

 
DMU21 = oo16pi2*( betaMU211 + oo16pi2 * betaMU212 ) 

 
Else 
DMU21 = oo16pi2* betaMU211 
End If 
 
 
Call Chop(DMU21) 

!-------------------- 
! MU22 
!-------------------- 
 
betaMU221  = 0

 
 
If (TwoLoopRGE) Then 
betaMU222 = 0

 
DMU22 = oo16pi2*( betaMU221 + oo16pi2 * betaMU222 ) 

 
Else 
DMU22 = oo16pi2* betaMU221 
End If 
 
 
Call Chop(DMU22) 

!-------------------- 
! MUS2 
!-------------------- 
 
betaMUS21  = 0

 
 
If (TwoLoopRGE) Then 
betaMUS22 = 0

 
DMUS2 = oo16pi2*( betaMUS21 + oo16pi2 * betaMUS22 ) 

 
Else 
DMUS2 = oo16pi2* betaMUS21 
End If 
 
 
Call Chop(DMUS2) 

!-------------------- 
! MSp 
!-------------------- 
 
betaMSp1  = 0

 
 
If (TwoLoopRGE) Then 
betaMSp2 = 0

 
DMSp = oo16pi2*( betaMSp1 + oo16pi2 * betaMSp2 ) 

 
Else 
DMSp = oo16pi2* betaMSp1 
End If 
 
 
Call Chop(DMSp) 

!-------------------- 
! M12 
!-------------------- 
 
betaM121  = 0

 
 
If (TwoLoopRGE) Then 
betaM122 = 0

 
DM12 = oo16pi2*( betaM121 + oo16pi2 * betaM122 ) 

 
Else 
DM12 = oo16pi2* betaM121 
End If 
 
 
Call Chop(DM12) 

!-------------------- 
! M112 
!-------------------- 
 
betaM1121  = 0

 
 
If (TwoLoopRGE) Then 
betaM1122 = 0

 
DM112 = oo16pi2*( betaM1121 + oo16pi2 * betaM1122 ) 

 
Else 
DM112 = oo16pi2* betaM1121 
End If 
 
 
Call Chop(DM112) 

!-------------------- 
! M222 
!-------------------- 
 
betaM2221  = 0

 
 
If (TwoLoopRGE) Then 
betaM2222 = 0

 
DM222 = oo16pi2*( betaM2221 + oo16pi2 * betaM2222 ) 

 
Else 
DM222 = oo16pi2* betaM2221 
End If 
 
 
Call Chop(DM222) 

!-------------------- 
! MS2 
!-------------------- 
 
betaMS21  = 0

 
 
If (TwoLoopRGE) Then 
betaMS22 = 0

 
DMS2 = oo16pi2*( betaMS21 + oo16pi2 * betaMS22 ) 

 
Else 
DMS2 = oo16pi2* betaMS21 
End If 
 
 
Call Chop(DMS2) 

Call ParametersToG167(Dg1,Dg2,Dg3,DLam1pp,DLam4p,DLam6p,DLam7p,DLam5p,DLam2pp,        & 
& DLam6,DLam5,DLam7,DLam3p,DLam1,DLam4,DLam3,DLam2,DLam1p,DLam2p,DLam3pp,DYu,            & 
& DepsU,DYd,DYe,DepsD,DepsE,DMUS1,DMU11,DMU12,DMU21,DMU22,DMUS2,DMSp,DM12,               & 
& DM112,DM222,DMS2,f)

Iname = Iname - 1 
 
End Subroutine rge167  

Subroutine GToParameters170(g,g1,g2,g3,Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,         & 
& Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,Lam3pp,Yu,epsU,Yd,Ye,             & 
& epsD,epsE,MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2,vd,vu,vS)

Implicit None 
Real(dp), Intent(in) :: g(170) 
Real(dp),Intent(out) :: g1,g2,g3,vd,vu,vS

Complex(dp),Intent(out) :: Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,            & 
& Lam2,Lam1p,Lam2p,Lam3pp,Yu(3,3),epsU(3,3),Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),         & 
& MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'GToParameters170' 
 
g1= g(1) 
g2= g(2) 
g3= g(3) 
Lam1pp= Cmplx(g(4),g(5),dp) 
Lam4p= Cmplx(g(6),g(7),dp) 
Lam6p= Cmplx(g(8),g(9),dp) 
Lam7p= Cmplx(g(10),g(11),dp) 
Lam5p= Cmplx(g(12),g(13),dp) 
Lam2pp= Cmplx(g(14),g(15),dp) 
Lam6= Cmplx(g(16),g(17),dp) 
Lam5= Cmplx(g(18),g(19),dp) 
Lam7= Cmplx(g(20),g(21),dp) 
Lam3p= Cmplx(g(22),g(23),dp) 
Lam1= Cmplx(g(24),g(25),dp) 
Lam4= Cmplx(g(26),g(27),dp) 
Lam3= Cmplx(g(28),g(29),dp) 
Lam2= Cmplx(g(30),g(31),dp) 
Lam1p= Cmplx(g(32),g(33),dp) 
Lam2p= Cmplx(g(34),g(35),dp) 
Lam3pp= Cmplx(g(36),g(37),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yu(i1,i2) = Cmplx( g(SumI+38), g(SumI+39), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsU(i1,i2) = Cmplx( g(SumI+56), g(SumI+57), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yd(i1,i2) = Cmplx( g(SumI+74), g(SumI+75), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Ye(i1,i2) = Cmplx( g(SumI+92), g(SumI+93), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsD(i1,i2) = Cmplx( g(SumI+110), g(SumI+111), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
epsE(i1,i2) = Cmplx( g(SumI+128), g(SumI+129), dp) 
End Do 
 End Do 
 
MUS1= Cmplx(g(146),g(147),dp) 
MU11= Cmplx(g(148),g(149),dp) 
MU12= Cmplx(g(150),g(151),dp) 
MU21= Cmplx(g(152),g(153),dp) 
MU22= Cmplx(g(154),g(155),dp) 
MUS2= Cmplx(g(156),g(157),dp) 
MSp= Cmplx(g(158),g(159),dp) 
M12= Cmplx(g(160),g(161),dp) 
M112= Cmplx(g(162),g(163),dp) 
M222= Cmplx(g(164),g(165),dp) 
MS2= Cmplx(g(166),g(167),dp) 
vd= g(168) 
vu= g(169) 
vS= g(170) 
Do i1=1,170 
If (g(i1).ne.g(i1)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Write(*,*) "At position ", i1 
 Call TerminateProgram 
End if 
End do 
Iname = Iname - 1 
 
End Subroutine GToParameters170

Subroutine ParametersToG170(g1,g2,g3,Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,           & 
& Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,Lam3pp,Yu,epsU,Yd,Ye,             & 
& epsD,epsE,MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2,vd,vu,vS,g)

Implicit None 
Real(dp), Intent(out) :: g(170) 
Real(dp), Intent(in) :: g1,g2,g3,vd,vu,vS

Complex(dp), Intent(in) :: Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,            & 
& Lam2,Lam1p,Lam2p,Lam3pp,Yu(3,3),epsU(3,3),Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),         & 
& MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'ParametersToG170' 
 
g(1) = g1  
g(2) = g2  
g(3) = g3  
g(4) = Real(Lam1pp,dp)  
g(5) = Aimag(Lam1pp)  
g(6) = Real(Lam4p,dp)  
g(7) = Aimag(Lam4p)  
g(8) = Real(Lam6p,dp)  
g(9) = Aimag(Lam6p)  
g(10) = Real(Lam7p,dp)  
g(11) = Aimag(Lam7p)  
g(12) = Real(Lam5p,dp)  
g(13) = Aimag(Lam5p)  
g(14) = Real(Lam2pp,dp)  
g(15) = Aimag(Lam2pp)  
g(16) = Real(Lam6,dp)  
g(17) = Aimag(Lam6)  
g(18) = Real(Lam5,dp)  
g(19) = Aimag(Lam5)  
g(20) = Real(Lam7,dp)  
g(21) = Aimag(Lam7)  
g(22) = Real(Lam3p,dp)  
g(23) = Aimag(Lam3p)  
g(24) = Real(Lam1,dp)  
g(25) = Aimag(Lam1)  
g(26) = Real(Lam4,dp)  
g(27) = Aimag(Lam4)  
g(28) = Real(Lam3,dp)  
g(29) = Aimag(Lam3)  
g(30) = Real(Lam2,dp)  
g(31) = Aimag(Lam2)  
g(32) = Real(Lam1p,dp)  
g(33) = Aimag(Lam1p)  
g(34) = Real(Lam2p,dp)  
g(35) = Aimag(Lam2p)  
g(36) = Real(Lam3pp,dp)  
g(37) = Aimag(Lam3pp)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+38) = Real(Yu(i1,i2), dp) 
g(SumI+39) = Aimag(Yu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+56) = Real(epsU(i1,i2), dp) 
g(SumI+57) = Aimag(epsU(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+74) = Real(Yd(i1,i2), dp) 
g(SumI+75) = Aimag(Yd(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+92) = Real(Ye(i1,i2), dp) 
g(SumI+93) = Aimag(Ye(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+110) = Real(epsD(i1,i2), dp) 
g(SumI+111) = Aimag(epsD(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+128) = Real(epsE(i1,i2), dp) 
g(SumI+129) = Aimag(epsE(i1,i2)) 
End Do 
End Do 

g(146) = Real(MUS1,dp)  
g(147) = Aimag(MUS1)  
g(148) = Real(MU11,dp)  
g(149) = Aimag(MU11)  
g(150) = Real(MU12,dp)  
g(151) = Aimag(MU12)  
g(152) = Real(MU21,dp)  
g(153) = Aimag(MU21)  
g(154) = Real(MU22,dp)  
g(155) = Aimag(MU22)  
g(156) = Real(MUS2,dp)  
g(157) = Aimag(MUS2)  
g(158) = Real(MSp,dp)  
g(159) = Aimag(MSp)  
g(160) = Real(M12,dp)  
g(161) = Aimag(M12)  
g(162) = Real(M112,dp)  
g(163) = Aimag(M112)  
g(164) = Real(M222,dp)  
g(165) = Aimag(M222)  
g(166) = Real(MS2,dp)  
g(167) = Aimag(MS2)  
g(168) = vd  
g(169) = vu  
g(170) = vS  
Iname = Iname - 1 
 
End Subroutine ParametersToG170

Subroutine rge170(len, T, GY, F) 
Implicit None 
Integer, Intent(in) :: len 
Real(dp), Intent(in) :: T, GY(len) 
Real(dp), Intent(out) :: F(len) 
Integer :: i1,i2,i3,i4 
Integer :: j1,j2,j3,j4,j5,j6,j7 
Real(dp) :: q 
Real(dp) :: g1,betag11,betag12,Dg1,g2,betag21,betag22,Dg2,g3,betag31,betag32,         & 
& Dg3,vd,betavd1,betavd2,Dvd,vu,betavu1,betavu2,Dvu,vS,betavS1,betavS2,DvS
Complex(dp) :: Lam1pp,betaLam1pp1,betaLam1pp2,DLam1pp,Lam4p,betaLam4p1,               & 
& betaLam4p2,DLam4p,Lam6p,betaLam6p1,betaLam6p2,DLam6p,Lam7p,betaLam7p1,betaLam7p2,      & 
& DLam7p,Lam5p,betaLam5p1,betaLam5p2,DLam5p,Lam2pp,betaLam2pp1,betaLam2pp2,              & 
& DLam2pp,Lam6,betaLam61,betaLam62,DLam6,Lam5,betaLam51,betaLam52,DLam5,Lam7,            & 
& betaLam71,betaLam72,DLam7,Lam3p,betaLam3p1,betaLam3p2,DLam3p,Lam1,betaLam11,           & 
& betaLam12,DLam1,Lam4,betaLam41,betaLam42,DLam4,Lam3,betaLam31,betaLam32,               & 
& DLam3,Lam2,betaLam21,betaLam22,DLam2,Lam1p,betaLam1p1,betaLam1p2,DLam1p,               & 
& Lam2p,betaLam2p1,betaLam2p2,DLam2p,Lam3pp,betaLam3pp1,betaLam3pp2,DLam3pp,             & 
& Yu(3,3),betaYu1(3,3),betaYu2(3,3),DYu(3,3),adjYu(3,3),epsU(3,3),betaepsU1(3,3)         & 
& ,betaepsU2(3,3),DepsU(3,3),adjepsU(3,3),Yd(3,3),betaYd1(3,3),betaYd2(3,3)              & 
& ,DYd(3,3),adjYd(3,3),Ye(3,3),betaYe1(3,3),betaYe2(3,3),DYe(3,3),adjYe(3,3)             & 
& ,epsD(3,3),betaepsD1(3,3),betaepsD2(3,3),DepsD(3,3),adjepsD(3,3),epsE(3,3)             & 
& ,betaepsE1(3,3),betaepsE2(3,3),DepsE(3,3),adjepsE(3,3),MUS1,betaMUS11,betaMUS12,       & 
& DMUS1,MU11,betaMU111,betaMU112,DMU11,MU12,betaMU121,betaMU122,DMU12,MU21,              & 
& betaMU211,betaMU212,DMU21,MU22,betaMU221,betaMU222,DMU22,MUS2,betaMUS21,               & 
& betaMUS22,DMUS2,MSp,betaMSp1,betaMSp2,DMSp,M12,betaM121,betaM122,DM12,M112,            & 
& betaM1121,betaM1122,DM112,M222,betaM2221,betaM2222,DM222,MS2,betaMS21,betaMS22,DMS2
Iname = Iname +1 
NameOfUnit(Iname) = 'rge170' 
 
OnlyDiagonal = .Not.GenerationMixing 
q = t 
 
Call GToParameters170(gy,g1,g2,g3,Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,              & 
& Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,Lam3pp,Yu,epsU,Yd,Ye,             & 
& epsD,epsE,MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2,vd,vu,vS)

Call Adjungate(Yu,adjYu)
Call Adjungate(epsU,adjepsU)
Call Adjungate(Yd,adjYd)
Call Adjungate(Ye,adjYe)
Call Adjungate(epsD,adjepsD)
Call Adjungate(epsE,adjepsE)


If (TwoLoopRGE) Then 
End If 
 
 
!-------------------- 
! g1 
!-------------------- 
 
betag11  = 0

 
 
If (TwoLoopRGE) Then 
betag12 = 0

 
Dg1 = oo16pi2*( betag11 + oo16pi2 * betag12 ) 

 
Else 
Dg1 = oo16pi2* betag11 
End If 
 
 
!-------------------- 
! g2 
!-------------------- 
 
betag21  = 0

 
 
If (TwoLoopRGE) Then 
betag22 = 0

 
Dg2 = oo16pi2*( betag21 + oo16pi2 * betag22 ) 

 
Else 
Dg2 = oo16pi2* betag21 
End If 
 
 
!-------------------- 
! g3 
!-------------------- 
 
betag31  = 0

 
 
If (TwoLoopRGE) Then 
betag32 = 0

 
Dg3 = oo16pi2*( betag31 + oo16pi2 * betag32 ) 

 
Else 
Dg3 = oo16pi2* betag31 
End If 
 
 
!-------------------- 
! Lam1pp 
!-------------------- 
 
betaLam1pp1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam1pp2 = 0

 
DLam1pp = oo16pi2*( betaLam1pp1 + oo16pi2 * betaLam1pp2 ) 

 
Else 
DLam1pp = oo16pi2* betaLam1pp1 
End If 
 
 
Call Chop(DLam1pp) 

!-------------------- 
! Lam4p 
!-------------------- 
 
betaLam4p1  = 0

 
 
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
 
betaLam6p1  = 0

 
 
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
 
betaLam7p1  = 0

 
 
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
 
betaLam5p1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam5p2 = 0

 
DLam5p = oo16pi2*( betaLam5p1 + oo16pi2 * betaLam5p2 ) 

 
Else 
DLam5p = oo16pi2* betaLam5p1 
End If 
 
 
Call Chop(DLam5p) 

!-------------------- 
! Lam2pp 
!-------------------- 
 
betaLam2pp1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam2pp2 = 0

 
DLam2pp = oo16pi2*( betaLam2pp1 + oo16pi2 * betaLam2pp2 ) 

 
Else 
DLam2pp = oo16pi2* betaLam2pp1 
End If 
 
 
Call Chop(DLam2pp) 

!-------------------- 
! Lam6 
!-------------------- 
 
betaLam61  = 0

 
 
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
 
betaLam51  = 0

 
 
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
 
betaLam71  = 0

 
 
If (TwoLoopRGE) Then 
betaLam72 = 0

 
DLam7 = oo16pi2*( betaLam71 + oo16pi2 * betaLam72 ) 

 
Else 
DLam7 = oo16pi2* betaLam71 
End If 
 
 
Call Chop(DLam7) 

!-------------------- 
! Lam3p 
!-------------------- 
 
betaLam3p1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam3p2 = 0

 
DLam3p = oo16pi2*( betaLam3p1 + oo16pi2 * betaLam3p2 ) 

 
Else 
DLam3p = oo16pi2* betaLam3p1 
End If 
 
 
Call Chop(DLam3p) 

!-------------------- 
! Lam1 
!-------------------- 
 
betaLam11  = 0

 
 
If (TwoLoopRGE) Then 
betaLam12 = 0

 
DLam1 = oo16pi2*( betaLam11 + oo16pi2 * betaLam12 ) 

 
Else 
DLam1 = oo16pi2* betaLam11 
End If 
 
 
Call Chop(DLam1) 

!-------------------- 
! Lam4 
!-------------------- 
 
betaLam41  = 0

 
 
If (TwoLoopRGE) Then 
betaLam42 = 0

 
DLam4 = oo16pi2*( betaLam41 + oo16pi2 * betaLam42 ) 

 
Else 
DLam4 = oo16pi2* betaLam41 
End If 
 
 
Call Chop(DLam4) 

!-------------------- 
! Lam3 
!-------------------- 
 
betaLam31  = 0

 
 
If (TwoLoopRGE) Then 
betaLam32 = 0

 
DLam3 = oo16pi2*( betaLam31 + oo16pi2 * betaLam32 ) 

 
Else 
DLam3 = oo16pi2* betaLam31 
End If 
 
 
Call Chop(DLam3) 

!-------------------- 
! Lam2 
!-------------------- 
 
betaLam21  = 0

 
 
If (TwoLoopRGE) Then 
betaLam22 = 0

 
DLam2 = oo16pi2*( betaLam21 + oo16pi2 * betaLam22 ) 

 
Else 
DLam2 = oo16pi2* betaLam21 
End If 
 
 
Call Chop(DLam2) 

!-------------------- 
! Lam1p 
!-------------------- 
 
betaLam1p1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam1p2 = 0

 
DLam1p = oo16pi2*( betaLam1p1 + oo16pi2 * betaLam1p2 ) 

 
Else 
DLam1p = oo16pi2* betaLam1p1 
End If 
 
 
Call Chop(DLam1p) 

!-------------------- 
! Lam2p 
!-------------------- 
 
betaLam2p1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam2p2 = 0

 
DLam2p = oo16pi2*( betaLam2p1 + oo16pi2 * betaLam2p2 ) 

 
Else 
DLam2p = oo16pi2* betaLam2p1 
End If 
 
 
Call Chop(DLam2p) 

!-------------------- 
! Lam3pp 
!-------------------- 
 
betaLam3pp1  = 0

 
 
If (TwoLoopRGE) Then 
betaLam3pp2 = 0

 
DLam3pp = oo16pi2*( betaLam3pp1 + oo16pi2 * betaLam3pp2 ) 

 
Else 
DLam3pp = oo16pi2* betaLam3pp1 
End If 
 
 
Call Chop(DLam3pp) 

!-------------------- 
! Yu 
!-------------------- 
 
betaYu1  = 0

 
 
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
 
betaepsU1  = 0

 
 
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
 
betaYd1  = 0

 
 
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
 
betaYe1  = 0

 
 
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
 
betaepsD1  = 0

 
 
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
 
betaepsE1  = 0

 
 
If (TwoLoopRGE) Then 
betaepsE2 = 0

 
DepsE = oo16pi2*( betaepsE1 + oo16pi2 * betaepsE2 ) 

 
Else 
DepsE = oo16pi2* betaepsE1 
End If 
 
 
Call Chop(DepsE) 

!-------------------- 
! MUS1 
!-------------------- 
 
betaMUS11  = 0

 
 
If (TwoLoopRGE) Then 
betaMUS12 = 0

 
DMUS1 = oo16pi2*( betaMUS11 + oo16pi2 * betaMUS12 ) 

 
Else 
DMUS1 = oo16pi2* betaMUS11 
End If 
 
 
Call Chop(DMUS1) 

!-------------------- 
! MU11 
!-------------------- 
 
betaMU111  = 0

 
 
If (TwoLoopRGE) Then 
betaMU112 = 0

 
DMU11 = oo16pi2*( betaMU111 + oo16pi2 * betaMU112 ) 

 
Else 
DMU11 = oo16pi2* betaMU111 
End If 
 
 
Call Chop(DMU11) 

!-------------------- 
! MU12 
!-------------------- 
 
betaMU121  = 0

 
 
If (TwoLoopRGE) Then 
betaMU122 = 0

 
DMU12 = oo16pi2*( betaMU121 + oo16pi2 * betaMU122 ) 

 
Else 
DMU12 = oo16pi2* betaMU121 
End If 
 
 
Call Chop(DMU12) 

!-------------------- 
! MU21 
!-------------------- 
 
betaMU211  = 0

 
 
If (TwoLoopRGE) Then 
betaMU212 = 0

 
DMU21 = oo16pi2*( betaMU211 + oo16pi2 * betaMU212 ) 

 
Else 
DMU21 = oo16pi2* betaMU211 
End If 
 
 
Call Chop(DMU21) 

!-------------------- 
! MU22 
!-------------------- 
 
betaMU221  = 0

 
 
If (TwoLoopRGE) Then 
betaMU222 = 0

 
DMU22 = oo16pi2*( betaMU221 + oo16pi2 * betaMU222 ) 

 
Else 
DMU22 = oo16pi2* betaMU221 
End If 
 
 
Call Chop(DMU22) 

!-------------------- 
! MUS2 
!-------------------- 
 
betaMUS21  = 0

 
 
If (TwoLoopRGE) Then 
betaMUS22 = 0

 
DMUS2 = oo16pi2*( betaMUS21 + oo16pi2 * betaMUS22 ) 

 
Else 
DMUS2 = oo16pi2* betaMUS21 
End If 
 
 
Call Chop(DMUS2) 

!-------------------- 
! MSp 
!-------------------- 
 
betaMSp1  = 0

 
 
If (TwoLoopRGE) Then 
betaMSp2 = 0

 
DMSp = oo16pi2*( betaMSp1 + oo16pi2 * betaMSp2 ) 

 
Else 
DMSp = oo16pi2* betaMSp1 
End If 
 
 
Call Chop(DMSp) 

!-------------------- 
! M12 
!-------------------- 
 
betaM121  = 0

 
 
If (TwoLoopRGE) Then 
betaM122 = 0

 
DM12 = oo16pi2*( betaM121 + oo16pi2 * betaM122 ) 

 
Else 
DM12 = oo16pi2* betaM121 
End If 
 
 
Call Chop(DM12) 

!-------------------- 
! M112 
!-------------------- 
 
betaM1121  = 0

 
 
If (TwoLoopRGE) Then 
betaM1122 = 0

 
DM112 = oo16pi2*( betaM1121 + oo16pi2 * betaM1122 ) 

 
Else 
DM112 = oo16pi2* betaM1121 
End If 
 
 
Call Chop(DM112) 

!-------------------- 
! M222 
!-------------------- 
 
betaM2221  = 0

 
 
If (TwoLoopRGE) Then 
betaM2222 = 0

 
DM222 = oo16pi2*( betaM2221 + oo16pi2 * betaM2222 ) 

 
Else 
DM222 = oo16pi2* betaM2221 
End If 
 
 
Call Chop(DM222) 

!-------------------- 
! MS2 
!-------------------- 
 
betaMS21  = 0

 
 
If (TwoLoopRGE) Then 
betaMS22 = 0

 
DMS2 = oo16pi2*( betaMS21 + oo16pi2 * betaMS22 ) 

 
Else 
DMS2 = oo16pi2* betaMS21 
End If 
 
 
Call Chop(DMS2) 

!-------------------- 
! vd 
!-------------------- 
 
betavd1  = 0

 
 
If (TwoLoopRGE) Then 
betavd2 = 0

 
Dvd = oo16pi2*( betavd1 + oo16pi2 * betavd2 ) 

 
Else 
Dvd = oo16pi2* betavd1 
End If 
 
 
!-------------------- 
! vu 
!-------------------- 
 
betavu1  = 0

 
 
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
 
 
Call ParametersToG170(Dg1,Dg2,Dg3,DLam1pp,DLam4p,DLam6p,DLam7p,DLam5p,DLam2pp,        & 
& DLam6,DLam5,DLam7,DLam3p,DLam1,DLam4,DLam3,DLam2,DLam1p,DLam2p,DLam3pp,DYu,            & 
& DepsU,DYd,DYe,DepsD,DepsE,DMUS1,DMU11,DMU12,DMU21,DMU22,DMUS2,DMSp,DM12,               & 
& DM112,DM222,DMS2,Dvd,Dvu,DvS,f)

Iname = Iname - 1 
 
End Subroutine rge170  

End Module RGEs_2HDMS 
 
