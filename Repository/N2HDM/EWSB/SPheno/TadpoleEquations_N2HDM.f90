! -----------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.14.3 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223  
! (c) Florian Staub, 2013  
! ------------------------------------------------------------------------------  
! File created at 12:06 on 29.6.2021   
! ----------------------------------------------------------------------  
 
 
Module Tadpoles_N2HDM 
 
Use Model_Data_N2HDM 
Use TreeLevelMasses_N2HDM 
Use RGEs_N2HDM 
Use Control 
Use Settings 
Use Mathematics 

Contains 


Subroutine SolveTadpoleEquations(g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,              & 
& Lam8,Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,vd,vu,vS,Tad1Loop)

Implicit None
Real(dp),Intent(inout) :: g1,g2,g3,vd,vu,vS

Complex(dp),Intent(inout) :: Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu(3,3),Yd(3,3),Ye(3,3),M12,MS2,M112,M222

Complex(dp), Intent(in) :: Tad1Loop(3)

! For numerical routines 
Real(dp) :: gC(84)
logical :: broycheck 
Real(dp) :: broyx(3)

If (HighScaleModel.Eq."LOW") Then 
M112 = -(2*Lam1*vd**3 - 2*M12*vu + 2*Lam3*vd*vu**2 + 2*Lam4*vd*vu**2 + Lam5*vd*vu**2 +       & 
&  2*Lam7*vd*vS**2 + vd*vu**2*Conjg(Lam5) - 2*vu*Conjg(M12) - 4*Tad1Loop(1))/(4._dp*vd)
M222 = -(-2*M12*vd + 2*Lam3*vd**2*vu + 2*Lam4*vd**2*vu + Lam5*vd**2*vu + 2*Lam2*vu**3 +      & 
&  2*Lam8*vu*vS**2 + vd**2*vu*Conjg(Lam5) - 2*vd*Conjg(M12) - 4*Tad1Loop(2))/(4._dp*vu)
MS2 = -(Lam7*vd**2*vS + Lam8*vu**2*vS + Lam6*vS**3 - 2*Tad1Loop(3))/(2._dp*vS)

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
M112 = -(2*Lam1*vd**3 - 2*M12*vu + 2*Lam3*vd*vu**2 + 2*Lam4*vd*vu**2 + Lam5*vd*vu**2 +       & 
&  2*Lam7*vd*vS**2 + vd*vu**2*Conjg(Lam5) - 2*vu*Conjg(M12) - 4*Tad1Loop(1))/(4._dp*vd)
M222 = -(-2*M12*vd + 2*Lam3*vd**2*vu + 2*Lam4*vd**2*vu + Lam5*vd**2*vu + 2*Lam2*vu**3 +      & 
&  2*Lam8*vu*vS**2 + vd**2*vu*Conjg(Lam5) - 2*vd*Conjg(M12) - 4*Tad1Loop(2))/(4._dp*vu)
MS2 = -(Lam7*vd**2*vS + Lam8*vu**2*vS + Lam6*vS**3 - 2*Tad1Loop(3))/(2._dp*vS)

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

Subroutine CalculateTadpoles(g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,             & 
& Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,vd,vu,vS,Tad1Loop,TadpoleValues)

Real(dp),Intent(in) :: g1,g2,g3,vd,vu,vS

Complex(dp),Intent(in) :: Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu(3,3),Yd(3,3),Ye(3,3),M12,MS2,M112,M222

Complex(dp), Intent(in) :: Tad1Loop(3)

Real(dp), Intent(out) :: TadpoleValues(3)

TadpoleValues(1) = Real((2*Lam1*vd**3 + vd*(4._dp*(M112) + 2*Lam7*vS**2 + vu**2*(2._dp*(Lam3)& 
&  + 2._dp*(Lam4) + Lam5 + Conjg(Lam5))) - 2*vu*(M12 + Conjg(M12)))/4._dp - Tad1Loop(1),dp) 
TadpoleValues(2) = Real((2*vu*(2._dp*(M222) + Lam2*vu**2 + Lam8*vS**2) + vd**2*vu*(2._dp*(Lam3)& 
&  + 2._dp*(Lam4) + Lam5 + Conjg(Lam5)) - 2*vd*(M12 + Conjg(M12)))/4._dp - Tad1Loop(2),dp) 
TadpoleValues(3) = Real((vS*(2._dp*(MS2) + Lam7*vd**2 + Lam8*vu**2 + Lam6*vS**2))     & 
& /2._dp - Tad1Loop(3),dp) 
End Subroutine CalculateTadpoles 

End Module Tadpoles_N2HDM 
 
