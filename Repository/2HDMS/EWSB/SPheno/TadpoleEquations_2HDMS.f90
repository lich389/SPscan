! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.1 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 10:25 on 30.6.2025   
! ----------------------------------------------------------------------  
 
 
Module Tadpoles_2HDMS 
 
Use Model_Data_2HDMS 
Use TreeLevelMasses_2HDMS 
Use RGEs_2HDMS 
Use Control 
Use Settings 
Use Mathematics 

Contains 


Subroutine SolveTadpoleEquations(g1,g2,g3,Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,             & 
& Lam2pp,Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,Lam3pp,Yu,epsU,            & 
& Yd,Ye,epsD,epsE,MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2,vd,vu,             & 
& vS,Tad1Loop)

Implicit None
Real(dp),Intent(inout) :: g1,g2,g3,vd,vu,vS

Complex(dp),Intent(inout) :: Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,            & 
& Lam2,Lam1p,Lam2p,Lam3pp,Yu(3,3),epsU(3,3),Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),         & 
& MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2

Complex(dp), Intent(in) :: Tad1Loop(3)

! For numerical routines 
Real(dp) :: gC(170)
logical :: broycheck 
Real(dp) :: broyx(3)

If (HighScaleModel.Eq."LOW") Then 
M112 = -1._dp/4._dp*(2*Lam1*vd**3 - 2*M12*vu + 3*Lam6*vd**2*vu + 2*Lam3*vd*vu**2 +           & 
&  2*Lam4*vd*vu**2 + Lam5*vd*vu**2 + Lam7*vu**3 + 4*MU11*vd*vS + 2*MU12*vu*vS +          & 
&  2*MU21*vu*vS + 4*Lam1p*vd*vS**2 + 4*Lam4p*vd*vS**2 + 2*Lam3p*vu*vS**2 +               & 
&  2*Lam6p*vu*vS**2 + 2*Lam7p*vu*vS**2 + 2*vu*vS**2*Conjg(Lam3p) + 4*vd*vS**2*Conjg(Lam4p) +& 
&  vd*vu**2*Conjg(Lam5) + 3*vd**2*vu*Conjg(Lam6) + 2*vu*vS**2*Conjg(Lam6p) +             & 
&  vu**3*Conjg(Lam7) + 2*vu*vS**2*Conjg(Lam7p) - 2*vu*Conjg(M12) + 4*vd*vS*Conjg(MU11) + & 
&  2*vu*vS*Conjg(MU12) + 2*vu*vS*Conjg(MU21) - 4*Tad1Loop(1))/vd
M222 = -1._dp/4._dp*(-2*M12*vd + Lam6*vd**3 + 2*Lam3*vd**2*vu + 2*Lam4*vd**2*vu +            & 
&  Lam5*vd**2*vu + 3*Lam7*vd*vu**2 + 2*Lam2*vu**3 + 2*MU12*vd*vS + 2*MU21*vd*vS +        & 
&  4*MU22*vu*vS + 2*Lam3p*vd*vS**2 + 2*Lam6p*vd*vS**2 + 2*Lam7p*vd*vS**2 +               & 
&  4*Lam2p*vu*vS**2 + 4*Lam5p*vu*vS**2 + 2*vd*vS**2*Conjg(Lam3p) + vd**2*vu*Conjg(Lam5) +& 
&  4*vu*vS**2*Conjg(Lam5p) + vd**3*Conjg(Lam6) + 2*vd*vS**2*Conjg(Lam6p) +               & 
&  3*vd*vu**2*Conjg(Lam7) + 2*vd*vS**2*Conjg(Lam7p) - 2*vd*Conjg(M12) + 2*vd*vS*Conjg(MU12) +& 
&  2*vd*vS*Conjg(MU21) + 4*vu*vS*Conjg(MU22) - 4*Tad1Loop(2))/vu
MS2 = -1._dp/12._dp*(3*MU11*vd**2 + 3*MU12*vd*vu + 3*MU21*vd*vu + 3*MU22*vu**2 +            & 
&  6*MSp*vS + 6*Lam1p*vd**2*vS + 6*Lam4p*vd**2*vS + 6*Lam3p*vd*vu*vS + 6*Lam6p*vd*vu*vS +& 
&  6*Lam7p*vd*vu*vS + 6*Lam2p*vu**2*vS + 6*Lam5p*vu**2*vS + 3*MUS1*vS**2 +               & 
&  9*MUS2*vS**2 + Lam1pp*vS**3 + 4*Lam2pp*vS**3 + 6*Lam3pp*vS**3 + vS**3*Conjg(Lam1pp) + & 
&  4*vS**3*Conjg(Lam2pp) + 6*vd*vu*vS*Conjg(Lam3p) + 6*vd**2*vS*Conjg(Lam4p) +           & 
&  6*vu**2*vS*Conjg(Lam5p) + 6*vd*vu*vS*Conjg(Lam6p) + 6*vd*vu*vS*Conjg(Lam7p) +         & 
&  6*vS*Conjg(MSp) + 3*vd**2*Conjg(MU11) + 3*vd*vu*Conjg(MU12) + 3*vd*vu*Conjg(MU21) +   & 
&  3*vu**2*Conjg(MU22) + 3*vS**2*Conjg(MUS1) + 9*vS**2*Conjg(MUS2) - 6*Tad1Loop(3))/vS

 ! ----------- Check solutions for consistency  -------- 

 ! Check for NaNs 
If (Real(M112,dp).ne.Real(M112,dp)) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for M112" 
   Call TerminateProgram  
 End If 
 If (Abs(AImag(M112)).gt.1.0E-04_dp) Then 
   Write(*,*) "No real solution of tadpole equations for M112" 
   !Call TerminateProgram  
   M112 = Real(M112,dp) 
  SignOfMuChanged= .True. 
End If 
 If (Real(M222,dp).ne.Real(M222,dp)) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for M222" 
   Call TerminateProgram  
 End If 
 If (Abs(AImag(M222)).gt.1.0E-04_dp) Then 
   Write(*,*) "No real solution of tadpole equations for M222" 
   !Call TerminateProgram  
   M222 = Real(M222,dp) 
  SignOfMuChanged= .True. 
End If 
 If (Real(MS2,dp).ne.Real(MS2,dp)) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for MS2" 
   Call TerminateProgram  
 End If 
 If (Abs(AImag(MS2)).gt.1.0E-04_dp) Then 
   Write(*,*) "No real solution of tadpole equations for MS2" 
   !Call TerminateProgram  
   MS2 = Real(MS2,dp) 
  SignOfMuChanged= .True. 
End If 
 Else 
M112 = -1._dp/4._dp*(2*Lam1*vd**3 - 2*M12*vu + 3*Lam6*vd**2*vu + 2*Lam3*vd*vu**2 +           & 
&  2*Lam4*vd*vu**2 + Lam5*vd*vu**2 + Lam7*vu**3 + 4*MU11*vd*vS + 2*MU12*vu*vS +          & 
&  2*MU21*vu*vS + 4*Lam1p*vd*vS**2 + 4*Lam4p*vd*vS**2 + 2*Lam3p*vu*vS**2 +               & 
&  2*Lam6p*vu*vS**2 + 2*Lam7p*vu*vS**2 + 2*vu*vS**2*Conjg(Lam3p) + 4*vd*vS**2*Conjg(Lam4p) +& 
&  vd*vu**2*Conjg(Lam5) + 3*vd**2*vu*Conjg(Lam6) + 2*vu*vS**2*Conjg(Lam6p) +             & 
&  vu**3*Conjg(Lam7) + 2*vu*vS**2*Conjg(Lam7p) - 2*vu*Conjg(M12) + 4*vd*vS*Conjg(MU11) + & 
&  2*vu*vS*Conjg(MU12) + 2*vu*vS*Conjg(MU21) - 4*Tad1Loop(1))/vd
M222 = -1._dp/4._dp*(-2*M12*vd + Lam6*vd**3 + 2*Lam3*vd**2*vu + 2*Lam4*vd**2*vu +            & 
&  Lam5*vd**2*vu + 3*Lam7*vd*vu**2 + 2*Lam2*vu**3 + 2*MU12*vd*vS + 2*MU21*vd*vS +        & 
&  4*MU22*vu*vS + 2*Lam3p*vd*vS**2 + 2*Lam6p*vd*vS**2 + 2*Lam7p*vd*vS**2 +               & 
&  4*Lam2p*vu*vS**2 + 4*Lam5p*vu*vS**2 + 2*vd*vS**2*Conjg(Lam3p) + vd**2*vu*Conjg(Lam5) +& 
&  4*vu*vS**2*Conjg(Lam5p) + vd**3*Conjg(Lam6) + 2*vd*vS**2*Conjg(Lam6p) +               & 
&  3*vd*vu**2*Conjg(Lam7) + 2*vd*vS**2*Conjg(Lam7p) - 2*vd*Conjg(M12) + 2*vd*vS*Conjg(MU12) +& 
&  2*vd*vS*Conjg(MU21) + 4*vu*vS*Conjg(MU22) - 4*Tad1Loop(2))/vu
MS2 = -1._dp/12._dp*(3*MU11*vd**2 + 3*MU12*vd*vu + 3*MU21*vd*vu + 3*MU22*vu**2 +            & 
&  6*MSp*vS + 6*Lam1p*vd**2*vS + 6*Lam4p*vd**2*vS + 6*Lam3p*vd*vu*vS + 6*Lam6p*vd*vu*vS +& 
&  6*Lam7p*vd*vu*vS + 6*Lam2p*vu**2*vS + 6*Lam5p*vu**2*vS + 3*MUS1*vS**2 +               & 
&  9*MUS2*vS**2 + Lam1pp*vS**3 + 4*Lam2pp*vS**3 + 6*Lam3pp*vS**3 + vS**3*Conjg(Lam1pp) + & 
&  4*vS**3*Conjg(Lam2pp) + 6*vd*vu*vS*Conjg(Lam3p) + 6*vd**2*vS*Conjg(Lam4p) +           & 
&  6*vu**2*vS*Conjg(Lam5p) + 6*vd*vu*vS*Conjg(Lam6p) + 6*vd*vu*vS*Conjg(Lam7p) +         & 
&  6*vS*Conjg(MSp) + 3*vd**2*Conjg(MU11) + 3*vd*vu*Conjg(MU12) + 3*vd*vu*Conjg(MU21) +   & 
&  3*vu**2*Conjg(MU22) + 3*vS**2*Conjg(MUS1) + 9*vS**2*Conjg(MUS2) - 6*Tad1Loop(3))/vS

 ! ----------- Check solutions for consistency  -------- 

 ! Check for NaNs 
If (Real(M112,dp).ne.Real(M112,dp)) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for M112" 
   Call TerminateProgram  
 End If 
 If (Abs(AImag(M112)).gt.1.0E-04_dp) Then 
   Write(*,*) "No real solution of tadpole equations for M112" 
   !Call TerminateProgram  
   M112 = Real(M112,dp) 
  SignOfMuChanged= .True. 
End If 
 If (Real(M222,dp).ne.Real(M222,dp)) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for M222" 
   Call TerminateProgram  
 End If 
 If (Abs(AImag(M222)).gt.1.0E-04_dp) Then 
   Write(*,*) "No real solution of tadpole equations for M222" 
   !Call TerminateProgram  
   M222 = Real(M222,dp) 
  SignOfMuChanged= .True. 
End If 
 If (Real(MS2,dp).ne.Real(MS2,dp)) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for MS2" 
   Call TerminateProgram  
 End If 
 If (Abs(AImag(MS2)).gt.1.0E-04_dp) Then 
   Write(*,*) "No real solution of tadpole equations for MS2" 
   !Call TerminateProgram  
   MS2 = Real(MS2,dp) 
  SignOfMuChanged= .True. 
End If 
 End if 
End Subroutine SolveTadpoleEquations

Subroutine CalculateTadpoles(g1,g2,g3,Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,          & 
& Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,Lam3pp,Yu,epsU,Yd,Ye,             & 
& epsD,epsE,MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2,vd,vu,vS,Tad1Loop,       & 
& TadpoleValues)

Real(dp),Intent(in) :: g1,g2,g3,vd,vu,vS

Complex(dp),Intent(in) :: Lam1pp,Lam4p,Lam6p,Lam7p,Lam5p,Lam2pp,Lam6,Lam5,Lam7,Lam3p,Lam1,Lam4,Lam3,            & 
& Lam2,Lam1p,Lam2p,Lam3pp,Yu(3,3),epsU(3,3),Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),         & 
& MUS1,MU11,MU12,MU21,MU22,MUS2,MSp,M12,M112,M222,MS2

Complex(dp), Intent(in) :: Tad1Loop(3)

Real(dp), Intent(out) :: TadpoleValues(3)

TadpoleValues(1) = Real((2*Lam1*vd**3 + 3*vd**2*vu*(Lam6 + Conjg(Lam6))               & 
&  + vd*(vu**2*(2._dp*(Lam3) + 2._dp*(Lam4) + Lam5 + Conjg(Lam5)) + 4*(M112 + vS**2*(Lam1p + Lam4p + Conjg(Lam4p))& 
&  + vS*(MU11 + Conjg(MU11)))) + vu*(-2._dp*(M12) + vu**2*(Lam7 + Conjg(Lam7))           & 
&  + 2*vS**2*(Lam3p + Lam6p + Lam7p + Conjg(Lam3p) + Conjg(Lam6p) + Conjg(Lam7p))        & 
&  - 2*Conjg(M12) + 2*vS*(MU12 + MU21 + Conjg(MU12) + Conjg(MU21))))/4._dp - Tad1Loop(1),dp) 
TadpoleValues(2) = Real((2*Lam2*vu**3 + vd**2*vu*(2._dp*(Lam3) + 2._dp*(Lam4)         & 
&  + Lam5 + Conjg(Lam5)) + vd**3*(Lam6 + Conjg(Lam6)) + vd*(-2._dp*(M12) + 3*vu**2*(Lam7 + Conjg(Lam7))& 
&  + 2*vS**2*(Lam3p + Lam6p + Lam7p + Conjg(Lam3p) + Conjg(Lam6p) + Conjg(Lam7p))        & 
&  - 2*Conjg(M12) + 2*vS*(MU12 + MU21 + Conjg(MU12) + Conjg(MU21))) + 4*vu*(M222 + vS**2*(Lam2p + Lam5p + Conjg(Lam5p))& 
&  + vS*(MU22 + Conjg(MU22))))/4._dp - Tad1Loop(2),dp) 
TadpoleValues(3) = Real((3*vd**2*(MU11 + 2*vS*(Lam1p + Lam4p + Conjg(Lam4p))          & 
&  + Conjg(MU11)) + 3*vd*vu*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*Conjg(Lam3p)& 
&  + 2*vS*Conjg(Lam6p) + 2*vS*Conjg(Lam7p) + Conjg(MU12) + Conjg(MU21)) + 3*vu**2*(MU22 + 2*vS*(Lam2p + Lam5p + Conjg(Lam5p))& 
&  + Conjg(MU22)) + vS*(6*(2._dp*(MS2) + MSp) + vS**2*(Lam1pp + 4._dp*(Lam2pp)           & 
&  + 6._dp*(Lam3pp) + Conjg(Lam1pp) + 4*Conjg(Lam2pp)) + 6*Conjg(MSp) + 3*vS*(MUS1 + 3._dp*(MUS2)& 
&  + Conjg(MUS1) + 3*Conjg(MUS2))))/6._dp - Tad1Loop(3),dp) 
End Subroutine CalculateTadpoles 

End Module Tadpoles_2HDMS 
 
