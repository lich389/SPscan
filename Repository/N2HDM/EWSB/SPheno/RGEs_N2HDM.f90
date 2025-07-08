! -----------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.14.3 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223  
! (c) Florian Staub, 2013  
! ------------------------------------------------------------------------------  
! File created at 12:02 on 29.6.2021   
! ----------------------------------------------------------------------  
 
 
Module RGEs_N2HDM 
 
Use Control 
Use Settings 
Use Model_Data_N2HDM 
Use Mathematics 
 
Logical,Private,Save::OnlyDiagonal

Real(dp),Parameter::id3R(3,3)=& 
   & Reshape(Source=(/& 
   & 1,0,0,& 
 &0,1,0,& 
 &0,0,1& 
 &/),shape=(/3,3/)) 
Contains 


Subroutine GToParameters81(g,g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,             & 
& Lam2,Yu,Yd,Ye,M12,MS2,M112,M222)

Implicit None 
Real(dp), Intent(in) :: g(81) 
Real(dp),Intent(out) :: g1,g2,g3

Complex(dp),Intent(out) :: Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu(3,3),Yd(3,3),Ye(3,3),M12,MS2,M112,M222

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'GToParameters81' 
 
g1= g(1) 
g2= g(2) 
g3= g(3) 
Lam5= Cmplx(g(4),g(5),dp) 
Lam6= Cmplx(g(6),g(7),dp) 
Lam7= Cmplx(g(8),g(9),dp) 
Lam1= Cmplx(g(10),g(11),dp) 
Lam3= Cmplx(g(12),g(13),dp) 
Lam4= Cmplx(g(14),g(15),dp) 
Lam8= Cmplx(g(16),g(17),dp) 
Lam2= Cmplx(g(18),g(19),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yu(i1,i2) = Cmplx( g(SumI+20), g(SumI+21), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yd(i1,i2) = Cmplx( g(SumI+38), g(SumI+39), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Ye(i1,i2) = Cmplx( g(SumI+56), g(SumI+57), dp) 
End Do 
 End Do 
 
M12= Cmplx(g(74),g(75),dp) 
MS2= Cmplx(g(76),g(77),dp) 
M112= Cmplx(g(78),g(79),dp) 
M222= Cmplx(g(80),g(81),dp) 
Do i1=1,81 
If (g(i1).ne.g(i1)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Write(*,*) "At position ", i1 
 Call TerminateProgram 
End if 
End do 
Iname = Iname - 1 
 
End Subroutine GToParameters81

Subroutine ParametersToG81(g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,               & 
& Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,g)

Implicit None 
Real(dp), Intent(out) :: g(81) 
Real(dp), Intent(in) :: g1,g2,g3

Complex(dp), Intent(in) :: Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu(3,3),Yd(3,3),Ye(3,3),M12,MS2,M112,M222

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'ParametersToG81' 
 
g(1) = g1  
g(2) = g2  
g(3) = g3  
g(4) = Real(Lam5,dp)  
g(5) = Aimag(Lam5)  
g(6) = Real(Lam6,dp)  
g(7) = Aimag(Lam6)  
g(8) = Real(Lam7,dp)  
g(9) = Aimag(Lam7)  
g(10) = Real(Lam1,dp)  
g(11) = Aimag(Lam1)  
g(12) = Real(Lam3,dp)  
g(13) = Aimag(Lam3)  
g(14) = Real(Lam4,dp)  
g(15) = Aimag(Lam4)  
g(16) = Real(Lam8,dp)  
g(17) = Aimag(Lam8)  
g(18) = Real(Lam2,dp)  
g(19) = Aimag(Lam2)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+20) = Real(Yu(i1,i2), dp) 
g(SumI+21) = Aimag(Yu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+38) = Real(Yd(i1,i2), dp) 
g(SumI+39) = Aimag(Yd(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+56) = Real(Ye(i1,i2), dp) 
g(SumI+57) = Aimag(Ye(i1,i2)) 
End Do 
End Do 

g(74) = Real(M12,dp)  
g(75) = Aimag(M12)  
g(76) = Real(MS2,dp)  
g(77) = Aimag(MS2)  
g(78) = Real(M112,dp)  
g(79) = Aimag(M112)  
g(80) = Real(M222,dp)  
g(81) = Aimag(M222)  
Iname = Iname - 1 
 
End Subroutine ParametersToG81

Subroutine rge81(len, T, GY, F) 
Implicit None 
Integer, Intent(in) :: len 
Real(dp), Intent(in) :: T, GY(len) 
Real(dp), Intent(out) :: F(len) 
Integer :: i1,i2,i3,i4 
Integer :: j1,j2,j3,j4,j5,j6,j7 
Real(dp) :: q 
Real(dp) :: g1,betag11,betag12,Dg1,g2,betag21,betag22,Dg2,g3,betag31,betag32,Dg3
Complex(dp) :: Lam5,betaLam51,betaLam52,DLam5,Lam6,betaLam61,betaLam62,               & 
& DLam6,Lam7,betaLam71,betaLam72,DLam7,Lam1,betaLam11,betaLam12,DLam1,Lam3,              & 
& betaLam31,betaLam32,DLam3,Lam4,betaLam41,betaLam42,DLam4,Lam8,betaLam81,               & 
& betaLam82,DLam8,Lam2,betaLam21,betaLam22,DLam2,Yu(3,3),betaYu1(3,3),betaYu2(3,3)       & 
& ,DYu(3,3),adjYu(3,3),Yd(3,3),betaYd1(3,3),betaYd2(3,3),DYd(3,3),adjYd(3,3)             & 
& ,Ye(3,3),betaYe1(3,3),betaYe2(3,3),DYe(3,3),adjYe(3,3),M12,betaM121,betaM122,          & 
& DM12,MS2,betaMS21,betaMS22,DMS2,M112,betaM1121,betaM1122,DM112,M222,betaM2221,         & 
& betaM2222,DM222
Iname = Iname +1 
NameOfUnit(Iname) = 'rge81' 
 
OnlyDiagonal = .Not.GenerationMixing 
q = t 
 
Call GToParameters81(gy,g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,             & 
& Yu,Yd,Ye,M12,MS2,M112,M222)

Call Adjungate(Yu,adjYu)
Call Adjungate(Yd,adjYd)
Call Adjungate(Ye,adjYe)


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
! Lam8 
!-------------------- 
 
betaLam81  = 0

 
 
If (TwoLoopRGE) Then 
betaLam82 = 0

 
DLam8 = oo16pi2*( betaLam81 + oo16pi2 * betaLam82 ) 

 
Else 
DLam8 = oo16pi2* betaLam81 
End If 
 
 
Call Chop(DLam8) 

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

Call ParametersToG81(Dg1,Dg2,Dg3,DLam5,DLam6,DLam7,DLam1,DLam3,DLam4,DLam8,           & 
& DLam2,DYu,DYd,DYe,DM12,DMS2,DM112,DM222,f)

Iname = Iname - 1 
 
End Subroutine rge81  

Subroutine GToParameters84(g,g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,             & 
& Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,vd,vu,vS)

Implicit None 
Real(dp), Intent(in) :: g(84) 
Real(dp),Intent(out) :: g1,g2,g3,vd,vu,vS

Complex(dp),Intent(out) :: Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu(3,3),Yd(3,3),Ye(3,3),M12,MS2,M112,M222

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'GToParameters84' 
 
g1= g(1) 
g2= g(2) 
g3= g(3) 
Lam5= Cmplx(g(4),g(5),dp) 
Lam6= Cmplx(g(6),g(7),dp) 
Lam7= Cmplx(g(8),g(9),dp) 
Lam1= Cmplx(g(10),g(11),dp) 
Lam3= Cmplx(g(12),g(13),dp) 
Lam4= Cmplx(g(14),g(15),dp) 
Lam8= Cmplx(g(16),g(17),dp) 
Lam2= Cmplx(g(18),g(19),dp) 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yu(i1,i2) = Cmplx( g(SumI+20), g(SumI+21), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Yd(i1,i2) = Cmplx( g(SumI+38), g(SumI+39), dp) 
End Do 
 End Do 
 
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
Ye(i1,i2) = Cmplx( g(SumI+56), g(SumI+57), dp) 
End Do 
 End Do 
 
M12= Cmplx(g(74),g(75),dp) 
MS2= Cmplx(g(76),g(77),dp) 
M112= Cmplx(g(78),g(79),dp) 
M222= Cmplx(g(80),g(81),dp) 
vd= g(82) 
vu= g(83) 
vS= g(84) 
Do i1=1,84 
If (g(i1).ne.g(i1)) Then 
 Write(*,*) "NaN appearing in ",NameOfUnit(Iname) 
 Write(*,*) "At position ", i1 
 Call TerminateProgram 
End if 
End do 
Iname = Iname - 1 
 
End Subroutine GToParameters84

Subroutine ParametersToG84(g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,               & 
& Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,vd,vu,vS,g)

Implicit None 
Real(dp), Intent(out) :: g(84) 
Real(dp), Intent(in) :: g1,g2,g3,vd,vu,vS

Complex(dp), Intent(in) :: Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu(3,3),Yd(3,3),Ye(3,3),M12,MS2,M112,M222

Integer i1, i2, i3, i4, SumI 
 
Iname = Iname +1 
NameOfUnit(Iname) = 'ParametersToG84' 
 
g(1) = g1  
g(2) = g2  
g(3) = g3  
g(4) = Real(Lam5,dp)  
g(5) = Aimag(Lam5)  
g(6) = Real(Lam6,dp)  
g(7) = Aimag(Lam6)  
g(8) = Real(Lam7,dp)  
g(9) = Aimag(Lam7)  
g(10) = Real(Lam1,dp)  
g(11) = Aimag(Lam1)  
g(12) = Real(Lam3,dp)  
g(13) = Aimag(Lam3)  
g(14) = Real(Lam4,dp)  
g(15) = Aimag(Lam4)  
g(16) = Real(Lam8,dp)  
g(17) = Aimag(Lam8)  
g(18) = Real(Lam2,dp)  
g(19) = Aimag(Lam2)  
Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+20) = Real(Yu(i1,i2), dp) 
g(SumI+21) = Aimag(Yu(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+38) = Real(Yd(i1,i2), dp) 
g(SumI+39) = Aimag(Yd(i1,i2)) 
End Do 
End Do 

Do i1 = 1,3
Do i2 = 1,3
SumI = (i2-1) + (i1-1)*3
SumI = SumI*2 
g(SumI+56) = Real(Ye(i1,i2), dp) 
g(SumI+57) = Aimag(Ye(i1,i2)) 
End Do 
End Do 

g(74) = Real(M12,dp)  
g(75) = Aimag(M12)  
g(76) = Real(MS2,dp)  
g(77) = Aimag(MS2)  
g(78) = Real(M112,dp)  
g(79) = Aimag(M112)  
g(80) = Real(M222,dp)  
g(81) = Aimag(M222)  
g(82) = vd  
g(83) = vu  
g(84) = vS  
Iname = Iname - 1 
 
End Subroutine ParametersToG84

Subroutine rge84(len, T, GY, F) 
Implicit None 
Integer, Intent(in) :: len 
Real(dp), Intent(in) :: T, GY(len) 
Real(dp), Intent(out) :: F(len) 
Integer :: i1,i2,i3,i4 
Integer :: j1,j2,j3,j4,j5,j6,j7 
Real(dp) :: q 
Real(dp) :: g1,betag11,betag12,Dg1,g2,betag21,betag22,Dg2,g3,betag31,betag32,         & 
& Dg3,vd,betavd1,betavd2,Dvd,vu,betavu1,betavu2,Dvu,vS,betavS1,betavS2,DvS
Complex(dp) :: Lam5,betaLam51,betaLam52,DLam5,Lam6,betaLam61,betaLam62,               & 
& DLam6,Lam7,betaLam71,betaLam72,DLam7,Lam1,betaLam11,betaLam12,DLam1,Lam3,              & 
& betaLam31,betaLam32,DLam3,Lam4,betaLam41,betaLam42,DLam4,Lam8,betaLam81,               & 
& betaLam82,DLam8,Lam2,betaLam21,betaLam22,DLam2,Yu(3,3),betaYu1(3,3),betaYu2(3,3)       & 
& ,DYu(3,3),adjYu(3,3),Yd(3,3),betaYd1(3,3),betaYd2(3,3),DYd(3,3),adjYd(3,3)             & 
& ,Ye(3,3),betaYe1(3,3),betaYe2(3,3),DYe(3,3),adjYe(3,3),M12,betaM121,betaM122,          & 
& DM12,MS2,betaMS21,betaMS22,DMS2,M112,betaM1121,betaM1122,DM112,M222,betaM2221,         & 
& betaM2222,DM222
Iname = Iname +1 
NameOfUnit(Iname) = 'rge84' 
 
OnlyDiagonal = .Not.GenerationMixing 
q = t 
 
Call GToParameters84(gy,g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,             & 
& Yu,Yd,Ye,M12,MS2,M112,M222,vd,vu,vS)

Call Adjungate(Yu,adjYu)
Call Adjungate(Yd,adjYd)
Call Adjungate(Ye,adjYe)


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
! Lam8 
!-------------------- 
 
betaLam81  = 0

 
 
If (TwoLoopRGE) Then 
betaLam82 = 0

 
DLam8 = oo16pi2*( betaLam81 + oo16pi2 * betaLam82 ) 

 
Else 
DLam8 = oo16pi2* betaLam81 
End If 
 
 
Call Chop(DLam8) 

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
 
 
Call ParametersToG84(Dg1,Dg2,Dg3,DLam5,DLam6,DLam7,DLam1,DLam3,DLam4,DLam8,           & 
& DLam2,DYu,DYd,DYe,DM12,DMS2,DM112,DM222,Dvd,Dvu,DvS,f)

Iname = Iname - 1 
 
End Subroutine rge84  

End Module RGEs_N2HDM 
 
