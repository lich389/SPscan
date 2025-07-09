! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.4 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 17:42 on 9.7.2025   
! ----------------------------------------------------------------------  
 
 
Module Tadpoles_C2HDMS 
 
Use Model_Data_C2HDMS 
Use TreeLevelMasses_C2HDMS 
Use RGEs_C2HDMS 
Use Control 
Use Settings 
Use Mathematics 

Contains 


Subroutine SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,              & 
& Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,              & 
& Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,              & 
& vS,Tad1Loop)

Implicit None
Real(dp),Intent(inout) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp),Intent(inout) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Complex(dp), Intent(in) :: Tad1Loop(6)

! For numerical routines 
Real(dp) :: gC(160)
logical :: broycheck 
Real(dp) :: broyx(5)

If (HighScaleModel.Eq."LOW") Then 
M112 = -1._dp/2._dp*(Lam1*vd**3 + exp(2*(0.,1._dp)*eta)*Lam1*vd**3 + (Lam6*vd**2*vu)/exp((0._dp,& 
& 1._dp)*eta) + 2*exp((0._dp,1._dp)*eta)*Lam6*vd**2*vu + Lam3*vd*vu**2 + exp(2*(0.,      & 
& 1._dp)*eta)*Lam3*vd*vu**2 + Lam4*vd*vu**2 + exp(2*(0.,1._dp)*eta)*Lam4*vd*vu**2 +      & 
&  Lam5*vd*vu**2 + exp((0._dp,1._dp)*eta)*Lam7*vu**3 + 2*exp((0._dp,1._dp)*zeta)*mu11*vd*vS +& 
&  2*exp((0._dp,1._dp)*(2._dp*(eta) + zeta))*mu11*vd*vS + 2*exp((0._dp,1._dp)*(eta +     & 
&  zeta))*mu12*vu*vS + 2*exp((0._dp,1._dp)*(eta + zeta))*mu21*vu*vS + 2*Lam1p*vd*vS**2 + & 
&  2*exp(2*(0.,1._dp)*eta)*Lam1p*vd*vS**2 + 2*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*vS**2 +    & 
&  2*exp(2*(0.,1._dp)*(eta + zeta))*Lam4p*vd*vS**2 + 2*exp((0._dp,1._dp)*eta)*Lam3p*vu*vS**2 +& 
&  2*exp((0._dp,1._dp)*(eta + 2._dp*(zeta)))*Lam6p*vu*vS**2 + 2*exp((0._dp,              & 
& 1._dp)*(eta + 2._dp*(zeta)))*Lam7p*vu*vS**2 + 2*exp((0._dp,1._dp)*eta)*vu*vS**2*Conjg(Lam3p) +& 
&  (2*(1 + exp(2*(0.,1._dp)*eta))*vd*vS**2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta) +        & 
&  exp(2*(0.,1._dp)*eta)*vd*vu**2*Conjg(Lam5) + 2*exp((0._dp,1._dp)*eta)*vd**2*vu*Conjg(Lam6) +& 
&  exp(3*(0.,1._dp)*eta)*vd**2*vu*Conjg(Lam6) + 2*exp((0._dp,1._dp)*(eta -               & 
&  2._dp*(zeta)))*vu*vS**2*Conjg(Lam6p) + exp((0._dp,1._dp)*eta)*vu**3*Conjg(Lam7) +     & 
&  2*exp((0._dp,1._dp)*(eta - 2._dp*(zeta)))*vu*vS**2*Conjg(Lam7p) + 2*exp(2*(0.,        & 
& 1._dp)*eta - (0._dp,1._dp)*zeta)*vd*vS*Conjg(mu11) + (2*vd*vS*Conjg(mu11))/exp((0._dp, & 
& 1._dp)*zeta) + 2*exp((0._dp,1._dp)*(eta - zeta))*vu*vS*Conjg(mu12) + 2*exp((0._dp,     & 
& 1._dp)*(eta - zeta))*vu*vS*Conjg(mu21) - 4*exp((0._dp,1._dp)*eta)*vu*Real(M122,        & 
& dp) - 2*Tad1Loop(1) - 2*exp(2*(0.,1._dp)*eta)*Tad1Loop(1) + 2*(0.,1._dp)*Tad1Loop(4) - & 
&  2*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*Tad1Loop(4))/((1 + exp(2*(0.,1._dp)*eta))*vd)
M222 = -1._dp/2._dp*(exp((0._dp,1._dp)*eta)*Lam6*vd**3*vu + Lam3*vd**2*vu**2 +               & 
&  exp(2*(0.,1._dp)*eta)*Lam3*vd**2*vu**2 + Lam4*vd**2*vu**2 + exp(2*(0.,1._dp)*eta)*Lam4*vd**2*vu**2 +& 
&  Lam5*vd**2*vu**2 + (Lam7*vd*vu**3)/exp((0._dp,1._dp)*eta) + 2*exp((0._dp,             & 
& 1._dp)*eta)*Lam7*vd*vu**3 + Lam2*vu**4 + exp(2*(0.,1._dp)*eta)*Lam2*vu**4 +            & 
&  2*exp((0._dp,1._dp)*(eta + zeta))*mu12*vd*vu*vS + 2*exp((0._dp,1._dp)*(eta +          & 
&  zeta))*mu21*vd*vu*vS + 2*exp((0._dp,1._dp)*zeta)*mu22*vu**2*vS + 2*exp((0._dp,        & 
& 1._dp)*(2._dp*(eta) + zeta))*mu22*vu**2*vS + 2*exp((0._dp,1._dp)*eta)*Lam3p*vd*vu*vS**2 +& 
&  2*exp((0._dp,1._dp)*(eta + 2._dp*(zeta)))*Lam6p*vd*vu*vS**2 + 2*exp((0._dp,           & 
& 1._dp)*(eta + 2._dp*(zeta)))*Lam7p*vd*vu*vS**2 + 2*Lam2p*vu**2*vS**2 + 2*exp(2*(0.,    & 
& 1._dp)*eta)*Lam2p*vu**2*vS**2 + 2*exp(2*(0.,1._dp)*zeta)*Lam5p*vu**2*vS**2 +           & 
&  2*exp(2*(0.,1._dp)*(eta + zeta))*Lam5p*vu**2*vS**2 + 2*exp((0._dp,1._dp)*eta)*vd*vu*vS**2*Conjg(Lam3p) +& 
&  exp(2*(0.,1._dp)*eta)*vd**2*vu**2*Conjg(Lam5) + 2*exp(2*(0.,1._dp)*(eta -             & 
&  zeta))*vu**2*vS**2*Conjg(Lam5p) + (2*vu**2*vS**2*Conjg(Lam5p))/exp(2*(0.,             & 
& 1._dp)*zeta) + exp((0._dp,1._dp)*eta)*vd**3*vu*Conjg(Lam6) + 2*exp((0._dp,             & 
& 1._dp)*(eta - 2._dp*(zeta)))*vd*vu*vS**2*Conjg(Lam6p) + 2*exp((0._dp,1._dp)*eta)*vd*vu**3*Conjg(Lam7) +& 
&  exp(3*(0.,1._dp)*eta)*vd*vu**3*Conjg(Lam7) + 2*exp((0._dp,1._dp)*(eta -               & 
&  2._dp*(zeta)))*vd*vu*vS**2*Conjg(Lam7p) + 2*exp((0._dp,1._dp)*(eta - zeta))*vd*vu*vS*Conjg(mu12) +& 
&  2*exp((0._dp,1._dp)*(eta - zeta))*vd*vu*vS*Conjg(mu21) + 2*exp(2*(0.,1._dp)*eta -     & 
&  (0._dp,1._dp)*zeta)*vu**2*vS*Conjg(mu22) + (2*vu**2*vS*Conjg(mu22))/exp((0._dp,       & 
& 1._dp)*zeta) - 4*exp((0._dp,1._dp)*eta)*vd*vu*Real(M122,dp) - 2*vu*Tad1Loop(2) -       & 
&  2*exp(2*(0.,1._dp)*eta)*vu*Tad1Loop(2) + 2*(0.,1._dp)*vd*Tad1Loop(4) - 2*(0.,         & 
& 1._dp)*exp(2*(0.,1._dp)*eta)*vd*Tad1Loop(4))/((1 + exp(2*(0.,1._dp)*eta))*vu**2)
mS2 = -1._dp/6._dp*(3*exp((0._dp,1._dp)*zeta)*mu11*vd**2 + (3*mu12*vd*vu)/exp((0._dp,       & 
& 1._dp)*(eta - zeta)) + 3*exp((0._dp,1._dp)*(eta + zeta))*mu21*vd*vu + 3*exp((0._dp,    & 
& 1._dp)*zeta)*mu22*vu**2 + 3*Lam1p*vd**2*vS + 3*exp(4*(0.,1._dp)*zeta)*Lam1p*vd**2*vS + & 
&  6*exp(2*(0.,1._dp)*zeta)*Lam4p*vd**2*vS + (3*Lam3p*vd*vu*vS)/exp((0._dp,              & 
& 1._dp)*eta) + (3*Lam3p*vd*vu*vS)/exp((0._dp,1._dp)*(eta - 4._dp*(zeta))) +             & 
&  (6*Lam6p*vd*vu*vS)/exp((0._dp,1._dp)*(eta - 2._dp*(zeta))) + 6*exp((0._dp,            & 
& 1._dp)*(eta + 2._dp*(zeta)))*Lam7p*vd*vu*vS + 3*Lam2p*vu**2*vS + 3*exp(4*(0.,          & 
& 1._dp)*zeta)*Lam2p*vu**2*vS + 6*exp(2*(0.,1._dp)*zeta)*Lam5p*vu**2*vS + 3*exp(3*(0.,   & 
& 1._dp)*zeta)*mus1*vS**2 + 6*exp((0._dp,1._dp)*zeta)*mus2*vS**2 + 3*exp(5*(0.,          & 
& 1._dp)*zeta)*mus2*vS**2 + exp(4*(0.,1._dp)*zeta)*L1pp*vS**3 + 3*exp(2*(0.,             & 
& 1._dp)*zeta)*L2pp*vS**3 + exp(6*(0.,1._dp)*zeta)*L2pp*vS**3 + 3*L3pp*vS**3 +           & 
&  3*exp(4*(0.,1._dp)*zeta)*L3pp*vS**3 + vS**3*Conjg(L1pp) + ((1 + 3*exp(4*(0.,          & 
& 1._dp)*zeta))*vS**3*Conjg(L2pp))/exp(2*(0.,1._dp)*zeta) + 3*exp((0._dp,1._dp)*eta)*vd*vu*vS*Conjg(Lam3p) +& 
&  3*exp((0._dp,1._dp)*(eta + 4._dp*(zeta)))*vd*vu*vS*Conjg(Lam3p) + 6*exp(2*(0.,        & 
& 1._dp)*zeta)*vd**2*vS*Conjg(Lam4p) + 6*exp(2*(0.,1._dp)*zeta)*vu**2*vS*Conjg(Lam5p) +  & 
&  6*exp((0._dp,1._dp)*(eta + 2._dp*(zeta)))*vd*vu*vS*Conjg(Lam6p) + (6*vd*vu*vS*Conjg(Lam7p))/exp((0._dp,& 
& 1._dp)*(eta - 2._dp*(zeta))) + 3*exp(3*(0.,1._dp)*zeta)*vd**2*Conjg(mu11) +            & 
&  3*exp((0._dp,1._dp)*(eta + 3._dp*(zeta)))*vd*vu*Conjg(mu12) + (3*vd*vu*Conjg(mu21))/exp((0._dp,& 
& 1._dp)*(eta - 3._dp*(zeta))) + 3*exp(3*(0.,1._dp)*zeta)*vu**2*Conjg(mu22) +            & 
&  3*exp((0._dp,1._dp)*zeta)*vS**2*Conjg(mus1) + (3*vS**2*Conjg(mus2))/exp((0._dp,       & 
& 1._dp)*zeta) + 6*exp(3*(0.,1._dp)*zeta)*vS**2*Conjg(mus2) + 12*exp(2*(0.,              & 
& 1._dp)*zeta)*vS*Real(mSp2,dp) - 3*Tad1Loop(3) - 3*exp(4*(0.,1._dp)*zeta)*Tad1Loop(3) + & 
&  3*(0.,1._dp)*Tad1Loop(6) - 3*(0.,1._dp)*exp(4*(0.,1._dp)*zeta)*Tad1Loop(6))/((1 +     & 
&  exp(4*(0.,1._dp)*zeta))*vS)
temporaryValue = -1._dp/2._dp*((0._dp,1._dp)*Lam6*vd**2*vu + ((0._dp,1._dp)*Lam5*vd*vu**2)/exp((0._dp, & 
& 1._dp)*eta) + (0._dp,1._dp)*Lam7*vu**3 + 2*(0.,1._dp)*exp((0._dp,1._dp)*zeta)*mu12*vu*vS -& 
&  2*(0.,1._dp)*exp((0._dp,1._dp)*(2._dp*(eta) + zeta))*mu21*vu*vS + 2*(0.,              & 
& 1._dp)*Lam3p*vu*vS**2 + 2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam6p*vu*vS**2 -           & 
&  2*(0.,1._dp)*exp(2*(0.,1._dp)*(eta + zeta))*Lam7p*vu*vS**2 - 2*(0.,1._dp)*exp(2*(0.,  & 
& 1._dp)*eta)*vu*vS**2*Conjg(Lam3p) - (0._dp,1._dp)*exp(3*(0.,1._dp)*eta)*vd*vu**2*Conjg(Lam5) -& 
&  (0._dp,1._dp)*exp(2*(0.,1._dp)*eta)*vd**2*vu*Conjg(Lam6) - 2*(0.,1._dp)*exp(2*(0.,    & 
& 1._dp)*(eta - zeta))*vu*vS**2*Conjg(Lam6p) - (0._dp,1._dp)*exp(2*(0.,1._dp)*eta)*vu**3*Conjg(Lam7) +& 
&  (2*(0.,1._dp)*vu*vS**2*Conjg(Lam7p))/exp(2*(0.,1._dp)*zeta) - 2*(0.,1._dp)*exp(2*(0., & 
& 1._dp)*eta - (0._dp,1._dp)*zeta)*vu*vS*Conjg(mu12) + (2*(0.,1._dp)*vu*vS*Conjg(mu21))/exp((0._dp,& 
& 1._dp)*zeta) - 2*(0.,1._dp)*vu*Real(M122,dp) + 2*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Real(M122,& 
& dp) + 4*exp((0._dp,1._dp)*eta)*Tad1Loop(4))/((1 + exp(2*(0.,1._dp)*eta))*vu)
M122 = Cmplx(real(M122,dp),Real(temporaryValue,dp),dp) 
temporaryValue = (3*(0.,1._dp)*exp(3*(0.,1._dp)*zeta)*mu11*vd**2 + (3*(0.,1._dp)*mu12*vd*vu)/exp((0._dp,& 
& 1._dp)*(eta - 3._dp*(zeta))) + 3*(0.,1._dp)*exp((0._dp,1._dp)*(eta + 3._dp*(zeta)))*mu21*vd*vu +& 
&  3*(0.,1._dp)*exp(3*(0.,1._dp)*zeta)*mu22*vu**2 + 6*(0.,1._dp)*exp(4*(0.,              & 
& 1._dp)*zeta)*Lam4p*vd**2*vS + (6*(0.,1._dp)*Lam6p*vd*vu*vS)/exp((0._dp,1._dp)*(eta -   & 
&  4._dp*(zeta))) + 6*(0.,1._dp)*exp((0._dp,1._dp)*(eta + 4._dp*(zeta)))*Lam7p*vd*vu*vS +& 
&  6*(0.,1._dp)*exp(4*(0.,1._dp)*zeta)*Lam5p*vu**2*vS + 3*(0.,1._dp)*exp(5*(0.,          & 
& 1._dp)*zeta)*mus1*vS**2 + 3*(0.,1._dp)*exp(3*(0.,1._dp)*zeta)*mus2*vS**2 +             & 
&  (0._dp,1._dp)*exp(6*(0.,1._dp)*zeta)*L1pp*vS**3 + 2*(0.,1._dp)*exp(4*(0.,             & 
& 1._dp)*zeta)*L2pp*vS**3 - ((0._dp,1._dp)*vS**3*Conjg(L1pp))/exp(2*(0.,1._dp)*zeta) -   & 
&  2*(0.,1._dp)*vS**3*Conjg(L2pp) - 6*(0.,1._dp)*vd**2*vS*Conjg(Lam4p) - 6*(0.,          & 
& 1._dp)*vu**2*vS*Conjg(Lam5p) - 6*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*vu*vS*Conjg(Lam6p) -& 
&  (6*(0.,1._dp)*vd*vu*vS*Conjg(Lam7p))/exp((0._dp,1._dp)*eta) - 3*(0.,1._dp)*exp((0._dp,& 
& 1._dp)*zeta)*vd**2*Conjg(mu11) - 3*(0.,1._dp)*exp((0._dp,1._dp)*(eta + zeta))*vd*vu*Conjg(mu12) -& 
&  (3*(0.,1._dp)*vd*vu*Conjg(mu21))/exp((0._dp,1._dp)*(eta - zeta)) - 3*(0.,             & 
& 1._dp)*exp((0._dp,1._dp)*zeta)*vu**2*Conjg(mu22) - (3*(0.,1._dp)*vS**2*Conjg(mus1))/exp((0._dp,& 
& 1._dp)*zeta) - 3*(0.,1._dp)*exp((0._dp,1._dp)*zeta)*vS**2*Conjg(mus2) - 6*(0.,         & 
& 1._dp)*vS*Real(mSp2,dp) + 6*(0.,1._dp)*exp(4*(0.,1._dp)*zeta)*vS*Real(mSp2,            & 
& dp) - 6*exp(2*(0.,1._dp)*zeta)*Tad1Loop(6))/(6._dp*(1 + exp(4*(0.,1._dp)*zeta))*vS)
mSp2 = Cmplx(real(mSp2,dp),Real(temporaryValue,dp),dp) 

 ! ----------- Check solutions for consistency  -------- 

 ! Check for NaNs 
If (M112.ne.M112) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for M112" 
   Call TerminateProgram  
 End If 
 If (M222.ne.M222) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for M222" 
   Call TerminateProgram  
 End If 
 If (mS2.ne.mS2) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for mS2" 
   Call TerminateProgram  
 End If 
 If (Real(M122,dp).ne.Real(M122,dp)) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for M122" 
   Call TerminateProgram  
 End If 
 If (Real(mSp2,dp).ne.Real(mSp2,dp)) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for mSp2" 
   Call TerminateProgram  
 End If 
 Else 
M112 = -1._dp/2._dp*(Lam1*vd**3 + exp(2*(0.,1._dp)*eta)*Lam1*vd**3 + (Lam6*vd**2*vu)/exp((0._dp,& 
& 1._dp)*eta) + 2*exp((0._dp,1._dp)*eta)*Lam6*vd**2*vu + Lam3*vd*vu**2 + exp(2*(0.,      & 
& 1._dp)*eta)*Lam3*vd*vu**2 + Lam4*vd*vu**2 + exp(2*(0.,1._dp)*eta)*Lam4*vd*vu**2 +      & 
&  Lam5*vd*vu**2 + exp((0._dp,1._dp)*eta)*Lam7*vu**3 + 2*exp((0._dp,1._dp)*zeta)*mu11*vd*vS +& 
&  2*exp((0._dp,1._dp)*(2._dp*(eta) + zeta))*mu11*vd*vS + 2*exp((0._dp,1._dp)*(eta +     & 
&  zeta))*mu12*vu*vS + 2*exp((0._dp,1._dp)*(eta + zeta))*mu21*vu*vS + 2*Lam1p*vd*vS**2 + & 
&  2*exp(2*(0.,1._dp)*eta)*Lam1p*vd*vS**2 + 2*exp(2*(0.,1._dp)*zeta)*Lam4p*vd*vS**2 +    & 
&  2*exp(2*(0.,1._dp)*(eta + zeta))*Lam4p*vd*vS**2 + 2*exp((0._dp,1._dp)*eta)*Lam3p*vu*vS**2 +& 
&  2*exp((0._dp,1._dp)*(eta + 2._dp*(zeta)))*Lam6p*vu*vS**2 + 2*exp((0._dp,              & 
& 1._dp)*(eta + 2._dp*(zeta)))*Lam7p*vu*vS**2 + 2*exp((0._dp,1._dp)*eta)*vu*vS**2*Conjg(Lam3p) +& 
&  (2*(1 + exp(2*(0.,1._dp)*eta))*vd*vS**2*Conjg(Lam4p))/exp(2*(0.,1._dp)*zeta) +        & 
&  exp(2*(0.,1._dp)*eta)*vd*vu**2*Conjg(Lam5) + 2*exp((0._dp,1._dp)*eta)*vd**2*vu*Conjg(Lam6) +& 
&  exp(3*(0.,1._dp)*eta)*vd**2*vu*Conjg(Lam6) + 2*exp((0._dp,1._dp)*(eta -               & 
&  2._dp*(zeta)))*vu*vS**2*Conjg(Lam6p) + exp((0._dp,1._dp)*eta)*vu**3*Conjg(Lam7) +     & 
&  2*exp((0._dp,1._dp)*(eta - 2._dp*(zeta)))*vu*vS**2*Conjg(Lam7p) + 2*exp(2*(0.,        & 
& 1._dp)*eta - (0._dp,1._dp)*zeta)*vd*vS*Conjg(mu11) + (2*vd*vS*Conjg(mu11))/exp((0._dp, & 
& 1._dp)*zeta) + 2*exp((0._dp,1._dp)*(eta - zeta))*vu*vS*Conjg(mu12) + 2*exp((0._dp,     & 
& 1._dp)*(eta - zeta))*vu*vS*Conjg(mu21) - 4*exp((0._dp,1._dp)*eta)*vu*Real(M122,        & 
& dp) - 2*Tad1Loop(1) - 2*exp(2*(0.,1._dp)*eta)*Tad1Loop(1) + 2*(0.,1._dp)*Tad1Loop(4) - & 
&  2*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*Tad1Loop(4))/((1 + exp(2*(0.,1._dp)*eta))*vd)
M222 = -1._dp/2._dp*(exp((0._dp,1._dp)*eta)*Lam6*vd**3*vu + Lam3*vd**2*vu**2 +               & 
&  exp(2*(0.,1._dp)*eta)*Lam3*vd**2*vu**2 + Lam4*vd**2*vu**2 + exp(2*(0.,1._dp)*eta)*Lam4*vd**2*vu**2 +& 
&  Lam5*vd**2*vu**2 + (Lam7*vd*vu**3)/exp((0._dp,1._dp)*eta) + 2*exp((0._dp,             & 
& 1._dp)*eta)*Lam7*vd*vu**3 + Lam2*vu**4 + exp(2*(0.,1._dp)*eta)*Lam2*vu**4 +            & 
&  2*exp((0._dp,1._dp)*(eta + zeta))*mu12*vd*vu*vS + 2*exp((0._dp,1._dp)*(eta +          & 
&  zeta))*mu21*vd*vu*vS + 2*exp((0._dp,1._dp)*zeta)*mu22*vu**2*vS + 2*exp((0._dp,        & 
& 1._dp)*(2._dp*(eta) + zeta))*mu22*vu**2*vS + 2*exp((0._dp,1._dp)*eta)*Lam3p*vd*vu*vS**2 +& 
&  2*exp((0._dp,1._dp)*(eta + 2._dp*(zeta)))*Lam6p*vd*vu*vS**2 + 2*exp((0._dp,           & 
& 1._dp)*(eta + 2._dp*(zeta)))*Lam7p*vd*vu*vS**2 + 2*Lam2p*vu**2*vS**2 + 2*exp(2*(0.,    & 
& 1._dp)*eta)*Lam2p*vu**2*vS**2 + 2*exp(2*(0.,1._dp)*zeta)*Lam5p*vu**2*vS**2 +           & 
&  2*exp(2*(0.,1._dp)*(eta + zeta))*Lam5p*vu**2*vS**2 + 2*exp((0._dp,1._dp)*eta)*vd*vu*vS**2*Conjg(Lam3p) +& 
&  exp(2*(0.,1._dp)*eta)*vd**2*vu**2*Conjg(Lam5) + 2*exp(2*(0.,1._dp)*(eta -             & 
&  zeta))*vu**2*vS**2*Conjg(Lam5p) + (2*vu**2*vS**2*Conjg(Lam5p))/exp(2*(0.,             & 
& 1._dp)*zeta) + exp((0._dp,1._dp)*eta)*vd**3*vu*Conjg(Lam6) + 2*exp((0._dp,             & 
& 1._dp)*(eta - 2._dp*(zeta)))*vd*vu*vS**2*Conjg(Lam6p) + 2*exp((0._dp,1._dp)*eta)*vd*vu**3*Conjg(Lam7) +& 
&  exp(3*(0.,1._dp)*eta)*vd*vu**3*Conjg(Lam7) + 2*exp((0._dp,1._dp)*(eta -               & 
&  2._dp*(zeta)))*vd*vu*vS**2*Conjg(Lam7p) + 2*exp((0._dp,1._dp)*(eta - zeta))*vd*vu*vS*Conjg(mu12) +& 
&  2*exp((0._dp,1._dp)*(eta - zeta))*vd*vu*vS*Conjg(mu21) + 2*exp(2*(0.,1._dp)*eta -     & 
&  (0._dp,1._dp)*zeta)*vu**2*vS*Conjg(mu22) + (2*vu**2*vS*Conjg(mu22))/exp((0._dp,       & 
& 1._dp)*zeta) - 4*exp((0._dp,1._dp)*eta)*vd*vu*Real(M122,dp) - 2*vu*Tad1Loop(2) -       & 
&  2*exp(2*(0.,1._dp)*eta)*vu*Tad1Loop(2) + 2*(0.,1._dp)*vd*Tad1Loop(4) - 2*(0.,         & 
& 1._dp)*exp(2*(0.,1._dp)*eta)*vd*Tad1Loop(4))/((1 + exp(2*(0.,1._dp)*eta))*vu**2)
mS2 = -1._dp/6._dp*(3*exp((0._dp,1._dp)*zeta)*mu11*vd**2 + (3*mu12*vd*vu)/exp((0._dp,       & 
& 1._dp)*(eta - zeta)) + 3*exp((0._dp,1._dp)*(eta + zeta))*mu21*vd*vu + 3*exp((0._dp,    & 
& 1._dp)*zeta)*mu22*vu**2 + 3*Lam1p*vd**2*vS + 3*exp(4*(0.,1._dp)*zeta)*Lam1p*vd**2*vS + & 
&  6*exp(2*(0.,1._dp)*zeta)*Lam4p*vd**2*vS + (3*Lam3p*vd*vu*vS)/exp((0._dp,              & 
& 1._dp)*eta) + (3*Lam3p*vd*vu*vS)/exp((0._dp,1._dp)*(eta - 4._dp*(zeta))) +             & 
&  (6*Lam6p*vd*vu*vS)/exp((0._dp,1._dp)*(eta - 2._dp*(zeta))) + 6*exp((0._dp,            & 
& 1._dp)*(eta + 2._dp*(zeta)))*Lam7p*vd*vu*vS + 3*Lam2p*vu**2*vS + 3*exp(4*(0.,          & 
& 1._dp)*zeta)*Lam2p*vu**2*vS + 6*exp(2*(0.,1._dp)*zeta)*Lam5p*vu**2*vS + 3*exp(3*(0.,   & 
& 1._dp)*zeta)*mus1*vS**2 + 6*exp((0._dp,1._dp)*zeta)*mus2*vS**2 + 3*exp(5*(0.,          & 
& 1._dp)*zeta)*mus2*vS**2 + exp(4*(0.,1._dp)*zeta)*L1pp*vS**3 + 3*exp(2*(0.,             & 
& 1._dp)*zeta)*L2pp*vS**3 + exp(6*(0.,1._dp)*zeta)*L2pp*vS**3 + 3*L3pp*vS**3 +           & 
&  3*exp(4*(0.,1._dp)*zeta)*L3pp*vS**3 + vS**3*Conjg(L1pp) + ((1 + 3*exp(4*(0.,          & 
& 1._dp)*zeta))*vS**3*Conjg(L2pp))/exp(2*(0.,1._dp)*zeta) + 3*exp((0._dp,1._dp)*eta)*vd*vu*vS*Conjg(Lam3p) +& 
&  3*exp((0._dp,1._dp)*(eta + 4._dp*(zeta)))*vd*vu*vS*Conjg(Lam3p) + 6*exp(2*(0.,        & 
& 1._dp)*zeta)*vd**2*vS*Conjg(Lam4p) + 6*exp(2*(0.,1._dp)*zeta)*vu**2*vS*Conjg(Lam5p) +  & 
&  6*exp((0._dp,1._dp)*(eta + 2._dp*(zeta)))*vd*vu*vS*Conjg(Lam6p) + (6*vd*vu*vS*Conjg(Lam7p))/exp((0._dp,& 
& 1._dp)*(eta - 2._dp*(zeta))) + 3*exp(3*(0.,1._dp)*zeta)*vd**2*Conjg(mu11) +            & 
&  3*exp((0._dp,1._dp)*(eta + 3._dp*(zeta)))*vd*vu*Conjg(mu12) + (3*vd*vu*Conjg(mu21))/exp((0._dp,& 
& 1._dp)*(eta - 3._dp*(zeta))) + 3*exp(3*(0.,1._dp)*zeta)*vu**2*Conjg(mu22) +            & 
&  3*exp((0._dp,1._dp)*zeta)*vS**2*Conjg(mus1) + (3*vS**2*Conjg(mus2))/exp((0._dp,       & 
& 1._dp)*zeta) + 6*exp(3*(0.,1._dp)*zeta)*vS**2*Conjg(mus2) + 12*exp(2*(0.,              & 
& 1._dp)*zeta)*vS*Real(mSp2,dp) - 3*Tad1Loop(3) - 3*exp(4*(0.,1._dp)*zeta)*Tad1Loop(3) + & 
&  3*(0.,1._dp)*Tad1Loop(6) - 3*(0.,1._dp)*exp(4*(0.,1._dp)*zeta)*Tad1Loop(6))/((1 +     & 
&  exp(4*(0.,1._dp)*zeta))*vS)
temporaryValue = -1._dp/2._dp*((0._dp,1._dp)*Lam6*vd**2*vu + ((0._dp,1._dp)*Lam5*vd*vu**2)/exp((0._dp, & 
& 1._dp)*eta) + (0._dp,1._dp)*Lam7*vu**3 + 2*(0.,1._dp)*exp((0._dp,1._dp)*zeta)*mu12*vu*vS -& 
&  2*(0.,1._dp)*exp((0._dp,1._dp)*(2._dp*(eta) + zeta))*mu21*vu*vS + 2*(0.,              & 
& 1._dp)*Lam3p*vu*vS**2 + 2*(0.,1._dp)*exp(2*(0.,1._dp)*zeta)*Lam6p*vu*vS**2 -           & 
&  2*(0.,1._dp)*exp(2*(0.,1._dp)*(eta + zeta))*Lam7p*vu*vS**2 - 2*(0.,1._dp)*exp(2*(0.,  & 
& 1._dp)*eta)*vu*vS**2*Conjg(Lam3p) - (0._dp,1._dp)*exp(3*(0.,1._dp)*eta)*vd*vu**2*Conjg(Lam5) -& 
&  (0._dp,1._dp)*exp(2*(0.,1._dp)*eta)*vd**2*vu*Conjg(Lam6) - 2*(0.,1._dp)*exp(2*(0.,    & 
& 1._dp)*(eta - zeta))*vu*vS**2*Conjg(Lam6p) - (0._dp,1._dp)*exp(2*(0.,1._dp)*eta)*vu**3*Conjg(Lam7) +& 
&  (2*(0.,1._dp)*vu*vS**2*Conjg(Lam7p))/exp(2*(0.,1._dp)*zeta) - 2*(0.,1._dp)*exp(2*(0., & 
& 1._dp)*eta - (0._dp,1._dp)*zeta)*vu*vS*Conjg(mu12) + (2*(0.,1._dp)*vu*vS*Conjg(mu21))/exp((0._dp,& 
& 1._dp)*zeta) - 2*(0.,1._dp)*vu*Real(M122,dp) + 2*(0.,1._dp)*exp(2*(0.,1._dp)*eta)*vu*Real(M122,& 
& dp) + 4*exp((0._dp,1._dp)*eta)*Tad1Loop(4))/((1 + exp(2*(0.,1._dp)*eta))*vu)
M122 = Cmplx(real(M122,dp),Real(temporaryValue,dp),dp) 
temporaryValue = (3*(0.,1._dp)*exp(3*(0.,1._dp)*zeta)*mu11*vd**2 + (3*(0.,1._dp)*mu12*vd*vu)/exp((0._dp,& 
& 1._dp)*(eta - 3._dp*(zeta))) + 3*(0.,1._dp)*exp((0._dp,1._dp)*(eta + 3._dp*(zeta)))*mu21*vd*vu +& 
&  3*(0.,1._dp)*exp(3*(0.,1._dp)*zeta)*mu22*vu**2 + 6*(0.,1._dp)*exp(4*(0.,              & 
& 1._dp)*zeta)*Lam4p*vd**2*vS + (6*(0.,1._dp)*Lam6p*vd*vu*vS)/exp((0._dp,1._dp)*(eta -   & 
&  4._dp*(zeta))) + 6*(0.,1._dp)*exp((0._dp,1._dp)*(eta + 4._dp*(zeta)))*Lam7p*vd*vu*vS +& 
&  6*(0.,1._dp)*exp(4*(0.,1._dp)*zeta)*Lam5p*vu**2*vS + 3*(0.,1._dp)*exp(5*(0.,          & 
& 1._dp)*zeta)*mus1*vS**2 + 3*(0.,1._dp)*exp(3*(0.,1._dp)*zeta)*mus2*vS**2 +             & 
&  (0._dp,1._dp)*exp(6*(0.,1._dp)*zeta)*L1pp*vS**3 + 2*(0.,1._dp)*exp(4*(0.,             & 
& 1._dp)*zeta)*L2pp*vS**3 - ((0._dp,1._dp)*vS**3*Conjg(L1pp))/exp(2*(0.,1._dp)*zeta) -   & 
&  2*(0.,1._dp)*vS**3*Conjg(L2pp) - 6*(0.,1._dp)*vd**2*vS*Conjg(Lam4p) - 6*(0.,          & 
& 1._dp)*vu**2*vS*Conjg(Lam5p) - 6*(0.,1._dp)*exp((0._dp,1._dp)*eta)*vd*vu*vS*Conjg(Lam6p) -& 
&  (6*(0.,1._dp)*vd*vu*vS*Conjg(Lam7p))/exp((0._dp,1._dp)*eta) - 3*(0.,1._dp)*exp((0._dp,& 
& 1._dp)*zeta)*vd**2*Conjg(mu11) - 3*(0.,1._dp)*exp((0._dp,1._dp)*(eta + zeta))*vd*vu*Conjg(mu12) -& 
&  (3*(0.,1._dp)*vd*vu*Conjg(mu21))/exp((0._dp,1._dp)*(eta - zeta)) - 3*(0.,             & 
& 1._dp)*exp((0._dp,1._dp)*zeta)*vu**2*Conjg(mu22) - (3*(0.,1._dp)*vS**2*Conjg(mus1))/exp((0._dp,& 
& 1._dp)*zeta) - 3*(0.,1._dp)*exp((0._dp,1._dp)*zeta)*vS**2*Conjg(mus2) - 6*(0.,         & 
& 1._dp)*vS*Real(mSp2,dp) + 6*(0.,1._dp)*exp(4*(0.,1._dp)*zeta)*vS*Real(mSp2,            & 
& dp) - 6*exp(2*(0.,1._dp)*zeta)*Tad1Loop(6))/(6._dp*(1 + exp(4*(0.,1._dp)*zeta))*vS)
mSp2 = Cmplx(real(mSp2,dp),Real(temporaryValue,dp),dp) 

 ! ----------- Check solutions for consistency  -------- 

 ! Check for NaNs 
If (M112.ne.M112) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for M112" 
   Call TerminateProgram  
 End If 
 If (M222.ne.M222) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for M222" 
   Call TerminateProgram  
 End If 
 If (mS2.ne.mS2) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for mS2" 
   Call TerminateProgram  
 End If 
 If (Real(M122,dp).ne.Real(M122,dp)) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for M122" 
   Call TerminateProgram  
 End If 
 If (Real(mSp2,dp).ne.Real(mSp2,dp)) Then 
   Write(*,*) "NaN appearing in solution of tadpole equations for mSp2" 
   Call TerminateProgram  
 End If 
 End if 
End Subroutine SolveTadpoleEquations

Subroutine CalculateTadpoles(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,             & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,Tad1Loop,          & 
& TadpoleValues)

Real(dp),Intent(in) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2,vd,vu,vS

Complex(dp),Intent(in) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Complex(dp), Intent(in) :: Tad1Loop(6)

Real(dp), Intent(out) :: TadpoleValues(6)

TadpoleValues(1) = Real((2*exp(2*(0.,1._dp)*(eta + zeta))*Lam1*vd**3 + 3*exp((0._dp,1._dp)& 
& *(eta + 2._dp*(zeta)))*vd**2*vu*(Lam6 + exp(2*(0.,1._dp)*eta)*Conjg(Lam6))             & 
&  + vd*(exp(2*(0.,1._dp)*zeta)*vu**2*(2*exp(2*(0.,1._dp)*eta)*(Lam3 + Lam4)             & 
&  + Lam5 + exp(4*(0.,1._dp)*eta)*Conjg(Lam5)) + 4*exp(2*(0.,1._dp)*eta)*(exp(2*(0.,1._dp)& 
& *zeta)*M112 + vS**2*(exp(2*(0.,1._dp)*zeta)*Lam1p + exp(4*(0.,1._dp)*zeta)             & 
& *Lam4p + Conjg(Lam4p)) + exp((0._dp,1._dp)*zeta)*vS*(exp(2*(0.,1._dp)*zeta)            & 
& *mu11 + Conjg(mu11)))) + exp((0._dp,1._dp)*eta)*vu*(-2*exp(2*(0.,1._dp)*(eta + zeta))  & 
& *(-1*(0.,1._dp)*imM122 + reM122) - 2*exp(2*(0.,1._dp)*zeta)*((0._dp,1._dp)             & 
& *imM122 + reM122) + exp(2*(0.,1._dp)*zeta)*vu**2*(Lam7 + exp(2*(0.,1._dp)              & 
& *eta)*Conjg(Lam7)) + 2*vS**2*(exp(2*(0.,1._dp)*zeta)*Lam3p + exp(4*(0.,1._dp)          & 
& *zeta)*Lam6p + exp(2*(0.,1._dp)*(eta + 2._dp*(zeta)))*Lam7p + exp(2*(0.,1._dp)         & 
& *(eta + zeta))*Conjg(Lam3p) + exp(2*(0.,1._dp)*eta)*Conjg(Lam6p) + Conjg(Lam7p))       & 
&  + 2*exp((0._dp,1._dp)*zeta)*vS*(exp(2*(0.,1._dp)*zeta)*(mu12 + exp(2*(0.,1._dp)       & 
& *eta)*mu21) + exp(2*(0.,1._dp)*eta)*Conjg(mu12) + Conjg(mu21))))/(4._dp*exp(2*(0.,1._dp)& 
& *(eta + zeta))) - Tad1Loop(1),dp) 
TadpoleValues(2) = Real((exp(2*(0.,1._dp)*zeta)*vd**2*vu*(2*exp(2*(0.,1._dp)          & 
& *eta)*(Lam3 + Lam4) + Lam5 + exp(4*(0.,1._dp)*eta)*Conjg(Lam5)) + exp((0._dp,1._dp)    & 
& *(eta + 2._dp*(zeta)))*vd**3*(Lam6 + exp(2*(0.,1._dp)*eta)*Conjg(Lam6)) + exp((0._dp,1._dp)& 
& *eta)*vd*(-2*exp(2*(0.,1._dp)*(eta + zeta))*(-1*(0.,1._dp)*imM122 + reM122)            & 
&  - 2*exp(2*(0.,1._dp)*zeta)*((0._dp,1._dp)*imM122 + reM122) + 3*exp(2*(0.,1._dp)       & 
& *zeta)*vu**2*(Lam7 + exp(2*(0.,1._dp)*eta)*Conjg(Lam7)) + 2*vS**2*(exp(2*(0.,1._dp)    & 
& *zeta)*Lam3p + exp(4*(0.,1._dp)*zeta)*Lam6p + exp(2*(0.,1._dp)*(eta + 2._dp*(zeta)))   & 
& *Lam7p + exp(2*(0.,1._dp)*(eta + zeta))*Conjg(Lam3p) + exp(2*(0.,1._dp)*eta)           & 
& *Conjg(Lam6p) + Conjg(Lam7p)) + 2*exp((0._dp,1._dp)*zeta)*vS*(exp(2*(0.,1._dp)         & 
& *zeta)*(mu12 + exp(2*(0.,1._dp)*eta)*mu21) + exp(2*(0.,1._dp)*eta)*Conjg(mu12)         & 
&  + Conjg(mu21))) + 2*exp(2*(0.,1._dp)*eta)*vu*(exp(2*(0.,1._dp)*zeta)*Lam2*vu**2 + 2*(exp(2*(0.,1._dp)& 
& *zeta)*M222 + vS**2*(exp(2*(0.,1._dp)*zeta)*Lam2p + exp(4*(0.,1._dp)*zeta)             & 
& *Lam5p + Conjg(Lam5p)) + exp((0._dp,1._dp)*zeta)*vS*(exp(2*(0.,1._dp)*zeta)            & 
& *mu22 + Conjg(mu22)))))/(4._dp*exp(2*(0.,1._dp)*(eta + zeta))) - Tad1Loop(2),dp) 
TadpoleValues(3) = Real((3*exp((0._dp,1._dp)*(eta + 2._dp*(zeta)))*vd**2*(exp(3*(0.,1._dp)& 
& *zeta)*mu11 + 2*vS*(exp(2*(0.,1._dp)*zeta)*Lam1p + exp(4*(0.,1._dp)*zeta)              & 
& *Lam4p + Conjg(Lam4p)) + exp((0._dp,1._dp)*zeta)*Conjg(mu11)) + 3*exp(2*(0.,1._dp)     & 
& *zeta)*vd*vu*(exp(3*(0.,1._dp)*zeta)*mu12 + exp(2*(0.,1._dp)*eta + 3*(0.,1._dp)        & 
& *zeta)*mu21 + 2*exp(2*(0.,1._dp)*zeta)*Lam3p*vS + 2*exp(4*(0.,1._dp)*zeta)             & 
& *Lam6p*vS + 2*exp(2*(0.,1._dp)*(eta + 2._dp*(zeta)))*Lam7p*vS + 2*exp(2*(0.,1._dp)     & 
& *(eta + zeta))*vS*Conjg(Lam3p) + 2*exp(2*(0.,1._dp)*eta)*vS*Conjg(Lam6p)               & 
&  + 2*vS*Conjg(Lam7p) + exp((0._dp,1._dp)*(2._dp*(eta) + zeta))*Conjg(mu12)             & 
&  + exp((0._dp,1._dp)*zeta)*Conjg(mu21)) + exp((0._dp,1._dp)*eta)*(3*exp(2*(0.,1._dp)   & 
& *zeta)*vu**2*(exp(3*(0.,1._dp)*zeta)*mu22 + 2*vS*(exp(2*(0.,1._dp)*zeta)               & 
& *Lam2p + exp(4*(0.,1._dp)*zeta)*Lam5p + Conjg(Lam5p)) + exp((0._dp,1._dp)              & 
& *zeta)*Conjg(mu22)) + vS*(6*exp(2*(0.,1._dp)*zeta)*(-1*(0.,1._dp)*immSp2 + remSp2)     & 
&  + 6*exp(4*(0.,1._dp)*zeta)*(2._dp*(mS2) + exp(2*(0.,1._dp)*zeta)*((0._dp,1._dp)       & 
& *immSp2 + remSp2)) + vS**2*(exp(8*(0.,1._dp)*zeta)*L1pp + 4*exp(6*(0.,1._dp)           & 
& *zeta)*L2pp + 6*exp(4*(0.,1._dp)*zeta)*L3pp + Conjg(L1pp) + 4*exp(2*(0.,1._dp)         & 
& *zeta)*Conjg(L2pp)) + 3*exp((0._dp,1._dp)*zeta)*vS*(exp(6*(0.,1._dp)*zeta)             & 
& *mus1 + 3*exp(4*(0.,1._dp)*zeta)*mus2 + Conjg(mus1) + 3*exp(2*(0.,1._dp)               & 
& *zeta)*Conjg(mus2)))))/(6._dp*exp((0._dp,1._dp)*(eta + 4._dp*(zeta)))) - Tad1Loop(3),dp) 
TadpoleValues(4) = Real((1._dp/4._dp*(0.,1._dp)*vu*(-2*exp(3*(0.,1._dp)               & 
& *eta + 2*(0.,1._dp)*zeta)*(-1*(0.,1._dp)*imM122 + reM122) - exp(2*(0.,1._dp)           & 
& *zeta)*vd*vu*(Lam5 - exp(4*(0.,1._dp)*eta)*Conjg(Lam5)) + exp((0._dp,1._dp)            & 
& *(eta + 2._dp*(zeta)))*vd**2*(-1._dp*(Lam6) + exp(2*(0.,1._dp)*eta)*Conjg(Lam6))       & 
&  + exp((0._dp,1._dp)*eta)*(2*exp(2*(0.,1._dp)*zeta)*((0._dp,1._dp)*imM122 + reM122)    & 
&  - exp(2*(0.,1._dp)*zeta)*vu**2*(Lam7 - exp(2*(0.,1._dp)*eta)*Conjg(Lam7))             & 
&  + 2*vS**2*(-(exp(2*(0.,1._dp)*zeta)*Lam3p) - exp(4*(0.,1._dp)*zeta)*Lam6p + exp(2*(0.,1._dp)& 
& *(eta + 2._dp*(zeta)))*Lam7p + exp(2*(0.,1._dp)*(eta + zeta))*Conjg(Lam3p)             & 
&  + exp(2*(0.,1._dp)*eta)*Conjg(Lam6p) - Conjg(Lam7p)) - 2*exp((0._dp,1._dp)            & 
& *zeta)*vS*(exp(2*(0.,1._dp)*zeta)*(mu12 - exp(2*(0.,1._dp)*eta)*mu21) - exp(2*(0.,1._dp)& 
& *eta)*Conjg(mu12) + Conjg(mu21)))))/exp(2*(0.,1._dp)*(eta + zeta)) - Tad1Loop(4),dp) 
TadpoleValues(5) = Real((-1._dp/4._dp*(0.,1._dp)*vd*(-2*exp(3*(0.,1._dp)              & 
& *eta + 2*(0.,1._dp)*zeta)*(-1*(0.,1._dp)*imM122 + reM122) - exp(2*(0.,1._dp)           & 
& *zeta)*vd*vu*(Lam5 - exp(4*(0.,1._dp)*eta)*Conjg(Lam5)) + exp((0._dp,1._dp)            & 
& *(eta + 2._dp*(zeta)))*vd**2*(-1._dp*(Lam6) + exp(2*(0.,1._dp)*eta)*Conjg(Lam6))       & 
&  + exp((0._dp,1._dp)*eta)*(2*exp(2*(0.,1._dp)*zeta)*((0._dp,1._dp)*imM122 + reM122)    & 
&  - exp(2*(0.,1._dp)*zeta)*vu**2*(Lam7 - exp(2*(0.,1._dp)*eta)*Conjg(Lam7))             & 
&  + 2*vS**2*(-(exp(2*(0.,1._dp)*zeta)*Lam3p) - exp(4*(0.,1._dp)*zeta)*Lam6p + exp(2*(0.,1._dp)& 
& *(eta + 2._dp*(zeta)))*Lam7p + exp(2*(0.,1._dp)*(eta + zeta))*Conjg(Lam3p)             & 
&  + exp(2*(0.,1._dp)*eta)*Conjg(Lam6p) - Conjg(Lam7p)) - 2*exp((0._dp,1._dp)            & 
& *zeta)*vS*(exp(2*(0.,1._dp)*zeta)*(mu12 - exp(2*(0.,1._dp)*eta)*mu21) - exp(2*(0.,1._dp)& 
& *eta)*Conjg(mu12) + Conjg(mu21)))))/exp(2*(0.,1._dp)*(eta + zeta)) + (vd*Tad1Loop(4))/vu,dp) 
TadpoleValues(6) = Real((1._dp/6._dp*(0.,1._dp)*(3*exp((0._dp,1._dp)*(eta + 2._dp*(zeta)))& 
& *vd**2*(exp(3*(0.,1._dp)*zeta)*mu11 + 2*vS*(exp(4*(0.,1._dp)*zeta)*Lam4p - Conjg(Lam4p))& 
&  - exp((0._dp,1._dp)*zeta)*Conjg(mu11)) + 3*exp(2*(0.,1._dp)*zeta)*vd*vu*(exp(3*(0.,1._dp)& 
& *zeta)*mu12 + exp(2*(0.,1._dp)*eta + 3*(0.,1._dp)*zeta)*mu21 + 2*exp(4*(0.,1._dp)      & 
& *zeta)*Lam6p*vS + 2*exp(2*(0.,1._dp)*(eta + 2._dp*(zeta)))*Lam7p*vS - 2*exp(2*(0.,1._dp)& 
& *eta)*vS*Conjg(Lam6p) - 2*vS*Conjg(Lam7p) - exp((0._dp,1._dp)*(2._dp*(eta)             & 
&  + zeta))*Conjg(mu12) - exp((0._dp,1._dp)*zeta)*Conjg(mu21)) + exp((0._dp,1._dp)       & 
& *eta)*(3*exp(2*(0.,1._dp)*zeta)*vu**2*(exp(3*(0.,1._dp)*zeta)*mu22 + 2*vS*(exp(4*(0.,1._dp)& 
& *zeta)*Lam5p - Conjg(Lam5p)) - exp((0._dp,1._dp)*zeta)*Conjg(mu22)) + vS*(-6*exp(2*(0.,1._dp)& 
& *zeta)*(-1*(0.,1._dp)*immSp2 + remSp2) + 6*exp(6*(0.,1._dp)*zeta)*((0._dp,1._dp)       & 
& *immSp2 + remSp2) + vS**2*(exp(8*(0.,1._dp)*zeta)*L1pp + 2*exp(6*(0.,1._dp)            & 
& *zeta)*L2pp - Conjg(L1pp) - 2*exp(2*(0.,1._dp)*zeta)*Conjg(L2pp)) + 3*exp((0._dp,1._dp)& 
& *zeta)*vS*(exp(6*(0.,1._dp)*zeta)*mus1 + exp(4*(0.,1._dp)*zeta)*mus2 - Conjg(mus1)     & 
&  - exp(2*(0.,1._dp)*zeta)*Conjg(mus2))))))/exp((0._dp,1._dp)*(eta + 4._dp*(zeta)))     & 
&  - Tad1Loop(6),dp) 
End Subroutine CalculateTadpoles 

End Module Tadpoles_C2HDMS 
 
