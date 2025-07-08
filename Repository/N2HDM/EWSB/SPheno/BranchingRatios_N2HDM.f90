! -----------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.14.3 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223  
! (c) Florian Staub, 2013  
! ------------------------------------------------------------------------------  
! File created at 12:03 on 29.6.2021   
! ----------------------------------------------------------------------  
 
 
Module BranchingRatios_N2HDM 
 
Use Control 
Use Settings 
Use Couplings_N2HDM 
Use Model_Data_N2HDM 
Use LoopCouplings_N2HDM 
Use Fu3Decays_N2HDM 
Use Fe3Decays_N2HDM 
Use Fd3Decays_N2HDM 
Use TreeLevelDecays_N2HDM 


 Contains 
 
Subroutine CalculateBR(CTBD,fac3,epsI,deltaM,kont,MAh,MAh2,MFd,MFd2,MFe,              & 
& MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,              & 
& ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,               & 
& Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,gPFu,gTFu,BRFu,gPFe,gTFe,BRFe,               & 
& gPFd,gTFd,BRFd,gPhh,gThh,BRhh,gPAh,gTAh,BRAh,gPHm,gTHm,BRHm)

Real(dp), Intent(in) :: epsI, deltaM, fac3 
Integer, Intent(inout) :: kont 
Logical, Intent(in) :: CTBD 
Real(dp),Intent(inout) :: g1,g2,g3

Complex(dp),Intent(inout) :: Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu(3,3),Yd(3,3),Ye(3,3),M12,MS2,M112,M222

Real(dp),Intent(in) :: MAh(2),MAh2(2),MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(3),Mhh2(3),           & 
& MHm(2),MHm2(2),MVWm,MVWm2,MVZ,MVZ2,TW,v,ZA(2,2),ZH(3,3),ZP(2,2),ZZ(2,2),betaH

Complex(dp),Intent(in) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp),Intent(inout) :: vd,vu,vS

Real(dp),Intent(inout) :: gPFu(3,156),gTFu(3),BRFu(3,156),gPFe(3,156),gTFe(3),BRFe(3,156),gPFd(3,156),          & 
& gTFd(3),BRFd(3,156),gPhh(3,46),gThh(3),BRhh(3,46),gPAh(2,44),gTAh(2),BRAh(2,44),       & 
& gPHm(2,28),gTHm(2),BRHm(2,28)

Complex(dp) :: cplHiggsPP(3),cplHiggsGG(3),cplPseudoHiggsPP(2),cplPseudoHiggsGG(2),cplHiggsZZvirt(3),& 
& cplHiggsWWvirt(3)

Real(dp) :: gFuFucFdFd(3,3,3,3),gFuFucFeFe(3,3,3,3),gFuFucFuFu(3,3,3,3),gFuFdcFeFv(3,3,3,3),      & 
& gFuFucFvFv(3,3,3,3),gFeFecFdFd(3,3,3,3),gFeFecFeFe(3,3,3,3),gFeFecFuFu(3,3,3,3),       & 
& gFeFecFvFv(3,3,3,3),gFeFvcFuFd(3,3,3,3),gFdFdcFdFd(3,3,3,3),gFdFdcFeFe(3,3,3,3),       & 
& gFdFdcFuFu(3,3,3,3),gFdFdcFvFv(3,3,3,3),gFdFucFvFe(3,3,3,3)

Complex(dp) :: coup 
Real(dp) :: vev 
Real(dp) :: gTVZ,gTVWm

Iname = Iname + 1 
NameOfUnit(Iname) = 'CalculateBR'
 
Write(*,*) "Calculating branching ratios and decay widths" 
gTVWm = gamW 
gTVZ = gamZ 
gPFu = 0._dp 
gTFu = 0._dp 
BRFu = 0._dp 
Call FuTwoBodyDecay(-1,DeltaM,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,           & 
& MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,              & 
& betaH,g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,               & 
& M112,M222,vd,vu,vS,gPFu(:,1:21),gTFu,BRFu(:,1:21))

Do i1=1,3
gTFu(i1) =Sum(gPFu(i1,:)) 
If (gTFu(i1).Gt.0._dp) BRFu(i1,: ) =gPFu(i1,:)/gTFu(i1) 
End Do 
 

gPFe = 0._dp 
gTFe = 0._dp 
BRFe = 0._dp 
Call FeTwoBodyDecay(-1,DeltaM,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,           & 
& MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,              & 
& betaH,g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,               & 
& M112,M222,vd,vu,vS,gPFe(:,1:21),gTFe,BRFe(:,1:21))

Do i1=1,3
gTFe(i1) =Sum(gPFe(i1,:)) 
If (gTFe(i1).Gt.0._dp) BRFe(i1,: ) =gPFe(i1,:)/gTFe(i1) 
End Do 
 

gPFd = 0._dp 
gTFd = 0._dp 
BRFd = 0._dp 
Call FdTwoBodyDecay(-1,DeltaM,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,           & 
& MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,              & 
& betaH,g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,               & 
& M112,M222,vd,vu,vS,gPFd(:,1:21),gTFd,BRFd(:,1:21))

Do i1=1,3
gTFd(i1) =Sum(gPFd(i1,:)) 
If (gTFd(i1).Gt.0._dp) BRFd(i1,: ) =gPFd(i1,:)/gTFd(i1) 
End Do 
 

gPhh = 0._dp 
gThh = 0._dp 
BRhh = 0._dp 
Call hhTwoBodyDecay(-1,DeltaM,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,           & 
& MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,              & 
& betaH,g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,               & 
& M112,M222,vd,vu,vS,gPhh,gThh,BRhh)

Do i1=1,3
gThh(i1) =Sum(gPhh(i1,:)) 
If (gThh(i1).Gt.0._dp) BRhh(i1,: ) =gPhh(i1,:)/gThh(i1) 
End Do 
 

gPAh = 0._dp 
gTAh = 0._dp 
BRAh = 0._dp 
Call AhTwoBodyDecay(-1,DeltaM,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,           & 
& MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,              & 
& betaH,g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,               & 
& M112,M222,vd,vu,vS,gPAh,gTAh,BRAh)

Do i1=1,2
gTAh(i1) =Sum(gPAh(i1,:)) 
If (gTAh(i1).Gt.0._dp) BRAh(i1,: ) =gPAh(i1,:)/gTAh(i1) 
End Do 
 

! Set Goldstone Widhts 
gTAh(1)=gTVZ


gPHm = 0._dp 
gTHm = 0._dp 
BRHm = 0._dp 
Call HmTwoBodyDecay(-1,DeltaM,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,           & 
& MHm,MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,              & 
& betaH,g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,               & 
& M112,M222,vd,vu,vS,gPHm,gTHm,BRHm)

Do i1=1,2
gTHm(i1) =Sum(gPHm(i1,:)) 
If (gTHm(i1).Gt.0._dp) BRHm(i1,: ) =gPHm(i1,:)/gTHm(i1) 
End Do 
 

! Set Goldstone Widhts 
gTHm(1)=gTVWm


If (.Not.CTBD) Then 
If ((Enable3BDecaysF).and.(Calc3BodyDecay_Fu)) Then 
If (MaxVal(gTFu).Lt.MaxVal(fac3*Abs(MFu))) Then 
Call FuThreeBodyDecay(-1,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,            & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,betaH,            & 
& g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,           & 
& vd,vu,vS,gTAh,gThh,gTHm,gTVWm,gTVZ,gFuFucFdFd,gFuFucFeFe,gFuFucFuFu,gFuFdcFeFv,        & 
& gFuFucFvFv,epsI,deltaM,.False.,gTFu,gPFu(:,22:156),BRFu(:,22:156))

Else 
Call FuThreeBodyDecay(-1,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,            & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,betaH,            & 
& g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,           & 
& vd,vu,vS,gTAh,gThh,gTHm,gTVWm,gTVZ,gFuFucFdFd,gFuFucFeFe,gFuFucFuFu,gFuFdcFeFv,        & 
& gFuFucFvFv,epsI,deltaM,.True.,gTFu,gPFu(:,22:156),BRFu(:,22:156))

End If 
 
End If 
Else 
Call FuThreeBodyDecay(-1,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,            & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,betaH,            & 
& g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,           & 
& vd,vu,vS,gTAh,gThh,gTHm,gTVWm,gTVZ,gFuFucFdFd,gFuFucFeFe,gFuFucFuFu,gFuFdcFeFv,        & 
& gFuFucFvFv,epsI,deltaM,.False.,gTFu,gPFu(:,22:156),BRFu(:,22:156))

End If 
Do i1=1,3
gTFu(i1) =Sum(gPFu(i1,:)) 
If (gTFu(i1).Gt.0._dp) BRFu(i1,: ) =gPFu(i1,:)/gTFu(i1) 
End Do 
 

If (.Not.CTBD) Then 
If ((Enable3BDecaysF).and.(Calc3BodyDecay_Fe)) Then 
If (MaxVal(gTFe).Lt.MaxVal(fac3*Abs(MFe))) Then 
Call FeThreeBodyDecay(-1,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,            & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,betaH,            & 
& g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,           & 
& vd,vu,vS,gTAh,gThh,gTHm,gTVWm,gTVZ,gFeFecFdFd,gFeFecFeFe,gFeFecFuFu,gFeFecFvFv,        & 
& gFeFvcFuFd,epsI,deltaM,.False.,gTFe,gPFe(:,22:156),BRFe(:,22:156))

Else 
Call FeThreeBodyDecay(-1,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,            & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,betaH,            & 
& g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,           & 
& vd,vu,vS,gTAh,gThh,gTHm,gTVWm,gTVZ,gFeFecFdFd,gFeFecFeFe,gFeFecFuFu,gFeFecFvFv,        & 
& gFeFvcFuFd,epsI,deltaM,.True.,gTFe,gPFe(:,22:156),BRFe(:,22:156))

End If 
 
End If 
Else 
Call FeThreeBodyDecay(-1,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,            & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,betaH,            & 
& g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,           & 
& vd,vu,vS,gTAh,gThh,gTHm,gTVWm,gTVZ,gFeFecFdFd,gFeFecFeFe,gFeFecFuFu,gFeFecFvFv,        & 
& gFeFvcFuFd,epsI,deltaM,.False.,gTFe,gPFe(:,22:156),BRFe(:,22:156))

End If 
Do i1=1,3
gTFe(i1) =Sum(gPFe(i1,:)) 
If (gTFe(i1).Gt.0._dp) BRFe(i1,: ) =gPFe(i1,:)/gTFe(i1) 
End Do 
 

If (.Not.CTBD) Then 
If ((Enable3BDecaysF).and.(Calc3BodyDecay_Fd)) Then 
If (MaxVal(gTFd).Lt.MaxVal(fac3*Abs(MFd))) Then 
Call FdThreeBodyDecay(-1,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,            & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,betaH,            & 
& g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,           & 
& vd,vu,vS,gTAh,gThh,gTHm,gTVWm,gTVZ,gFdFdcFdFd,gFdFdcFeFe,gFdFdcFuFu,gFdFdcFvFv,        & 
& gFdFucFvFe,epsI,deltaM,.False.,gTFd,gPFd(:,22:156),BRFd(:,22:156))

Else 
Call FdThreeBodyDecay(-1,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,            & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,betaH,            & 
& g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,           & 
& vd,vu,vS,gTAh,gThh,gTHm,gTVWm,gTVZ,gFdFdcFdFd,gFdFdcFeFe,gFdFdcFuFu,gFdFdcFvFv,        & 
& gFdFucFvFe,epsI,deltaM,.True.,gTFd,gPFd(:,22:156),BRFd(:,22:156))

End If 
 
End If 
Else 
Call FdThreeBodyDecay(-1,MAh,MAh2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,            & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZA,ZH,ZP,ZW,ZZ,betaH,            & 
& g1,g2,g3,Lam5,Lam6,Lam7,Lam1,Lam3,Lam4,Lam8,Lam2,Yu,Yd,Ye,M12,MS2,M112,M222,           & 
& vd,vu,vS,gTAh,gThh,gTHm,gTVWm,gTVZ,gFdFdcFdFd,gFdFdcFeFe,gFdFdcFuFu,gFdFdcFvFv,        & 
& gFdFucFvFe,epsI,deltaM,.False.,gTFd,gPFd(:,22:156),BRFd(:,22:156))

End If 
Do i1=1,3
gTFd(i1) =Sum(gPFd(i1,:)) 
If (gTFd(i1).Gt.0._dp) BRFd(i1,: ) =gPFd(i1,:)/gTFd(i1) 
End Do 
 

! No 3-body decays for hh  
! No 3-body decays for Ah  
! No 3-body decays for Hm  
Iname = Iname - 1 
 
End Subroutine CalculateBR 
End Module BranchingRatios_N2HDM 
 