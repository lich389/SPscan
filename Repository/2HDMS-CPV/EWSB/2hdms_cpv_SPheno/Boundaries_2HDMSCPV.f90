! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.1 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 13:09 on 9.6.2025   
! ----------------------------------------------------------------------  
 
 
Module Boundaries_2HDMSCPV 
 
Use Control 
Use Settings 
Use LoopCouplings_2HDMSCPV 
Use LoopMasses_2HDMSCPV 
Use LoopFunctions 
Use Mathematics 
Use Model_Data_2HDMSCPV 
Use RGEs_2HDMSCPV 
Use RunSM_2HDMSCPV 
 
Use Tadpoles_2HDMSCPV 
Use RGEs_SM_HC 
Use LoopMasses_SM_HC 
Use CouplingsForDecays_2HDMSCPV 
Use StandardModel 
 

 
Integer, save :: YukScen 
Real(dp), save :: Lambda, MlambdaS,F_GMSB 
Real(dp),save::mGUT_save,sinW2_Q_mZ&
&, mf_l_Q_SM(3),mf_d_Q_SM(3),mf_u_Q_SM(3) & 
&, mf_l_MS_SM(3),mf_d_MS_SM(3),mf_u_MS_SM(3) 
Complex(dp),save::Yl_mZ(3,3),Yu_mZ(3,3),Yd_mZ(3,3),Yl_Q(3,3),Yu_Q(3,3),Yd_Q(3,3)
Real(dp),Save::vevs_DR_save(2), vSM_save
Real(dp),Save::rMS_save
real(dp) :: delta_rhomatch,delta_rwmatch,delta_emmatch,newWscale,MVWm_scale
Contains 
 
Subroutine BoundarySM(i_run,Lambda_SM,delta0,g_SM,kont)

Implicit None 
Real(dp), Intent(out)::g_SM(62)
Integer, Intent(in) :: i_run 
Real(dp) :: mHiggs 
Real(dp), Intent(in) :: delta0 
Integer, Intent(inout) :: kont 
Integer :: i1,i2,i3,i4 
Real(dp)::mW2_run,mZ2_run,test, D_mat(3,3)
Real(dp)::alphaMZ,alpha3,gSU2,rho,delta_rho,delta_rho0,sinW2_Q,vev2&
&,vevs_Q(2),mZ2_mZ,CosW2SinW2,gauge(3),delta,sinW2_old,delta_r&
&,p2,gSU3,tanb,xt2,fac(2),SigQCD,delta_rw,sinW2,cosW2,cosW
Real(dp),Dimension(3)::mf_d_Q,mf_l_Q,mf_u_Q
Real(dp) :: g1SM, g2SM, g3SM, vSM 
Complex(dp) :: dmZ2,dmW2,dmW2_0,yuk_tau,yuk_t,yuk_b
Complex(dp) ::uU_L(3,3),uU_R(3,3),uD_L(3,3),uD_R(3,3), NoMatrix(3,3) &
&,uL_L(3,3),uL_R(3,3)
Complex(dp) ::uU_L_T(3,3),uU_R_T(3,3),uD_L_T(3,3),uD_R_T(3,3),uL_L_T(3,3),uL_R_T(3,3)
Complex(dp) :: SigSR_u(3,3),SigSL_u(3,3),sigR_u(3,3),SigL_u(3,3)
Complex(dp) :: SigSR_d(3,3),SigSL_d(3,3),SigR_d(3,3),SigL_d(3,3)
Complex(dp) :: SigSR_l(3,3),SigSL_l(3,3),sigR_l(3,3),SigL_l(3,3)
Complex(dp) :: YuSM(3,3),YdSM(3,3),YeSM(3,3), MuSM, adCKM(3,3),Y_l_old(3,3),Y_d_old(3,3),Y_u_old(3,3) 
Complex(dp), Intent(in) :: Lambda_SM 
Logical::converge
Integer :: i_loop, i_loop_max 
Real(dp),Parameter::&
& as2loop=1._dp/24._dp+2011._dp*oo32Pi2/12._dp&
&+Log2/12._dp-oo8Pi2*Zeta3&
&,log2loop_a=123._dp*oo32Pi2,log2loop_b=33._dp*oo32Pi2
Real(dp) :: Q2, logQ 


Complex(dp) ::MassFu(3,3),MassFd(3,3),MassFe(3,3),smdr_lambda 
Iname=Iname+1
NameOfUnit(Iname)='BoundarySM'
mZ2=mZ**2 ! to correct for temporary settings in BoundaryBSM
sinW2 = 1 - mW**2/mZ**2 
test = SetRenormalizationScale(mZ2) 
!-----------------
!sin(theta_W)^2
!-----------------
If (i_run.Eq.1) Then
   vSM = 248.42485568930796_dp 
   Y_l=0._dp
   Do i1=1,3
       y_l(i1,i1)=sqrt2*mf_l_mZ(i1)/vevSM(1)
       yl_MZ(i1,i1)=sqrt2*mf_l_mZ(i1)/vSM 
       yd_MZ(i1,i1)=sqrt2*mf_d_mZ(i1)/vSM 
       yu_MZ(i1,i1)=sqrt2*mf_u_mZ(i1)/vSM 
   End Do
   g1SM=0.3572555504761069_dp
   g2SM=0.6509845147468623_dp
   g3SM=1.2118095750036533_dp
   alphamz=g1SM**2*g2sm**2/(g1sm**2+g2sm**2)*oo4pi
   alpha3=g3sm**2*oo4pi
   smdr_lambda=2._dp*(0.1399865180248392_dp,0._dp)
   yu_mz(3,3) = 0.9701349914178578_dp
   sinW2_Q=g1sm**2/(g1sm**2+g2sm**2)
   sinW2_old=sinW2_Q
Else
   vSM = vSM_save 
   sinW2_Q=sinW2_Q_mZ
   sinW2_old=sinW2_Q
   Y_l=Yl_mZ
   alphaMZ = AlphaEW_MS_SM(mZ,mf_d,mf_u,mf_l) 
 
   alpha3 = AlphaS_MS_SM(mZ,mf_d,mf_u) 
   smdr_lambda=lambda_SM
   Call FermionMass(Yd_mZ,vSM,mf_d2,uD_L_T,uD_R_T,kont)
   Call FermionMass(Yl_mZ,vSM,mf_l2,uL_L_T,uL_R_T,kont)
   Call FermionMass(Yu_mZ,vSM,mf_u2,uU_L_T,uU_R_T,kont)
End If
mHiggs= sqrt(smdr_lambda)*vSM 
MuSM = 0.5_dp*smdr_lambda*vSM**2 
mw=smmwfit(mHiggs,mf_u(3),alpha3) 
mw2=mW**2 
sinW2 = 1 - mW**2/mZ**2 
   If (.not.OneLoopMatching) alpha3= AlphaS_mZ 
   If (.not.OneLoopMatching) alphaMZ = Alpha_MZ_MS 
gSU3 = Sqrt(4._dp*pi*alpha3) 
g3SM = Sqrt(4._dp*pi*alpha3) 
!--------------------
!for 2-loop parts
!--------------------
xt2=3._dp*(G_F*mf_u(3)**2*oo8pi2*oosqrt2)**2&
    &*rho_2(mHiggs/mf_u(3)) 
fac(1)=alphaMZ*alphaS_mZ*oo4pi&
      &*(2.145_dp*mf_u(3)**2/mZ2+0.575*Log(mf_u(3)/mZ)-0.224_dp&
      &-0.144_dp*mZ2/mf_u(3)**2)/Pi
fac(2)=alphamZ*alphaS_mZ*oo4pi&
      &*(-2.145_dp*mf_u(3)**2/mW2+1.262*Log(mf_u(3)/mZ)-2.24_dp&
      &-0.85_dp*mZ2/mf_u(3)**2)/Pi
Do i1=1,100 
gSU2 = Sqrt( 4._dp*pi*alphamZ/sinW2_Q) 
g1SM =gSU2*Sqrt(sinW2_Q/(1._dp-sinW2_Q)) 
g2SM =gSU2 
YeSM=Yl_MZ
YdSM=Yd_MZ
YuSM=Yu_MZ
TW= Asin(Sqrt(sinw2_Q)) 
mHiggs= sqrt(smdr_lambda)*vSM 
MuSM = 0.5_dp*smdr_lambda*vSM**2 
YuSM=Yu_MZ 
Call OneLoop_Z_W_SM(vSM,g1SM,g2SM,g3SM,smdr_lambda,-YuSM,YdSM,YeSM,kont,              & 
& dmZ2,dmW2,dmW2_0)

If (.not.OneLoopMatching) dmZ2= 0._dp 
If (.not.OneLoopMatching) dmW2= 0._dp 
If (.not.OneLoopMatching) dmW2_0= 0._dp 
mZ2_mZ = Real(dmZ2 + mZ2,dp) 
If (mZ2_mZ.Lt.0._dp) Then
    Iname=Iname-1
    kont=-402
    Call AddError(402)
    Write(*,*) " MZ  getting negative at EW scale" 
    Call TerminateProgram
End If

mZ2_run=mZ2_mZ
mW2_run=mZ2_mZ*(1._dp-sinW2_Q) +0  
CosW2SinW2=(1._dp-sinW2_Q)*sinW2_Q
vev2=mZ2_mZ*CosW2SinW2/(pi*alphamZ) -(0) 
vSM=Sqrt(vev2)
MuSM = 0.5_dp*Lambda_SM*vSM**2 
Yu_MZ(3,3)=mf_u(3)/vSM*Sqrt(2._dp) 
YuSM=Yu_MZ 
Call OneLoop_Z_W_SM(vSM,g1SM,g2SM,g3SM,smdr_lambda,-YuSM,YdSM,YeSM,kont,              & 
& dmZ2,dmW2,dmW2_0)

If (.not.OneLoopMatching) dmZ2= 0._dp 
If (.not.OneLoopMatching) dmW2= 0._dp 
If (.not.OneLoopMatching) dmW2_0= 0._dp 
mZ2_mZ = Real(dmZ2 + mZ2,dp) 
If (mZ2_mZ.Lt.0._dp) Then
    Iname=Iname-1
    kont=-402
    Call AddError(402)
    Write(*,*) " MZ  getting negative at EW scale" 
    Call TerminateProgram
End If

mZ2_run=mZ2_mZ
mW2_run=mZ2_mZ*(1._dp-sinW2_Q)  
CosW2SinW2=(1._dp-sinW2_Q)*sinW2_Q
vev2=mZ2_mZ *CosW2SinW2/(pi*alphamZ) 
vSM=sqrt(vev2) 
mHiggs= sqrt(smdr_lambda)*vSM 
MuSM = 0.5_dp*smdr_lambda*vSM**2 
Yu_MZ(3,3)=mf_u(3)/vSM*Sqrt(2._dp) 
YuSM=Yu_MZ 
Call OneLoop_Z_W_SM(vSM,g1SM,g2SM,g3SM,smdr_lambda,-YuSM,YdSM,YeSM,kont,              & 
& dmZ2,dmW2,dmW2_0)

If (.not.OneLoopMatching) dmZ2= 0._dp 
If (.not.OneLoopMatching) dmW2= 0._dp 
If (.not.OneLoopMatching) dmW2_0= 0._dp 
rho=(1._dp+Real(dmZ2,dp)/mZ2)/(1._dp+Real(dmW2,dp)/mW2)  
delta_rho=1._dp-1._dp/rho
rho=1._dp/(1._dp-delta_rho)
CosW2SinW2=(1._dp-sinW2_Q)*sinW2_Q
If (IncludeDeltaVB) Then 
Call DeltaVB_SM(sinW2,sinW2_Q,g2SM,rho,delta)

Else 
delta = 0._dp 
End if 
If (.not.OneLoopMatching) delta= 0._dp 
delta_rho0=0._dp
delta_r=rho*Real(dmW2_0,dp)/mW2-Real(dmZ2,dp)/mZ2+delta
rho=1._dp/(1._dp-delta_rho-delta_rho0-fac(2)/sinW2_Q-xt2)
delta_r=rho*Real(dmW2_0,dp)/mW2-Real(dmZ2,dp)/mZ2+delta&
        &+fac(1)/CosW2SinW2-xt2*(1-delta_r)*rho
CosW2SinW2=pi*alphamZ/(sqrt2*mZ2*G_F*(1-delta_r))
sinW2_Q=0.5_dp-Sqrt(0.25_dp-CosW2SinW2)

If (sinW2_Q.Lt.0._dp) Then
    kont=-403
    Call AddError(403)
    Iname=Iname-1
    Write(*,*) " sinW2 getting negtive at EW scale " 
    Call TerminateProgram
End If
 
If (Abs(sinW2_Q-sinW2_old).Lt.0.1_dp*delta0) Exit

sinW2_old=sinW2_Q
mw=smmwfit(mHiggs,mf_u(3),alpha3) 
mw2=mW**2 
cosW2=mW2/mZ2
cosW=Sqrt(cosW2)
sinW2=1._dp-cosW2
End Do

mw=smmwfit(mHiggs,mf_u(3),alpha3) 
mw2=mW**2 
cosW2=mW2/mZ2
cosW=Sqrt(cosW2)
sinW2=1._dp-cosW2
g1SM=Sqrt(4._dp*pi*alphamZ/(1._dp-sinW2_Q))
g2SM=Sqrt(4._dp*pi*alphamZ/sinW2_Q)
g3SM=Sqrt(4._dp*pi*alpha3)
vev2=mZ2_mZ*CosW2SinW2/(pi*alphamZ)  
vSM=sqrt(vev2) 


! -------------------------
!  Calculate Yukawas
! -------------------------
uU_L=id3C
uU_R=id3C
uD_L=id3C
uD_R=id3C
uL_L=id3C
uL_R=id3C
If (GenerationMixing) Then
    Call Adjungate(CKM,adCKM)
 If (YukawaScheme.Eq.1) Then
    uU_L(1:3,1:3)=CKM
 Else
    uD_L(1:3,1:3)=adCKM
 End If
End If
If (i_run.Eq.1) Then
  mf_l_MS_SM=mf_l_MZ
  mf_d_MS_SM=mf_d_MZ
  mf_u_MS_SM=mf_u_MZ
  mf_l_Q=mf_l_MS_SM
  mf_d_Q=mf_d_MS_SM
  mf_u_Q=mf_u_MS_SM
  YdSM=0._dp
  YuSM=0._dp
  YeSM=0._dp
Do i1=1,3
    YuSM(i1,i1)=sqrt2*mf_u_MS_SM(i1)/vSM
    YeSM(i1,i1)=sqrt2*mf_l_MS_SM(i1)/vSM
    YdSM(i1,i1)=sqrt2*mf_d_MS_SM(i1)/vSM
End Do
If (GenerationMixing) Then
  If (YukawaScheme.Eq.1) Then
    YuSM=Matmul(Transpose(uU_L(1:3,1:3)),YuSM)
  Else
    YdSM=Matmul(Transpose(uD_L(1:3,1:3)),YdSM)
  End If
End If
Else
  mf_l_Q=mf_l2
  mf_d_Q=mf_d2
  mf_u_Q=mf_u2
YeSM=Yl_MZ
YdSM=Yd_MZ
YuSM=Yu_MZ
End If! i_run.eq.1

converge= .False.
Y_l_old=YeSM
Y_d_old=YdSM
Y_u_old=YuSM


! -------------------------
!  Main Loop
! -------------------------
if (FermionMassResummation) then
  i_loop_max=100! this should be sufficient
else
  i_loop_max=1
end if
Do i_loop=1,i_loop_max
p2=0._dp! for off-diagonal elements


! Full one-loop corrections
Call OneLoop_d_u_e_SM(vSM,g1SM,g2SM,g3SM,smdr_lambda,-YuSM,YdSM,YeSM,sigR_d,          & 
& sigL_d,sigSR_d,sigSL_d,sigR_u,sigL_u,sigSR_u,sigSL_u,sigR_l,sigL_l,sigSR_l,            & 
& sigSL_l,kont)

If (.not.OneLoopMatching) Then 
sigR_l = 0._dp 
sigL_l = 0._dp 
sigSR_l = 0._dp 
sigSL_l = 0._dp 
sigR_d = 0._dp 
sigL_d = 0._dp 
sigSR_d = 0._dp 
sigSL_d = 0._dp 
sigR_u = 0._dp 
sigL_u = 0._dp 
sigSR_u = 0._dp 
sigSL_u = 0._dp 
End if


! SM two-loop corrections
! Two-loop Non-SUSY from hep-ph/9803493
Q2=GetRenormalizationScale()
logQ=Log(Q2/mf_u_Q(3)**2)
If (OneLoopMatching) Then 
SigQCD=-4._dp/3._dp*gSU3**2*mf_u_q(3)*(4._dp+3._dp*LogQ) &
&-mf_u_q(3)*(-2._dp/3._dp*gSU2)**2*sinW2_Q*(4+3._dp*LogQ)
Else  
SigQCD=0._dp 
End if 
If (TwoLoopMatching) Then 
SigQCD=-4._dp/3._dp*gSU3**2*mf_u_q(3)*(4._dp+3._dp*LogQ) &
& -oo16pi2*mf_u_q(3)*((2821._dp + 2028._dp*LogQ + 396._dp*LogQ**2 + 16._dp*Pi**2*(1._dp + 2._dp*log2) - 48._dp*Zeta3)*gSU3**4/18._dp) &
&-mf_u_q(3)*(-2._dp/3._dp*gSU2)**2*sinW2_Q*(4+3._dp*LogQ)
End if 
SigQCD=oo16pi2*SigQCD

mf_u_MS_SM(3)=mf_u(3)+SigQCD



! Obtain Yukawas
Call Yukawas(mf_u_MS_SM,vSM,uU_L,uU_R,SigSL_u,SigL_u,SigR_u&
      &,YuSM, FermionMassResummation,kont) 
If (kont.Ne.0) Then 
    Iname=Iname-1
    Write(*,*) " Fit of Yukawa couplings at EW scale failed" 
    Call TerminateProgram
End If
Call Yukawas(mf_d_MS_SM,vSM,uD_L,uD_R,SigSL_d,SigL_d,SigR_d& 
      &,YdSM,FermionMassResummation,kont)
If (kont.Ne.0) Then
    Iname=Iname-1
    Write(*,*) " Fit of Yukawa couplings at EW scale failed" 
    Call TerminateProgram
End If 
Call Yukawas(mf_l_MS_SM,vSM,uL_L,uL_R,SigSL_l,SigL_l,SigR_l&
     &,YeSM,.False.,kont) 
If (kont.Ne.0) Then
    Iname=Iname-1
    Write(*,*) " Fit of Yukawa couplings at EW scale failed" 
    Call TerminateProgram
End If
Call FermionMass(YdSM,vSM,mf_d_Q,uD_L_T,uD_R_T,kont) 
Call FermionMass(YeSM,vSM,mf_l_Q,uL_L_T,uL_R_T,kont)
Call FermionMass(YuSM,vSM,mf_u_Q,uU_L_T,uU_R_T,kont)


! Check convergence 
converge= .True. 
D_mat=Abs(Abs(YeSM)-Abs(Y_l_old))
Where (Abs(YeSM).Ne.0._dp) D_mat=D_mat/Abs(YeSM)
Do i1=1,3
 If (D_mat(i1,i1).Gt.0.1_dp*delta0) converge= .False. 
  Do i2=i1+1,3 
   If (D_mat(i1,i2).Gt.delta0) converge= .False. 
   If (D_mat(i2,i1).Gt.delta0) converge= .False. 
 End Do 
End Do 
D_mat=Abs(Abs(YdSM)-Abs(Y_d_old))
Where (Abs(YdSM).Ne.0._dp) D_mat=D_mat/Abs(YdSM)
Do i1=1,3 
 If (D_mat(i1,i1).Gt.0.1_dp*delta0) converge= .False. 
   Do i2=i1+1,3 
    If (D_mat(i1,i2).Gt.10._dp*delta0) converge= .False. 
    If (D_mat(i2,i1).Gt.10._dp*delta0) converge= .False. 
   End Do 
End Do 
D_mat=Abs(Abs(YuSM)-Abs(Y_u_old))
Where (Abs(YuSM).Ne.0._dp) D_mat=D_mat/Abs(YuSM)
Do i1=1,3
 If (D_mat(i1,i1).Gt.0.1_dp*delta0) converge= .False. 
  Do i2=i1+1,3 
   If (D_mat(i1,i2).Gt.10._dp*delta0) converge= .False. 
   If (D_mat(i2,i1).Gt.10._dp*delta0) converge= .False. 
  End Do 
End Do
If (converge) Exit
  Y_l_old=YeSM
  Y_u_old=YuSM
  Y_d_old=YdSM
!-------------------------------------------------- 
!Either we have run into a numerical problem or 
!perturbation theory breaks down 
!-------------------------------------------------- 
If ((Minval(Abs(mf_l_Q/mf_l)).Lt.0.1_dp)&
&.Or.(Maxval(Abs(mf_l_Q/mf_l)).Gt.10._dp)) Then
Iname=Iname-1
kont=-405
Call AddError(405)
    Write(*,*) " Loop corrections to Yukawa couplings at EW scale too large!" 
    Call TerminateProgram
Else If ((Minval(Abs(mf_d_Q/mf_d)).Lt.0.1_dp)&
&.Or.(Minval(Abs(mf_d_Q/mf_d)).Gt.10._dp)) Then
Iname=Iname-1
kont=-406
Call AddError(406)
    Write(*,*) " Loop corrections to Yukawa couplings at EW scale too large!" 
    Call TerminateProgram
Else If ((Minval(Abs(mf_u_Q/mf_u)).Lt.0.1_dp)&
&.Or.(Minval(Abs(mf_u_Q/mf_u)).Gt.10._dp)) Then
Iname=Iname-1
kont=-407
Call AddError(407)
    Write(*,*) " Loop corrections to Yukawa couplings at EW scale too large!" 
    Call TerminateProgram
End If
End Do! i_loop
If ((.Not.converge).and.FermionMassResummation) Then
Write (ErrCan,*)'Problem in subroutine BoundaryEW!!'
Write (ErrCan,*) "After-1 + (i_loop)iterations no convergence of Yukawas"
End If
Yl_MZ=YeSM
Yd_MZ=YdSM
Yu_MZ=YuSM
sinW2_Q_mZ=sinW2_Q
vSM_save=vSM
gauge_mZ=gauge
Call ParametersToG62_SM(g1SM,g2SM,g3SM,Lambda_SM,YuSM,YdSM,YeSM,MuSM,vSM,g_SM)

test=SetRenormalizationScale(test)
Iname=Iname-1

Contains

Real(dp) Function rho_2(r)
Implicit None
Real(dp),Intent(in)::r
Real(dp)::r2,r3
r2=r*r
r3=r2*r
rho_2=19._dp-16.5_dp*r+43._dp*r2/12._dp&
&+7._dp*r3/120._dp&
&-Pi*Sqrt(r)*(4._dp-1.5_dp*r+3._dp*r2/32._dp&
&+r3/256._dp)&
&-Pi2*(2._dp-2._dp*r+0.5_dp*r2)&
&-Log(r)*(3._dp*r-0.5_dp*r2)
End Function rho_2


Subroutine Yukawas(mf,vev,uL,uR,SigS,SigL,SigR,Y,ReSum,kont)
Implicit None
Integer,Intent(inout)::kont
Real(dp),Intent(in)::mf(3),vev
Complex(dp),Dimension(3,3),Intent(in)::uL,uR,SigS,SigL,SigR
Logical,Intent(in)::ReSum
Complex(dp),Intent(inout)::Y(3,3)
Integer::i1
Complex(dp),Dimension(3,3)::mass,uLa,uRa,f,invf,invY
Call Adjungate(uL,uLa)
Call Adjungate(uR,uRa)
mass=ZeroC
Do i1=1,3
mass(i1,i1)=mf(i1)
End Do
mass=Matmul(Transpose(uL),Matmul(mass,uR))
Y=Y*vev*oosqrt2
If (ReSum) Then
kont=0
Call chop(Y)
invY=Y
Call gaussj(kont,invY,3,3)
If (kont.Ne.0) Return
f=id3C-Matmul(SigS,invY)-Transpose(SigL)-Matmul(Y,Matmul(SigR,invY))
invf=f
Call gaussj(kont,invf,3,3)
If (kont.Ne.0) Return
Y=Matmul(invf,mass)
Else
Y=mass+SigS+Matmul(Transpose(SigL),Y)+Matmul(Y,SigR)
End If
Y=sqrt2*Y/vev
Call chop(y)
End Subroutine Yukawas

End Subroutine BoundarySM 
 
Subroutine BoundaryBSM(i_run,g_SM,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,            & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,               & 
& vd,vu,vS,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,            & 
& Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,             & 
& mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,delta0,gMZ,kont)

Implicit None 
Real(dp),Intent(out)::gMZ(:) 
Real(dp),Intent(in) :: g_SM(62) 
Real(dp),Intent(inout) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp),Intent(inout) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Real(dp),Intent(inout) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp),Intent(inout) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp),Intent(inout) :: vd,vu,vS

Complex(dp) :: cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFeFeVPL(3,3),cplcFeFeVPR(3,3),cplcFuFuVPL(3,3), & 
& cplcFuFuVPR(3,3),cplcgWmgWmVP,cplcgWpCgWpCVP,cplHmcHmVP(2,2),cplHmcVWmVP(2),           & 
& cplcVWmVPVWm,cplHmcHmVPVP(2,2),cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,        & 
& cplcFdFdVZL(3,3),cplcFdFdVZR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFuFuVZL(3,3),  & 
& cplcFuFuVZR(3,3),cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),cplcgWmgWmVZ,cplcgWpCgWpCVZ,        & 
& cplhhhhVZ(6,6),cplhhVZVZ(6),cplHmcHmVZ(2,2),cplHmcVWmVZ(2),cplcVWmVWmVZ,               & 
& cplhhhhVZVZ(6,6),cplHmcHmVZVZ(2,2),cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,    & 
& cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),           & 
& cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm(6,2),            & 
& cplhhcVWmVWm(6),cplhhhhcVWmVWm(6,6),cplHmcHmcVWmVWm(2,2),cplcVWmcVWmVWmVWm1,           & 
& cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcHmVWmVZ(2),cplcHmVPVWm(2),cplHmcHmVPVZ(2,2), & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3

Complex(dp) :: cplcUFdFdhhL(3,3,6),cplcUFdFdhhR(3,3,6),cplcUFdFdVGL(3,3),cplcUFdFdVGR(3,3),          & 
& cplcUFdFdVPL(3,3),cplcUFdFdVPR(3,3),cplcUFdFdVZL(3,3),cplcUFdFdVZR(3,3),               & 
& cplcUFdFuHmL(3,3,2),cplcUFdFuHmR(3,3,2),cplcUFdFuVWmL(3,3),cplcUFdFuVWmR(3,3),         & 
& cplcUFuFdcHmL(3,3,2),cplcUFuFdcHmR(3,3,2),cplcUFuFdcVWmL(3,3),cplcUFuFdcVWmR(3,3),     & 
& cplcUFuFuhhL(3,3,6),cplcUFuFuhhR(3,3,6),cplcUFuFuVGL(3,3),cplcUFuFuVGR(3,3),           & 
& cplcUFuFuVPL(3,3),cplcUFuFuVPR(3,3),cplcUFuFuVZL(3,3),cplcUFuFuVZR(3,3),               & 
& cplcUFeFehhL(3,3,6),cplcUFeFehhR(3,3,6),cplcUFeFeVPL(3,3),cplcUFeFeVPR(3,3),           & 
& cplcUFeFeVZL(3,3),cplcUFeFeVZR(3,3),cplcUFeFvHmL(3,3,2),cplcUFeFvHmR(3,3,2),           & 
& cplcUFeFvVWmL(3,3),cplcUFeFvVWmR(3,3)

Integer, Intent(in) :: i_run 
Real(dp), Intent(in) :: delta0 
Integer, Intent(inout) :: kont 
Integer :: i1,i2,i3,i4 
Complex(dp) ::uU_L(3,3),uU_R(3,3),uD_L(3,3),uD_R(3,3), NoMatrix(3,3) &
&,uL_L(3,3),uL_R(3,3)
Real(dp)::mW2_run,mZ2_run,test, D_mat(3,3)
Real(dp)::alphaQ,alpha3,gSU2,rho,delta_rho,delta_rho0,sinW2_Q,vev2&
&,vevs_Q(2),mZ2_Q,CosW2SinW2,gauge(3),delta,delta_SM,sinW2_old,delta_r&
&,p2,gSU3,tanb,xt2,fac(2),SigQCD,delta_rw,sinW2,cosW2,cosW
Real(dp) :: mz2save,mw2save,rMS_save,rMS_SM_save,alpha_DR,mz2_dr,mw2_dr,sw2cw2_sm,vev2_dr
complex(dp) :: treelambda,dmZ2_SM_DR,dmw2_SM_DR
Real(dp),Dimension(3)::mf_d_Q,mf_l_Q,mf_u_Q
Real(dp) :: g1SM, g2SM, g3SM, vSM 
Complex(dp) :: dMZ2_SM, dMW2_SM, dMW2_0_SM 
Complex(dp) :: dmZ2,dmW2,dmW2_0,yuk_tau,yuk_t,yuk_b
Complex(dp) :: SigSR_u(3,3),SigSL_u(3,3),sigR_u(3,3),SigL_u(3,3)
Complex(dp) :: SigSR_d(3,3),SigSL_d(3,3),SigR_d(3,3),SigL_d(3,3)
Complex(dp) :: SigSR_l(3,3),SigSL_l(3,3),sigR_l(3,3),SigL_l(3,3)
Complex(dp) :: SigSR_u_SM(3,3),SigSL_u_SM(3,3),sigR_u_SM(3,3),SigL_u_SM(3,3)
Complex(dp) :: SigSR_d_SM(3,3),SigSL_d_SM(3,3),SigR_d_SM(3,3),SigL_d_SM(3,3)
Complex(dp) :: SigSR_l_SM(3,3),SigSL_l_SM(3,3),sigR_l_SM(3,3),SigL_l_SM(3,3)
Complex(dp) :: YuSM(3,3),YdSM(3,3),YeSM(3,3), adCKM(3,3),Y_l_old(3,3),Y_d_old(3,3),Y_u_old(3,3) 
Real(dp) :: g1_MS, g2_MS,g3_MS,v_MS, mf_d_MS(3), mf_u_MS(3), mf_e_MS(3) 
Complex(dp) :: Yu_MS(3,3),Yd_MS(3,3),Ye_MS(3,3), Mu_MS, Lam_MS, MuSM 
Complex(dp) :: uU_L_MS(3,3),uU_R_MS(3,3)&
&,uD_L_MS(3,3),uD_R_MS(3,3),uL_L_MS(3,3),uL_R_MS(3,3), CKM_MS(3,3), delta_r_SM
Complex(dp) :: uU_L_T(3,3),uU_R_T(3,3)&
&,uD_L_T(3,3),uD_R_T(3,3),uL_L_T(3,3),uL_R_T(3,3)
Logical::converge
Integer :: i_loop, i_loop_max 
Real(dp),Parameter::&
& as2loop=1._dp/24._dp+2011._dp*oo32Pi2/12._dp&
&+Log2/12._dp-oo8Pi2*Zeta3&
&,log2loop_a=123._dp*oo32Pi2,log2loop_b=33._dp*oo32Pi2
Real(dp)::Q2,logQ, sinTW_MS, alphaEW_MS, alphaS_MS, mudim, mz2_MS, mw2_MS 


Complex(dp) ::MassFu(3,3),MassFd(3,3),MassFe(3,3) 
Iname=Iname+1
NameOfUnit(Iname)='BoundaryBSM'
rMS_SM = rMS 
tanb = tanbetaMZ 
sinW2 = 1 - mW**2/mZ**2 
mudim = GetRenormalizationScale() 
mudim = sqrt(mudim) 
Call GToParameters62_SM(g_SM,g1_MS,g2_MS,g3_MS,Lam_MS,Yu_MS,Yd_MS,Ye_MS,Mu_MS,v_MS) 
sinTW_MS = g1_MS/sqrt(g1_MS**2+g2_MS**2) 
sinW2_Q = sinTW_MS**2 
alphaEW_MS = (sinTW_MS*g2_MS)**2/(4._dp*Pi) 
alphaS_MS = g3_MS**2/(4._dp*Pi) 
mz2_MS = (g1_MS**2+g2_MS**2)/(4._dp)*(v_MS**2) 
mw2_MS = (g2_MS**2)/(4._dp)*(v_MS**2) 
rMS_save=rMS
mz2save = mz2
mz2 = mz2_ms
rMS=1._dp
rMS_SM=1._dp
Call OneLoop_Z_W_SM(v_MS,g1_MS,g2_MS,g3_MS,Lam_MS,-Yu_MS,Yd_MS,Ye_MS,kont,            & 
& dmZ2_SM,dmW2_SM,dmW2_0_SM)

rMS=rMS_save
rMS_SM=rMS
Call OneLoop_Z_W_SM(v_MS,g1_MS,g2_MS,g3_MS,Lam_MS,-Yu_MS,Yd_MS,Ye_MS,kont,            & 
& dmZ2_SM_DR,dmW2_SM_DR,dmW2_0_SM)

mz2_dr=mz2_ms+dmz2_sm_dr-dmz2_sm
mw2_dr=mw2_ms+dmw2_sm_dr-dmw2_sm
sw2cw2_sm=g1_MS**2*g2_MS**2/(g1_MS**2+g2_MS**2)**2+(1._dp-rMS)*(alphaEW_MS/(6._dp*Pi)*(1._dp-sinw2_q)*(2._dp*sinw2_q-1._dp))
alpha_dr=alphaew_MS+(1._dp-rMS)*alphaew_MS**2/(6._dp*Pi)
vev2_dr=mz2_dr*sw2cw2_sm/(pi*alpha_dr)
sinW2_Q=0.5_dp-Sqrt(0.25_dp-sw2cw2_sm)
   Call FermionMass(Yd_MS,v_MS,mf_d_MS,uD_L_MS,uD_R_MS,kont)
   Call FermionMass(Ye_MS,v_MS,mf_e_MS,uL_L_MS,uL_R_MS,kont)
   Call FermionMass(Yu_MS,v_MS,mf_u_MS,uU_L_MS,uU_R_MS,kont)
   CKM_MS = MatMul(uU_R_MS,Transpose(Conjg(uD_R_MS))) 
!-----------------
!sin(theta_W)^2
!-----------------
!vSM = v_MS 
vSM = sqrt(vev2_dr) 
   sinW2_old=sinW2_Q
   mf_l2=mf_e_MS**2
   mf_d2=mf_d_MS**2
   mf_u2=mf_u_MS**2
MFe2(1:3) = mf_l**2 
MFd2(1:3) = mf_d**2 
MFu2(1:3) = mf_u**2 
MFe = sqrt(MFe2) 
MFd = sqrt(MFd2) 
MFu = sqrt(MFu2) 
alphaQ = AlphaEw_T(alphaEW_MS,mudim,Abs(MVWm),Abs(MHm),Abs(MFd),Abs(MFu),Abs(MFe)) 
 
MFe2(1:3) = mf_l2 
MFd2(1:3) = mf_d2 
MFu2(1:3) = mf_u2 
MFe = sqrt(MFe2) 
MFd = sqrt(MFd2) 
MFu = sqrt(MFu2) 
alpha3 = AlphaS_T(alphaS_MS,mudim,Abs(MFd),Abs(MFu)) 
If (.not.OneLoopMatching) alpha3 = alphaS_MS 
gSU3 = Sqrt(4._dp*pi*alpha3) 
g3SM = Sqrt(4._dp*pi*alpha3) 
Do i1=1,100 
gSU2 = Sqrt( 4._dp*pi*alphaQ/sinW2_Q) 
g1SM =gSU2*Sqrt(sinW2_Q/(1._dp-sinW2_Q)) 
g2SM =gSU2 
If (i_run.eq.1) Then 
 YeSM=Yl_MZ
 YdSM=Yd_MZ
 YuSM=Yu_MZ
Else 
 YeSM=Yl_Q
 YdSM=Yd_Q
 YuSM=Yu_Q
End if 
Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)

Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,GenerationMixing,kont)

TW= Asin(Sqrt(sinw2_Q)) 

 
 ! --- Boundary conditions at EW-scale --- 
Select Case(BoundaryCondition) 
End Select 

! ----------------------- 
 
mZ2 = MVZ2 
mW2 = MVWm2 
MVZ= Sqrt(MVZ2) 
MVWm2 = mW2 
MVWm= Sqrt(MVWm2) 
Mhh(1)=MVZ
Mhh2(1)=MVZ2
MHm(1)=MVWm
MHm2(1)=MVWm2
If (.not.MatchZWpoleMasses) Then 
Call CouplingsForVectorBosons(g1,g2,TW,ZP,vd,vu,ZH,ZDL,ZUL,ZEL,cplcFdFdVPL,           & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm1,       & 
& cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,       & 
& cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,           & 
& cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,      & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcFuFdcVWmL,cplcFuFdcVWmR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm, & 
& cplhhHmcVWm,cplhhcVWmVWm,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmcVWmVWmVWm1,            & 
& cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcHmVWmVZ,cplcHmVPVWm,cplHmcHmVPVZ,            & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3)

Call Pi1LoopVZ(mZ2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,             & 
& MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,    & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,               & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,          & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,dmZ2)

treelambda = Mhh2(1)/vSM**2
Call OneLoop_Z_W_SM(vSM,g1SM,g2SM,g3SM,treelambda,-YuSM,YdSM,YeSM,kont,               & 
& dmZ2_SM,dmW2_SM,dmW2_0_SM)

dmZ2 = dmZ2 - dmZ2_SM
If (.not.OneLoopMatching) dmZ2 = 0._dp 
mZ2_Q = Real(dmZ2 + mZ2_DR,dp) 
If (mZ2_Q.Lt.0._dp) Then
    Iname=Iname-1
    kont=-402
    Call AddError(402)
    Write(*,*) " MZ  getting negative at renormalisation scale" 
    Call TerminateProgram
End If

mZ2_run=mZ2_Q
mW2_run=mZ2_Q*(1._dp-sinW2_Q) +0  
MVZ2 = mZ2_run 
MVZ= Sqrt(MVZ2) 
MVWm2 = mW2_run 
MVWm= Sqrt(MVWm2) 
Mhh(1)=MVZ
Mhh2(1)=MVZ2
MHm(1)=MVWm
MHm2(1)=MVWm2
CosW2SinW2=(1._dp-sinW2_Q)*sinW2_Q
vev2=mZ2_Q*CosW2SinW2/(pi*alphaQ) -(0) 
vSM=Sqrt(vev2)
gSU2 = Sqrt( 4._dp*pi*alphaQ/sinW2_Q) 
g1SM =gSU2*Sqrt(sinW2_Q/(1._dp-sinW2_Q)) 
g2SM =gSU2 
Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)

Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,GenerationMixing,kont)

Call CouplingsForVectorBosons(g1,g2,TW,ZP,vd,vu,ZH,ZDL,ZUL,ZEL,cplcFdFdVPL,           & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm1,       & 
& cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,       & 
& cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,           & 
& cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,      & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcFuFdcVWmL,cplcFuFdcVWmR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm, & 
& cplhhHmcVWm,cplhhcVWmVWm,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmcVWmVWmVWm1,            & 
& cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcHmVWmVZ,cplcHmVPVWm,cplHmcHmVPVZ,            & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3)

treelambda = Mhh2(1)/vSM**2
rMS_SM_save=rMS_SM
rMS_SM=rMS
Call Pi1LoopVZ(mZ2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,             & 
& MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,    & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,               & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,          & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,dmZ2)

Call OneLoop_Z_W_SM(vSM,g1SM,g2SM,g3SM,treelambda,-YuSM,YdSM,YeSM,kont,               & 
& dmZ2_SM,dmW2_SM,dmW2_0_SM)

dmZ2 = dmZ2 - dmZ2_SM
If (.not.OneLoopMatching) dmZ2 = 0._dp 
mZ2_Q = Real(dmZ2 + mZ2_DR,dp) 
If (mZ2_Q.Lt.0._dp) Then
    Iname=Iname-1
    kont=-402
    Call AddError(402)
    Write(*,*) " MZ  getting negative at renormalisation scale" 
    Call TerminateProgram
End If

mZ2_run=mZ2_Q
mW2_run=mZ2_Q*(1._dp-sinW2_Q) +0  
MVZ2 = mZ2_run 
MVZ= Sqrt(MVZ2) 
MVWm2 = mW2_run 
MVWm= Sqrt(MVWm2) 
Mhh(1)=MVZ
Mhh2(1)=MVZ2
MHm(1)=MVWm
MHm2(1)=MVWm2
CosW2SinW2=(1._dp-sinW2_Q)*sinW2_Q
vev2=mZ2_Q *CosW2SinW2/(pi*alphaQ) -(0) 
vSM=sqrt(vev2) 
gSU2 = Sqrt( 4._dp*pi*alphaQ/sinW2_Q) 
g1SM =gSU2*Sqrt(sinW2_Q/(1._dp-sinW2_Q)) 
g2SM =gSU2 
Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)

Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,GenerationMixing,kont)

mW2 = MVWm2
mZ2 = MVZ2
Call CouplingsForVectorBosons(g1,g2,TW,ZP,vd,vu,ZH,ZDL,ZUL,ZEL,cplcFdFdVPL,           & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm1,       & 
& cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,       & 
& cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,           & 
& cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,      & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcFuFdcVWmL,cplcFuFdcVWmR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm, & 
& cplhhHmcVWm,cplhhcVWmVWm,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmcVWmVWmVWm1,            & 
& cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcHmVWmVZ,cplcHmVPVWm,cplHmcHmVPVZ,            & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3)

Call Pi1LoopVZ(mZ2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,             & 
& MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,    & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,               & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,          & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,dmZ2)

Call Pi1LoopVWm(mW2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,MVWm2,          & 
& MVZ,MVZ2,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm,       & 
& cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmVPVPVWm3,  & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,& 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,dmW2)

Call Pi1LoopVWm(0._dp,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,              & 
& MVWm2,MVZ,MVZ2,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm, & 
& cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmVPVPVWm3,  & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,& 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,dmW2_0)

treelambda = Mhh2(1)/vSM**2
Call OneLoop_Z_W_SM(vSM,g1SM,g2SM,g3SM,treelambda,-YuSM,YdSM,YeSM,kont,               & 
& dmZ2_SM,dmW2_SM,dmW2_0_SM)

dmZ2 = dmZ2 - dmZ2_SM
dmW2 = dmW2 - dmW2_SM
dmW2_0 = dmW2_0 - dmW2_0_SM
If (.not.OneLoopMatching) dmW2 = 0._dp 
If (.not.OneLoopMatching) dmW2_0 = 0._dp 
rho=(1._dp+Real(dmZ2,dp)/mZ2)/(1._dp+Real(dmW2,dp)/mW2)  
delta_rho=1._dp-1._dp/rho
delta_rho0=MW2*(g1SM**2+g2SM**2)/g2SM**2/MZ2-1._dp
rho=1._dp/(1._dp-delta_rho-delta_rho0)
CosW2SinW2=(1._dp-sinW2_Q)*sinW2_Q
If (IncludeDeltaVB) Then 
Call DeltaVB(sinW2_Q,sinW2_Q,rho,MFe,Mhh,MHm,MVWm,epsE,eta,g2,ZER,vd,vu,              & 
& ZEL,Ye,ZH,ZP,delta)

Call DeltaVB_SM(sinW2_Q,sinW2_Q,g2SM,rho,delta_SM)

 delta=delta-delta_SM 
Else 
 delta = 0._dp 
End if 
If (.not.OneLoopMatching) delta = 0._dp 
delta_rho0=MW2*(g1SM**2+g2SM**2)/g2SM**2/MZ2-1._dp
delta_r=(1._dp+delta_rho0)*Real(dmW2_0,dp)/mW2-Real(dmZ2,dp)/mZ2+delta
delta_rhomatch=Real(dmZ2,dp)/mZ2-(1._dp+delta_rho0)*Real(dmW2,dp)/mW2
delta_rwmatch=Real(dmW2_0,dp)/mW2-Real(dmW2,dp)/mW2+delta
delta_emmatch= DeltaAlphaEW_T(g1sm**2*g2sm**2*oo4pi/(g1sm**2+g2sm**2),mudim,Abs(MVWm),Abs(MHm),Abs(MFd),Abs(MFu),Abs(MFe)) 
 
CosW2SinW2=sw2cw2_sm*(1._dp+delta_emmatch+delta_r)/(1._dp+delta_rho0)
sinW2_Q=0.5_dp-Sqrt(0.25_dp-CosW2SinW2)

newWscale=sinW2_Q/(1._dp-2._dp*sinW2_Q)*((1._dp/sinW2_Q -1._dp)*(delta_rho0+delta_rhomatch)-delta_rwmatch-delta_emmatch)
mZ2 = mZ2save 
If (sinW2_Q.Lt.0._dp) Then
    kont=-403
    Call AddError(403)
    Iname=Iname-1
    Write(*,*) " sinW2 getting negtive at renormalisation scale " 
    Call TerminateProgram
End If
 
If (Abs(sinW2_Q-sinW2_old).Lt.0.1_dp*delta0) Exit

sinW2_old=sinW2_Q
Mhh(1)=MVZ
Mhh2(1)=MVZ2
MHm(1)=MVWm
MHm2(1)=MVWm2
cosW2=mW2/mZ2
cosW=Sqrt(cosW2)
sinW2=1._dp-cosW2
Else 
Call CouplingsForVectorBosons(g1,g2,TW,ZP,vd,vu,ZH,ZDL,ZUL,ZEL,cplcFdFdVPL,           & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm1,       & 
& cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,       & 
& cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,           & 
& cplhhhhVZ,cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,      & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcFuFdcVWmL,cplcFuFdcVWmR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm, & 
& cplhhHmcVWm,cplhhcVWmVWm,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmcVWmVWmVWm1,            & 
& cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcHmVWmVZ,cplcHmVPVWm,cplHmcHmVPVZ,            & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3)

Call Pi1LoopVZ(mZ2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,             & 
& MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,    & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,               & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,          & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,dmZ2)

Call Pi1LoopVWm(mW2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,MVWm2,          & 
& MVZ,MVZ2,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm,       & 
& cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmVPVPVWm3,  & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,& 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,dmW2)

Call OneLoop_Z_W_SM(v_MS,g1_MS,g2_MS,g3_MS,Lam_MS,Yu_MS,Yd_MS,Ye_MS,kont,             & 
& dmZ2_SM,dmW2_SM,dmW2_0_SM)

If (.not.OneLoopMatching) dmZ2_SM = 0._dp 
If (.not.OneLoopMatching) dmW2_SM = 0._dp 
If (.not.OneLoopMatching) dmW2_0_SM = 0._dp 
mZ2_run=mZ2_DR-dmZ2+dmz2_SM
mW2_run=mw2_DR-dmW2+dmw2_SM
sinW2_Q=1._dp-mW2_run/MZ2_run
g1SM=Sqrt(4._dp*pi*alphaQ/(1._dp-sinW2_Q))
g2SM=Sqrt(4._dp*pi*alphaQ/sinW2_Q)
g3SM=Sqrt(4._dp*pi*alpha3)
vSM=sqrt(4._dp*mz2_run/(g1SM**2+g2SM**2))
Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)

vev2=4._dp*mz2_run/(g1SM**2+g2SM**2) -(0) 
vSM=sqrt(vev2) 
End If 
End Do

Mhh(1)=MVZ
Mhh2(1)=MVZ2
MHm(1)=MVWm
MHm2(1)=MVWm2
If (.not.MatchZWpoleMasses) Then 
vev2=mZ2_Q*CosW2SinW2/(pi*alphaQ) -(0) 
vSM=sqrt(vev2) 
Else 
mW2=(1._dp-sinW2_Q)*MZ2 
mW=Sqrt(mW2)
End If 
cosW2=mW2/mZ2
cosW=Sqrt(cosW2)
sinW2=1._dp-cosW2
g1SM=Sqrt(4._dp*pi*alphaQ/(1._dp-sinW2_Q))
g2SM=Sqrt(4._dp*pi*alphaQ/sinW2_Q)
g3SM=Sqrt(4._dp*pi*alpha3)
vSM_Q = vSM
Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)

Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.True.)



! -------------------------
!  Calculate Yukawas
! -------------------------
uU_L=id3C
uU_R=id3C
uD_L=id3C
uD_R=id3C
uL_L=id3C
uL_R=id3C
If (GenerationMixing) Then
    Call Adjungate(CKM_MS,adCKM)
 If (YukawaScheme.Eq.1) Then
    uU_L(1:3,1:3)=CKM_MS
 Else
    uD_L(1:3,1:3)=adCKM
 End If
End If
If (rMS.lt.0.5_dp) Then ! shift to DR if necessary 
   mf_l_Q_SM=&
            & mf_e_MS*(1._dp-alphaQ/(4._dp*Pi))
   mf_d_Q_SM=mf_d_MS*(1._dp-alpha3/(3._dp*pi)&
           &-43._dp*alpha3**2/(144._dp*Pi2) - alphaQ/(36._dp*Pi))
   mf_u_Q_SM(1:3)=mf_u_MS(1:3)*(1._dp-alpha3/(3._dp*pi)&
               &-43._dp*alpha3**2/(144._dp*Pi2)- alphaQ/(9._dp*Pi))
Else 
   mf_l_Q_SM=mf_e_MS
   mf_d_Q_SM=mf_d_MS
   mf_u_Q_SM=mf_u_MS
End if 
mf_l_Q=mf_l_Q_SM
mf_d_Q=mf_d_Q_SM
mf_u_Q=mf_u_Q_SM
YdSM=0._dp
YuSM=0._dp
YeSM=0._dp
Do i1=1,3
    YuSM(i1,i1)=sqrt2*mf_u_Q_SM(i1)/vSM
    YeSM(i1,i1)=sqrt2*mf_l_Q_SM(i1)/vSM
    YdSM(i1,i1)=sqrt2*mf_d_Q_SM(i1)/vSM
End Do
If (GenerationMixing) Then
  If (YukawaScheme.Eq.1) Then
    YuSM=Matmul(Transpose(uU_L(1:3,1:3)),YuSM)
  Else
    YdSM=Matmul(Transpose(uD_L(1:3,1:3)),YdSM)
  End If
End If
converge= .False.
Y_l_old=YeSM
Y_d_old=YdSM
Y_u_old=YuSM
Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)



! -------------------------
!  Main Loop
! -------------------------
if (FermionMassResummation) then
  i_loop_max=100! this should be sufficient
else
  i_loop_max=1
end if
Do i_loop=1,i_loop_max
p2=0._dp! for off-diagonal elements

 
 ! --- Boundary conditions at EW-scale --- 
Select Case(BoundaryCondition) 
End Select 

! ----------------------- 
 


! Full one-loop corrections
Call CouplingsForSMfermions(Yd,epsD,eta,ZH,ZDL,ZDR,g3,g1,g2,TW,Yu,epsU,               & 
& ZP,ZUL,ZUR,Ye,epsE,ZEL,ZER,cplcUFdFdhhL,cplcUFdFdhhR,cplcUFdFdVGL,cplcUFdFdVGR,        & 
& cplcUFdFdVPL,cplcUFdFdVPR,cplcUFdFdVZL,cplcUFdFdVZR,cplcUFdFuHmL,cplcUFdFuHmR,         & 
& cplcUFdFuVWmL,cplcUFdFuVWmR,cplcUFuFdcHmL,cplcUFuFdcHmR,cplcUFuFdcVWmL,cplcUFuFdcVWmR, & 
& cplcUFuFuhhL,cplcUFuFuhhR,cplcUFuFuVGL,cplcUFuFuVGR,cplcUFuFuVPL,cplcUFuFuVPR,         & 
& cplcUFuFuVZL,cplcUFuFuVZR,cplcUFeFehhL,cplcUFeFehhR,cplcUFeFeVPL,cplcUFeFeVPR,         & 
& cplcUFeFeVZL,cplcUFeFeVZR,cplcUFeFvHmL,cplcUFeFvHmR,cplcUFeFvVWmL,cplcUFeFvVWmR)

Call Sigma1LoopFeMZ(p2,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,cplcUFeFehhL,   & 
& cplcUFeFehhR,cplcUFeFeVPL,cplcUFeFeVPR,cplcUFeFeVZL,cplcUFeFeVZR,cplcUFeFvHmL,         & 
& cplcUFeFvHmR,cplcUFeFvVWmL,cplcUFeFvVWmR,sigR_l,sigL_l,sigSL_l,sigSR_l)

Call Sigma1LoopFdMZ(p2,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,MFu,MFu2,MVWm,             & 
& MVWm2,cplcUFdFdhhL,cplcUFdFdhhR,cplcUFdFdVGL,cplcUFdFdVGR,cplcUFdFdVPL,cplcUFdFdVPR,   & 
& cplcUFdFdVZL,cplcUFdFdVZR,cplcUFdFuHmL,cplcUFdFuHmR,cplcUFdFuVWmL,cplcUFdFuVWmR,       & 
& sigR_d,sigL_d,sigSL_d,sigSR_d)

Call Sigma1LoopFuMZ(p2,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,Mhh2,MFu,MFu2,MVZ,            & 
& MVZ2,cplcUFuFdcHmL,cplcUFuFdcHmR,cplcUFuFdcVWmL,cplcUFuFdcVWmR,cplcUFuFuhhL,           & 
& cplcUFuFuhhR,cplcUFuFuVGL,cplcUFuFuVGR,cplcUFuFuVPL,cplcUFuFuVPR,cplcUFuFuVZL,         & 
& cplcUFuFuVZR,sigR_u,sigL_u,sigSL_u,sigSR_u)

! Take care of the new normalisation of Sigma 
SigR_l = 0.5_dp*SigR_L 
SigL_l = 0.5_dp*SigL_L 
SigR_d = 0.5_dp*SigR_d 
SigL_d = 0.5_dp*SigL_d 
SigR_u = 0.5_dp*SigR_u 
SigL_u = 0.5_dp*SigL_u 

Call OneLoop_d_u_e_SM(vSM,g1SM,g2SM,g3SM,Lam_MS,-YuSM,YdSM,YeSM,sigR_d_SM,            & 
& sigL_d_SM,sigSR_d_SM,sigSL_d_SM,sigR_u_SM,sigL_u_SM,sigSR_u_SM,sigSL_u_SM,             & 
& sigR_l_SM,sigL_l_SM,sigSR_l_SM,sigSL_l_SM,kont)

sigR_l(1:3,1:3) = sigR_l(1:3,1:3) - sigR_l_SM
sigL_l(1:3,1:3) = sigL_l(1:3,1:3) - sigL_l_SM
sigSR_l(1:3,1:3) = sigSR_l(1:3,1:3) - sigSR_l_SM
sigSL_l(1:3,1:3) = sigSL_l(1:3,1:3) - sigSL_l_SM
sigR_d(1:3,1:3) = sigR_d(1:3,1:3) - sigR_d_SM
sigL_d(1:3,1:3) = sigL_d(1:3,1:3) - sigL_d_SM
sigSR_d(1:3,1:3) = sigSR_d(1:3,1:3) - sigSR_d_SM
sigSL_d(1:3,1:3) = sigSL_d(1:3,1:3) - sigSL_d_SM
sigR_u(1:3,1:3) = sigR_u(1:3,1:3) - sigR_u_SM
sigL_u(1:3,1:3) = sigL_u(1:3,1:3) - sigL_u_SM
sigSR_u(1:3,1:3) = sigSR_u(1:3,1:3) - sigSR_u_SM
sigSL_u(1:3,1:3) = sigSL_u(1:3,1:3) - sigSL_u_SM


If (.not.OneLoopMatching) Then 
sigR_l = 0._dp 
sigL_l = 0._dp 
sigSR_l = 0._dp 
sigSL_l = 0._dp 
sigR_d = 0._dp 
sigL_d = 0._dp 
sigSR_d = 0._dp 
sigSL_d = 0._dp 
sigR_u = 0._dp 
sigL_u = 0._dp 
sigSR_u = 0._dp 
sigSL_u = 0._dp 
End if


! Construct tree-level masses
! Needed for models with additional states mixing with SM particles
Call CalculateMFe(Ye,epsE,eta,vd,vu,ZEL,ZER,MFe,kont)

MassFe=0._dp 
Do i1 = 1,3
 MassFe(i1,i1)=MFe(i1) 
End do
MassFe = MatMul(Transpose(ZEL),MatMul(MassFe,Conjg(ZER))) 
MFe(1:3) =mf_l_Q_SM 
Call CalculateMFu(Yu,epsU,eta,vd,vu,ZUL,ZUR,MFu,kont)

MassFu=0._dp 
Do i1 = 1,3
 MassFu(i1,i1)=MFu(i1) 
End do
MassFu = MatMul(Transpose(ZUL),MatMul(MassFu,Conjg(ZUR))) 
MFu(1:3) =mf_u_Q_SM 
Call CalculateMFd(Yd,epsD,eta,vd,vu,ZDL,ZDR,MFd,kont)

MassFd=0._dp 
Do i1 = 1,3
 MassFd(i1,i1)=MFd(i1) 
End do
MassFd = MatMul(Transpose(ZDL),MatMul(MassFd,Conjg(ZDR))) 
MFd(1:3) =mf_d_Q_SM 


! Obtain Yukawas
Call Yukawas3(MFu,vSM,uU_L,uU_R,SigSL_u,SigL_u,SigR_u&
      &,massFu,YuSM, FermionMassResummation,kont) 
If (kont.Ne.0) Then 
    Iname=Iname-1
    Write(*,*) " Fit of Yukawa couplings at renormalisation scale failed" 
    Call TerminateProgram
End If
Call Yukawas3(MFd,vSM,uD_L,uD_R,SigSL_d,SigL_d,SigR_d& 
      &,massFd,YdSM,FermionMassResummation,kont)
If (kont.Ne.0) Then
    Iname=Iname-1
    Write(*,*) " Fit of Yukawa couplings at renormalisation scale failed" 
    Call TerminateProgram
End If 
Call Yukawas3(MFe,vSM,uL_L,uL_R,SigSL_l,SigL_l,SigR_l&
     &,massFe,YeSM,.False.,kont) 
If (kont.Ne.0) Then
    Iname=Iname-1
    Write(*,*) " Fit of Yukawa couplings at renormalisation scale failed" 
    Call TerminateProgram
End If


! Transpose Yukawas to fit conventions 
YuSM = Transpose(YuSM) 
YdSM= Transpose(YdSM)
YeSM= Transpose(YeSM)
Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)



! Re-calculate quarks with new Yukawas
Call CalculateMFe(Ye,epsE,eta,vd,vu,ZEL,ZER,MFe,kont)

MFe2 = MFe**2 
Call CalculateMFu(Yu,epsU,eta,vd,vu,ZUL,ZUR,MFu,kont)

MFu2 = MFu**2 
Call CalculateMFd(Yd,epsD,eta,vd,vu,ZDL,ZDR,MFd,kont)

MFd2 = MFd**2 
mf_l_Q  = MFe(1:3) 
mf_d_Q  = MFd(1:3) 
mf_u_Q  = MFu(1:3) 


! Re-calculate other masses which depend on Yukawas


! Check convergence 
converge= .True. 
D_mat=Abs(Abs(YeSM)-Abs(Y_l_old))
Where (Abs(YeSM).Ne.0._dp) D_mat=D_mat/Abs(YeSM)
Do i1=1,3
 If (D_mat(i1,i1).Gt.0.1_dp*delta0) converge= .False. 
  Do i2=i1+1,3 
   If (D_mat(i1,i2).Gt.delta0) converge= .False. 
   If (D_mat(i2,i1).Gt.delta0) converge= .False. 
 End Do 
End Do 
D_mat=Abs(Abs(YdSM)-Abs(Y_d_old))
Where (Abs(YdSM).Ne.0._dp) D_mat=D_mat/Abs(YdSM)
Do i1=1,3 
 If (D_mat(i1,i1).Gt.0.1_dp*delta0) converge= .False. 
   Do i2=i1+1,3 
    If (D_mat(i1,i2).Gt.10._dp*delta0) converge= .False. 
    If (D_mat(i2,i1).Gt.10._dp*delta0) converge= .False. 
   End Do 
End Do 
D_mat=Abs(Abs(YuSM)-Abs(Y_u_old))
Where (Abs(YuSM).Ne.0._dp) D_mat=D_mat/Abs(YuSM)
Do i1=1,3
 If (D_mat(i1,i1).Gt.0.1_dp*delta0) converge= .False. 
  Do i2=i1+1,3 
   If (D_mat(i1,i2).Gt.10._dp*delta0) converge= .False. 
   If (D_mat(i2,i1).Gt.10._dp*delta0) converge= .False. 
  End Do 
End Do
If (converge) Exit
  Y_l_old=YeSM
  Y_u_old=YuSM
  Y_d_old=YdSM
!-------------------------------------------------- 
!Either we have run into a numerical problem or 
!perturbation theory breaks down 
!-------------------------------------------------- 
If ((Minval(Abs(mf_l_Q/mf_l)).Lt.0.1_dp)&
&.Or.(Maxval(Abs(mf_l_Q/mf_l)).Gt.10._dp)) Then
Iname=Iname-1
kont=-405
Call AddError(405)
    Write(*,*) " Loop corrections to Yukawa couplings at renormalisation scale too large!" 
    Call TerminateProgram
Else If ((Minval(Abs(mf_d_Q/mf_d)).Lt.0.1_dp)&
&.Or.(Minval(Abs(mf_d_Q/mf_d)).Gt.10._dp)) Then
Iname=Iname-1
kont=-406
Call AddError(406)
    Write(*,*) " Loop corrections to Yukawa couplings at renormalisation scale too large!" 
    Call TerminateProgram
Else If ((Minval(Abs(mf_u_Q/mf_u)).Lt.0.1_dp)&
&.Or.(Minval(Abs(mf_u_Q/mf_u)).Gt.10._dp)) Then
Iname=Iname-1
kont=-407
Call AddError(407)
    Write(*,*) " Loop corrections to Yukawa couplings at renormalisation scale too large!" 
    Call TerminateProgram
End If
End Do! i_loop
If ((.Not.converge).and.FermionMassResummation) Then
Write (ErrCan,*)'Problem in subroutine BoundaryEW!!'
Write (ErrCan,*) "After-1 + (i_loop)iterations no convergence of Yukawas"
End If
Yl_Q=YeSM
Yd_Q=YdSM
Yu_Q=YuSM
Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)

Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)

! sinW2_Q_mZ=sinW2_Q
! vSM_save=vSM
gauge_mZ=gauge

 
 ! --- Boundary conditions at EW-scale --- 
Select Case(BoundaryCondition) 
End Select 

! ----------------------- 
 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))


 
 ! --- GUT normalize gauge couplings --- 
g1 = Sqrt(5._dp/3._dp)*g1 
! ----------------------- 
 
Call ParametersToG157(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,              & 
& Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,            & 
& mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,gMZ)

rMS_SM = 1._dp 
mZ2 = mz2save 
Iname=Iname-1

Contains

Real(dp) Function rho_2(r)
Implicit None
Real(dp),Intent(in)::r
Real(dp)::r2,r3
r2=r*r
r3=r2*r
rho_2=19._dp-16.5_dp*r+43._dp*r2/12._dp&
&+7._dp*r3/120._dp&
&-Pi*Sqrt(r)*(4._dp-1.5_dp*r+3._dp*r2/32._dp&
&+r3/256._dp)&
&-Pi2*(2._dp-2._dp*r+0.5_dp*r2)&
&-Log(r)*(3._dp*r-0.5_dp*r2)
End Function rho_2


Subroutine Yukawas3(mf,vev,uL,uR,SigS,SigL,SigR,MassMatrix,Y,ReSum,kont)
Implicit None
Integer,Intent(inout)::kont
Real(dp),Intent(in)::mf(3),vev
Complex(dp),Dimension(3,3),Intent(in)::uL,uR,SigS,SigL,SigR
Logical,Intent(in)::ReSum
Complex(dp),Intent(inout)::MassMatrix(3,3)
Complex(dp),Intent(out)::Y(3,3)
Integer::i1
Complex(dp),Dimension(3,3)::mass,uLa,uRa,f,invf,invMass2,Ytemp
Call Adjungate(uL,uLa)
Call Adjungate(uR,uRa)
mass=ZeroC
Do i1=1,3
mass(i1,i1)=mf(i1)
End Do
mass=Matmul(Transpose(uL),Matmul(mass,uR))
If (ReSum) Then
kont=0
Call chop(MassMatrix)
invMass2=MassMatrix
Call gaussj(kont,invMass2,3,3)
If (kont.Ne.0) Return
f=id3C-Matmul(SigS,invMass2)-Transpose(SigL)-Matmul(MassMatrix,Matmul(SigR,invMass2))
invf=f
Call gaussj(kont,invf,3,3)
If (kont.Ne.0) Return
Ytemp=Matmul(invf,mass)
Else
Ytemp=mass+SigS+Matmul(Transpose(SigL),MassMatrix)+Matmul(MassMatrix,SigR)
End If
Y=sqrt2*Ytemp(1:3,1:3)/vev
Call chop(y)
End Subroutine Yukawas3

End Subroutine BoundaryBSM 
 
Subroutine Match_and_Run(delta0,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,              & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,               & 
& g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,               & 
& Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,              & 
& mu22,mus2,M122,M112,M222,mS2,mSp2,mGut,kont,WriteComment,niter)

Implicit None
Logical,Intent(in) :: WriteComment
Integer,Intent(inout) :: kont
Integer,Intent(in) :: niter
Real(dp) :: g_SM(62) 
Real(dp) :: delta0,deltaG0, gA(157), gB(157)
Real(dp) :: gC(160),  gD(160) 
Real(dp),Intent(out) :: mGUT
Complex(dp) :: Tad1Loop(6), lambda_SM, lambda_MZ 
Real(dp) :: comp(5), tanbQ, vev2 
Complex(dp) :: cplcFdFdUhhL(3,3,6),cplcFdFdUhhR(3,3,6),cplcFeFeUhhL(3,3,6),cplcFeFeUhhR(3,3,6),      & 
& cplcFuFuUhhL(3,3,6),cplcFuFuUhhR(3,3,6),cplcgWmgWmUhh(6),cplcgWpCgWpCUhh(6),           & 
& cplcgZgZUhh(6),cplUhhhhhh(6,6,6),cplUhhhhVZ(6,6),cplUhhHmcHm(6,2,2),cplUhhHmcVWm(6,2), & 
& cplUhhcVWmVWm(6),cplUhhVZVZ(6),cplUhhUhhhhhh(6,6,6,6),cplUhhUhhHmcHm(6,6,2,2),         & 
& cplUhhUhhcVWmVWm(6,6),cplUhhUhhVZVZ(6,6)

Real(dp),Intent(inout) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp),Intent(inout) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp),Intent(inout) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp),Intent(inout) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Real(dp) ::mass_new(17),mass_old(17),diff_m(17)
Real(dp) :: tz,dt,q,q2,mudim,mudimNew, vev, sinW2, mh_SM 
Logical::FoundResult, SignMassChangedSave 
Integer::j,n_tot, i_count, i1, i2 
Iname=Iname+1
NameOfUnit(Iname)='Match_and_Run'
kont=0
FoundResult= .False.
n_tot =1
mass_old(n_tot:n_tot+5) = Mhh
n_tot = n_tot + 6 
mass_old(n_tot:n_tot+1) = MHm
Write(*,*) "Calculating mass spectrum" 
CalculateOneLoopMassesSave = CalculateOneLoopMasses 
CalculateOneLoopMasses = .false. 
Lambda_MZ = 0.1_dp 
rMS_save=rMS 
Do j=1,niter 
Write(*,*) "  ", j,".-iteration" 
Write(ErrCan,*) "RGE Running ", j,".-iteration" 
rMS = 1._dp
rMS_SM = 1._dp
Call BoundarySM(j,Lambda_MZ,delta0,g_SM,kont)

rMS = rMS_save
g_SM_save = g_SM 
mudim=GetRenormalizationScale()
mudim=Max(mudim,mZ2)
tz=0.5_dp*Log(mZ2/mudim)
dt=tz/100._dp
g_SM(1) = Sqrt(5._dp/3._dp)*g_SM(1) 
Call odeint(g_SM,62,tz,0._dp,delta0,dt,0._dp,rge62_SM,kont)

g_SM(1) = Sqrt(3._dp/5._dp)*g_SM(1) 
If (kont.Ne.0) Then 
  Iname=Iname-1 
  Write(*,*) " Problem with RGE running. Errorcode:", kont 
  Call TerminateProgram 
End If 
Call BoundaryBSM(j,g_SM,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,            & 
& MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,delta0,gB,kont)

If (kont.Ne.0) Then
Iname=Iname-1
    Write(*,*) " Problem with boundary conditions at EW scale" 
    Call TerminateProgram
End If
 
mGUT = 1._dp 
Call GToParameters157(gB,g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,           & 
& Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,            & 
& mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2)


 
 ! --- Boundary conditions at SUSY-scale --- 
If (HighScaleModel.ne."LOW") Then 
 else If (HighScaleModel.Eq."LOW") Then 
 ! Setting values 
 vS = vSIN 
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
 epsU = epsUIN 
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
End if
 
 ! ----------------------- 
 

 
 ! --- Remove GUT-normalization of gauge couplings --- 
g1 = Sqrt(3._dp/5._dp)*g1 
! ----------------------- 
 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

If (kont.Ne.0) Then
Iname=Iname-1
    Write(*,*) " RGE running not possible. Errorcode:", kont 
    Call TerminateProgram
End If
Call OneLoopMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,           & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,kont)

 FirstRun = .False. 
If (kont.Ne.0) Then
Iname=Iname-1
    Write(*,*) " Problem in RGE Running. Errorcode:", kont 
    If (kont.eq.-12) Then 
      Write(*,*) "Stepsize underflow in rkqs (most likely due to a Landau pole) " 
    Else If ((kont.eq.-1).or.(kont.eq.-5).or.(kont.eq.-9)) Then 
      Write(*,*) "Stepsize smaller than minimum." 
    Else If ((kont.eq.-2).or.(kont.eq.-6).or.(kont.eq.-10)) Then 
      Write(*,*) "Running values larger 10^36." 
    Else If ((kont.eq.-3).or.(kont.eq.-7).or.(kont.eq.-11)) Then 
      Write(*,*) "Too many steps: Running has not converged." 
    Else If ((kont.eq.-4).or.(kont.eq.-8)) Then 
      Write(*,*) "No GUT scale found." 
End If
    Call TerminateProgram
End If
n_tot =1
mass_new(n_tot:n_tot+5) = Mhh
n_tot = n_tot + 6 
mass_new(n_tot:n_tot+1) = MHm
Where (mass_new.lt.1E-10_dp) mass_new=0._dp 
diff_m=Abs(mass_new-mass_old)
Where (Abs(mass_old).Gt.0._dp) diff_m=diff_m/Abs(mass_old)
deltag0=Maxval(diff_m)
Write(*,*) "  ... reached precision:", deltag0 
If (WriteComment) Write(*,*) "Sugra,Comparing",deltag0
If ((deltag0.Lt.delta0).And.(j.Gt.1)) Then! require at least two iterations
   FoundResult= .True.
If (SignOfMassChanged) Then
  If (.Not.IgnoreNegativeMasses) Then
  Write(*,*) " Mass spectrum converged, but negative mass squared present." 
   Call TerminateProgram 
  Else 
   SignOfMassChanged = .False. 
   kont = 0 
  End If
End If
If (SignOfMuChanged) Then
  If (.Not.IgnoreMuSignFlip) Then
  Write(*,*) " Mass spectrum converged, but negative |mu|^2 from tadpoles." 
   Call TerminateProgram 
  Else 
   SignOfMuChanged = .False. 
   kont = 0 
  End If
End If
Exit
Else
If (SignOfMassChanged) Then
  If ((j.ge.MinimalNumberIterations).And.(.Not.IgnoreNegativeMasses)) Then
  Write(*,*) " Still a negative mass squared after ",MinimalNumberIterations," iterations. Stop calculation. "  
   Call TerminateProgram 
  Else 
   SignOfMassChanged = .False. 
   kont = 0 
  End If
End If
If (SignOfMuChanged) Then
  If ((j.ge.MinimalNumberIterations).And.(.Not.IgnoreMuSignFlip)) Then
  Write(*,*) " Still a negative |mu|^2 after ",MinimalNumberIterations," iterations. Stop calculation. "  
   Call TerminateProgram 
  Else 
   SignOfMuChanged = .False. 
   kont = 0 
  End If
End If
mass_old=mass_new 
If (j.lt.niter) Then 
mudim=GetRenormalizationScale()
mudim=Max(mudim,mZ2)
tz=0.5_dp*Log(mZ2/mudim)
dt=tz/100._dp 
g_SM(1)=g_SM(1)*sqrt(5._dp/3._dp) 
g_SM(4)=Mhh2(1)/g_SM(62)**2 
Call odeint(g_SM,62,0._dp,tz,delta0,dt,0._dp,rge62_SM,kont) 
g_SM(1)=g_SM(1)/sqrt(5._dp/3._dp) 
Lambda_MZ=g_SM(4) 
If (.Not.UseFixedScale) Then 
Call SetRGEScale(mudimNew) 
UseFixedScale= .False. 
End If 
Else
  FoundIterativeSolution = .False. 
End if
End If
End Do
If (CalculateOneLoopMassesSave) Then 
CalculateOneLoopMasses =  CalculateOneLoopMassesSave 
Write(*,*) "Calculate loop corrected masses " 
Call OneLoopMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,           & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,kont)

If (((Calculate_mh_within_SM).and.(Mhh(2).gt.300._dp)).OR.(Force_mh_within_SM))Then
Write(*,*) "Calculate Higgs mass within effective SM " 
Call Get_mh_pole_SM(g_SM,mudim,delta0,Mhh2(1),mh_SM) 
Mhh2(1) = mh_SM**2 
Mhh(1) = mh_SM 
End if
If (MatchZWpoleMasses) newWscale=0._dp
MVwm_scale=smmwfit(Mhh(1),MFu(3),alphas_MZ)*(1._dp+0.5_dp*newWscale)
MVWm = MVwm_scale
MVWm2 = MVwm_scale**2
mW = MVwm_scale
mW2 = MVwm_scale**2
MHm(1)=MVWm
MHm2(1)=MVWm2
If (SignOfMassChanged) Then
  If (.Not.IgnoreNegativeMasses) Then
  Write(*,*) " Mass spectrum converged, but negative mass squared present." 
   Call TerminateProgram 
  Else 
   SignOfMassChanged = .False. 
   kont = 0 
  End If
End If
If (SignOfMuChanged) Then
  If (.Not.IgnoreMuSignFlip) Then
  Write(*,*) " Mass spectrum converged, but negative |mu|^2 from tadpoles." 
   Call TerminateProgram 
  Else 
   SignOfMuChanged = .False. 
   kont = 0 
  End If
End If
End if 
Iname=Iname-1
 
End Subroutine Match_and_Run
 
Subroutine FirstGuess(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,              & 
& MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,kont)

Implicit None 
Real(dp),Intent(out) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp),Intent(out) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Real(dp),Intent(out) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp),Intent(out) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Integer,Intent(inout)::kont
Integer :: i1, i2
Real(dp),Intent(inout) :: vd,vu,vS

Real(dp)::vev,vevs(2),vev2,mgut,mudim,mudimNew,sigma(2),cosW,cosW2,sinW2 
Complex(dp):: YeSM(3,3), YdSM(3,3), YuSM(3,3) 
Real(dp) :: k_fac, g1SM, g2SM, g3SM, vSM 
Real(dp), Parameter :: oo2pi=1._dp/(2._dp*pi),oo6pi=oo2pi/3._dp 
Real(dp):: gA(157), gB(157), Scale_Save 
Logical::TwoLoopRGE_save, UseFixedScale_save 
Iname=Iname+1 
NameOfUnit(Iname)="FirstGuess" 
If (HighScaleModel.eq."LOW") UseFixedGUTScale = .true. 

mW2=mZ2*(0.5_dp+Sqrt(0.25_dp-Alpha_Mz*pi/(sqrt2*G_F*mZ2)))
mW=Sqrt(mW2) 
cosW2=mw2/mZ2 
sinW2=1._dp-cosW2 
cosW=Sqrt(cosW2) 
 
g1SM=Sqrt(3._dp/5._dp)*Sqrt(20._dp*pi*alpha_mZ/(3._dp*(1._dp-sinW2))) 
g2SM=Sqrt(4._dp*pi*alpha_mZ/(sinW2)) 
g3SM=Sqrt(4._dp*pi*alphas_mZ) 
vSM=2._dp*mW/g2SM 
YeSM=0._dp 
YdSM=0._dp 
YuSM=0._dp 
Do i1=1,3 
  YeSM(i1,i1)=sqrt2*mf_L_mZ(i1)/vSM 
  If (i1.Eq.3) Then! top and bottom are special: 
  ! TanBeta Aufsummierung fehlt bei Yd!! 
  YuSM(i1,i1)=sqrt2*mf_U(i1)/vSM& 
    &*(1._dp-oo3pi*alphas_mZ*(5._dp+3._dp*Log(mZ2/mf_u2(3)))) 
  YdSM(i1,i1)=sqrt2*mf_D_mZ(i1)/(vSM * (1._dp + 0.015*tanb)) 
Else 
  YuSM(i1,i1)=sqrt2*mf_U_mZ(i1)/vSM 
  YdSM(i1,i1)=sqrt2*mf_D_mZ(i1)/vSM 
End If  
End Do 
If (GenerationMixing) Then 
  If (YukawaScheme.Eq.1) Then 
    YuSM=Matmul(Transpose(CKM),YuSM) 
  Else 
    YdSM=Matmul(Conjg(CKM),YdSM) 
  End If 
End If 
Call SetMatchingConditions(g1SM,g2SM,g3SM,YuSM,YdSM,YeSM,vSM,vd,vu,vS,g1,             & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,.False.)


 
 ! --- Boundary conditions at SUSY-scale --- 
If (HighScaleModel.ne."LOW") Then 
 else If (HighScaleModel.Eq."LOW") Then 
 ! Setting values 
 vS = vSIN 
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
 epsU = epsUIN 
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
End if
 
 ! ----------------------- 
 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,GenerationMixing,kont)

MVWm = mW 
MVWm2 = mW2 
MVZ = mZ 
MVZ2 = mZ2 
MFe(1:3) = mf_l 
MFe2(1:3) = mf_l**2 
MFu(1:3) = mf_u 
MFu2(1:3) = mf_u**2 
MFd(1:3) = mf_d 
MFd2(1:3) = mf_d**2 
Iname=Iname-1 
End subroutine FirstGuess 
End Module Boundaries_2HDMSCPV 
