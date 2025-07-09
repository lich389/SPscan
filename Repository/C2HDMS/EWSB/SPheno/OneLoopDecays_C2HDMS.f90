! ------------------------------------------------------------------------------  
! This file was automatically created by SARAH version 4.15.4 
! SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223,
!           1405.1434, 1411.0675, 1503.03098, 1703.09237, 1706.05372, 1805.07306  
! (c) Florian Staub, Mark Goodsell and Werner Porod 2020  
! ------------------------------------------------------------------------------  
! File created at 17:41 on 9.7.2025   
! ----------------------------------------------------------------------  
 
 
Module OneLoopDecays_C2HDMS 
Use Couplings_C2HDMS 
Use CouplingsCT_C2HDMS 
Use Model_Data_C2HDMS 
Use LoopCouplings_C2HDMS 
Use LoopMasses_C2HDMS 
Use RGEs_C2HDMS 
Use Tadpoles_C2HDMS 
Use Kinematics 
Use CouplingsForDecays_C2HDMS 
 
Use Wrapper_OneLoopDecay_Fu_C2HDMS 
Use Wrapper_OneLoopDecay_Fe_C2HDMS 
Use Wrapper_OneLoopDecay_Fd_C2HDMS 
Use Wrapper_OneLoopDecay_hh_C2HDMS 
Use Wrapper_OneLoopDecay_Hm_C2HDMS 

 
Contains 
 
Subroutine getZCouplings(Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,              & 
& L3pp,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,            & 
& eta,zeta,vd,vu,vS,ZH,ZP,g1,g2,TW,g3,Yd,epsD,ZDL,ZDR,Yu,epsU,ZUL,ZUR,Ye,epsE,           & 
& ZEL,ZER,cplhhhhhh,cplhhHmcHm,cplhhhhhhhh,cplhhhhHmcHm,cplHmHmcHmcHm,cplhhhhVZ,         & 
& cplhhHmcVWm,cplhhcHmVWm,cplHmcHmVP,cplHmcHmVZ,cplhhcVWmVWm,cplhhVZVZ,cplHmcVWmVP,      & 
& cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhcVWmVWm,cplhhhhVZVZ,cplhhHmcVWmVP,          & 
& cplhhHmcVWmVZ,cplhhcHmVPVWm,cplhhcHmVWmVZ,cplHmcHmVPVP,cplHmcHmVPVZ,cplHmcHmcVWmVWm,   & 
& cplHmcHmVZVZ,cplVGVGVG,cplcVWmVPVWm,cplcVWmVWmVZ,cplcFdFdhhL,cplcFdFdhhR,              & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,               & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,           & 
& cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplcFeFvVWmL,cplcFeFvVWmR,           & 
& cplcFvFvVZL,cplcFvFvVZR,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,cplcVWmVPVPVWm1,        & 
& cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,       & 
& cplcVWmcVWmVWmVWm1,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmVWmVZVZ1,              & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcgGgGVG,cplcgWmgAVWm,cplcgWpCgAcVWm,cplcgWmgWmVP,   & 
& cplcgWmgWmVZ,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpCVP,cplcgAgWpCVWm,cplcgZgWpCVWm,   & 
& cplcgWpCgWpCVZ,cplcgWmgZVWm,cplcgWpCgZcVWm,cplcgZgAhh,cplcgWmgAHm,cplcgWpCgAcHm,       & 
& cplcgWmgWmhh,cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,cplcgWmgZHm,          & 
& cplcgWpCgZcHm,ZRUZH,ZRUZP,ZRUVd,ZRUUd,ZRUVu,ZRUUu,ZRUVe,ZRUUe,Zcplhhhhhh,              & 
& ZcplhhHmcHm,Zcplhhhhhhhh,ZcplhhhhHmcHm,ZcplHmHmcHmcHm,ZcplhhhhVZ,ZcplhhHmcVWm,         & 
& ZcplhhcHmVWm,ZcplHmcHmVP,ZcplHmcHmVZ,ZcplhhcVWmVWm,ZcplhhVZVZ,ZcplHmcVWmVP,            & 
& ZcplHmcVWmVZ,ZcplcHmVPVWm,ZcplcHmVWmVZ,ZcplhhhhcVWmVWm,ZcplhhhhVZVZ,ZcplhhHmcVWmVP,    & 
& ZcplhhHmcVWmVZ,ZcplhhcHmVPVWm,ZcplhhcHmVWmVZ,ZcplHmcHmVPVP,ZcplHmcHmVPVZ,              & 
& ZcplHmcHmcVWmVWm,ZcplHmcHmVZVZ,ZcplVGVGVG,ZcplcVWmVPVWm,ZcplcVWmVWmVZ,ZcplcFdFdhhL,    & 
& ZcplcFdFdhhR,ZcplcFuFdcHmL,ZcplcFuFdcHmR,ZcplcFeFehhL,ZcplcFeFehhR,ZcplcFvFecHmL,      & 
& ZcplcFvFecHmR,ZcplcFuFuhhL,ZcplcFuFuhhR,ZcplcFdFuHmL,ZcplcFdFuHmR,ZcplcFeFvHmL,        & 
& ZcplcFeFvHmR,ZcplcFdFdVGL,ZcplcFdFdVGR,ZcplcFdFdVPL,ZcplcFdFdVPR,ZcplcFdFdVZL,         & 
& ZcplcFdFdVZR,ZcplcFuFdcVWmL,ZcplcFuFdcVWmR,ZcplcFeFeVPL,ZcplcFeFeVPR,ZcplcFeFeVZL,     & 
& ZcplcFeFeVZR,ZcplcFvFecVWmL,ZcplcFvFecVWmR,ZcplcFuFuVGL,ZcplcFuFuVGR,ZcplcFuFuVPL,     & 
& ZcplcFuFuVPR,ZcplcFdFuVWmL,ZcplcFdFuVWmR,ZcplcFuFuVZL,ZcplcFuFuVZR,ZcplcFeFvVWmL,      & 
& ZcplcFeFvVWmR,ZcplcFvFvVZL,ZcplcFvFvVZR,ZcplVGVGVGVG1,ZcplVGVGVGVG2,ZcplVGVGVGVG3,     & 
& ZcplcVWmVPVPVWm1,ZcplcVWmVPVPVWm2,ZcplcVWmVPVPVWm3,ZcplcVWmVPVWmVZ1,ZcplcVWmVPVWmVZ2,  & 
& ZcplcVWmVPVWmVZ3,ZcplcVWmcVWmVWmVWm1,ZcplcVWmcVWmVWmVWm2,ZcplcVWmcVWmVWmVWm3,          & 
& ZcplcVWmVWmVZVZ1,ZcplcVWmVWmVZVZ2,ZcplcVWmVWmVZVZ3,ZcplcgGgGVG,ZcplcgWmgAVWm,          & 
& ZcplcgWpCgAcVWm,ZcplcgWmgWmVP,ZcplcgWmgWmVZ,ZcplcgAgWmcVWm,ZcplcgZgWmcVWm,             & 
& ZcplcgWpCgWpCVP,ZcplcgAgWpCVWm,ZcplcgZgWpCVWm,ZcplcgWpCgWpCVZ,ZcplcgWmgZVWm,           & 
& ZcplcgWpCgZcVWm,ZcplcgZgAhh,ZcplcgWmgAHm,ZcplcgWpCgAcHm,ZcplcgWmgWmhh,ZcplcgZgWmcHm,   & 
& ZcplcgWpCgWpChh,ZcplcgZgWpCHm,ZcplcgZgZhh,ZcplcgWmgZHm,ZcplcgWpCgZcHm)

Implicit None

Real(dp), Intent(in) :: Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,eta,zeta,vd,vu,vS,ZH(6,6),ZP(2,2),               & 
& g1,g2,TW,g3

Complex(dp), Intent(in) :: Lam6,Lam5,Lam7,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,            & 
& L2pp,Lam3p,Yd(3,3),epsD(3,3),ZDL(3,3),ZDR(3,3),Yu(3,3),epsU(3,3),ZUL(3,3),             & 
& ZUR(3,3),Ye(3,3),epsE(3,3),ZEL(3,3),ZER(3,3)

Complex(dp), Intent(in) :: cplhhhhhh(6,6,6),cplhhHmcHm(6,2,2),cplhhhhhhhh(6,6,6,6),cplhhhhHmcHm(6,6,2,2),        & 
& cplHmHmcHmcHm(2,2,2,2),cplhhhhVZ(6,6),cplhhHmcVWm(6,2),cplhhcHmVWm(6,2),               & 
& cplHmcHmVP(2,2),cplHmcHmVZ(2,2),cplhhcVWmVWm(6),cplhhVZVZ(6),cplHmcVWmVP(2),           & 
& cplHmcVWmVZ(2),cplcHmVPVWm(2),cplcHmVWmVZ(2),cplhhhhcVWmVWm(6,6),cplhhhhVZVZ(6,6),     & 
& cplhhHmcVWmVP(6,2),cplhhHmcVWmVZ(6,2),cplhhcHmVPVWm(6,2),cplhhcHmVWmVZ(6,2),           & 
& cplHmcHmVPVP(2,2),cplHmcHmVPVZ(2,2),cplHmcHmcVWmVWm(2,2),cplHmcHmVZVZ(2,2),            & 
& cplVGVGVG,cplcVWmVPVWm,cplcVWmVWmVZ,cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),             & 
& cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),         & 
& cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),         & 
& cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),           & 
& cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),  & 
& cplcFdFdVZR(3,3),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFeFeVPL(3,3),               & 
& cplcFeFeVPR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),& 
& cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFdFuVWmL(3,3), & 
& cplcFdFuVWmR(3,3),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),& 
& cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,              & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,       & 
& cplcVWmVPVWmVZ3,cplcVWmcVWmVWmVWm1,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,              & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcgGgGVG,cplcgWmgAVWm,               & 
& cplcgWpCgAcVWm,cplcgWmgWmVP,cplcgWmgWmVZ,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpCVP,   & 
& cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgWpCgWpCVZ,cplcgWmgZVWm,cplcgWpCgZcVWm,cplcgZgAhh(6),  & 
& cplcgWmgAHm(2),cplcgWpCgAcHm(2),cplcgWmgWmhh(6),cplcgZgWmcHm(2),cplcgWpCgWpChh(6),     & 
& cplcgZgWpCHm(2),cplcgZgZhh(6),cplcgWmgZHm(2),cplcgWpCgZcHm(2)

Complex(dp), Intent(in) :: ZRUZH(6,6),ZRUZP(2,2),ZRUVd(3,3),ZRUUd(3,3),ZRUVu(3,3),ZRUUu(3,3),ZRUVe(3,3),         & 
& ZRUUe(3,3)

Integer :: gt1, gt2
Complex(dp) :: Tempcplhhhhhh(6,6,6),TempcplhhHmcHm(6,2,2),Tempcplhhhhhhhh(6,6,6,6),TempcplhhhhHmcHm(6,6,2,2),& 
& TempcplHmHmcHmcHm(2,2,2,2),TempcplhhhhVZ(6,6),TempcplhhHmcVWm(6,2),TempcplhhcHmVWm(6,2),& 
& TempcplHmcHmVP(2,2),TempcplHmcHmVZ(2,2),TempcplhhcVWmVWm(6),TempcplhhVZVZ(6),          & 
& TempcplHmcVWmVP(2),TempcplHmcVWmVZ(2),TempcplcHmVPVWm(2),TempcplcHmVWmVZ(2),           & 
& TempcplhhhhcVWmVWm(6,6),TempcplhhhhVZVZ(6,6),TempcplhhHmcVWmVP(6,2),TempcplhhHmcVWmVZ(6,2),& 
& TempcplhhcHmVPVWm(6,2),TempcplhhcHmVWmVZ(6,2),TempcplHmcHmVPVP(2,2),TempcplHmcHmVPVZ(2,2),& 
& TempcplHmcHmcVWmVWm(2,2),TempcplHmcHmVZVZ(2,2),TempcplVGVGVG,TempcplcVWmVPVWm,         & 
& TempcplcVWmVWmVZ,TempcplcFdFdhhL(3,3,6),TempcplcFdFdhhR(3,3,6),TempcplcFuFdcHmL(3,3,2),& 
& TempcplcFuFdcHmR(3,3,2),TempcplcFeFehhL(3,3,6),TempcplcFeFehhR(3,3,6),TempcplcFvFecHmL(3,3,2),& 
& TempcplcFvFecHmR(3,3,2),TempcplcFuFuhhL(3,3,6),TempcplcFuFuhhR(3,3,6),TempcplcFdFuHmL(3,3,2),& 
& TempcplcFdFuHmR(3,3,2),TempcplcFeFvHmL(3,3,2),TempcplcFeFvHmR(3,3,2),TempcplcFdFdVGL(3,3),& 
& TempcplcFdFdVGR(3,3),TempcplcFdFdVPL(3,3),TempcplcFdFdVPR(3,3),TempcplcFdFdVZL(3,3),   & 
& TempcplcFdFdVZR(3,3),TempcplcFuFdcVWmL(3,3),TempcplcFuFdcVWmR(3,3),TempcplcFeFeVPL(3,3),& 
& TempcplcFeFeVPR(3,3),TempcplcFeFeVZL(3,3),TempcplcFeFeVZR(3,3),TempcplcFvFecVWmL(3,3), & 
& TempcplcFvFecVWmR(3,3),TempcplcFuFuVGL(3,3),TempcplcFuFuVGR(3,3),TempcplcFuFuVPL(3,3), & 
& TempcplcFuFuVPR(3,3),TempcplcFdFuVWmL(3,3),TempcplcFdFuVWmR(3,3),TempcplcFuFuVZL(3,3), & 
& TempcplcFuFuVZR(3,3),TempcplcFeFvVWmL(3,3),TempcplcFeFvVWmR(3,3),TempcplcFvFvVZL(3,3), & 
& TempcplcFvFvVZR(3,3),TempcplVGVGVGVG1,TempcplVGVGVGVG2,TempcplVGVGVGVG3,               & 
& TempcplcVWmVPVPVWm1,TempcplcVWmVPVPVWm2,TempcplcVWmVPVPVWm3,TempcplcVWmVPVWmVZ1,       & 
& TempcplcVWmVPVWmVZ2,TempcplcVWmVPVWmVZ3,TempcplcVWmcVWmVWmVWm1,TempcplcVWmcVWmVWmVWm2, & 
& TempcplcVWmcVWmVWmVWm3,TempcplcVWmVWmVZVZ1,TempcplcVWmVWmVZVZ2,TempcplcVWmVWmVZVZ3,    & 
& TempcplcgGgGVG,TempcplcgWmgAVWm,TempcplcgWpCgAcVWm,TempcplcgWmgWmVP,TempcplcgWmgWmVZ,  & 
& TempcplcgAgWmcVWm,TempcplcgZgWmcVWm,TempcplcgWpCgWpCVP,TempcplcgAgWpCVWm,              & 
& TempcplcgZgWpCVWm,TempcplcgWpCgWpCVZ,TempcplcgWmgZVWm,TempcplcgWpCgZcVWm,              & 
& TempcplcgZgAhh(6),TempcplcgWmgAHm(2),TempcplcgWpCgAcHm(2),TempcplcgWmgWmhh(6),         & 
& TempcplcgZgWmcHm(2),TempcplcgWpCgWpChh(6),TempcplcgZgWpCHm(2),TempcplcgZgZhh(6),       & 
& TempcplcgWmgZHm(2),TempcplcgWpCgZcHm(2)

Complex(dp), Intent(out) :: Zcplhhhhhh(6,6,6),ZcplhhHmcHm(6,2,2),Zcplhhhhhhhh(6,6,6,6),ZcplhhhhHmcHm(6,6,2,2),    & 
& ZcplHmHmcHmcHm(2,2,2,2),ZcplhhhhVZ(6,6),ZcplhhHmcVWm(6,2),ZcplhhcHmVWm(6,2),           & 
& ZcplHmcHmVP(2,2),ZcplHmcHmVZ(2,2),ZcplhhcVWmVWm(6),ZcplhhVZVZ(6),ZcplHmcVWmVP(2),      & 
& ZcplHmcVWmVZ(2),ZcplcHmVPVWm(2),ZcplcHmVWmVZ(2),ZcplhhhhcVWmVWm(6,6),ZcplhhhhVZVZ(6,6),& 
& ZcplhhHmcVWmVP(6,2),ZcplhhHmcVWmVZ(6,2),ZcplhhcHmVPVWm(6,2),ZcplhhcHmVWmVZ(6,2),       & 
& ZcplHmcHmVPVP(2,2),ZcplHmcHmVPVZ(2,2),ZcplHmcHmcVWmVWm(2,2),ZcplHmcHmVZVZ(2,2),        & 
& ZcplVGVGVG,ZcplcVWmVPVWm,ZcplcVWmVWmVZ,ZcplcFdFdhhL(3,3,6),ZcplcFdFdhhR(3,3,6),        & 
& ZcplcFuFdcHmL(3,3,2),ZcplcFuFdcHmR(3,3,2),ZcplcFeFehhL(3,3,6),ZcplcFeFehhR(3,3,6),     & 
& ZcplcFvFecHmL(3,3,2),ZcplcFvFecHmR(3,3,2),ZcplcFuFuhhL(3,3,6),ZcplcFuFuhhR(3,3,6),     & 
& ZcplcFdFuHmL(3,3,2),ZcplcFdFuHmR(3,3,2),ZcplcFeFvHmL(3,3,2),ZcplcFeFvHmR(3,3,2),       & 
& ZcplcFdFdVGL(3,3),ZcplcFdFdVGR(3,3),ZcplcFdFdVPL(3,3),ZcplcFdFdVPR(3,3),               & 
& ZcplcFdFdVZL(3,3),ZcplcFdFdVZR(3,3),ZcplcFuFdcVWmL(3,3),ZcplcFuFdcVWmR(3,3),           & 
& ZcplcFeFeVPL(3,3),ZcplcFeFeVPR(3,3),ZcplcFeFeVZL(3,3),ZcplcFeFeVZR(3,3),               & 
& ZcplcFvFecVWmL(3,3),ZcplcFvFecVWmR(3,3),ZcplcFuFuVGL(3,3),ZcplcFuFuVGR(3,3),           & 
& ZcplcFuFuVPL(3,3),ZcplcFuFuVPR(3,3),ZcplcFdFuVWmL(3,3),ZcplcFdFuVWmR(3,3),             & 
& ZcplcFuFuVZL(3,3),ZcplcFuFuVZR(3,3),ZcplcFeFvVWmL(3,3),ZcplcFeFvVWmR(3,3),             & 
& ZcplcFvFvVZL(3,3),ZcplcFvFvVZR(3,3),ZcplVGVGVGVG1,ZcplVGVGVGVG2,ZcplVGVGVGVG3,         & 
& ZcplcVWmVPVPVWm1,ZcplcVWmVPVPVWm2,ZcplcVWmVPVPVWm3,ZcplcVWmVPVWmVZ1,ZcplcVWmVPVWmVZ2,  & 
& ZcplcVWmVPVWmVZ3,ZcplcVWmcVWmVWmVWm1,ZcplcVWmcVWmVWmVWm2,ZcplcVWmcVWmVWmVWm3,          & 
& ZcplcVWmVWmVZVZ1,ZcplcVWmVWmVZVZ2,ZcplcVWmVWmVZVZ3,ZcplcgGgGVG,ZcplcgWmgAVWm,          & 
& ZcplcgWpCgAcVWm,ZcplcgWmgWmVP,ZcplcgWmgWmVZ,ZcplcgAgWmcVWm,ZcplcgZgWmcVWm,             & 
& ZcplcgWpCgWpCVP,ZcplcgAgWpCVWm,ZcplcgZgWpCVWm,ZcplcgWpCgWpCVZ,ZcplcgWmgZVWm,           & 
& ZcplcgWpCgZcVWm,ZcplcgZgAhh(6),ZcplcgWmgAHm(2),ZcplcgWpCgAcHm(2),ZcplcgWmgWmhh(6),     & 
& ZcplcgZgWmcHm(2),ZcplcgWpCgWpChh(6),ZcplcgZgWpCHm(2),ZcplcgZgZhh(6),ZcplcgWmgZHm(2),   & 
& ZcplcgWpCgZcHm(2)

Complex(dp) :: ZRUZHc(6, 6) 
Complex(dp) :: ZRUZPc(2, 2) 
Complex(dp) :: ZRUVdc(3, 3) 
Complex(dp) :: ZRUUdc(3, 3) 
Complex(dp) :: ZRUVuc(3, 3) 
Complex(dp) :: ZRUUuc(3, 3) 
Complex(dp) :: ZRUVec(3, 3) 
Complex(dp) :: ZRUUec(3, 3) 
ZRUZHc = Conjg(ZRUZH)
ZRUZPc = Conjg(ZRUZP)
ZRUVdc = Conjg(ZRUVd)
ZRUUdc = Conjg(ZRUUd)
ZRUVuc = Conjg(ZRUVu)
ZRUUuc = Conjg(ZRUUu)
ZRUVec = Conjg(ZRUVe)
ZRUUec = Conjg(ZRUUe)


 ! ## Zcplhhhhhh ## 
Zcplhhhhhh = 0._dp 
Tempcplhhhhhh = cplhhhhhh 
Do gt1=1,6
  Do gt2=1,6
Zcplhhhhhh(gt2,:,:) = Zcplhhhhhh(gt2,:,:) + ZRUZH(gt2,gt1)*Tempcplhhhhhh(gt1,:,:) 
 End Do 
End Do 
Tempcplhhhhhh = Zcplhhhhhh 
Zcplhhhhhh = 0._dp 
Do gt1=1,6
  Do gt2=1,6
Zcplhhhhhh(:,gt2,:) = Zcplhhhhhh(:,gt2,:) + ZRUZH(gt2,gt1)*Tempcplhhhhhh(:,gt1,:) 
 End Do 
End Do 
Tempcplhhhhhh = Zcplhhhhhh 
Zcplhhhhhh = 0._dp 
Do gt1=1,6
  Do gt2=1,6
Zcplhhhhhh(:,:,gt2) = Zcplhhhhhh(:,:,gt2) + ZRUZH(gt2,gt1)*Tempcplhhhhhh(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplhhHmcHm ## 
ZcplhhHmcHm = 0._dp 
TempcplhhHmcHm = cplhhHmcHm 
Do gt1=1,6
  Do gt2=1,6
ZcplhhHmcHm(gt2,:,:) = ZcplhhHmcHm(gt2,:,:) + ZRUZH(gt2,gt1)*TempcplhhHmcHm(gt1,:,:) 
 End Do 
End Do 
TempcplhhHmcHm = ZcplhhHmcHm 
ZcplhhHmcHm = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplhhHmcHm(:,gt2,:) = ZcplhhHmcHm(:,gt2,:) + ZRUZP(gt2,gt1)*TempcplhhHmcHm(:,gt1,:) 
 End Do 
End Do 
TempcplhhHmcHm = ZcplhhHmcHm 
ZcplhhHmcHm = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplhhHmcHm(:,:,gt2) = ZcplhhHmcHm(:,:,gt2) + ZRUZP(gt2,gt1)*TempcplhhHmcHm(:,:,gt1) 
 End Do 
End Do 


 ! ## Zcplhhhhhhhh ## 
Zcplhhhhhhhh = 0._dp 


 ! ## ZcplhhhhHmcHm ## 
ZcplhhhhHmcHm = 0._dp 


 ! ## ZcplHmHmcHmcHm ## 
ZcplHmHmcHmcHm = 0._dp 


 ! ## ZcplhhhhVZ ## 
ZcplhhhhVZ = 0._dp 
TempcplhhhhVZ = cplhhhhVZ 
Do gt1=1,6
  Do gt2=1,6
ZcplhhhhVZ(gt2,:) = ZcplhhhhVZ(gt2,:) + ZRUZH(gt2,gt1)*TempcplhhhhVZ(gt1,:) 
 End Do 
End Do 
TempcplhhhhVZ = ZcplhhhhVZ 
ZcplhhhhVZ = 0._dp 
Do gt1=1,6
  Do gt2=1,6
ZcplhhhhVZ(:,gt2) = ZcplhhhhVZ(:,gt2) + ZRUZH(gt2,gt1)*TempcplhhhhVZ(:,gt1) 
 End Do 
End Do 
TempcplhhhhVZ = ZcplhhhhVZ 


 ! ## ZcplhhHmcVWm ## 
ZcplhhHmcVWm = 0._dp 
TempcplhhHmcVWm = cplhhHmcVWm 
Do gt1=1,6
  Do gt2=1,6
ZcplhhHmcVWm(gt2,:) = ZcplhhHmcVWm(gt2,:) + ZRUZH(gt2,gt1)*TempcplhhHmcVWm(gt1,:) 
 End Do 
End Do 
TempcplhhHmcVWm = ZcplhhHmcVWm 
ZcplhhHmcVWm = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplhhHmcVWm(:,gt2) = ZcplhhHmcVWm(:,gt2) + ZRUZP(gt2,gt1)*TempcplhhHmcVWm(:,gt1) 
 End Do 
End Do 
TempcplhhHmcVWm = ZcplhhHmcVWm 


 ! ## ZcplhhcHmVWm ## 
ZcplhhcHmVWm = 0._dp 
TempcplhhcHmVWm = cplhhcHmVWm 
Do gt1=1,6
  Do gt2=1,6
ZcplhhcHmVWm(gt2,:) = ZcplhhcHmVWm(gt2,:) + ZRUZH(gt2,gt1)*TempcplhhcHmVWm(gt1,:) 
 End Do 
End Do 
TempcplhhcHmVWm = ZcplhhcHmVWm 
ZcplhhcHmVWm = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplhhcHmVWm(:,gt2) = ZcplhhcHmVWm(:,gt2) + ZRUZP(gt2,gt1)*TempcplhhcHmVWm(:,gt1) 
 End Do 
End Do 
TempcplhhcHmVWm = ZcplhhcHmVWm 


 ! ## ZcplHmcHmVP ## 
ZcplHmcHmVP = 0._dp 
TempcplHmcHmVP = cplHmcHmVP 
Do gt1=1,2
  Do gt2=1,2
ZcplHmcHmVP(gt2,:) = ZcplHmcHmVP(gt2,:) + ZRUZP(gt2,gt1)*TempcplHmcHmVP(gt1,:) 
 End Do 
End Do 
TempcplHmcHmVP = ZcplHmcHmVP 
ZcplHmcHmVP = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplHmcHmVP(:,gt2) = ZcplHmcHmVP(:,gt2) + ZRUZP(gt2,gt1)*TempcplHmcHmVP(:,gt1) 
 End Do 
End Do 
TempcplHmcHmVP = ZcplHmcHmVP 


 ! ## ZcplHmcHmVZ ## 
ZcplHmcHmVZ = 0._dp 
TempcplHmcHmVZ = cplHmcHmVZ 
Do gt1=1,2
  Do gt2=1,2
ZcplHmcHmVZ(gt2,:) = ZcplHmcHmVZ(gt2,:) + ZRUZP(gt2,gt1)*TempcplHmcHmVZ(gt1,:) 
 End Do 
End Do 
TempcplHmcHmVZ = ZcplHmcHmVZ 
ZcplHmcHmVZ = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplHmcHmVZ(:,gt2) = ZcplHmcHmVZ(:,gt2) + ZRUZP(gt2,gt1)*TempcplHmcHmVZ(:,gt1) 
 End Do 
End Do 
TempcplHmcHmVZ = ZcplHmcHmVZ 


 ! ## ZcplhhcVWmVWm ## 
ZcplhhcVWmVWm = 0._dp 
TempcplhhcVWmVWm = cplhhcVWmVWm 
Do gt1=1,6
  Do gt2=1,6
ZcplhhcVWmVWm(gt2) = ZcplhhcVWmVWm(gt2) + ZRUZH(gt2,gt1)*TempcplhhcVWmVWm(gt1) 
 End Do 
End Do 
TempcplhhcVWmVWm = ZcplhhcVWmVWm 


 ! ## ZcplhhVZVZ ## 
ZcplhhVZVZ = 0._dp 
TempcplhhVZVZ = cplhhVZVZ 
Do gt1=1,6
  Do gt2=1,6
ZcplhhVZVZ(gt2) = ZcplhhVZVZ(gt2) + ZRUZH(gt2,gt1)*TempcplhhVZVZ(gt1) 
 End Do 
End Do 
TempcplhhVZVZ = ZcplhhVZVZ 


 ! ## ZcplHmcVWmVP ## 
ZcplHmcVWmVP = 0._dp 
TempcplHmcVWmVP = cplHmcVWmVP 
Do gt1=1,2
  Do gt2=1,2
ZcplHmcVWmVP(gt2) = ZcplHmcVWmVP(gt2) + ZRUZP(gt2,gt1)*TempcplHmcVWmVP(gt1) 
 End Do 
End Do 
TempcplHmcVWmVP = ZcplHmcVWmVP 


 ! ## ZcplHmcVWmVZ ## 
ZcplHmcVWmVZ = 0._dp 
TempcplHmcVWmVZ = cplHmcVWmVZ 
Do gt1=1,2
  Do gt2=1,2
ZcplHmcVWmVZ(gt2) = ZcplHmcVWmVZ(gt2) + ZRUZP(gt2,gt1)*TempcplHmcVWmVZ(gt1) 
 End Do 
End Do 
TempcplHmcVWmVZ = ZcplHmcVWmVZ 


 ! ## ZcplcHmVPVWm ## 
ZcplcHmVPVWm = 0._dp 
TempcplcHmVPVWm = cplcHmVPVWm 
Do gt1=1,2
  Do gt2=1,2
ZcplcHmVPVWm(gt2) = ZcplcHmVPVWm(gt2) + ZRUZP(gt2,gt1)*TempcplcHmVPVWm(gt1) 
 End Do 
End Do 
TempcplcHmVPVWm = ZcplcHmVPVWm 


 ! ## ZcplcHmVWmVZ ## 
ZcplcHmVWmVZ = 0._dp 
TempcplcHmVWmVZ = cplcHmVWmVZ 
Do gt1=1,2
  Do gt2=1,2
ZcplcHmVWmVZ(gt2) = ZcplcHmVWmVZ(gt2) + ZRUZP(gt2,gt1)*TempcplcHmVWmVZ(gt1) 
 End Do 
End Do 
TempcplcHmVWmVZ = ZcplcHmVWmVZ 


 ! ## ZcplhhhhcVWmVWm ## 
ZcplhhhhcVWmVWm = 0._dp 


 ! ## ZcplhhhhVZVZ ## 
ZcplhhhhVZVZ = 0._dp 


 ! ## ZcplhhHmcVWmVP ## 
ZcplhhHmcVWmVP = 0._dp 


 ! ## ZcplhhHmcVWmVZ ## 
ZcplhhHmcVWmVZ = 0._dp 


 ! ## ZcplhhcHmVPVWm ## 
ZcplhhcHmVPVWm = 0._dp 


 ! ## ZcplhhcHmVWmVZ ## 
ZcplhhcHmVWmVZ = 0._dp 


 ! ## ZcplHmcHmVPVP ## 
ZcplHmcHmVPVP = 0._dp 


 ! ## ZcplHmcHmVPVZ ## 
ZcplHmcHmVPVZ = 0._dp 


 ! ## ZcplHmcHmcVWmVWm ## 
ZcplHmcHmcVWmVWm = 0._dp 


 ! ## ZcplHmcHmVZVZ ## 
ZcplHmcHmVZVZ = 0._dp 


 ! ## ZcplVGVGVG ## 
ZcplVGVGVG = 0._dp 
TempcplVGVGVG = cplVGVGVG 
ZcplVGVGVG = TempcplVGVGVG 


 ! ## ZcplcVWmVPVWm ## 
ZcplcVWmVPVWm = 0._dp 
TempcplcVWmVPVWm = cplcVWmVPVWm 
ZcplcVWmVPVWm = TempcplcVWmVPVWm 


 ! ## ZcplcVWmVWmVZ ## 
ZcplcVWmVWmVZ = 0._dp 
TempcplcVWmVWmVZ = cplcVWmVWmVZ 
ZcplcVWmVWmVZ = TempcplcVWmVWmVZ 


 ! ## ZcplcFdFdhhL ## 
ZcplcFdFdhhL = 0._dp 
TempcplcFdFdhhL = cplcFdFdhhL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdhhL(gt2,:,:) = ZcplcFdFdhhL(gt2,:,:) + ZRUUd(gt2,gt1)*TempcplcFdFdhhL(gt1,:,:) 
 End Do 
End Do 
TempcplcFdFdhhL = ZcplcFdFdhhL 
ZcplcFdFdhhL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdhhL(:,gt2,:) = ZcplcFdFdhhL(:,gt2,:) + ZRUVd(gt2,gt1)*TempcplcFdFdhhL(:,gt1,:) 
 End Do 
End Do 
TempcplcFdFdhhL = ZcplcFdFdhhL 
ZcplcFdFdhhL = 0._dp 
Do gt1=1,6
  Do gt2=1,6
ZcplcFdFdhhL(:,:,gt2) = ZcplcFdFdhhL(:,:,gt2) + ZRUZH(gt2,gt1)*TempcplcFdFdhhL(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFdFdhhR ## 
ZcplcFdFdhhR = 0._dp 
TempcplcFdFdhhR = cplcFdFdhhR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdhhR(gt2,:,:) = ZcplcFdFdhhR(gt2,:,:) + ZRUVdc(gt2,gt1)*TempcplcFdFdhhR(gt1,:,:) 
 End Do 
End Do 
TempcplcFdFdhhR = ZcplcFdFdhhR 
ZcplcFdFdhhR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdhhR(:,gt2,:) = ZcplcFdFdhhR(:,gt2,:) + ZRUUdc(gt2,gt1)*TempcplcFdFdhhR(:,gt1,:) 
 End Do 
End Do 
TempcplcFdFdhhR = ZcplcFdFdhhR 
ZcplcFdFdhhR = 0._dp 
Do gt1=1,6
  Do gt2=1,6
ZcplcFdFdhhR(:,:,gt2) = ZcplcFdFdhhR(:,:,gt2) + ZRUZH(gt2,gt1)*TempcplcFdFdhhR(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFuFdcHmL ## 
ZcplcFuFdcHmL = 0._dp 
TempcplcFuFdcHmL = cplcFuFdcHmL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFdcHmL(gt2,:,:) = ZcplcFuFdcHmL(gt2,:,:) + ZRUUu(gt2,gt1)*TempcplcFuFdcHmL(gt1,:,:) 
 End Do 
End Do 
TempcplcFuFdcHmL = ZcplcFuFdcHmL 
ZcplcFuFdcHmL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFdcHmL(:,gt2,:) = ZcplcFuFdcHmL(:,gt2,:) + ZRUVd(gt2,gt1)*TempcplcFuFdcHmL(:,gt1,:) 
 End Do 
End Do 
TempcplcFuFdcHmL = ZcplcFuFdcHmL 
ZcplcFuFdcHmL = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcFuFdcHmL(:,:,gt2) = ZcplcFuFdcHmL(:,:,gt2) + ZRUZP(gt2,gt1)*TempcplcFuFdcHmL(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFuFdcHmR ## 
ZcplcFuFdcHmR = 0._dp 
TempcplcFuFdcHmR = cplcFuFdcHmR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFdcHmR(gt2,:,:) = ZcplcFuFdcHmR(gt2,:,:) + ZRUVuc(gt2,gt1)*TempcplcFuFdcHmR(gt1,:,:) 
 End Do 
End Do 
TempcplcFuFdcHmR = ZcplcFuFdcHmR 
ZcplcFuFdcHmR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFdcHmR(:,gt2,:) = ZcplcFuFdcHmR(:,gt2,:) + ZRUUdc(gt2,gt1)*TempcplcFuFdcHmR(:,gt1,:) 
 End Do 
End Do 
TempcplcFuFdcHmR = ZcplcFuFdcHmR 
ZcplcFuFdcHmR = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcFuFdcHmR(:,:,gt2) = ZcplcFuFdcHmR(:,:,gt2) + ZRUZP(gt2,gt1)*TempcplcFuFdcHmR(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFeFehhL ## 
ZcplcFeFehhL = 0._dp 
TempcplcFeFehhL = cplcFeFehhL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFehhL(gt2,:,:) = ZcplcFeFehhL(gt2,:,:) + ZRUUe(gt2,gt1)*TempcplcFeFehhL(gt1,:,:) 
 End Do 
End Do 
TempcplcFeFehhL = ZcplcFeFehhL 
ZcplcFeFehhL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFehhL(:,gt2,:) = ZcplcFeFehhL(:,gt2,:) + ZRUVe(gt2,gt1)*TempcplcFeFehhL(:,gt1,:) 
 End Do 
End Do 
TempcplcFeFehhL = ZcplcFeFehhL 
ZcplcFeFehhL = 0._dp 
Do gt1=1,6
  Do gt2=1,6
ZcplcFeFehhL(:,:,gt2) = ZcplcFeFehhL(:,:,gt2) + ZRUZH(gt2,gt1)*TempcplcFeFehhL(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFeFehhR ## 
ZcplcFeFehhR = 0._dp 
TempcplcFeFehhR = cplcFeFehhR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFehhR(gt2,:,:) = ZcplcFeFehhR(gt2,:,:) + ZRUVec(gt2,gt1)*TempcplcFeFehhR(gt1,:,:) 
 End Do 
End Do 
TempcplcFeFehhR = ZcplcFeFehhR 
ZcplcFeFehhR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFehhR(:,gt2,:) = ZcplcFeFehhR(:,gt2,:) + ZRUUec(gt2,gt1)*TempcplcFeFehhR(:,gt1,:) 
 End Do 
End Do 
TempcplcFeFehhR = ZcplcFeFehhR 
ZcplcFeFehhR = 0._dp 
Do gt1=1,6
  Do gt2=1,6
ZcplcFeFehhR(:,:,gt2) = ZcplcFeFehhR(:,:,gt2) + ZRUZH(gt2,gt1)*TempcplcFeFehhR(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFvFecHmL ## 
ZcplcFvFecHmL = 0._dp 
TempcplcFvFecHmL = cplcFvFecHmL 
ZcplcFvFecHmL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFvFecHmL(:,gt2,:) = ZcplcFvFecHmL(:,gt2,:) + ZRUVe(gt2,gt1)*TempcplcFvFecHmL(:,gt1,:) 
 End Do 
End Do 
TempcplcFvFecHmL = ZcplcFvFecHmL 
ZcplcFvFecHmL = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcFvFecHmL(:,:,gt2) = ZcplcFvFecHmL(:,:,gt2) + ZRUZP(gt2,gt1)*TempcplcFvFecHmL(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFvFecHmR ## 
ZcplcFvFecHmR = 0._dp 
TempcplcFvFecHmR = cplcFvFecHmR 
ZcplcFvFecHmR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFvFecHmR(:,gt2,:) = ZcplcFvFecHmR(:,gt2,:) + ZRUUec(gt2,gt1)*TempcplcFvFecHmR(:,gt1,:) 
 End Do 
End Do 
TempcplcFvFecHmR = ZcplcFvFecHmR 
ZcplcFvFecHmR = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcFvFecHmR(:,:,gt2) = ZcplcFvFecHmR(:,:,gt2) + ZRUZP(gt2,gt1)*TempcplcFvFecHmR(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFuFuhhL ## 
ZcplcFuFuhhL = 0._dp 
TempcplcFuFuhhL = cplcFuFuhhL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuhhL(gt2,:,:) = ZcplcFuFuhhL(gt2,:,:) + ZRUUu(gt2,gt1)*TempcplcFuFuhhL(gt1,:,:) 
 End Do 
End Do 
TempcplcFuFuhhL = ZcplcFuFuhhL 
ZcplcFuFuhhL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuhhL(:,gt2,:) = ZcplcFuFuhhL(:,gt2,:) + ZRUVu(gt2,gt1)*TempcplcFuFuhhL(:,gt1,:) 
 End Do 
End Do 
TempcplcFuFuhhL = ZcplcFuFuhhL 
ZcplcFuFuhhL = 0._dp 
Do gt1=1,6
  Do gt2=1,6
ZcplcFuFuhhL(:,:,gt2) = ZcplcFuFuhhL(:,:,gt2) + ZRUZH(gt2,gt1)*TempcplcFuFuhhL(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFuFuhhR ## 
ZcplcFuFuhhR = 0._dp 
TempcplcFuFuhhR = cplcFuFuhhR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuhhR(gt2,:,:) = ZcplcFuFuhhR(gt2,:,:) + ZRUVuc(gt2,gt1)*TempcplcFuFuhhR(gt1,:,:) 
 End Do 
End Do 
TempcplcFuFuhhR = ZcplcFuFuhhR 
ZcplcFuFuhhR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuhhR(:,gt2,:) = ZcplcFuFuhhR(:,gt2,:) + ZRUUuc(gt2,gt1)*TempcplcFuFuhhR(:,gt1,:) 
 End Do 
End Do 
TempcplcFuFuhhR = ZcplcFuFuhhR 
ZcplcFuFuhhR = 0._dp 
Do gt1=1,6
  Do gt2=1,6
ZcplcFuFuhhR(:,:,gt2) = ZcplcFuFuhhR(:,:,gt2) + ZRUZH(gt2,gt1)*TempcplcFuFuhhR(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFdFuHmL ## 
ZcplcFdFuHmL = 0._dp 
TempcplcFdFuHmL = cplcFdFuHmL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFuHmL(gt2,:,:) = ZcplcFdFuHmL(gt2,:,:) + ZRUUd(gt2,gt1)*TempcplcFdFuHmL(gt1,:,:) 
 End Do 
End Do 
TempcplcFdFuHmL = ZcplcFdFuHmL 
ZcplcFdFuHmL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFuHmL(:,gt2,:) = ZcplcFdFuHmL(:,gt2,:) + ZRUVu(gt2,gt1)*TempcplcFdFuHmL(:,gt1,:) 
 End Do 
End Do 
TempcplcFdFuHmL = ZcplcFdFuHmL 
ZcplcFdFuHmL = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcFdFuHmL(:,:,gt2) = ZcplcFdFuHmL(:,:,gt2) + ZRUZP(gt2,gt1)*TempcplcFdFuHmL(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFdFuHmR ## 
ZcplcFdFuHmR = 0._dp 
TempcplcFdFuHmR = cplcFdFuHmR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFuHmR(gt2,:,:) = ZcplcFdFuHmR(gt2,:,:) + ZRUVdc(gt2,gt1)*TempcplcFdFuHmR(gt1,:,:) 
 End Do 
End Do 
TempcplcFdFuHmR = ZcplcFdFuHmR 
ZcplcFdFuHmR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFuHmR(:,gt2,:) = ZcplcFdFuHmR(:,gt2,:) + ZRUUuc(gt2,gt1)*TempcplcFdFuHmR(:,gt1,:) 
 End Do 
End Do 
TempcplcFdFuHmR = ZcplcFdFuHmR 
ZcplcFdFuHmR = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcFdFuHmR(:,:,gt2) = ZcplcFdFuHmR(:,:,gt2) + ZRUZP(gt2,gt1)*TempcplcFdFuHmR(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFeFvHmL ## 
ZcplcFeFvHmL = 0._dp 
TempcplcFeFvHmL = cplcFeFvHmL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFvHmL(gt2,:,:) = ZcplcFeFvHmL(gt2,:,:) + ZRUUe(gt2,gt1)*TempcplcFeFvHmL(gt1,:,:) 
 End Do 
End Do 
TempcplcFeFvHmL = ZcplcFeFvHmL 
ZcplcFeFvHmL = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcFeFvHmL(:,:,gt2) = ZcplcFeFvHmL(:,:,gt2) + ZRUZP(gt2,gt1)*TempcplcFeFvHmL(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFeFvHmR ## 
ZcplcFeFvHmR = 0._dp 
TempcplcFeFvHmR = cplcFeFvHmR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFvHmR(gt2,:,:) = ZcplcFeFvHmR(gt2,:,:) + ZRUVec(gt2,gt1)*TempcplcFeFvHmR(gt1,:,:) 
 End Do 
End Do 
TempcplcFeFvHmR = ZcplcFeFvHmR 
ZcplcFeFvHmR = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcFeFvHmR(:,:,gt2) = ZcplcFeFvHmR(:,:,gt2) + ZRUZP(gt2,gt1)*TempcplcFeFvHmR(:,:,gt1) 
 End Do 
End Do 


 ! ## ZcplcFdFdVGL ## 
ZcplcFdFdVGL = 0._dp 
TempcplcFdFdVGL = cplcFdFdVGL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVGL(gt2,:) = ZcplcFdFdVGL(gt2,:) + ZRUVdc(gt2,gt1)*TempcplcFdFdVGL(gt1,:) 
 End Do 
End Do 
TempcplcFdFdVGL = ZcplcFdFdVGL 
ZcplcFdFdVGL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVGL(:,gt2) = ZcplcFdFdVGL(:,gt2) + ZRUVd(gt2,gt1)*TempcplcFdFdVGL(:,gt1) 
 End Do 
End Do 
TempcplcFdFdVGL = ZcplcFdFdVGL 


 ! ## ZcplcFdFdVGR ## 
ZcplcFdFdVGR = 0._dp 
TempcplcFdFdVGR = cplcFdFdVGR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVGR(gt2,:) = ZcplcFdFdVGR(gt2,:) + ZRUUd(gt2,gt1)*TempcplcFdFdVGR(gt1,:) 
 End Do 
End Do 
TempcplcFdFdVGR = ZcplcFdFdVGR 
ZcplcFdFdVGR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVGR(:,gt2) = ZcplcFdFdVGR(:,gt2) + ZRUUdc(gt2,gt1)*TempcplcFdFdVGR(:,gt1) 
 End Do 
End Do 
TempcplcFdFdVGR = ZcplcFdFdVGR 


 ! ## ZcplcFdFdVPL ## 
ZcplcFdFdVPL = 0._dp 
TempcplcFdFdVPL = cplcFdFdVPL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVPL(gt2,:) = ZcplcFdFdVPL(gt2,:) + ZRUVdc(gt2,gt1)*TempcplcFdFdVPL(gt1,:) 
 End Do 
End Do 
TempcplcFdFdVPL = ZcplcFdFdVPL 
ZcplcFdFdVPL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVPL(:,gt2) = ZcplcFdFdVPL(:,gt2) + ZRUVd(gt2,gt1)*TempcplcFdFdVPL(:,gt1) 
 End Do 
End Do 
TempcplcFdFdVPL = ZcplcFdFdVPL 


 ! ## ZcplcFdFdVPR ## 
ZcplcFdFdVPR = 0._dp 
TempcplcFdFdVPR = cplcFdFdVPR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVPR(gt2,:) = ZcplcFdFdVPR(gt2,:) + ZRUUd(gt2,gt1)*TempcplcFdFdVPR(gt1,:) 
 End Do 
End Do 
TempcplcFdFdVPR = ZcplcFdFdVPR 
ZcplcFdFdVPR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVPR(:,gt2) = ZcplcFdFdVPR(:,gt2) + ZRUUdc(gt2,gt1)*TempcplcFdFdVPR(:,gt1) 
 End Do 
End Do 
TempcplcFdFdVPR = ZcplcFdFdVPR 


 ! ## ZcplcFdFdVZL ## 
ZcplcFdFdVZL = 0._dp 
TempcplcFdFdVZL = cplcFdFdVZL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVZL(gt2,:) = ZcplcFdFdVZL(gt2,:) + ZRUVdc(gt2,gt1)*TempcplcFdFdVZL(gt1,:) 
 End Do 
End Do 
TempcplcFdFdVZL = ZcplcFdFdVZL 
ZcplcFdFdVZL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVZL(:,gt2) = ZcplcFdFdVZL(:,gt2) + ZRUVd(gt2,gt1)*TempcplcFdFdVZL(:,gt1) 
 End Do 
End Do 
TempcplcFdFdVZL = ZcplcFdFdVZL 


 ! ## ZcplcFdFdVZR ## 
ZcplcFdFdVZR = 0._dp 
TempcplcFdFdVZR = cplcFdFdVZR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVZR(gt2,:) = ZcplcFdFdVZR(gt2,:) + ZRUUd(gt2,gt1)*TempcplcFdFdVZR(gt1,:) 
 End Do 
End Do 
TempcplcFdFdVZR = ZcplcFdFdVZR 
ZcplcFdFdVZR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFdVZR(:,gt2) = ZcplcFdFdVZR(:,gt2) + ZRUUdc(gt2,gt1)*TempcplcFdFdVZR(:,gt1) 
 End Do 
End Do 
TempcplcFdFdVZR = ZcplcFdFdVZR 


 ! ## ZcplcFuFdcVWmL ## 
ZcplcFuFdcVWmL = 0._dp 
TempcplcFuFdcVWmL = cplcFuFdcVWmL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFdcVWmL(gt2,:) = ZcplcFuFdcVWmL(gt2,:) + ZRUVuc(gt2,gt1)*TempcplcFuFdcVWmL(gt1,:) 
 End Do 
End Do 
TempcplcFuFdcVWmL = ZcplcFuFdcVWmL 
ZcplcFuFdcVWmL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFdcVWmL(:,gt2) = ZcplcFuFdcVWmL(:,gt2) + ZRUVd(gt2,gt1)*TempcplcFuFdcVWmL(:,gt1) 
 End Do 
End Do 
TempcplcFuFdcVWmL = ZcplcFuFdcVWmL 


 ! ## ZcplcFuFdcVWmR ## 
ZcplcFuFdcVWmR = 0._dp 
TempcplcFuFdcVWmR = cplcFuFdcVWmR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFdcVWmR(gt2,:) = ZcplcFuFdcVWmR(gt2,:) + ZRUUu(gt2,gt1)*TempcplcFuFdcVWmR(gt1,:) 
 End Do 
End Do 
TempcplcFuFdcVWmR = ZcplcFuFdcVWmR 
ZcplcFuFdcVWmR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFdcVWmR(:,gt2) = ZcplcFuFdcVWmR(:,gt2) + ZRUUdc(gt2,gt1)*TempcplcFuFdcVWmR(:,gt1) 
 End Do 
End Do 
TempcplcFuFdcVWmR = ZcplcFuFdcVWmR 


 ! ## ZcplcFeFeVPL ## 
ZcplcFeFeVPL = 0._dp 
TempcplcFeFeVPL = cplcFeFeVPL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFeVPL(gt2,:) = ZcplcFeFeVPL(gt2,:) + ZRUVec(gt2,gt1)*TempcplcFeFeVPL(gt1,:) 
 End Do 
End Do 
TempcplcFeFeVPL = ZcplcFeFeVPL 
ZcplcFeFeVPL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFeVPL(:,gt2) = ZcplcFeFeVPL(:,gt2) + ZRUVe(gt2,gt1)*TempcplcFeFeVPL(:,gt1) 
 End Do 
End Do 
TempcplcFeFeVPL = ZcplcFeFeVPL 


 ! ## ZcplcFeFeVPR ## 
ZcplcFeFeVPR = 0._dp 
TempcplcFeFeVPR = cplcFeFeVPR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFeVPR(gt2,:) = ZcplcFeFeVPR(gt2,:) + ZRUUe(gt2,gt1)*TempcplcFeFeVPR(gt1,:) 
 End Do 
End Do 
TempcplcFeFeVPR = ZcplcFeFeVPR 
ZcplcFeFeVPR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFeVPR(:,gt2) = ZcplcFeFeVPR(:,gt2) + ZRUUec(gt2,gt1)*TempcplcFeFeVPR(:,gt1) 
 End Do 
End Do 
TempcplcFeFeVPR = ZcplcFeFeVPR 


 ! ## ZcplcFeFeVZL ## 
ZcplcFeFeVZL = 0._dp 
TempcplcFeFeVZL = cplcFeFeVZL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFeVZL(gt2,:) = ZcplcFeFeVZL(gt2,:) + ZRUVec(gt2,gt1)*TempcplcFeFeVZL(gt1,:) 
 End Do 
End Do 
TempcplcFeFeVZL = ZcplcFeFeVZL 
ZcplcFeFeVZL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFeVZL(:,gt2) = ZcplcFeFeVZL(:,gt2) + ZRUVe(gt2,gt1)*TempcplcFeFeVZL(:,gt1) 
 End Do 
End Do 
TempcplcFeFeVZL = ZcplcFeFeVZL 


 ! ## ZcplcFeFeVZR ## 
ZcplcFeFeVZR = 0._dp 
TempcplcFeFeVZR = cplcFeFeVZR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFeVZR(gt2,:) = ZcplcFeFeVZR(gt2,:) + ZRUUe(gt2,gt1)*TempcplcFeFeVZR(gt1,:) 
 End Do 
End Do 
TempcplcFeFeVZR = ZcplcFeFeVZR 
ZcplcFeFeVZR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFeVZR(:,gt2) = ZcplcFeFeVZR(:,gt2) + ZRUUec(gt2,gt1)*TempcplcFeFeVZR(:,gt1) 
 End Do 
End Do 
TempcplcFeFeVZR = ZcplcFeFeVZR 


 ! ## ZcplcFvFecVWmL ## 
ZcplcFvFecVWmL = 0._dp 
TempcplcFvFecVWmL = cplcFvFecVWmL 
ZcplcFvFecVWmL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFvFecVWmL(:,gt2) = ZcplcFvFecVWmL(:,gt2) + ZRUVe(gt2,gt1)*TempcplcFvFecVWmL(:,gt1) 
 End Do 
End Do 
TempcplcFvFecVWmL = ZcplcFvFecVWmL 


 ! ## ZcplcFvFecVWmR ## 
ZcplcFvFecVWmR = 0._dp 
TempcplcFvFecVWmR = cplcFvFecVWmR 
ZcplcFvFecVWmR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFvFecVWmR(:,gt2) = ZcplcFvFecVWmR(:,gt2) + ZRUUec(gt2,gt1)*TempcplcFvFecVWmR(:,gt1) 
 End Do 
End Do 
TempcplcFvFecVWmR = ZcplcFvFecVWmR 


 ! ## ZcplcFuFuVGL ## 
ZcplcFuFuVGL = 0._dp 
TempcplcFuFuVGL = cplcFuFuVGL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVGL(gt2,:) = ZcplcFuFuVGL(gt2,:) + ZRUVuc(gt2,gt1)*TempcplcFuFuVGL(gt1,:) 
 End Do 
End Do 
TempcplcFuFuVGL = ZcplcFuFuVGL 
ZcplcFuFuVGL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVGL(:,gt2) = ZcplcFuFuVGL(:,gt2) + ZRUVu(gt2,gt1)*TempcplcFuFuVGL(:,gt1) 
 End Do 
End Do 
TempcplcFuFuVGL = ZcplcFuFuVGL 


 ! ## ZcplcFuFuVGR ## 
ZcplcFuFuVGR = 0._dp 
TempcplcFuFuVGR = cplcFuFuVGR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVGR(gt2,:) = ZcplcFuFuVGR(gt2,:) + ZRUUu(gt2,gt1)*TempcplcFuFuVGR(gt1,:) 
 End Do 
End Do 
TempcplcFuFuVGR = ZcplcFuFuVGR 
ZcplcFuFuVGR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVGR(:,gt2) = ZcplcFuFuVGR(:,gt2) + ZRUUuc(gt2,gt1)*TempcplcFuFuVGR(:,gt1) 
 End Do 
End Do 
TempcplcFuFuVGR = ZcplcFuFuVGR 


 ! ## ZcplcFuFuVPL ## 
ZcplcFuFuVPL = 0._dp 
TempcplcFuFuVPL = cplcFuFuVPL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVPL(gt2,:) = ZcplcFuFuVPL(gt2,:) + ZRUVuc(gt2,gt1)*TempcplcFuFuVPL(gt1,:) 
 End Do 
End Do 
TempcplcFuFuVPL = ZcplcFuFuVPL 
ZcplcFuFuVPL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVPL(:,gt2) = ZcplcFuFuVPL(:,gt2) + ZRUVu(gt2,gt1)*TempcplcFuFuVPL(:,gt1) 
 End Do 
End Do 
TempcplcFuFuVPL = ZcplcFuFuVPL 


 ! ## ZcplcFuFuVPR ## 
ZcplcFuFuVPR = 0._dp 
TempcplcFuFuVPR = cplcFuFuVPR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVPR(gt2,:) = ZcplcFuFuVPR(gt2,:) + ZRUUu(gt2,gt1)*TempcplcFuFuVPR(gt1,:) 
 End Do 
End Do 
TempcplcFuFuVPR = ZcplcFuFuVPR 
ZcplcFuFuVPR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVPR(:,gt2) = ZcplcFuFuVPR(:,gt2) + ZRUUuc(gt2,gt1)*TempcplcFuFuVPR(:,gt1) 
 End Do 
End Do 
TempcplcFuFuVPR = ZcplcFuFuVPR 


 ! ## ZcplcFdFuVWmL ## 
ZcplcFdFuVWmL = 0._dp 
TempcplcFdFuVWmL = cplcFdFuVWmL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFuVWmL(gt2,:) = ZcplcFdFuVWmL(gt2,:) + ZRUVdc(gt2,gt1)*TempcplcFdFuVWmL(gt1,:) 
 End Do 
End Do 
TempcplcFdFuVWmL = ZcplcFdFuVWmL 
ZcplcFdFuVWmL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFuVWmL(:,gt2) = ZcplcFdFuVWmL(:,gt2) + ZRUVu(gt2,gt1)*TempcplcFdFuVWmL(:,gt1) 
 End Do 
End Do 
TempcplcFdFuVWmL = ZcplcFdFuVWmL 


 ! ## ZcplcFdFuVWmR ## 
ZcplcFdFuVWmR = 0._dp 
TempcplcFdFuVWmR = cplcFdFuVWmR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFuVWmR(gt2,:) = ZcplcFdFuVWmR(gt2,:) + ZRUUd(gt2,gt1)*TempcplcFdFuVWmR(gt1,:) 
 End Do 
End Do 
TempcplcFdFuVWmR = ZcplcFdFuVWmR 
ZcplcFdFuVWmR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFdFuVWmR(:,gt2) = ZcplcFdFuVWmR(:,gt2) + ZRUUuc(gt2,gt1)*TempcplcFdFuVWmR(:,gt1) 
 End Do 
End Do 
TempcplcFdFuVWmR = ZcplcFdFuVWmR 


 ! ## ZcplcFuFuVZL ## 
ZcplcFuFuVZL = 0._dp 
TempcplcFuFuVZL = cplcFuFuVZL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVZL(gt2,:) = ZcplcFuFuVZL(gt2,:) + ZRUVuc(gt2,gt1)*TempcplcFuFuVZL(gt1,:) 
 End Do 
End Do 
TempcplcFuFuVZL = ZcplcFuFuVZL 
ZcplcFuFuVZL = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVZL(:,gt2) = ZcplcFuFuVZL(:,gt2) + ZRUVu(gt2,gt1)*TempcplcFuFuVZL(:,gt1) 
 End Do 
End Do 
TempcplcFuFuVZL = ZcplcFuFuVZL 


 ! ## ZcplcFuFuVZR ## 
ZcplcFuFuVZR = 0._dp 
TempcplcFuFuVZR = cplcFuFuVZR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVZR(gt2,:) = ZcplcFuFuVZR(gt2,:) + ZRUUu(gt2,gt1)*TempcplcFuFuVZR(gt1,:) 
 End Do 
End Do 
TempcplcFuFuVZR = ZcplcFuFuVZR 
ZcplcFuFuVZR = 0._dp 
Do gt1=1,3
  Do gt2=1,3
ZcplcFuFuVZR(:,gt2) = ZcplcFuFuVZR(:,gt2) + ZRUUuc(gt2,gt1)*TempcplcFuFuVZR(:,gt1) 
 End Do 
End Do 
TempcplcFuFuVZR = ZcplcFuFuVZR 


 ! ## ZcplcFeFvVWmL ## 
ZcplcFeFvVWmL = 0._dp 
TempcplcFeFvVWmL = cplcFeFvVWmL 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFvVWmL(gt2,:) = ZcplcFeFvVWmL(gt2,:) + ZRUVec(gt2,gt1)*TempcplcFeFvVWmL(gt1,:) 
 End Do 
End Do 
TempcplcFeFvVWmL = ZcplcFeFvVWmL 


 ! ## ZcplcFeFvVWmR ## 
ZcplcFeFvVWmR = 0._dp 
TempcplcFeFvVWmR = cplcFeFvVWmR 
Do gt1=1,3
  Do gt2=1,3
ZcplcFeFvVWmR(gt2,:) = ZcplcFeFvVWmR(gt2,:) + ZRUUe(gt2,gt1)*TempcplcFeFvVWmR(gt1,:) 
 End Do 
End Do 
TempcplcFeFvVWmR = ZcplcFeFvVWmR 


 ! ## ZcplcFvFvVZL ## 
ZcplcFvFvVZL = 0._dp 
TempcplcFvFvVZL = cplcFvFvVZL 


 ! ## ZcplcFvFvVZR ## 
ZcplcFvFvVZR = 0._dp 
TempcplcFvFvVZR = cplcFvFvVZR 


 ! ## ZcplVGVGVGVG1 ## 
ZcplVGVGVGVG1 = 0._dp 


 ! ## ZcplVGVGVGVG2 ## 
ZcplVGVGVGVG2 = 0._dp 


 ! ## ZcplVGVGVGVG3 ## 
ZcplVGVGVGVG3 = 0._dp 


 ! ## ZcplcVWmVPVPVWm1 ## 
ZcplcVWmVPVPVWm1 = 0._dp 


 ! ## ZcplcVWmVPVPVWm2 ## 
ZcplcVWmVPVPVWm2 = 0._dp 


 ! ## ZcplcVWmVPVPVWm3 ## 
ZcplcVWmVPVPVWm3 = 0._dp 


 ! ## ZcplcVWmVPVWmVZ1 ## 
ZcplcVWmVPVWmVZ1 = 0._dp 


 ! ## ZcplcVWmVPVWmVZ2 ## 
ZcplcVWmVPVWmVZ2 = 0._dp 


 ! ## ZcplcVWmVPVWmVZ3 ## 
ZcplcVWmVPVWmVZ3 = 0._dp 


 ! ## ZcplcVWmcVWmVWmVWm1 ## 
ZcplcVWmcVWmVWmVWm1 = 0._dp 


 ! ## ZcplcVWmcVWmVWmVWm2 ## 
ZcplcVWmcVWmVWmVWm2 = 0._dp 


 ! ## ZcplcVWmcVWmVWmVWm3 ## 
ZcplcVWmcVWmVWmVWm3 = 0._dp 


 ! ## ZcplcVWmVWmVZVZ1 ## 
ZcplcVWmVWmVZVZ1 = 0._dp 


 ! ## ZcplcVWmVWmVZVZ2 ## 
ZcplcVWmVWmVZVZ2 = 0._dp 


 ! ## ZcplcVWmVWmVZVZ3 ## 
ZcplcVWmVWmVZVZ3 = 0._dp 


 ! ## ZcplcgGgGVG ## 
ZcplcgGgGVG = 0._dp 
TempcplcgGgGVG = cplcgGgGVG 
ZcplcgGgGVG = TempcplcgGgGVG 


 ! ## ZcplcgWmgAVWm ## 
ZcplcgWmgAVWm = 0._dp 
TempcplcgWmgAVWm = cplcgWmgAVWm 
ZcplcgWmgAVWm = TempcplcgWmgAVWm 


 ! ## ZcplcgWpCgAcVWm ## 
ZcplcgWpCgAcVWm = 0._dp 
TempcplcgWpCgAcVWm = cplcgWpCgAcVWm 
ZcplcgWpCgAcVWm = TempcplcgWpCgAcVWm 


 ! ## ZcplcgWmgWmVP ## 
ZcplcgWmgWmVP = 0._dp 
TempcplcgWmgWmVP = cplcgWmgWmVP 
ZcplcgWmgWmVP = TempcplcgWmgWmVP 


 ! ## ZcplcgWmgWmVZ ## 
ZcplcgWmgWmVZ = 0._dp 
TempcplcgWmgWmVZ = cplcgWmgWmVZ 
ZcplcgWmgWmVZ = TempcplcgWmgWmVZ 


 ! ## ZcplcgAgWmcVWm ## 
ZcplcgAgWmcVWm = 0._dp 
TempcplcgAgWmcVWm = cplcgAgWmcVWm 
ZcplcgAgWmcVWm = TempcplcgAgWmcVWm 


 ! ## ZcplcgZgWmcVWm ## 
ZcplcgZgWmcVWm = 0._dp 
TempcplcgZgWmcVWm = cplcgZgWmcVWm 
ZcplcgZgWmcVWm = TempcplcgZgWmcVWm 


 ! ## ZcplcgWpCgWpCVP ## 
ZcplcgWpCgWpCVP = 0._dp 
TempcplcgWpCgWpCVP = cplcgWpCgWpCVP 
ZcplcgWpCgWpCVP = TempcplcgWpCgWpCVP 


 ! ## ZcplcgAgWpCVWm ## 
ZcplcgAgWpCVWm = 0._dp 
TempcplcgAgWpCVWm = cplcgAgWpCVWm 
ZcplcgAgWpCVWm = TempcplcgAgWpCVWm 


 ! ## ZcplcgZgWpCVWm ## 
ZcplcgZgWpCVWm = 0._dp 
TempcplcgZgWpCVWm = cplcgZgWpCVWm 
ZcplcgZgWpCVWm = TempcplcgZgWpCVWm 


 ! ## ZcplcgWpCgWpCVZ ## 
ZcplcgWpCgWpCVZ = 0._dp 
TempcplcgWpCgWpCVZ = cplcgWpCgWpCVZ 
ZcplcgWpCgWpCVZ = TempcplcgWpCgWpCVZ 


 ! ## ZcplcgWmgZVWm ## 
ZcplcgWmgZVWm = 0._dp 
TempcplcgWmgZVWm = cplcgWmgZVWm 
ZcplcgWmgZVWm = TempcplcgWmgZVWm 


 ! ## ZcplcgWpCgZcVWm ## 
ZcplcgWpCgZcVWm = 0._dp 
TempcplcgWpCgZcVWm = cplcgWpCgZcVWm 
ZcplcgWpCgZcVWm = TempcplcgWpCgZcVWm 


 ! ## ZcplcgZgAhh ## 
ZcplcgZgAhh = 0._dp 
TempcplcgZgAhh = cplcgZgAhh 
ZcplcgZgAhh = 0._dp 
Do gt1=1,6
  Do gt2=1,6
ZcplcgZgAhh(gt2) = ZcplcgZgAhh(gt2) + ZRUZH(gt2,gt1)*TempcplcgZgAhh(gt1) 
 End Do 
End Do 


 ! ## ZcplcgWmgAHm ## 
ZcplcgWmgAHm = 0._dp 
TempcplcgWmgAHm = cplcgWmgAHm 
ZcplcgWmgAHm = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcgWmgAHm(gt2) = ZcplcgWmgAHm(gt2) + ZRUZP(gt2,gt1)*TempcplcgWmgAHm(gt1) 
 End Do 
End Do 


 ! ## ZcplcgWpCgAcHm ## 
ZcplcgWpCgAcHm = 0._dp 
TempcplcgWpCgAcHm = cplcgWpCgAcHm 
ZcplcgWpCgAcHm = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcgWpCgAcHm(gt2) = ZcplcgWpCgAcHm(gt2) + ZRUZP(gt2,gt1)*TempcplcgWpCgAcHm(gt1) 
 End Do 
End Do 


 ! ## ZcplcgWmgWmhh ## 
ZcplcgWmgWmhh = 0._dp 
TempcplcgWmgWmhh = cplcgWmgWmhh 
ZcplcgWmgWmhh = 0._dp 
Do gt1=1,6
  Do gt2=1,6
ZcplcgWmgWmhh(gt2) = ZcplcgWmgWmhh(gt2) + ZRUZH(gt2,gt1)*TempcplcgWmgWmhh(gt1) 
 End Do 
End Do 


 ! ## ZcplcgZgWmcHm ## 
ZcplcgZgWmcHm = 0._dp 
TempcplcgZgWmcHm = cplcgZgWmcHm 
ZcplcgZgWmcHm = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcgZgWmcHm(gt2) = ZcplcgZgWmcHm(gt2) + ZRUZP(gt2,gt1)*TempcplcgZgWmcHm(gt1) 
 End Do 
End Do 


 ! ## ZcplcgWpCgWpChh ## 
ZcplcgWpCgWpChh = 0._dp 
TempcplcgWpCgWpChh = cplcgWpCgWpChh 
ZcplcgWpCgWpChh = 0._dp 
Do gt1=1,6
  Do gt2=1,6
ZcplcgWpCgWpChh(gt2) = ZcplcgWpCgWpChh(gt2) + ZRUZH(gt2,gt1)*TempcplcgWpCgWpChh(gt1) 
 End Do 
End Do 


 ! ## ZcplcgZgWpCHm ## 
ZcplcgZgWpCHm = 0._dp 
TempcplcgZgWpCHm = cplcgZgWpCHm 
ZcplcgZgWpCHm = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcgZgWpCHm(gt2) = ZcplcgZgWpCHm(gt2) + ZRUZP(gt2,gt1)*TempcplcgZgWpCHm(gt1) 
 End Do 
End Do 


 ! ## ZcplcgZgZhh ## 
ZcplcgZgZhh = 0._dp 
TempcplcgZgZhh = cplcgZgZhh 
ZcplcgZgZhh = 0._dp 
Do gt1=1,6
  Do gt2=1,6
ZcplcgZgZhh(gt2) = ZcplcgZgZhh(gt2) + ZRUZH(gt2,gt1)*TempcplcgZgZhh(gt1) 
 End Do 
End Do 


 ! ## ZcplcgWmgZHm ## 
ZcplcgWmgZHm = 0._dp 
TempcplcgWmgZHm = cplcgWmgZHm 
ZcplcgWmgZHm = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcgWmgZHm(gt2) = ZcplcgWmgZHm(gt2) + ZRUZP(gt2,gt1)*TempcplcgWmgZHm(gt1) 
 End Do 
End Do 


 ! ## ZcplcgWpCgZcHm ## 
ZcplcgWpCgZcHm = 0._dp 
TempcplcgWpCgZcHm = cplcgWpCgZcHm 
ZcplcgWpCgZcHm = 0._dp 
Do gt1=1,2
  Do gt2=1,2
ZcplcgWpCgZcHm(gt2) = ZcplcgWpCgZcHm(gt2) + ZRUZP(gt2,gt1)*TempcplcgWpCgZcHm(gt1) 
 End Do 
End Do 
End Subroutine  getZCouplings 

Subroutine getGBCouplings(MhhOS,Mhh2OS,MHmOS,MHm2OS,MFdOS,MFd2OS,MFuOS,               & 
& MFu2OS,MFeOS,MFe2OS,MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS,ZPOS,ZDLOS,ZDROS,ZULOS,           & 
& ZUROS,ZELOS,ZEROS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,             & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,cplcFdFuVWmL,cplcFdFuVWmR,     & 
& cplcFeFvVWmL,cplcFeFvVWmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,     & 
& cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,            & 
& ZcplcFdFuVWmL,ZcplcFdFuVWmR,ZcplcFeFvVWmL,ZcplcFeFvVWmR,ZcplcFuFdcVWmL,ZcplcFuFdcVWmR, & 
& ZcplcFvFecVWmL,ZcplcFvFecVWmR,ZcplcHmVPVWm,ZcplcHmVWmVZ,ZcplcVWmVPVWm,ZcplcVWmVWmVZ,   & 
& ZcplhhcHmVWm,ZcplhhcVWmVWm,GcplhhHmcHm,GcplhhHmcVWm,GcplhhcHmVWm,GcplHmcHmVP,          & 
& GcplHmcHmVZ,GcplHmcVWmVP,GcplHmcVWmVZ,GcplcHmVPVWm,GcplcHmVWmVZ,GcplcFuFdcHmL,         & 
& GcplcFuFdcHmR,GcplcFvFecHmL,GcplcFvFecHmR,GcplcFdFuHmL,GcplcFdFuHmR,GcplcFeFvHmL,      & 
& GcplcFeFvHmR,GZcplhhHmcHm,GZcplhhHmcVWm,GZcplhhcHmVWm,GZcplHmcHmVP,GZcplHmcHmVZ,       & 
& GZcplHmcVWmVP,GZcplHmcVWmVZ,GZcplcHmVPVWm,GZcplcHmVWmVZ,GZcplcFuFdcHmL,GZcplcFuFdcHmR, & 
& GZcplcFvFecHmL,GZcplcFvFecHmR,GZcplcFdFuHmL,GZcplcFdFuHmR,GZcplcFeFvHmL,               & 
& GZcplcFeFvHmR,GosZcplhhHmcHm,GosZcplhhHmcVWm,GosZcplhhcHmVWm,GosZcplHmcHmVP,           & 
& GosZcplHmcHmVZ,GosZcplHmcVWmVP,GosZcplHmcVWmVZ,GosZcplcHmVPVWm,GosZcplcHmVWmVZ,        & 
& GosZcplcFuFdcHmL,GosZcplcFuFdcHmR,GosZcplcFvFecHmL,GosZcplcFvFecHmR,GosZcplcFdFuHmL,   & 
& GosZcplcFdFuHmR,GosZcplcFeFvHmL,GosZcplcFeFvHmR)

Implicit None

Real(dp), Intent(in) :: MhhOS(6),Mhh2OS(6),MHmOS(2),MHm2OS(2),MFdOS(3),MFd2OS(3),MFuOS(3),MFu2OS(3),          & 
& MFeOS(3),MFe2OS(3),MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS(6,6),ZPOS(2,2)

Complex(dp), Intent(in) :: ZDLOS(3,3),ZDROS(3,3),ZULOS(3,3),ZUROS(3,3),ZELOS(3,3),ZEROS(3,3)

Real(dp), Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp), Intent(in) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Complex(dp), Intent(in) :: cplcFdFuVWmL(3,3),cplcFdFuVWmR(3,3),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),              & 
& cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),           & 
& cplcHmVPVWm(2),cplcHmVWmVZ(2),cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm(6,2),              & 
& cplhhcVWmVWm(6),ZcplcFdFuVWmL(3,3),ZcplcFdFuVWmR(3,3),ZcplcFeFvVWmL(3,3),              & 
& ZcplcFeFvVWmR(3,3),ZcplcFuFdcVWmL(3,3),ZcplcFuFdcVWmR(3,3),ZcplcFvFecVWmL(3,3),        & 
& ZcplcFvFecVWmR(3,3),ZcplcHmVPVWm(2),ZcplcHmVWmVZ(2),ZcplcVWmVPVWm,ZcplcVWmVWmVZ,       & 
& ZcplhhcHmVWm(6,2),ZcplhhcVWmVWm(6)

Integer :: gt1, gt2, gt3, i1, i2
Complex(dp), Intent(out) :: GcplhhHmcHm(6,2,2),GcplhhHmcVWm(6,2),GcplhhcHmVWm(6,2),GcplHmcHmVP(2,2),              & 
& GcplHmcHmVZ(2,2),GcplHmcVWmVP(2),GcplHmcVWmVZ(2),GcplcHmVPVWm(2),GcplcHmVWmVZ(2),      & 
& GcplcFuFdcHmL(3,3,2),GcplcFuFdcHmR(3,3,2),GcplcFvFecHmL(3,3,2),GcplcFvFecHmR(3,3,2),   & 
& GcplcFdFuHmL(3,3,2),GcplcFdFuHmR(3,3,2),GcplcFeFvHmL(3,3,2),GcplcFeFvHmR(3,3,2)

Complex(dp), Intent(out) :: GZcplhhHmcHm(6,2,2),GZcplhhHmcVWm(6,2),GZcplhhcHmVWm(6,2),GZcplHmcHmVP(2,2),          & 
& GZcplHmcHmVZ(2,2),GZcplHmcVWmVP(2),GZcplHmcVWmVZ(2),GZcplcHmVPVWm(2),GZcplcHmVWmVZ(2), & 
& GZcplcFuFdcHmL(3,3,2),GZcplcFuFdcHmR(3,3,2),GZcplcFvFecHmL(3,3,2),GZcplcFvFecHmR(3,3,2),& 
& GZcplcFdFuHmL(3,3,2),GZcplcFdFuHmR(3,3,2),GZcplcFeFvHmL(3,3,2),GZcplcFeFvHmR(3,3,2)

Complex(dp), Intent(out) :: GosZcplhhHmcHm(6,2,2),GosZcplhhHmcVWm(6,2),GosZcplhhcHmVWm(6,2),GosZcplHmcHmVP(2,2),  & 
& GosZcplHmcHmVZ(2,2),GosZcplHmcVWmVP(2),GosZcplHmcVWmVZ(2),GosZcplcHmVPVWm(2),          & 
& GosZcplcHmVWmVZ(2),GosZcplcFuFdcHmL(3,3,2),GosZcplcFuFdcHmR(3,3,2),GosZcplcFvFecHmL(3,3,2),& 
& GosZcplcFvFecHmR(3,3,2),GosZcplcFdFuHmL(3,3,2),GosZcplcFdFuHmR(3,3,2),GosZcplcFeFvHmL(3,3,2),& 
& GosZcplcFeFvHmR(3,3,2)

Do i1=1,6
 Do i2=1,2
GcplhhHmcHm(i1,1,i2) = (1)*(Mhh2OS(i1) - MHm2OS(i2))/MVWmOS*cplhhcHmVWm(i1,i2)
GosZcplhhHmcHm(i1,1,i2) = (1)*(Mhh2OS(i1) - MHm2OS(i2))/MVWmOS*ZcplhhcHmVWm(i1,i2)
GZcplhhHmcHm(i1,1,i2) = (1)*(Mhh2(i1) - MHm2(i2))/MVWm*ZcplhhcHmVWm(i1,i2)
 End Do
End Do 
Do i1=1,6
GcplhhHmcVWm(i1,1) = 0.5_dp*(1)/MVWmOS*cplhhcVWmVWm(i1)
GosZcplhhHmcVWm(i1,1) = 0.5_dp*(1)/MVWmOS*ZcplhhcVWmVWm(i1)
GZcplhhHmcVWm(i1,1) = 0.5_dp*(1)/MVWm*ZcplhhcVWmVWm(i1)
End Do 
Do i1=1,6
GcplhhcHmVWm(i1,1) = 0.5_dp*(1)/MVWmOS*cplhhcVWmVWm(i1)
GosZcplhhcHmVWm(i1,1) = 0.5_dp*(1)/MVWmOS*ZcplhhcVWmVWm(i1)
GZcplhhcHmVWm(i1,1) = 0.5_dp*(1)/MVWm*ZcplhhcVWmVWm(i1)
End Do 
Do i1=1,2
GcplHmcHmVP(1,i1) = 0.5_dp*(1)/MVWmOS*cplcHmVPVWm(i1)
GosZcplHmcHmVP(1,i1) = 0.5_dp*(1)/MVWmOS*ZcplcHmVPVWm(i1)
GZcplHmcHmVP(1,i1) = 0.5_dp*(1)/MVWm*ZcplcHmVPVWm(i1)
End Do 
Do i1=1,2
GcplHmcHmVZ(1,i1) = 0.5_dp*(1)/MVWmOS*cplcHmVWmVZ(i1)
GosZcplHmcHmVZ(1,i1) = 0.5_dp*(1)/MVWmOS*ZcplcHmVWmVZ(i1)
GZcplHmcHmVZ(1,i1) = 0.5_dp*(1)/MVWm*ZcplcHmVWmVZ(i1)
End Do 
GcplHmcVWmVP(1) = (-1)*(MVWm2OS - 0._dp)/MVWmOS*cplcVWmVPVWm
GosZcplHmcVWmVP(1) = (-1)*(MVWm2OS - 0._dp)/MVWmOS*ZcplcVWmVPVWm
GZcplHmcVWmVP(1) = (-1)*(MVWm2 - 0._dp)/MVWmOS*ZcplcVWmVPVWm 
GcplHmcVWmVZ(1) = (1)*(MVWm2OS - MVZ2OS)/MVWmOS*cplcVWmVWmVZ
GosZcplHmcVWmVZ(1) = (1)*(MVWm2OS - MVZ2OS)/MVWmOS*ZcplcVWmVWmVZ
GZcplHmcVWmVZ(1) = (1)*(MVWm2 - MVZ2)/MVWmOS*ZcplcVWmVWmVZ 
GcplcHmVPVWm(1) = (-1)*(0._dp - MVWm2OS)/MVWmOS*cplcVWmVPVWm
GosZcplcHmVPVWm(1) = (-1)*(0._dp - MVWm2OS)/MVWmOS*ZcplcVWmVPVWm
GZcplcHmVPVWm(1) = (-1)*(0._dp - MVWm2)/MVWmOS*ZcplcVWmVPVWm 
GcplcHmVWmVZ(1) = (-1)*(MVWm2OS - MVZ2OS)/MVWmOS*cplcVWmVWmVZ
GosZcplcHmVWmVZ(1) = (-1)*(MVWm2OS - MVZ2OS)/MVWmOS*ZcplcVWmVWmVZ
GZcplcHmVWmVZ(1) = (-1)*(MVWm2 - MVZ2)/MVWmOS*ZcplcVWmVWmVZ 
Do i1=1,3
 Do i2=1,3
GcplcFuFdcHmL(i1,i2,1) = (MFuOS(i1)*cplcFuFdcVWmL(i1,i2) - MFdOS(i2)*cplcFuFdcVWmR(i1,i2))/MVWmOS
GcplcFuFdcHmR(i1,i2,1) = -(MFdOS(i2)*cplcFuFdcVWmL(i1,i2) - MFuOS(i1)*cplcFuFdcVWmR(i1,i2))/MVWmOS
GosZcplcFuFdcHmL(i1,i2,1) = (MFuOS(i1)*ZcplcFuFdcVWmL(i1,i2) - MFdOS(i2)*ZcplcFuFdcVWmR(i1,i2))/MVWmOS
GosZcplcFuFdcHmR(i1,i2,1) = -(MFdOS(i2)*ZcplcFuFdcVWmL(i1,i2) - MFuOS(i1)*ZcplcFuFdcVWmR(i1,i2))/MVWmOS
GZcplcFuFdcHmL(i1,i2,1) = (MFu(i1)*ZcplcFuFdcVWmL(i1,i2) - MFd(i2)*ZcplcFuFdcVWmR(i1,i2))/MVWm
GZcplcFuFdcHmR(i1,i2,1) = -(MFd(i2)*ZcplcFuFdcVWmL(i1,i2) - MFu(i1)*ZcplcFuFdcVWmR(i1,i2))/MVWm
 End Do
End Do 
Do i1=1,3
 Do i2=1,3
GcplcFvFecHmL(i1,i2,1) = (0.*cplcFvFecVWmL(i1,i2) - MFeOS(i2)*cplcFvFecVWmR(i1,i2))/MVWmOS
GcplcFvFecHmR(i1,i2,1) = -(MFeOS(i2)*cplcFvFecVWmL(i1,i2) - 0.*cplcFvFecVWmR(i1,i2))/MVWmOS
GosZcplcFvFecHmL(i1,i2,1) = (0.*ZcplcFvFecVWmL(i1,i2) - MFeOS(i2)*ZcplcFvFecVWmR(i1,i2))/MVWmOS
GosZcplcFvFecHmR(i1,i2,1) = -(MFeOS(i2)*ZcplcFvFecVWmL(i1,i2) - 0.*ZcplcFvFecVWmR(i1,i2))/MVWmOS
GZcplcFvFecHmL(i1,i2,1) = (0._dp*ZcplcFvFecVWmL(i1,i2) - MFe(i2)*ZcplcFvFecVWmR(i1,i2))/MVWm
GZcplcFvFecHmR(i1,i2,1) = -(MFe(i2)*ZcplcFvFecVWmL(i1,i2) - 0._dp*ZcplcFvFecVWmR(i1,i2))/MVWm
 End Do
End Do 
Do i1=1,3
 Do i2=1,3
GcplcFdFuHmL(i1,i2,1) = (MFdOS(i1)*cplcFdFuVWmL(i1,i2) - MFuOS(i2)*cplcFdFuVWmR(i1,i2))/MVWmOS
GcplcFdFuHmR(i1,i2,1) = -(MFuOS(i2)*cplcFdFuVWmL(i1,i2) - MFdOS(i1)*cplcFdFuVWmR(i1,i2))/MVWmOS
GosZcplcFdFuHmL(i1,i2,1) = (MFdOS(i1)*ZcplcFdFuVWmL(i1,i2) - MFuOS(i2)*ZcplcFdFuVWmR(i1,i2))/MVWmOS
GosZcplcFdFuHmR(i1,i2,1) = -(MFuOS(i2)*ZcplcFdFuVWmL(i1,i2) - MFdOS(i1)*ZcplcFdFuVWmR(i1,i2))/MVWmOS
GZcplcFdFuHmL(i1,i2,1) = (MFd(i1)*ZcplcFdFuVWmL(i1,i2) - MFu(i2)*ZcplcFdFuVWmR(i1,i2))/MVWm
GZcplcFdFuHmR(i1,i2,1) = -(MFu(i2)*ZcplcFdFuVWmL(i1,i2) - MFd(i1)*ZcplcFdFuVWmR(i1,i2))/MVWm
 End Do
End Do 
Do i1=1,3
 Do i2=1,3
GcplcFeFvHmL(i1,i2,1) = (MFeOS(i1)*cplcFeFvVWmL(i1,i2) - 0.*cplcFeFvVWmR(i1,i2))/MVWmOS
GcplcFeFvHmR(i1,i2,1) = -(0.*cplcFeFvVWmL(i1,i2) - MFeOS(i1)*cplcFeFvVWmR(i1,i2))/MVWmOS
GosZcplcFeFvHmL(i1,i2,1) = (MFeOS(i1)*ZcplcFeFvVWmL(i1,i2) - 0.*ZcplcFeFvVWmR(i1,i2))/MVWmOS
GosZcplcFeFvHmR(i1,i2,1) = -(0.*ZcplcFeFvVWmL(i1,i2) - MFeOS(i1)*ZcplcFeFvVWmR(i1,i2))/MVWmOS
GZcplcFeFvHmL(i1,i2,1) = (MFe(i1)*ZcplcFeFvVWmL(i1,i2) - 0._dp*ZcplcFeFvVWmR(i1,i2))/MVWm
GZcplcFeFvHmR(i1,i2,1) = -(0._dp*ZcplcFeFvVWmL(i1,i2) - MFe(i1)*ZcplcFeFvVWmR(i1,i2))/MVWm
 End Do
End Do 
End Subroutine  getGBCouplings 

Subroutine WaveFunctionRenormalisation(MhhOS,Mhh2OS,MHmOS,MHm2OS,MFdOS,               & 
& MFd2OS,MFuOS,MFu2OS,MFeOS,MFe2OS,MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS,ZPOS,ZDLOS,          & 
& ZDROS,ZULOS,ZUROS,ZELOS,ZEROS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,            & 
& MVWm,MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,g1,g2,              & 
& g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,               & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,cplhhhhhh,cplhhHmcHm,cplhhhhhhhh,cplhhhhHmcHm,   & 
& cplHmHmcHmcHm,cplhhhhVZ,cplhhHmcVWm,cplhhcHmVWm,cplHmcHmVP,cplHmcHmVZ,cplhhcVWmVWm,    & 
& cplhhVZVZ,cplHmcVWmVP,cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhcVWmVWm,              & 
& cplhhhhVZVZ,cplhhHmcVWmVP,cplhhHmcVWmVZ,cplhhcHmVPVWm,cplhhcHmVWmVZ,cplHmcHmVPVP,      & 
& cplHmcHmVPVZ,cplHmcHmcVWmVWm,cplHmcHmVZVZ,cplVGVGVG,cplcVWmVPVWm,cplcVWmVWmVZ,         & 
& cplcFdFdhhL,cplcFdFdhhR,cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,             & 
& cplcFvFecHmL,cplcFvFecHmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,             & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,               & 
& cplcFdFdVZL,cplcFdFdVZR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFeFeVPL,cplcFeFeVPR,           & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuVGL,cplcFuFuVGR,           & 
& cplcFuFuVPL,cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,             & 
& cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplVGVGVGVG1,cplVGVGVGVG2,           & 
& cplVGVGVGVG3,cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcVWmVPVWmVZ1,          & 
& cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmcVWmVWmVWm1,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,& 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcgGgGVG,cplcgWmgAVWm,               & 
& cplcgWpCgAcVWm,cplcgWmgWmVP,cplcgWmgWmVZ,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpCVP,   & 
& cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgWpCgWpCVZ,cplcgWmgZVWm,cplcgWpCgZcVWm,cplcgZgAhh,     & 
& cplcgWmgAHm,cplcgWpCgAcHm,cplcgWmgWmhh,cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,       & 
& cplcgZgZhh,cplcgWmgZHm,cplcgWpCgZcHm,GcplhhHmcHm,GcplhhHmcVWm,GcplhhcHmVWm,            & 
& GcplHmcHmVP,GcplHmcHmVZ,GcplHmcVWmVP,GcplHmcVWmVZ,GcplcHmVPVWm,GcplcHmVWmVZ,           & 
& GcplcFuFdcHmL,GcplcFuFdcHmR,GcplcFvFecHmL,GcplcFvFecHmR,GcplcFdFuHmL,GcplcFdFuHmR,     & 
& GcplcFeFvHmL,GcplcFeFvHmR,dg1,dg2,dg3,dM122,dYu,depsU,dYd,dYe,depsD,depsE,             & 
& dLam6,dLam5,dLam7,dM112,dM222,dLam1,dLam4,dLam3,dLam2,dmS2,dLam1p,dLam2p,              & 
& dL3pp,dmSp2,dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,            & 
& dLam5p,dL2pp,dLam3p,deta,dzeta,dvd,dvu,dvS,dZH,dZP,dZDL,dZDR,dZUL,dZUR,dZEL,           & 
& dZER,dSinTW,dCosTW,dTanTW,ZfVG,ZfvL,ZfVP,ZfVZ,ZfVWm,Zfhh,ZfHm,ZfDL,ZfDR,               & 
& ZfUL,ZfUR,ZfEL,ZfER,ZfVPVZ,ZfVZVP,ctcplhhhhhh,ctcplhhHmcHm,ctcplhhhhVZ,ctcplhhHmcVWm,  & 
& ctcplhhcHmVWm,ctcplHmcHmVP,ctcplHmcHmVZ,ctcplhhcVWmVWm,ctcplhhVZVZ,ctcplHmcVWmVP,      & 
& ctcplHmcVWmVZ,ctcplcHmVPVWm,ctcplcHmVWmVZ,ctcplVGVGVG,ctcplcVWmVPVWm,ctcplcVWmVWmVZ,   & 
& ctcplcFdFdhhL,ctcplcFdFdhhR,ctcplcFuFdcHmL,ctcplcFuFdcHmR,ctcplcFeFehhL,               & 
& ctcplcFeFehhR,ctcplcFvFecHmL,ctcplcFvFecHmR,ctcplcFuFuhhL,ctcplcFuFuhhR,               & 
& ctcplcFdFuHmL,ctcplcFdFuHmR,ctcplcFeFvHmL,ctcplcFeFvHmR,ctcplcFdFdVGL,ctcplcFdFdVGR,   & 
& ctcplcFdFdVPL,ctcplcFdFdVPR,ctcplcFdFdVZL,ctcplcFdFdVZR,ctcplcFuFdcVWmL,               & 
& ctcplcFuFdcVWmR,ctcplcFeFeVPL,ctcplcFeFeVPR,ctcplcFeFeVZL,ctcplcFeFeVZR,               & 
& ctcplcFvFecVWmL,ctcplcFvFecVWmR,ctcplcFuFuVGL,ctcplcFuFuVGR,ctcplcFuFuVPL,             & 
& ctcplcFuFuVPR,ctcplcFdFuVWmL,ctcplcFdFuVWmR,ctcplcFuFuVZL,ctcplcFuFuVZR,               & 
& ctcplcFeFvVWmL,ctcplcFeFvVWmR,ctcplcFvFvVZL,ctcplcFvFvVZR,MLambda,deltaM,kont)

Implicit None 
Real(dp),Intent(inout) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp),Intent(inout) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Real(dp),Intent(inout) :: vd,vu,vS

Complex(dp),Intent(in) :: cplhhhhhh(6,6,6),cplhhHmcHm(6,2,2),cplhhhhhhhh(6,6,6,6),cplhhhhHmcHm(6,6,2,2),        & 
& cplHmHmcHmcHm(2,2,2,2),cplhhhhVZ(6,6),cplhhHmcVWm(6,2),cplhhcHmVWm(6,2),               & 
& cplHmcHmVP(2,2),cplHmcHmVZ(2,2),cplhhcVWmVWm(6),cplhhVZVZ(6),cplHmcVWmVP(2),           & 
& cplHmcVWmVZ(2),cplcHmVPVWm(2),cplcHmVWmVZ(2),cplhhhhcVWmVWm(6,6),cplhhhhVZVZ(6,6),     & 
& cplhhHmcVWmVP(6,2),cplhhHmcVWmVZ(6,2),cplhhcHmVPVWm(6,2),cplhhcHmVWmVZ(6,2),           & 
& cplHmcHmVPVP(2,2),cplHmcHmVPVZ(2,2),cplHmcHmcVWmVWm(2,2),cplHmcHmVZVZ(2,2),            & 
& cplVGVGVG,cplcVWmVPVWm,cplcVWmVWmVZ,cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),             & 
& cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),         & 
& cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),         & 
& cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),           & 
& cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),  & 
& cplcFdFdVZR(3,3),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFeFeVPL(3,3),               & 
& cplcFeFeVPR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),& 
& cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFdFuVWmL(3,3), & 
& cplcFdFuVWmR(3,3),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),& 
& cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,              & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,       & 
& cplcVWmVPVWmVZ3,cplcVWmcVWmVWmVWm1,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,              & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcgGgGVG,cplcgWmgAVWm,               & 
& cplcgWpCgAcVWm,cplcgWmgWmVP,cplcgWmgWmVZ,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpCVP,   & 
& cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgWpCgWpCVZ,cplcgWmgZVWm,cplcgWpCgZcVWm,cplcgZgAhh(6),  & 
& cplcgWmgAHm(2),cplcgWpCgAcHm(2),cplcgWmgWmhh(6),cplcgZgWmcHm(2),cplcgWpCgWpChh(6),     & 
& cplcgZgWpCHm(2),cplcgZgZhh(6),cplcgWmgZHm(2),cplcgWpCgZcHm(2)

Real(dp),Intent(in) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp),Intent(in) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Real(dp),Intent(in) :: MhhOS(6),Mhh2OS(6),MHmOS(2),MHm2OS(2),MFdOS(3),MFd2OS(3),MFuOS(3),MFu2OS(3),          & 
& MFeOS(3),MFe2OS(3),MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS(6,6),ZPOS(2,2)

Complex(dp),Intent(in) :: ZDLOS(3,3),ZDROS(3,3),ZULOS(3,3),ZUROS(3,3),ZELOS(3,3),ZEROS(3,3)

Complex(dp) :: Pihh(6,6,6),DerPihh(6,6,6),PiHm(2,2,2),DerPiHm(2,2,2),SigmaLFd(3,3,3),SigmaSLFd(3,3,3),& 
& SigmaSRFd(3,3,3),SigmaRFd(3,3,3),DerSigmaLFd(3,3,3),DerSigmaSLFd(3,3,3),               & 
& DerSigmaSRFd(3,3,3),DerSigmaRFd(3,3,3),DerSigmaLirFd(3,3,3),DerSigmaSLirFd(3,3,3),     & 
& DerSigmaSRirFd(3,3,3),DerSigmaRirFd(3,3,3),SigmaLFu(3,3,3),SigmaSLFu(3,3,3),           & 
& SigmaSRFu(3,3,3),SigmaRFu(3,3,3),DerSigmaLFu(3,3,3),DerSigmaSLFu(3,3,3),               & 
& DerSigmaSRFu(3,3,3),DerSigmaRFu(3,3,3),DerSigmaLirFu(3,3,3),DerSigmaSLirFu(3,3,3),     & 
& DerSigmaSRirFu(3,3,3),DerSigmaRirFu(3,3,3),SigmaLFe(3,3,3),SigmaSLFe(3,3,3),           & 
& SigmaSRFe(3,3,3),SigmaRFe(3,3,3),DerSigmaLFe(3,3,3),DerSigmaSLFe(3,3,3),               & 
& DerSigmaSRFe(3,3,3),DerSigmaRFe(3,3,3),DerSigmaLirFe(3,3,3),DerSigmaSLirFe(3,3,3),     & 
& DerSigmaSRirFe(3,3,3),DerSigmaRirFe(3,3,3),SigmaLFv(3,3,3),SigmaSLFv(3,3,3),           & 
& SigmaSRFv(3,3,3),SigmaRFv(3,3,3),DerSigmaLFv(3,3,3),DerSigmaSLFv(3,3,3),               & 
& DerSigmaSRFv(3,3,3),DerSigmaRFv(3,3,3),DerSigmaLirFv(3,3,3),DerSigmaSLirFv(3,3,3),     & 
& DerSigmaSRirFv(3,3,3),DerSigmaRirFv(3,3,3),PiVG,DerPiVG,PiVP,DerPiVP,PiVZ,             & 
& DerPiVZ,PiVWm,DerPiVWm,PiVPlight0,DerPiVPlight0,PiVPheavy0,DerPiVPheavy0,              & 
& PiVPlightMZ,DerPiVPlightMZ,PiVPheavyMZ,DerPiVPheavyMZ,PiVPVZ,DerPiVPVZ,PiVZVP,         & 
& DerPiVZVP,PiVZhh(6,6,6),DerPiVZhh(6,6,6),PihhVZ(6,6,6),DerPihhVZ(6,6,6),               & 
& PiVWmHm(2,2,2),DerPiVWmHm(2,2,2),PiHmVWm(2,2,2),DerPiHmVWm(2,2,2)

Complex(dp) :: PihhDR(6,6,6),DerPihhDR(6,6,6),PiHmDR(2,2,2),DerPiHmDR(2,2,2),SigmaLFdDR(3,3,3),      & 
& SigmaSLFdDR(3,3,3),SigmaSRFdDR(3,3,3),SigmaRFdDR(3,3,3),DerSigmaLFdDR(3,3,3),          & 
& DerSigmaSLFdDR(3,3,3),DerSigmaSRFdDR(3,3,3),DerSigmaRFdDR(3,3,3),DerSigmaLirFdDR(3,3,3),& 
& DerSigmaSLirFdDR(3,3,3),DerSigmaSRirFdDR(3,3,3),DerSigmaRirFdDR(3,3,3),SigmaLFuDR(3,3,3),& 
& SigmaSLFuDR(3,3,3),SigmaSRFuDR(3,3,3),SigmaRFuDR(3,3,3),DerSigmaLFuDR(3,3,3),          & 
& DerSigmaSLFuDR(3,3,3),DerSigmaSRFuDR(3,3,3),DerSigmaRFuDR(3,3,3),DerSigmaLirFuDR(3,3,3),& 
& DerSigmaSLirFuDR(3,3,3),DerSigmaSRirFuDR(3,3,3),DerSigmaRirFuDR(3,3,3),SigmaLFeDR(3,3,3),& 
& SigmaSLFeDR(3,3,3),SigmaSRFeDR(3,3,3),SigmaRFeDR(3,3,3),DerSigmaLFeDR(3,3,3),          & 
& DerSigmaSLFeDR(3,3,3),DerSigmaSRFeDR(3,3,3),DerSigmaRFeDR(3,3,3),DerSigmaLirFeDR(3,3,3),& 
& DerSigmaSLirFeDR(3,3,3),DerSigmaSRirFeDR(3,3,3),DerSigmaRirFeDR(3,3,3),SigmaLFvDR(3,3,3),& 
& SigmaSLFvDR(3,3,3),SigmaSRFvDR(3,3,3),SigmaRFvDR(3,3,3),DerSigmaLFvDR(3,3,3),          & 
& DerSigmaSLFvDR(3,3,3),DerSigmaSRFvDR(3,3,3),DerSigmaRFvDR(3,3,3),DerSigmaLirFvDR(3,3,3),& 
& DerSigmaSLirFvDR(3,3,3),DerSigmaSRirFvDR(3,3,3),DerSigmaRirFvDR(3,3,3),PiVGDR,         & 
& DerPiVGDR,PiVPDR,DerPiVPDR,PiVZDR,DerPiVZDR,PiVWmDR,DerPiVWmDR,PiVPlight0DR,           & 
& DerPiVPlight0DR,PiVPheavy0DR,DerPiVPheavy0DR,PiVPlightMZDR,DerPiVPlightMZDR,           & 
& PiVPheavyMZDR,DerPiVPheavyMZDR,PiVPVZDR,DerPiVPVZDR,PiVZVPDR,DerPiVZVPDR,              & 
& PiVZhhDR(6,6,6),DerPiVZhhDR(6,6,6),PihhVZDR(6,6,6),DerPihhVZDR(6,6,6),PiVWmHmDR(2,2,2),& 
& DerPiVWmHmDR(2,2,2),PiHmVWmDR(2,2,2),DerPiHmVWmDR(2,2,2)

Complex(dp) :: PihhOS(6,6,6),DerPihhOS(6,6,6),PiHmOS(2,2,2),DerPiHmOS(2,2,2),SigmaLFdOS(3,3,3),      & 
& SigmaSLFdOS(3,3,3),SigmaSRFdOS(3,3,3),SigmaRFdOS(3,3,3),DerSigmaLFdOS(3,3,3),          & 
& DerSigmaSLFdOS(3,3,3),DerSigmaSRFdOS(3,3,3),DerSigmaRFdOS(3,3,3),DerSigmaLirFdOS(3,3,3),& 
& DerSigmaSLirFdOS(3,3,3),DerSigmaSRirFdOS(3,3,3),DerSigmaRirFdOS(3,3,3),SigmaLFuOS(3,3,3),& 
& SigmaSLFuOS(3,3,3),SigmaSRFuOS(3,3,3),SigmaRFuOS(3,3,3),DerSigmaLFuOS(3,3,3),          & 
& DerSigmaSLFuOS(3,3,3),DerSigmaSRFuOS(3,3,3),DerSigmaRFuOS(3,3,3),DerSigmaLirFuOS(3,3,3),& 
& DerSigmaSLirFuOS(3,3,3),DerSigmaSRirFuOS(3,3,3),DerSigmaRirFuOS(3,3,3),SigmaLFeOS(3,3,3),& 
& SigmaSLFeOS(3,3,3),SigmaSRFeOS(3,3,3),SigmaRFeOS(3,3,3),DerSigmaLFeOS(3,3,3),          & 
& DerSigmaSLFeOS(3,3,3),DerSigmaSRFeOS(3,3,3),DerSigmaRFeOS(3,3,3),DerSigmaLirFeOS(3,3,3),& 
& DerSigmaSLirFeOS(3,3,3),DerSigmaSRirFeOS(3,3,3),DerSigmaRirFeOS(3,3,3),SigmaLFvOS(3,3,3),& 
& SigmaSLFvOS(3,3,3),SigmaSRFvOS(3,3,3),SigmaRFvOS(3,3,3),DerSigmaLFvOS(3,3,3),          & 
& DerSigmaSLFvOS(3,3,3),DerSigmaSRFvOS(3,3,3),DerSigmaRFvOS(3,3,3),DerSigmaLirFvOS(3,3,3),& 
& DerSigmaSLirFvOS(3,3,3),DerSigmaSRirFvOS(3,3,3),DerSigmaRirFvOS(3,3,3),PiVGOS,         & 
& DerPiVGOS,PiVPOS,DerPiVPOS,PiVZOS,DerPiVZOS,PiVWmOS,DerPiVWmOS,PiVPlight0OS,           & 
& DerPiVPlight0OS,PiVPheavy0OS,DerPiVPheavy0OS,PiVPlightMZOS,DerPiVPlightMZOS,           & 
& PiVPheavyMZOS,DerPiVPheavyMZOS,PiVPVZOS,DerPiVPVZOS,PiVZVPOS,DerPiVZVPOS,              & 
& PiVZhhOS(6,6,6),DerPiVZhhOS(6,6,6),PihhVZOS(6,6,6),DerPihhVZOS(6,6,6),PiVWmHmOS(2,2,2),& 
& DerPiVWmHmOS(2,2,2),PiHmVWmOS(2,2,2),DerPiHmVWmOS(2,2,2)

Real(dp), Intent(in) :: MLambda, deltaM 

Integer, Intent(out) :: kont 
Real(dp),Intent(out) :: dg1,dg2,dg3,dM112,dM222,dLam1,dLam4,dLam3,dLam2,dmS2,dLam1p,dLam2p,dL3pp,             & 
& deta,dzeta,dvd,dvu,dvS,dZH(6,6),dZP(2,2),dSinTW,dCosTW,dTanTW

Complex(dp),Intent(out) :: dM122,dYu(3,3),depsU(3,3),dYd(3,3),dYe(3,3),depsD(3,3),depsE(3,3),dLam6,              & 
& dLam5,dLam7,dmSp2,dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,             & 
& dLam7p,dLam5p,dL2pp,dLam3p,dZDL(3,3),dZDR(3,3),dZUL(3,3),dZUR(3,3),dZEL(3,3),dZER(3,3)

Complex(dp),Intent(out) :: ZfVG,ZfvL(3,3),ZfVP,ZfVZ,ZfVWm,Zfhh(6,6),ZfHm(2,2),ZfDL(3,3),ZfDR(3,3),               & 
& ZfUL(3,3),ZfUR(3,3),ZfEL(3,3),ZfER(3,3),ZfVPVZ,ZfVZVP

Complex(dp),Intent(out) :: ctcplhhhhhh(6,6,6),ctcplhhHmcHm(6,2,2),ctcplhhhhVZ(6,6),ctcplhhHmcVWm(6,2),           & 
& ctcplhhcHmVWm(6,2),ctcplHmcHmVP(2,2),ctcplHmcHmVZ(2,2),ctcplhhcVWmVWm(6),              & 
& ctcplhhVZVZ(6),ctcplHmcVWmVP(2),ctcplHmcVWmVZ(2),ctcplcHmVPVWm(2),ctcplcHmVWmVZ(2),    & 
& ctcplVGVGVG,ctcplcVWmVPVWm,ctcplcVWmVWmVZ,ctcplcFdFdhhL(3,3,6),ctcplcFdFdhhR(3,3,6),   & 
& ctcplcFuFdcHmL(3,3,2),ctcplcFuFdcHmR(3,3,2),ctcplcFeFehhL(3,3,6),ctcplcFeFehhR(3,3,6), & 
& ctcplcFvFecHmL(3,3,2),ctcplcFvFecHmR(3,3,2),ctcplcFuFuhhL(3,3,6),ctcplcFuFuhhR(3,3,6), & 
& ctcplcFdFuHmL(3,3,2),ctcplcFdFuHmR(3,3,2),ctcplcFeFvHmL(3,3,2),ctcplcFeFvHmR(3,3,2),   & 
& ctcplcFdFdVGL(3,3),ctcplcFdFdVGR(3,3),ctcplcFdFdVPL(3,3),ctcplcFdFdVPR(3,3),           & 
& ctcplcFdFdVZL(3,3),ctcplcFdFdVZR(3,3),ctcplcFuFdcVWmL(3,3),ctcplcFuFdcVWmR(3,3),       & 
& ctcplcFeFeVPL(3,3),ctcplcFeFeVPR(3,3),ctcplcFeFeVZL(3,3),ctcplcFeFeVZR(3,3),           & 
& ctcplcFvFecVWmL(3,3),ctcplcFvFecVWmR(3,3),ctcplcFuFuVGL(3,3),ctcplcFuFuVGR(3,3),       & 
& ctcplcFuFuVPL(3,3),ctcplcFuFuVPR(3,3),ctcplcFdFuVWmL(3,3),ctcplcFdFuVWmR(3,3),         & 
& ctcplcFuFuVZL(3,3),ctcplcFuFuVZR(3,3),ctcplcFeFvVWmL(3,3),ctcplcFeFvVWmR(3,3),         & 
& ctcplcFvFvVZL(3,3),ctcplcFvFvVZR(3,3)

Complex(dp),Intent(in) :: GcplhhHmcHm(6,2,2),GcplhhHmcVWm(6,2),GcplhhcHmVWm(6,2),GcplHmcHmVP(2,2),              & 
& GcplHmcHmVZ(2,2),GcplHmcVWmVP(2),GcplHmcVWmVZ(2),GcplcHmVPVWm(2),GcplcHmVWmVZ(2),      & 
& GcplcFuFdcHmL(3,3,2),GcplcFuFdcHmR(3,3,2),GcplcFvFecHmL(3,3,2),GcplcFvFecHmR(3,3,2),   & 
& GcplcFdFuHmL(3,3,2),GcplcFdFuHmR(3,3,2),GcplcFeFvHmL(3,3,2),GcplcFeFvHmR(3,3,2)

Real(dp) ::  g1D(160) 
Real(dp) :: p2 
Logical :: TwoLoopRGEsave 
Real(dp) ::MVG,MVP,MVG2,MVP2
Complex(dp) ::  Tad1Loop(6)
Complex(dp) :: MatTad_hh(6,6)=0._dp 
Integer :: i1,i2,i3 

MVG = MLambda 
MVP = MLambda 
MVG2 = MLambda**2 
MVP2 = MLambda**2 

Call OneLoopTadpoleshh(vd,vu,vS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,              & 
& MHm2,MVWm,MVWm2,MVZ,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFeFehhL,cplcFeFehhR,              & 
& cplcFuFuhhL,cplcFuFuhhR,cplcgWmgWmhh,cplcgWpCgWpChh,cplcgZgZhh,cplhhhhhh,              & 
& cplhhHmcHm,cplhhcVWmVWm,cplhhVZVZ,Tad1Loop(1:6))

Tad1Loop(1:6) = MatMul(ZH,Tad1Loop(1:6)) 
Tad1Loop(1) = Tad1Loop(1)/vd 
Tad1Loop(2) = Tad1Loop(2)/vu 
Tad1Loop(3) = Tad1Loop(3)/vS 
Do i1=1,6
MatTad_hh(i1,i1) = Tad1Loop(0+ i1) 
End Do 
MatTad_hh = MatMul(MatMul(ZH,MatTad_hh),Transpose(ZH)) 
! Not working!! 
MatTad_hh= 0._dp
!--------------------------
!hh
!--------------------------
Do i1=1,6
p2 = Mhh2(i1)
Call Pi1Loophh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,              & 
& MVWm,MVWm2,cplcFdFdhhL,cplcFdFdhhR,cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,    & 
& cplcgWmgWmhh,cplcgWpCgWpChh,cplcgZgZhh,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,     & 
& cplhhcVWmVWm,cplhhVZVZ,cplhhhhhhhh,cplhhhhHmcHm,cplhhhhcVWmVWm,cplhhhhVZVZ,            & 
& kont,Pihh(i1,:,:))

Pihh(i1,:,:) = Pihh(i1,:,:) + MatTad_hh
Call DerPi1Loophh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,           & 
& MVWm,MVWm2,cplcFdFdhhL,cplcFdFdhhR,cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,    & 
& cplcgWmgWmhh,cplcgWpCgWpChh,cplcgZgZhh,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,     & 
& cplhhcVWmVWm,cplhhVZVZ,cplhhhhhhhh,cplhhhhHmcHm,cplhhhhcVWmVWm,cplhhhhVZVZ,            & 
& kont,DerPihh(i1,:,:))

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1Loophh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,           & 
& MVWm,MVWm2,cplcFdFdhhL,cplcFdFdhhR,cplcFeFehhL,cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,    & 
& cplcgWmgWmhh,cplcgWpCgWpChh,cplcgZgZhh,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,     & 
& cplhhcVWmVWm,cplhhVZVZ,cplhhhhhhhh,cplhhhhHmcHm,cplhhhhcVWmVWm,cplhhhhVZVZ,            & 
& kont,DerPihhDR(i1,:,:))

p2 =Mhh2OS(i1)
Call DerPi1Loophh(p2,MFdOS,MFd2OS,MFeOS,MFe2OS,MFuOS,MFu2OS,MhhOS,Mhh2OS,             & 
& MVZOS,MVZ2OS,MHmOS,MHm2OS,MVWmOS,MVWm2OS,cplcFdFdhhL,cplcFdFdhhR,cplcFeFehhL,          & 
& cplcFeFehhR,cplcFuFuhhL,cplcFuFuhhR,cplcgWmgWmhh,cplcgWpCgWpChh,cplcgZgZhh,            & 
& cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhcVWmVWm,cplhhVZVZ,cplhhhhhhhh,         & 
& cplhhhhHmcHm,cplhhhhcVWmVWm,cplhhhhVZVZ,kont,DerPihhOS(i1,:,:))

DerPihh(i1,:,:) = DerPihh(i1,:,:)- DerPihhDR(i1,:,:) + DerPihhOS(i1,:,:)
IRdivonly=.False. 
End if
End do


!--------------------------
!Hm
!--------------------------
Do i1=1,2
p2 = MHm2(i1)
Call Pi1LoopHm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,MVWm2,            & 
& MVZ,MVZ2,cplcFuFdcHmL,cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplcgZgWmcHm,             & 
& cplcgWmgZHm,cplcgWpCgZcHm,cplcgZgWpCHm,cplhhHmcHm,cplhhcHmVWm,cplHmcHmVP,              & 
& cplHmcHmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhHmcHm,cplHmHmcHmcHm,cplHmcHmVPVP,            & 
& cplHmcHmcVWmVWm,cplHmcHmVZVZ,kont,PiHm(i1,:,:))

Call DerPi1LoopHm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,               & 
& MVWm2,MVZ,MVZ2,cplcFuFdcHmL,cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplcgZgWmcHm,       & 
& cplcgWmgZHm,cplcgWpCgZcHm,cplcgZgWpCHm,cplhhHmcHm,cplhhcHmVWm,cplHmcHmVP,              & 
& cplHmcHmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhHmcHm,cplHmHmcHmcHm,cplHmcHmVPVP,            & 
& cplHmcHmcVWmVWm,cplHmcHmVZVZ,kont,DerPiHm(i1,:,:))

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1LoopHm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,               & 
& MVWm2,MVZ,MVZ2,cplcFuFdcHmL,cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplcgZgWmcHm,       & 
& cplcgWmgZHm,cplcgWpCgZcHm,cplcgZgWpCHm,cplhhHmcHm,cplhhcHmVWm,cplHmcHmVP,              & 
& cplHmcHmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhHmcHm,cplHmHmcHmcHm,cplHmcHmVPVP,            & 
& cplHmcHmcVWmVWm,cplHmcHmVZVZ,kont,DerPiHmDR(i1,:,:))

p2 =MHm2OS(i1)
Call DerPi1LoopHm(p2,MFuOS,MFu2OS,MFdOS,MFd2OS,MFeOS,MFe2OS,MHmOS,MHm2OS,             & 
& MhhOS,Mhh2OS,MVWmOS,MVWm2OS,MVZOS,MVZ2OS,cplcFuFdcHmL,cplcFuFdcHmR,cplcFvFecHmL,       & 
& cplcFvFecHmR,cplcgZgWmcHm,cplcgWmgZHm,cplcgWpCgZcHm,cplcgZgWpCHm,cplhhHmcHm,           & 
& cplhhcHmVWm,cplHmcHmVP,cplHmcHmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhHmcHm,cplHmHmcHmcHm,  & 
& cplHmcHmVPVP,cplHmcHmcVWmVWm,cplHmcHmVZVZ,kont,DerPiHmOS(i1,:,:))

DerPiHm(i1,:,:) = DerPiHm(i1,:,:)- DerPiHmDR(i1,:,:) + DerPiHmOS(i1,:,:)
IRdivonly=.False. 
End if
End do


!--------------------------
!Fd
!--------------------------
Do i1=1,3
p2 =MFd2(i1)
Call Sigma1LoopFd(p2,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,MFu,MFu2,MVWm,               & 
& MVWm2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,         & 
& cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,cplcFdFuVWmL,cplcFdFuVWmR,             & 
& SigmaLFd(i1,:,:),SigmaRFd(i1,:,:),SigmaSLFd(i1,:,:),SigmaSRFd(i1,:,:))

Call DerSigma1LoopFd(p2,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,MFu,MFu2,MVWm,            & 
& MVWm2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,         & 
& cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,cplcFdFuVWmL,cplcFdFuVWmR,             & 
& DerSigmaLFd(i1,:,:),DerSigmaRFd(i1,:,:),DerSigmaSLFd(i1,:,:),DerSigmaSRFd(i1,:,:))

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerSigma1LoopFd(p2,Mhh,Mhh2,MFd,MFd2,MVZ,MVZ2,MHm,MHm2,MFu,MFu2,MVWm,            & 
& MVWm2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,         & 
& cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,cplcFdFuVWmL,cplcFdFuVWmR,             & 
& DerSigmaLFdDR(i1,:,:),DerSigmaRFdDR(i1,:,:),DerSigmaSLFdDR(i1,:,:),DerSigmaSRFdDR(i1,:,:))

p2 =MFd2OS(i1)
Call DerSigma1LoopFd(p2,MhhOS,Mhh2OS,MFdOS,MFd2OS,MVZOS,MVZ2OS,MHmOS,MHm2OS,          & 
& MFuOS,MFu2OS,MVWmOS,MVWm2OS,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,           & 
& cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,               & 
& cplcFdFuVWmL,cplcFdFuVWmR,DerSigmaLFdOS(i1,:,:),DerSigmaRFdOS(i1,:,:),DerSigmaSLFdOS(i1,:,:)& 
& ,DerSigmaSRFdOS(i1,:,:))

DerSigmaLFd(i1,:,:) = DerSigmaLFd(i1,:,:) - DerSigmaLFdDR(i1,:,:)! + DerSigmaLFdOS(i1,:,:)
DerSigmaRFd(i1,:,:) = DerSigmaRFd(i1,:,:) - DerSigmaRFdDR(i1,:,:)! + DerSigmaRFdOS(i1,:,:)
DerSigmaSLFd(i1,:,:) = DerSigmaSLFd(i1,:,:) - DerSigmaSLFdDR(i1,:,:)! + DerSigmaSLFdOS(i1,:,:)
DerSigmaSRFd(i1,:,:) = DerSigmaSRFd(i1,:,:) - DerSigmaSRFdDR(i1,:,:)! + DerSigmaSRFdOS(i1,:,:)
DerSigmaLirFd(i1,:,:) = + DerSigmaLFdOS(i1,:,:)
DerSigmaRirFd(i1,:,:) = + DerSigmaRFdOS(i1,:,:)
DerSigmaSLirFd(i1,:,:) = + DerSigmaSLFdOS(i1,:,:)
DerSigmaSRirFd(i1,:,:) = + DerSigmaSRFdOS(i1,:,:)
IRdivonly=.False. 
Else
DerSigmaLirFd(i1,:,:) = 0._dp
DerSigmaRirFd(i1,:,:) = 0._dp
DerSigmaSLirFd(i1,:,:) = 0._dp
DerSigmaSRirFd(i1,:,:) = 0._dp
End if
End do


!--------------------------
!Fu
!--------------------------
Do i1=1,3
p2 =MFu2(i1)
Call Sigma1LoopFu(p2,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,Mhh2,MFu,MFu2,MVZ,              & 
& MVZ2,cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,    & 
& cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,               & 
& SigmaLFu(i1,:,:),SigmaRFu(i1,:,:),SigmaSLFu(i1,:,:),SigmaSRFu(i1,:,:))

Call DerSigma1LoopFu(p2,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,Mhh2,MFu,MFu2,               & 
& MVZ,MVZ2,cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,            & 
& cplcFuFuhhR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,               & 
& cplcFuFuVZR,DerSigmaLFu(i1,:,:),DerSigmaRFu(i1,:,:),DerSigmaSLFu(i1,:,:)               & 
& ,DerSigmaSRFu(i1,:,:))

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerSigma1LoopFu(p2,MHm,MHm2,MFd,MFd2,MVWm,MVWm2,Mhh,Mhh2,MFu,MFu2,               & 
& MVZ,MVZ2,cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,            & 
& cplcFuFuhhR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,               & 
& cplcFuFuVZR,DerSigmaLFuDR(i1,:,:),DerSigmaRFuDR(i1,:,:),DerSigmaSLFuDR(i1,:,:)         & 
& ,DerSigmaSRFuDR(i1,:,:))

p2 =MFu2OS(i1)
Call DerSigma1LoopFu(p2,MHmOS,MHm2OS,MFdOS,MFd2OS,MVWmOS,MVWm2OS,MhhOS,               & 
& Mhh2OS,MFuOS,MFu2OS,MVZOS,MVZ2OS,cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,              & 
& cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,             & 
& cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,DerSigmaLFuOS(i1,:,:),DerSigmaRFuOS(i1,:,:)        & 
& ,DerSigmaSLFuOS(i1,:,:),DerSigmaSRFuOS(i1,:,:))

DerSigmaLFu(i1,:,:) = DerSigmaLFu(i1,:,:) - DerSigmaLFuDR(i1,:,:)! + DerSigmaLFuOS(i1,:,:)
DerSigmaRFu(i1,:,:) = DerSigmaRFu(i1,:,:) - DerSigmaRFuDR(i1,:,:)! + DerSigmaRFuOS(i1,:,:)
DerSigmaSLFu(i1,:,:) = DerSigmaSLFu(i1,:,:) - DerSigmaSLFuDR(i1,:,:)! + DerSigmaSLFuOS(i1,:,:)
DerSigmaSRFu(i1,:,:) = DerSigmaSRFu(i1,:,:) - DerSigmaSRFuDR(i1,:,:)! + DerSigmaSRFuOS(i1,:,:)
DerSigmaLirFu(i1,:,:) = + DerSigmaLFuOS(i1,:,:)
DerSigmaRirFu(i1,:,:) = + DerSigmaRFuOS(i1,:,:)
DerSigmaSLirFu(i1,:,:) = + DerSigmaSLFuOS(i1,:,:)
DerSigmaSRirFu(i1,:,:) = + DerSigmaSRFuOS(i1,:,:)
IRdivonly=.False. 
Else
DerSigmaLirFu(i1,:,:) = 0._dp
DerSigmaRirFu(i1,:,:) = 0._dp
DerSigmaSLirFu(i1,:,:) = 0._dp
DerSigmaSRirFu(i1,:,:) = 0._dp
End if
End do


!--------------------------
!Fe
!--------------------------
Do i1=1,3
p2 =MFe2(i1)
Call Sigma1LoopFe(p2,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,cplcFeFehhL,      & 
& cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFeFvHmL,               & 
& cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,SigmaLFe(i1,:,:),SigmaRFe(i1,:,:),               & 
& SigmaSLFe(i1,:,:),SigmaSRFe(i1,:,:))

Call DerSigma1LoopFe(p2,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,               & 
& cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,               & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,DerSigmaLFe(i1,:,:),DerSigmaRFe(i1,:,:)& 
& ,DerSigmaSLFe(i1,:,:),DerSigmaSRFe(i1,:,:))

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerSigma1LoopFe(p2,Mhh,Mhh2,MFe,MFe2,MVZ,MVZ2,MHm,MHm2,MVWm,MVWm2,               & 
& cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,               & 
& cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,DerSigmaLFeDR(i1,:,:),               & 
& DerSigmaRFeDR(i1,:,:),DerSigmaSLFeDR(i1,:,:),DerSigmaSRFeDR(i1,:,:))

p2 =MFe2OS(i1)
Call DerSigma1LoopFe(p2,MhhOS,Mhh2OS,MFeOS,MFe2OS,MVZOS,MVZ2OS,MHmOS,MHm2OS,          & 
& MVWmOS,MVWm2OS,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,            & 
& cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,DerSigmaLFeOS(i1,:,:)    & 
& ,DerSigmaRFeOS(i1,:,:),DerSigmaSLFeOS(i1,:,:),DerSigmaSRFeOS(i1,:,:))

DerSigmaLFe(i1,:,:) = DerSigmaLFe(i1,:,:) - DerSigmaLFeDR(i1,:,:)! + DerSigmaLFeOS(i1,:,:)
DerSigmaRFe(i1,:,:) = DerSigmaRFe(i1,:,:) - DerSigmaRFeDR(i1,:,:)! + DerSigmaRFeOS(i1,:,:)
DerSigmaSLFe(i1,:,:) = DerSigmaSLFe(i1,:,:) - DerSigmaSLFeDR(i1,:,:)! + DerSigmaSLFeOS(i1,:,:)
DerSigmaSRFe(i1,:,:) = DerSigmaSRFe(i1,:,:) - DerSigmaSRFeDR(i1,:,:)! + DerSigmaSRFeOS(i1,:,:)
DerSigmaLirFe(i1,:,:) = + DerSigmaLFeOS(i1,:,:)
DerSigmaRirFe(i1,:,:) = + DerSigmaRFeOS(i1,:,:)
DerSigmaSLirFe(i1,:,:) = + DerSigmaSLFeOS(i1,:,:)
DerSigmaSRirFe(i1,:,:) = + DerSigmaSRFeOS(i1,:,:)
IRdivonly=.False. 
Else
DerSigmaLirFe(i1,:,:) = 0._dp
DerSigmaRirFe(i1,:,:) = 0._dp
DerSigmaSLirFe(i1,:,:) = 0._dp
DerSigmaSRirFe(i1,:,:) = 0._dp
End if
End do


!--------------------------
!Fv
!--------------------------
Do i1=1,3
p2 =0._dp
Call Sigma1LoopFv(p2,MHm,MHm2,MFe,MFe2,MVWm,MVWm2,MVZ,MVZ2,cplcFvFecHmL,              & 
& cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFvFvVZL,cplcFvFvVZR,SigmaLFv(i1,:,:)      & 
& ,SigmaRFv(i1,:,:),SigmaSLFv(i1,:,:),SigmaSRFv(i1,:,:))

Call DerSigma1LoopFv(p2,MHm,MHm2,MFe,MFe2,MVWm,MVWm2,MVZ,MVZ2,cplcFvFecHmL,           & 
& cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFvFvVZL,cplcFvFvVZR,DerSigmaLFv(i1,:,:)   & 
& ,DerSigmaRFv(i1,:,:),DerSigmaSLFv(i1,:,:),DerSigmaSRFv(i1,:,:))

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerSigma1LoopFv(p2,MHm,MHm2,MFe,MFe2,MVWm,MVWm2,MVZ,MVZ2,cplcFvFecHmL,           & 
& cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFvFvVZL,cplcFvFvVZR,DerSigmaLFvDR(i1,:,:) & 
& ,DerSigmaRFvDR(i1,:,:),DerSigmaSLFvDR(i1,:,:),DerSigmaSRFvDR(i1,:,:))

p2 =0._dp
Call DerSigma1LoopFv(p2,MHmOS,MHm2OS,MFeOS,MFe2OS,MVWmOS,MVWm2OS,MVZOS,               & 
& MVZ2OS,cplcFvFecHmL,cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFvFvVZL,              & 
& cplcFvFvVZR,DerSigmaLFvOS(i1,:,:),DerSigmaRFvOS(i1,:,:),DerSigmaSLFvOS(i1,:,:)         & 
& ,DerSigmaSRFvOS(i1,:,:))

DerSigmaLFv(i1,:,:) = DerSigmaLFv(i1,:,:) - DerSigmaLFvDR(i1,:,:)! + DerSigmaLFvOS(i1,:,:)
DerSigmaRFv(i1,:,:) = DerSigmaRFv(i1,:,:) - DerSigmaRFvDR(i1,:,:)! + DerSigmaRFvOS(i1,:,:)
DerSigmaSLFv(i1,:,:) = DerSigmaSLFv(i1,:,:) - DerSigmaSLFvDR(i1,:,:)! + DerSigmaSLFvOS(i1,:,:)
DerSigmaSRFv(i1,:,:) = DerSigmaSRFv(i1,:,:) - DerSigmaSRFvDR(i1,:,:)! + DerSigmaSRFvOS(i1,:,:)
DerSigmaLirFv(i1,:,:) = + DerSigmaLFvOS(i1,:,:)
DerSigmaRirFv(i1,:,:) = + DerSigmaRFvOS(i1,:,:)
DerSigmaSLirFv(i1,:,:) = + DerSigmaSLFvOS(i1,:,:)
DerSigmaSRirFv(i1,:,:) = + DerSigmaSRFvOS(i1,:,:)
IRdivonly=.False. 
Else
DerSigmaLirFv(i1,:,:) = 0._dp
DerSigmaRirFv(i1,:,:) = 0._dp
DerSigmaSLirFv(i1,:,:) = 0._dp
DerSigmaSRirFv(i1,:,:) = 0._dp
End if
End do


!--------------------------
!VG
!--------------------------
p2 = MVG2
Call Pi1LoopVG(p2,MFd,MFd2,MFu,MFu2,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,              & 
& cplcFuFuVGR,cplcgGgGVG,cplVGVGVG,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,               & 
& kont,PiVG)

Call DerPi1LoopVG(p2,MFd,MFd2,MFu,MFu2,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,           & 
& cplcFuFuVGR,cplcgGgGVG,cplVGVGVG,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,               & 
& kont,DerPiVG)

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1LoopVG(p2,MFd,MFd2,MFu,MFu2,cplcFdFdVGL,cplcFdFdVGR,cplcFuFuVGL,           & 
& cplcFuFuVGR,cplcgGgGVG,cplVGVGVG,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,               & 
& kont,DerPiVGDR)

p2 = 0.
Call DerPi1LoopVG(p2,MFdOS,MFd2OS,MFuOS,MFu2OS,cplcFdFdVGL,cplcFdFdVGR,               & 
& cplcFuFuVGL,cplcFuFuVGR,cplcgGgGVG,cplVGVGVG,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,   & 
& kont,DerPiVGOS)

DerPiVG = DerPiVG-DerPiVGDR + DerPiVGOS
IRdivonly=.False. 
End if 
!--------------------------
!VP
!--------------------------
p2 = MVP2
Call Pi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,         & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm3,       & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,PiVP)

Call DerPi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,      & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm3,       & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,DerPiVP)

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,      & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm3,       & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,DerPiVPDR)

p2 = 0.
Call DerPi1LoopVP(p2,MFdOS,MFd2OS,MFeOS,MFe2OS,MFuOS,MFu2OS,MHmOS,MHm2OS,             & 
& MVWmOS,MVWm2OS,cplcFdFdVPL,cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,            & 
& cplcFuFuVPR,cplcgWmgWmVP,cplcgWpCgWpCVP,GcplHmcHmVP,GcplHmcVWmVP,cplcVWmVPVWm,         & 
& cplHmcHmVPVP,cplcVWmVPVPVWm3,cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,DerPiVPOS)

DerPiVP = DerPiVP-DerPiVPDR + DerPiVPOS
IRdivonly=.False. 
End if 
!--------------------------
!VZ
!--------------------------
p2 = MVZ2
Call Pi1LoopVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,              & 
& MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,    & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,               & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,          & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,PiVZ)

Call DerPi1LoopVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,           & 
& MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,    & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,               & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,          & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,DerPiVZ)

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1LoopVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MVZ,MVZ2,MHm,MHm2,           & 
& MVWm,MVWm2,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,    & 
& cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,               & 
& cplHmcHmVZ,cplHmcVWmVZ,cplcVWmVWmVZ,cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,          & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,DerPiVZDR)

p2 = MVZ2OS
Call DerPi1LoopVZ(p2,MFdOS,MFd2OS,MFeOS,MFe2OS,MFuOS,MFu2OS,MhhOS,Mhh2OS,             & 
& MVZOS,MVZ2OS,MHmOS,MHm2OS,MVWmOS,MVWm2OS,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVZL,          & 
& cplcFeFeVZR,cplcFuFuVZL,cplcFuFuVZR,cplcFvFvVZL,cplcFvFvVZR,cplcgWmgWmVZ,              & 
& cplcgWpCgWpCVZ,cplhhhhVZ,cplhhVZVZ,GcplHmcHmVZ,GcplHmcVWmVZ,cplcVWmVWmVZ,              & 
& cplhhhhVZVZ,cplHmcHmVZVZ,cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,              & 
& kont,DerPiVZOS)

DerPiVZ = DerPiVZ-DerPiVZDR + DerPiVZOS
IRdivonly=.False. 
End if 
!--------------------------
!VWm
!--------------------------
p2 = MVWm2
Call Pi1LoopVWm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,MVWm2,           & 
& MVZ,MVZ2,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm,       & 
& cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmVPVPVWm3,  & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,& 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,PiVWm)

Call DerPi1LoopVWm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,              & 
& MVWm2,MVZ,MVZ2,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm, & 
& cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmVPVPVWm3,  & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,& 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,DerPiVWm)

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1LoopVWm(p2,MFu,MFu2,MFd,MFd2,MFe,MFe2,MHm,MHm2,Mhh,Mhh2,MVWm,              & 
& MVWm2,MVZ,MVZ2,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcgWpCgAcVWm, & 
& cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,cplhhHmcVWm,cplhhcVWmVWm,cplHmcVWmVP,       & 
& cplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmVPVPVWm3,  & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,& 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,DerPiVWmDR)

p2 = MVWm2OS
Call DerPi1LoopVWm(p2,MFuOS,MFu2OS,MFdOS,MFd2OS,MFeOS,MFe2OS,MHmOS,MHm2OS,            & 
& MhhOS,Mhh2OS,MVWmOS,MVWm2OS,MVZOS,MVZ2OS,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,    & 
& cplcFvFecVWmR,cplcgWpCgAcVWm,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgZcVWm,               & 
& GcplhhHmcVWm,cplhhcVWmVWm,GcplHmcVWmVP,GcplHmcVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,         & 
& cplhhhhcVWmVWm,cplHmcHmcVWmVWm,cplcVWmVPVPVWm3,cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,        & 
& cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmcVWmVWmVWm1,cplcVWmVWmVZVZ1,              & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,kont,DerPiVWmOS)

DerPiVWm = DerPiVWm-DerPiVWmDR + DerPiVWmOS
IRdivonly=.False. 
End if 
!--------------------------
! Additional Self-Energies for Photon
!--------------------------
p2 = 0._dp
OnlyLightStates = .True. 
Call Pi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,         & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm3,       & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,PiVPlight0)

Call DerPi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,      & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm3,       & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,DerPiVPlight0)

OnlyLightStates = .False. 
p2 = 0._dp
OnlyHeavyStates = .True. 
Call Pi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,         & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm3,       & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,PiVPheavy0)

Call DerPi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,      & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm3,       & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,DerPiVPheavy0)

OnlyHeavyStates = .False. 
p2 = MVZ2
OnlyLightStates = .True. 
Call Pi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,         & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm3,       & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,PiVPlightMZ)

Call DerPi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,      & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm3,       & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,DerPiVPlightMZ)

OnlyLightStates = .False. 
p2 = MVZ2
OnlyHeavyStates = .True. 
Call Pi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,         & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm3,       & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,PiVPheavyMZ)

Call DerPi1LoopVP(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,      & 
& cplcFdFdVPR,cplcFeFeVPL,cplcFeFeVPR,cplcFuFuVPL,cplcFuFuVPR,cplcgWmgWmVP,              & 
& cplcgWpCgWpCVP,cplHmcHmVP,cplHmcVWmVP,cplcVWmVPVWm,cplHmcHmVPVP,cplcVWmVPVPVWm3,       & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,kont,DerPiVPheavyMZ)

OnlyHeavyStates = .False. 
!--------------------------
!VP
!--------------------------
p2 = MVZ2
Call Pi1LoopVPVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,       & 
& cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,               & 
& cplcFeFeVZR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmVP,              & 
& cplcgWmgWmVZ,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,       & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmVWmVZ,cplHmcHmVP,               & 
& cplHmcHmVPVZ,cplHmcHmVZ,cplHmcVWmVP,cplHmcVWmVZ,kont,PiVPVZ)

Call DerPi1LoopVPVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,    & 
& cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,               & 
& cplcFeFeVZR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmVP,              & 
& cplcgWmgWmVZ,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,       & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmVWmVZ,cplHmcHmVP,               & 
& cplHmcHmVPVZ,cplHmcHmVZ,cplHmcVWmVP,cplHmcVWmVZ,kont,DerPiVPVZ)

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1LoopVPVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,    & 
& cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,               & 
& cplcFeFeVZR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmVP,              & 
& cplcgWmgWmVZ,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,       & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmVWmVZ,cplHmcHmVP,               & 
& cplHmcHmVPVZ,cplHmcHmVZ,cplHmcVWmVP,cplHmcVWmVZ,kont,DerPiVPVZDR)

p2 =MVZ2OS
Call DerPi1LoopVPVZ(p2,MFdOS,MFd2OS,MFeOS,MFe2OS,MFuOS,MFu2OS,MHmOS,MHm2OS,           & 
& MVWmOS,MVWm2OS,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVPL,            & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,               & 
& cplcFuFuVZR,cplcgWmgWmVP,cplcgWmgWmVZ,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,GcplcHmVPVWm,      & 
& GcplcHmVWmVZ,cplcVWmVPVWm,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,             & 
& cplcVWmVWmVZ,GcplHmcHmVP,cplHmcHmVPVZ,GcplHmcHmVZ,GcplHmcVWmVP,GcplHmcVWmVZ,           & 
& kont,DerPiVPVZOS)

DerPiVPVZ = DerPiVPVZ- DerPiVPVZDR + DerPiVPVZOS
IRdivonly=.False. 
End if
p2 = 0._dp 
Call Pi1LoopVPVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,       & 
& cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,               & 
& cplcFeFeVZR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmVP,              & 
& cplcgWmgWmVZ,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,       & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmVWmVZ,cplHmcHmVP,               & 
& cplHmcHmVPVZ,cplHmcHmVZ,cplHmcVWmVP,cplHmcVWmVZ,kont,PiVZVP)

Call DerPi1LoopVPVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,    & 
& cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,               & 
& cplcFeFeVZR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmVP,              & 
& cplcgWmgWmVZ,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,       & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmVWmVZ,cplHmcHmVP,               & 
& cplHmcHmVPVZ,cplHmcHmVZ,cplHmcVWmVP,cplHmcVWmVZ,kont,DerPiVZVP)

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1LoopVPVZ(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,MHm,MHm2,MVWm,MVWm2,cplcFdFdVPL,    & 
& cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,               & 
& cplcFeFeVZR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmVP,              & 
& cplcgWmgWmVZ,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,       & 
& cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,cplcVWmVWmVZ,cplHmcHmVP,               & 
& cplHmcHmVPVZ,cplHmcHmVZ,cplHmcVWmVP,cplHmcVWmVZ,kont,DerPiVPVZDR)

p2 = 0._dp 
Call DerPi1LoopVPVZ(p2,MFdOS,MFd2OS,MFeOS,MFe2OS,MFuOS,MFu2OS,MHmOS,MHm2OS,           & 
& MVWmOS,MVWm2OS,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFeVPL,            & 
& cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,               & 
& cplcFuFuVZR,cplcgWmgWmVP,cplcgWmgWmVZ,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,GcplcHmVPVWm,      & 
& GcplcHmVWmVZ,cplcVWmVPVWm,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,             & 
& cplcVWmVWmVZ,GcplHmcHmVP,cplHmcHmVPVZ,GcplHmcHmVZ,GcplHmcVWmVP,GcplHmcVWmVZ,           & 
& kont,DerPiVPVZOS)

DerPiVPVZ = DerPiVPVZ- DerPiVPVZDR + DerPiVPVZOS
IRdivonly=.False. 
End if
!--------------------------
!VZ
!--------------------------
Do i1=1,6
p2 = Mhh2(i1)
Call Pi1LoopVZhh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,          & 
& MVZ,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,      & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,               & 
& cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplcHmVWmVZ,cplcVWmVWmVZ,      & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhVZVZ,         & 
& cplHmcHmVZ,cplHmcVWmVZ,kont,PiVZhh(i1,:,:))

Call DerPi1LoopVZhh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,             & 
& MVWm2,MVZ,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,            & 
& cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,               & 
& cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplcHmVWmVZ,       & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,kont,DerPiVZhh(i1,:,:))

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1LoopVZhh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,             & 
& MVWm2,MVZ,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,            & 
& cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,               & 
& cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplcHmVWmVZ,       & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,kont,DerPiVZhhDR(i1,:,:))

p2 =Mhh2OS(i1)
Call DerPi1LoopVZhh(p2,MFdOS,MFd2OS,MFeOS,MFe2OS,MFuOS,MFu2OS,MhhOS,Mhh2OS,           & 
& MHmOS,MHm2OS,MVWmOS,MVWm2OS,MVZOS,MVZ2OS,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,          & 
& cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,          & 
& cplcgWpCgWpCVZ,GcplcHmVWmVZ,cplcVWmVWmVZ,GcplhhcHmVWm,cplhhcVWmVWm,cplhhhhhh,          & 
& cplhhhhVZ,GcplhhHmcHm,GcplhhHmcVWm,cplhhVZVZ,GcplHmcHmVZ,GcplHmcVWmVZ,kont,            & 
& DerPiVZhhOS(i1,:,:))

DerPiVZhh(i1,:,:) = DerPiVZhh(i1,:,:)- DerPiVZhhDR(i1,:,:) + DerPiVZhhOS(i1,:,:)
IRdivonly=.False. 
End if
End do
p2 = MVZ2
Call Pi1LoopVZhh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,          & 
& MVZ,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,      & 
& cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,               & 
& cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplcHmVWmVZ,cplcVWmVWmVZ,      & 
& cplhhcHmVWm,cplhhcVWmVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhVZVZ,         & 
& cplHmcHmVZ,cplHmcVWmVZ,kont,PihhVZ)

Call DerPi1LoopVZhh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,             & 
& MVWm2,MVZ,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,            & 
& cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,               & 
& cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplcHmVWmVZ,       & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,kont,DerPihhVZ)

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1LoopVZhh(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,             & 
& MVWm2,MVZ,MVZ2,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,cplcFdFdVZR,cplcFeFehhL,            & 
& cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVZL,               & 
& cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,cplcgWpCgWpCVZ,cplcHmVWmVZ,       & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,      & 
& cplhhVZVZ,cplHmcHmVZ,cplHmcVWmVZ,kont,DerPiVZhhDR)

p2 =MVZ2OS
Call DerPi1LoopVZhh(p2,MFdOS,MFd2OS,MFeOS,MFe2OS,MFuOS,MFu2OS,MhhOS,Mhh2OS,           & 
& MHmOS,MHm2OS,MVWmOS,MVWm2OS,MVZOS,MVZ2OS,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVZL,          & 
& cplcFdFdVZR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVZL,cplcFeFeVZR,cplcFuFuhhL,               & 
& cplcFuFuhhR,cplcFuFuVZL,cplcFuFuVZR,cplcgWmgWmhh,cplcgWmgWmVZ,cplcgWpCgWpChh,          & 
& cplcgWpCgWpCVZ,GcplcHmVWmVZ,cplcVWmVWmVZ,GcplhhcHmVWm,cplhhcVWmVWm,cplhhhhhh,          & 
& cplhhhhVZ,GcplhhHmcHm,GcplhhHmcVWm,cplhhVZVZ,GcplHmcHmVZ,GcplHmcVWmVZ,kont,            & 
& DerPiVZhhOS)

DerPiVZhh = DerPiVZhh- DerPiVZhhDR + DerPiVZhhOS
IRdivonly=.False. 
End if
!--------------------------
!VWm
!--------------------------
Do i1=1,2
p2 = MHm2(i1)
Call Pi1LoopVWmHm(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,               & 
& MVWm2,MVZ,MVZ2,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFuFdcHmL,       & 
& cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplcgAgWpCVWm,cplcgWmgZVWm,cplcgWpCgAcHm,       & 
& cplcgWpCgZcHm,cplcgZgWmcHm,cplcgZgWpCVWm,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,         & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhHmcHm,cplHmcHmVP,cplHmcHmVZ,kont,           & 
& PiVWmHm(i1,:,:))

Call DerPi1LoopVWmHm(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,            & 
& MVWm2,MVZ,MVZ2,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFuFdcHmL,       & 
& cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplcgAgWpCVWm,cplcgWmgZVWm,cplcgWpCgAcHm,       & 
& cplcgWpCgZcHm,cplcgZgWmcHm,cplcgZgWpCVWm,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,         & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhHmcHm,cplHmcHmVP,cplHmcHmVZ,kont,           & 
& DerPiVWmHm(i1,:,:))

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1LoopVWmHm(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,            & 
& MVWm2,MVZ,MVZ2,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFuFdcHmL,       & 
& cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplcgAgWpCVWm,cplcgWmgZVWm,cplcgWpCgAcHm,       & 
& cplcgWpCgZcHm,cplcgZgWmcHm,cplcgZgWpCVWm,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,         & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhHmcHm,cplHmcHmVP,cplHmcHmVZ,kont,           & 
& DerPiVWmHmDR(i1,:,:))

p2 =MHm2OS(i1)
Call DerPi1LoopVWmHm(p2,MFdOS,MFd2OS,MFeOS,MFe2OS,MFuOS,MFu2OS,MhhOS,Mhh2OS,          & 
& MHmOS,MHm2OS,MVWmOS,MVWm2OS,MVZOS,MVZ2OS,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,       & 
& cplcFeFvVWmR,GcplcFuFdcHmL,GcplcFuFdcHmR,GcplcFvFecHmL,GcplcFvFecHmR,cplcgAgWpCVWm,    & 
& cplcgWmgZVWm,cplcgWpCgAcHm,cplcgWpCgZcHm,cplcgZgWmcHm,cplcgZgWpCVWm,GcplcHmVPVWm,      & 
& GcplcHmVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,GcplhhcHmVWm,cplhhcVWmVWm,GcplhhHmcHm,          & 
& GcplHmcHmVP,GcplHmcHmVZ,kont,DerPiVWmHmOS(i1,:,:))

DerPiVWmHm(i1,:,:) = DerPiVWmHm(i1,:,:)- DerPiVWmHmDR(i1,:,:) + DerPiVWmHmOS(i1,:,:)
IRdivonly=.False. 
End if
End do
p2 = MVWm2
Call Pi1LoopVWmHm(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,               & 
& MVWm2,MVZ,MVZ2,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFuFdcHmL,       & 
& cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplcgAgWpCVWm,cplcgWmgZVWm,cplcgWpCgAcHm,       & 
& cplcgWpCgZcHm,cplcgZgWmcHm,cplcgZgWpCVWm,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,         & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhHmcHm,cplHmcHmVP,cplHmcHmVZ,kont,PiHmVWm)

Call DerPi1LoopVWmHm(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,            & 
& MVWm2,MVZ,MVZ2,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFuFdcHmL,       & 
& cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplcgAgWpCVWm,cplcgWmgZVWm,cplcgWpCgAcHm,       & 
& cplcgWpCgZcHm,cplcgZgWmcHm,cplcgZgWpCVWm,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,         & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhHmcHm,cplHmcHmVP,cplHmcHmVZ,kont,           & 
& DerPiHmVWm)

If ((ShiftIRdiv).and.(OSkinematics)) Then 
IRdivonly=.True. 
Call DerPi1LoopVWmHm(p2,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,            & 
& MVWm2,MVZ,MVZ2,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFuFdcHmL,       & 
& cplcFuFdcHmR,cplcFvFecHmL,cplcFvFecHmR,cplcgAgWpCVWm,cplcgWmgZVWm,cplcgWpCgAcHm,       & 
& cplcgWpCgZcHm,cplcgZgWmcHm,cplcgZgWpCVWm,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,         & 
& cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhHmcHm,cplHmcHmVP,cplHmcHmVZ,kont,           & 
& DerPiVWmHmDR)

p2 =MVWm2OS
Call DerPi1LoopVWmHm(p2,MFdOS,MFd2OS,MFeOS,MFe2OS,MFuOS,MFu2OS,MhhOS,Mhh2OS,          & 
& MHmOS,MHm2OS,MVWmOS,MVWm2OS,MVZOS,MVZ2OS,cplcFdFuVWmL,cplcFdFuVWmR,cplcFeFvVWmL,       & 
& cplcFeFvVWmR,GcplcFuFdcHmL,GcplcFuFdcHmR,GcplcFvFecHmL,GcplcFvFecHmR,cplcgAgWpCVWm,    & 
& cplcgWmgZVWm,cplcgWpCgAcHm,cplcgWpCgZcHm,cplcgZgWmcHm,cplcgZgWpCVWm,GcplcHmVPVWm,      & 
& GcplcHmVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,GcplhhcHmVWm,cplhhcVWmVWm,GcplhhHmcHm,          & 
& GcplHmcHmVP,GcplHmcHmVZ,kont,DerPiVWmHmOS)

DerPiVWmHm = DerPiVWmHm- DerPiVWmHmDR + DerPiVWmHmOS
IRdivonly=.False. 
End if
! -----------------------------------------------------------
! Calculate now all wave-function renormalisation constants 
! -----------------------------------------------------------


!  ######    VG    ###### 
ZfVG = -DerPiVG


!  ######    vL    ###### 
Do i1=1,3
  Do i2=1,3
   If (i1.eq.i2) Then 
     ZfvL(i1,i2) = -SigmaRFv(i2,i1,i2) 
   Else 
     ZfvL(i1,i2) = 0._dp 
   End if 
  End Do 
End Do 


!  ######    VP    ###### 
ZfVP = -DerPiVP


!  ######    VZ    ###### 
ZfVZ = -DerPiVZ


!  ######    VWm    ###### 
ZfVWm = -DerPiVWm


!  ######    hh    ###### 
Do i1=1,6
  Do i2=1,6
   If ((i1.eq.i2).or.(Mhh(i1).eq.Mhh(i2))) Then 
       Zfhh(i1,i2) = -DerPihh(i1,i1,i2)
   Else 
       Zfhh(i1,i2) = 2._dp/(Mhh2(i1)-Mhh2(i2))*Pihh(i2,i1,i2)
   End if 
  End Do 
End Do 


!  ######    Hm    ###### 
Do i1=1,2
  Do i2=1,2
   If ((i1.eq.i2).or.(MHm(i1).eq.MHm(i2))) Then 
       ZfHm(i1,i2) = -DerPiHm(i1,i1,i2)
   Else 
       ZfHm(i1,i2) = 2._dp/(MHm2(i1)-MHm2(i2))*PiHm(i2,i1,i2)
   End if 
  End Do 
End Do 


!  ######    DL    ###### 
Do i1=1,3
  Do i2=1,3
   If ((i1.eq.i2).or.(MFd(i1).eq.MFd(i2))) Then 
     ZfDL(i1,i2) = -SigmaRFd(i2,i1,i2) &
      & -MFd2(i1)*(DerSigmaRFd(i2,i1,i2) + DerSigmaLFd(i2,i1,i2))&
      & -MFd(i1)*(DerSigmaSRFd(i2,i1,i2)+DerSigmaSLFd(i2,i1,i2))
     If (OSkinematics) Then 
     ZfDL(i1,i2) = ZfDL(i1,i2) &
      & -MFd2OS(i1)*(DerSigmaRirFd(i2,i1,i2) + DerSigmaLirFd(i2,i1,i2))&
      & -MFdOS(i1)*(DerSigmaSRirFd(i2,i1,i2)+DerSigmaSLirFd(i2,i1,i2))
     Else 
     ZfDL(i1,i2) = ZfDL(i1,i2) &
      & -MFd2(i1)*(DerSigmaRirFd(i2,i1,i2) + DerSigmaLirFd(i2,i1,i2))&
      & -MFd(i1)*(DerSigmaSRirFd(i2,i1,i2)+DerSigmaSLirFd(i2,i1,i2))
     End if 
   Else 
     ZfDL(i1,i2) = 2._dp/(MFd2(i1) - MFd2(i2))* &
      & (MFd2(i2)*SigmaRFd(i2,i1,i2) + MFd(i1)*MFd(i2)*SigmaLFd(i2,i1,i2) + MFd(i1)*SigmaSRFd(i2,i1,i2) + MFd(i2)*SigmaSLFd(i2,i1,i2))
   End if 
  End Do 
End Do 


!  ######    DR    ###### 
Do i1=1,3
  Do i2=1,3
   If ((i1.eq.i2).or.(MFd(i1).eq.MFd(i2))) Then 
     ZfDR(i1,i2) = -SigmaLFd(i2,i1,i2) &
      & -MFd2(i1)*(DerSigmaLFd(i2,i1,i2) + DerSigmaRFd(i2,i1,i2))&
      & -MFd(i1)*(DerSigmaSLFd(i2,i1,i2)+DerSigmaSRFd(i2,i1,i2))
     If (OSkinematics) Then 
     ZfDR(i1,i2) = ZfDR(i1,i2) &
      & -MFd2OS(i1)*(DerSigmaLirFd(i2,i1,i2) + DerSigmaRirFd(i2,i1,i2))&
      & -MFdOS(i1)*(DerSigmaSLirFd(i2,i1,i2)+DerSigmaSRirFd(i2,i1,i2))
     Else 
     ZfDR(i1,i2) = ZfDR(i1,i2) &
      & -MFd2(i1)*(DerSigmaLirFd(i2,i1,i2) + DerSigmaRirFd(i2,i1,i2))&
      & -MFd(i1)*(DerSigmaSLirFd(i2,i1,i2)+DerSigmaSRirFd(i2,i1,i2))
     End if 
   Else 
     ZfDR(i1,i2) = 2._dp/(MFd2(i1) - MFd2(i2))* &
      & (MFd2(i2)*SigmaLFd(i2,i1,i2) + MFd(i1)*MFd(i2)*SigmaRFd(i2,i1,i2) + MFd(i1)*SigmaSLFd(i2,i1,i2) + MFd(i2)*SigmaSRFd(i2,i1,i2))
   End if 
  End Do 
End Do 


!  ######    UL    ###### 
Do i1=1,3
  Do i2=1,3
   If ((i1.eq.i2).or.(MFu(i1).eq.MFu(i2))) Then 
     ZfUL(i1,i2) = -SigmaRFu(i2,i1,i2) &
      & -MFu2(i1)*(DerSigmaRFu(i2,i1,i2) + DerSigmaLFu(i2,i1,i2))&
      & -MFu(i1)*(DerSigmaSRFu(i2,i1,i2)+DerSigmaSLFu(i2,i1,i2))
     If (OSkinematics) Then 
     ZfUL(i1,i2) = ZfUL(i1,i2) &
      & -MFu2OS(i1)*(DerSigmaRirFu(i2,i1,i2) + DerSigmaLirFu(i2,i1,i2))&
      & -MFuOS(i1)*(DerSigmaSRirFu(i2,i1,i2)+DerSigmaSLirFu(i2,i1,i2))
     Else 
     ZfUL(i1,i2) = ZfUL(i1,i2) &
      & -MFu2(i1)*(DerSigmaRirFu(i2,i1,i2) + DerSigmaLirFu(i2,i1,i2))&
      & -MFu(i1)*(DerSigmaSRirFu(i2,i1,i2)+DerSigmaSLirFu(i2,i1,i2))
     End if 
   Else 
     ZfUL(i1,i2) = 2._dp/(MFu2(i1) - MFu2(i2))* &
      & (MFu2(i2)*SigmaRFu(i2,i1,i2) + MFu(i1)*MFu(i2)*SigmaLFu(i2,i1,i2) + MFu(i1)*SigmaSRFu(i2,i1,i2) + MFu(i2)*SigmaSLFu(i2,i1,i2))
   End if 
  End Do 
End Do 


!  ######    UR    ###### 
Do i1=1,3
  Do i2=1,3
   If ((i1.eq.i2).or.(MFu(i1).eq.MFu(i2))) Then 
     ZfUR(i1,i2) = -SigmaLFu(i2,i1,i2) &
      & -MFu2(i1)*(DerSigmaLFu(i2,i1,i2) + DerSigmaRFu(i2,i1,i2))&
      & -MFu(i1)*(DerSigmaSLFu(i2,i1,i2)+DerSigmaSRFu(i2,i1,i2))
     If (OSkinematics) Then 
     ZfUR(i1,i2) = ZfUR(i1,i2) &
      & -MFu2OS(i1)*(DerSigmaLirFu(i2,i1,i2) + DerSigmaRirFu(i2,i1,i2))&
      & -MFuOS(i1)*(DerSigmaSLirFu(i2,i1,i2)+DerSigmaSRirFu(i2,i1,i2))
     Else 
     ZfUR(i1,i2) = ZfUR(i1,i2) &
      & -MFu2(i1)*(DerSigmaLirFu(i2,i1,i2) + DerSigmaRirFu(i2,i1,i2))&
      & -MFu(i1)*(DerSigmaSLirFu(i2,i1,i2)+DerSigmaSRirFu(i2,i1,i2))
     End if 
   Else 
     ZfUR(i1,i2) = 2._dp/(MFu2(i1) - MFu2(i2))* &
      & (MFu2(i2)*SigmaLFu(i2,i1,i2) + MFu(i1)*MFu(i2)*SigmaRFu(i2,i1,i2) + MFu(i1)*SigmaSLFu(i2,i1,i2) + MFu(i2)*SigmaSRFu(i2,i1,i2))
   End if 
  End Do 
End Do 


!  ######    EL    ###### 
Do i1=1,3
  Do i2=1,3
   If ((i1.eq.i2).or.(MFe(i1).eq.MFe(i2))) Then 
     ZfEL(i1,i2) = -SigmaRFe(i2,i1,i2) &
      & -MFe2(i1)*(DerSigmaRFe(i2,i1,i2) + DerSigmaLFe(i2,i1,i2))&
      & -MFe(i1)*(DerSigmaSRFe(i2,i1,i2)+DerSigmaSLFe(i2,i1,i2))
     If (OSkinematics) Then 
     ZfEL(i1,i2) = ZfEL(i1,i2) &
      & -MFe2OS(i1)*(DerSigmaRirFe(i2,i1,i2) + DerSigmaLirFe(i2,i1,i2))&
      & -MFeOS(i1)*(DerSigmaSRirFe(i2,i1,i2)+DerSigmaSLirFe(i2,i1,i2))
     Else 
     ZfEL(i1,i2) = ZfEL(i1,i2) &
      & -MFe2(i1)*(DerSigmaRirFe(i2,i1,i2) + DerSigmaLirFe(i2,i1,i2))&
      & -MFe(i1)*(DerSigmaSRirFe(i2,i1,i2)+DerSigmaSLirFe(i2,i1,i2))
     End if 
   Else 
     ZfEL(i1,i2) = 2._dp/(MFe2(i1) - MFe2(i2))* &
      & (MFe2(i2)*SigmaRFe(i2,i1,i2) + MFe(i1)*MFe(i2)*SigmaLFe(i2,i1,i2) + MFe(i1)*SigmaSRFe(i2,i1,i2) + MFe(i2)*SigmaSLFe(i2,i1,i2))
   End if 
  End Do 
End Do 


!  ######    ER    ###### 
Do i1=1,3
  Do i2=1,3
   If ((i1.eq.i2).or.(MFe(i1).eq.MFe(i2))) Then 
     ZfER(i1,i2) = -SigmaLFe(i2,i1,i2) &
      & -MFe2(i1)*(DerSigmaLFe(i2,i1,i2) + DerSigmaRFe(i2,i1,i2))&
      & -MFe(i1)*(DerSigmaSLFe(i2,i1,i2)+DerSigmaSRFe(i2,i1,i2))
     If (OSkinematics) Then 
     ZfER(i1,i2) = ZfER(i1,i2) &
      & -MFe2OS(i1)*(DerSigmaLirFe(i2,i1,i2) + DerSigmaRirFe(i2,i1,i2))&
      & -MFeOS(i1)*(DerSigmaSLirFe(i2,i1,i2)+DerSigmaSRirFe(i2,i1,i2))
     Else 
     ZfER(i1,i2) = ZfER(i1,i2) &
      & -MFe2(i1)*(DerSigmaLirFe(i2,i1,i2) + DerSigmaRirFe(i2,i1,i2))&
      & -MFe(i1)*(DerSigmaSLirFe(i2,i1,i2)+DerSigmaSRirFe(i2,i1,i2))
     End if 
   Else 
     ZfER(i1,i2) = 2._dp/(MFe2(i1) - MFe2(i2))* &
      & (MFe2(i2)*SigmaLFe(i2,i1,i2) + MFe(i1)*MFe(i2)*SigmaRFe(i2,i1,i2) + MFe(i1)*SigmaSLFe(i2,i1,i2) + MFe(i2)*SigmaSRFe(i2,i1,i2))
   End if 
  End Do 
End Do 


!  ######    VPVZ    ###### 
ZfVPVZ = 2._dp*PiVPVZ/(MVP2-MVZ2 )
ZfVZVP = 2._dp*PiVZVP/(MVZ2-MVP2 )
! -----------------------------------------------------------
! Setting the Counter-Terms 
! -----------------------------------------------------------
! ----------- getting the divergent pieces ---------

 
 ! --- GUT normalize gauge couplings --- 
g1 = Sqrt(5._dp/3._dp)*g1 
! ----------------------- 
 
Call ParametersToG160(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,              & 
& Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,            & 
& mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,g1D)

TwoLoopRGEsave=TwoLoopRGE 
TwoLoopRGE=.False. 
Call rge160(160,0._dp,g1D,g1D) 
TwoLoopRGE=TwoLoopRGEsave 
Call GToParameters160(g1D,dg1,dg2,dg3,dLam6,dLam5,dLam7,dLam1,dLam4,dLam3,            & 
& dLam2,dLam1p,dLam2p,dL3pp,dL1pp,dLam4p,dLam6p,dLam7p,dLam5p,dL2pp,dLam3p,              & 
& dYu,depsU,dYd,dYe,depsD,depsE,dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dM122,               & 
& dM112,dM222,dmS2,dmSp2,dvd,dvu,dvS)


 
 ! --- Remove GUT-normalization of gauge couplings --- 
dg1 = Sqrt(3._dp/5._dp)*dg1 
! ----------------------- 
 

 
 ! --- Remove GUT-normalization of gauge couplings --- 
g1 = Sqrt(3._dp/5._dp)*g1 
! ----------------------- 
 
dg1 = 0.5_dp*divergence*dg1 
dg2 = 0.5_dp*divergence*dg2 
dg3 = 0.5_dp*divergence*dg3 
dM122 = 0.5_dp*divergence*dM122 
dYu = 0.5_dp*divergence*dYu 
depsU = 0.5_dp*divergence*depsU 
dYd = 0.5_dp*divergence*dYd 
dYe = 0.5_dp*divergence*dYe 
depsD = 0.5_dp*divergence*depsD 
depsE = 0.5_dp*divergence*depsE 
dLam6 = 0.5_dp*divergence*dLam6 
dLam5 = 0.5_dp*divergence*dLam5 
dLam7 = 0.5_dp*divergence*dLam7 
dM112 = 0.5_dp*divergence*dM112 
dM222 = 0.5_dp*divergence*dM222 
dLam1 = 0.5_dp*divergence*dLam1 
dLam4 = 0.5_dp*divergence*dLam4 
dLam3 = 0.5_dp*divergence*dLam3 
dLam2 = 0.5_dp*divergence*dLam2 
dmS2 = 0.5_dp*divergence*dmS2 
dLam1p = 0.5_dp*divergence*dLam1p 
dLam2p = 0.5_dp*divergence*dLam2p 
dL3pp = 0.5_dp*divergence*dL3pp 
dmSp2 = 0.5_dp*divergence*dmSp2 
dmus1 = 0.5_dp*divergence*dmus1 
dmu11 = 0.5_dp*divergence*dmu11 
dmu12 = 0.5_dp*divergence*dmu12 
dmu21 = 0.5_dp*divergence*dmu21 
dmu22 = 0.5_dp*divergence*dmu22 
dmus2 = 0.5_dp*divergence*dmus2 
dL1pp = 0.5_dp*divergence*dL1pp 
dLam4p = 0.5_dp*divergence*dLam4p 
dLam6p = 0.5_dp*divergence*dLam6p 
dLam7p = 0.5_dp*divergence*dLam7p 
dLam5p = 0.5_dp*divergence*dLam5p 
dL2pp = 0.5_dp*divergence*dL2pp 
dLam3p = 0.5_dp*divergence*dLam3p 
deta = 0._dp 
dzeta = 0._dp 
dvd = 0.5_dp*divergence*dvd 
dvu = 0.5_dp*divergence*dvu 
dvS = 0.5_dp*divergence*dvS 
dZH = 0._dp 
dZP = 0._dp 
dZDL = 0._dp 
dZDR = 0._dp 
dZUL = 0._dp 
dZUR = 0._dp 
dZEL = 0._dp 
dZER = 0._dp 
dSinTW = 0._dp 
dCosTW = 0._dp 
dTanTW = 0._dp 
If (CTinLoopDecays) Then 
End if 
 
dZDR = 0.25_dp*MatMul(ZfDR- Conjg(Transpose(ZfDR)),ZDR)
dZER = 0.25_dp*MatMul(ZfER- Conjg(Transpose(ZfER)),ZER)
dZUR = 0.25_dp*MatMul(ZfUR- Conjg(Transpose(ZfUR)),ZUR)
dZDL = 0.25_dp*MatMul(ZfDL- Conjg(Transpose(ZfDL)),ZDL)
dZEL = 0.25_dp*MatMul(ZfEL- Conjg(Transpose(ZfEL)),ZEL)
dZUL = 0.25_dp*MatMul(ZfUL- Conjg(Transpose(ZfUL)),ZUL)
dZH = 0.25_dp*MatMul(Zfhh- Conjg(Transpose(Zfhh)),ZH)
dZP = 0.25_dp*MatMul(ZfHm- Conjg(Transpose(ZfHm)),ZP)


! -----------------------------------------------------------
! Calculating the CT vertices 
! -----------------------------------------------------------
Call CalculateCouplingCT(Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,              & 
& L3pp,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,            & 
& eta,zeta,vd,vu,vS,ZH,ZP,g1,g2,TW,g3,Yd,epsD,ZDL,ZDR,Yu,epsU,ZUL,ZUR,Ye,epsE,           & 
& ZEL,ZER,dLam6,dLam5,dLam7,dLam1,dLam4,dLam3,dLam2,dLam1p,dLam2p,dL3pp,dmus1,           & 
& dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,dLam5p,dL2pp,dLam3p,          & 
& deta,dzeta,dvd,dvu,dvS,dZH,dZP,dg1,dg2,dSinTW,dCosTW,dTanTW,dg3,dYd,depsD,             & 
& dZDL,dZDR,dYu,depsU,dZUL,dZUR,dYe,depsE,dZEL,dZER,ctcplhhhhhh,ctcplhhHmcHm,            & 
& ctcplhhhhVZ,ctcplhhHmcVWm,ctcplhhcHmVWm,ctcplHmcHmVP,ctcplHmcHmVZ,ctcplhhcVWmVWm,      & 
& ctcplhhVZVZ,ctcplHmcVWmVP,ctcplHmcVWmVZ,ctcplcHmVPVWm,ctcplcHmVWmVZ,ctcplVGVGVG,       & 
& ctcplcVWmVPVWm,ctcplcVWmVWmVZ,ctcplcFdFdhhL,ctcplcFdFdhhR,ctcplcFuFdcHmL,              & 
& ctcplcFuFdcHmR,ctcplcFeFehhL,ctcplcFeFehhR,ctcplcFvFecHmL,ctcplcFvFecHmR,              & 
& ctcplcFuFuhhL,ctcplcFuFuhhR,ctcplcFdFuHmL,ctcplcFdFuHmR,ctcplcFeFvHmL,ctcplcFeFvHmR,   & 
& ctcplcFdFdVGL,ctcplcFdFdVGR,ctcplcFdFdVPL,ctcplcFdFdVPR,ctcplcFdFdVZL,ctcplcFdFdVZR,   & 
& ctcplcFuFdcVWmL,ctcplcFuFdcVWmR,ctcplcFeFeVPL,ctcplcFeFeVPR,ctcplcFeFeVZL,             & 
& ctcplcFeFeVZR,ctcplcFvFecVWmL,ctcplcFvFecVWmR,ctcplcFuFuVGL,ctcplcFuFuVGR,             & 
& ctcplcFuFuVPL,ctcplcFuFuVPR,ctcplcFdFuVWmL,ctcplcFdFuVWmR,ctcplcFuFuVZL,               & 
& ctcplcFuFuVZR,ctcplcFeFvVWmL,ctcplcFeFvVWmR,ctcplcFvFvVZL,ctcplcFvFvVZR)

End Subroutine WaveFunctionRenormalisation 
Subroutine CalculateOneLoopDecays(gP1LFu,gP1LFe,gP1LFd,gP1Lhh,gP1LHm,MhhOS,           & 
& Mhh2OS,MHmOS,MHm2OS,MFdOS,MFd2OS,MFuOS,MFu2OS,MFeOS,MFe2OS,MVZOS,MVZ2OS,               & 
& MVWmOS,MVWm2OS,ZHOS,ZPOS,ZDLOS,ZDROS,ZULOS,ZUROS,ZELOS,ZEROS,vd,vu,vS,g1,              & 
& g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,            & 
& Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,               & 
& mus2,M122,M112,M222,mS2,mSp2,epsI,deltaM,kont)

Implicit None 
Real(dp), Intent(in) :: epsI, deltaM 
Integer, Intent(inout) :: kont 
Real(dp) :: MLambda, em, gs, vSM, sinW2, g1SM, g2SM 
Integer :: divset, i1 
Complex(dp) :: divvalue, YuSM(3,3), YdSM(3,3), YeSM(3,3) 
Real(dp),Intent(inout) :: g1,g2,g3,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,M112,M222,mS2

Complex(dp),Intent(inout) :: Lam6,Lam5,Lam7,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu(3,3),epsU(3,3),             & 
& Yd(3,3),Ye(3,3),epsD(3,3),epsE(3,3),mus1,mu11,mu12,mu21,mu22,mus2,M122,mSp2

Real(dp),Intent(inout) :: vd,vu,vS

Real(dp) :: dg1,dg2,dg3,dM112,dM222,dLam1,dLam4,dLam3,dLam2,dmS2,dLam1p,dLam2p,dL3pp,             & 
& deta,dzeta,dvd,dvu,dvS,dZH(6,6),dZP(2,2),dSinTW,dCosTW,dTanTW

Complex(dp) :: dM122,dYu(3,3),depsU(3,3),dYd(3,3),dYe(3,3),depsD(3,3),depsE(3,3),dLam6,              & 
& dLam5,dLam7,dmSp2,dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,             & 
& dLam7p,dLam5p,dL2pp,dLam3p,dZDL(3,3),dZDR(3,3),dZUL(3,3),dZUR(3,3),dZEL(3,3),dZER(3,3)

Complex(dp) :: ZfVG,ZfvL(3,3),ZfVP,ZfVZ,ZfVWm,Zfhh(6,6),ZfHm(2,2),ZfDL(3,3),ZfDR(3,3),               & 
& ZfUL(3,3),ZfUR(3,3),ZfEL(3,3),ZfER(3,3),ZfVPVZ,ZfVZVP

Real(dp),Intent(in) :: MhhOS(6),Mhh2OS(6),MHmOS(2),MHm2OS(2),MFdOS(3),MFd2OS(3),MFuOS(3),MFu2OS(3),          & 
& MFeOS(3),MFe2OS(3),MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS(6,6),ZPOS(2,2)

Complex(dp),Intent(in) :: ZDLOS(3,3),ZDROS(3,3),ZULOS(3,3),ZUROS(3,3),ZELOS(3,3),ZEROS(3,3)

Real(dp) :: p2, q2, q2_save 
Real(dp) :: MFd(3),MFd2(3),MFe(3),MFe2(3),MFu(3),MFu2(3),Mhh(6),Mhh2(6),MHm(2),MHm2(2),           & 
& MVWm,MVWm2,MVZ,MVZ2,TW,v,ZH(6,6),ZP(2,2),ZZ(2,2),betaH

Complex(dp) :: ZDR(3,3),ZER(3,3),ZUR(3,3),ZDL(3,3),ZEL(3,3),ZUL(3,3),ZW(2,2)

Complex(dp) :: cplhhhhhhhh1(6,6,6,6),cplhhhhHmcHm1(6,6,2,2),cplHmHmcHmcHm1(2,2,2,2),cplhhhhcVWmVWm1(6,6),& 
& cplhhhhVZVZ1(6,6),cplhhHmcVWmVP1(6,2),cplhhHmcVWmVZ1(6,2),cplhhcHmVPVWm1(6,2),         & 
& cplhhcHmVWmVZ1(6,2),cplHmcHmVPVP1(2,2),cplHmcHmVPVZ1(2,2),cplHmcHmcVWmVWm1(2,2),       & 
& cplHmcHmVZVZ1(2,2),cplVGVGVGVG1Q,cplVGVGVGVG2Q,cplVGVGVGVG3Q,cplcVWmVPVPVWm1Q,         & 
& cplcVWmVPVPVWm2Q,cplcVWmVPVPVWm3Q,cplcVWmVPVWmVZ1Q,cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ3Q,  & 
& cplcVWmcVWmVWmVWm1Q,cplcVWmcVWmVWmVWm2Q,cplcVWmcVWmVWmVWm3Q,cplcVWmVWmVZVZ1Q,          & 
& cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q

Complex(dp) :: cplhhhhhh(6,6,6),cplhhHmcHm(6,2,2),cplhhhhhhhh(6,6,6,6),cplhhhhHmcHm(6,6,2,2),        & 
& cplHmHmcHmcHm(2,2,2,2),cplhhhhVZ(6,6),cplhhHmcVWm(6,2),cplhhcHmVWm(6,2),               & 
& cplHmcHmVP(2,2),cplHmcHmVZ(2,2),cplhhcVWmVWm(6),cplhhVZVZ(6),cplHmcVWmVP(2),           & 
& cplHmcVWmVZ(2),cplcHmVPVWm(2),cplcHmVWmVZ(2),cplhhhhcVWmVWm(6,6),cplhhhhVZVZ(6,6),     & 
& cplhhHmcVWmVP(6,2),cplhhHmcVWmVZ(6,2),cplhhcHmVPVWm(6,2),cplhhcHmVWmVZ(6,2),           & 
& cplHmcHmVPVP(2,2),cplHmcHmVPVZ(2,2),cplHmcHmcVWmVWm(2,2),cplHmcHmVZVZ(2,2),            & 
& cplVGVGVG,cplcVWmVPVWm,cplcVWmVWmVZ,cplcFdFdhhL(3,3,6),cplcFdFdhhR(3,3,6),             & 
& cplcFuFdcHmL(3,3,2),cplcFuFdcHmR(3,3,2),cplcFeFehhL(3,3,6),cplcFeFehhR(3,3,6),         & 
& cplcFvFecHmL(3,3,2),cplcFvFecHmR(3,3,2),cplcFuFuhhL(3,3,6),cplcFuFuhhR(3,3,6),         & 
& cplcFdFuHmL(3,3,2),cplcFdFuHmR(3,3,2),cplcFeFvHmL(3,3,2),cplcFeFvHmR(3,3,2),           & 
& cplcFdFdVGL(3,3),cplcFdFdVGR(3,3),cplcFdFdVPL(3,3),cplcFdFdVPR(3,3),cplcFdFdVZL(3,3),  & 
& cplcFdFdVZR(3,3),cplcFuFdcVWmL(3,3),cplcFuFdcVWmR(3,3),cplcFeFeVPL(3,3),               & 
& cplcFeFeVPR(3,3),cplcFeFeVZL(3,3),cplcFeFeVZR(3,3),cplcFvFecVWmL(3,3),cplcFvFecVWmR(3,3),& 
& cplcFuFuVGL(3,3),cplcFuFuVGR(3,3),cplcFuFuVPL(3,3),cplcFuFuVPR(3,3),cplcFdFuVWmL(3,3), & 
& cplcFdFuVWmR(3,3),cplcFuFuVZL(3,3),cplcFuFuVZR(3,3),cplcFeFvVWmL(3,3),cplcFeFvVWmR(3,3),& 
& cplcFvFvVZL(3,3),cplcFvFvVZR(3,3),cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,              & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,       & 
& cplcVWmVPVWmVZ3,cplcVWmcVWmVWmVWm1,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,              & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcgGgGVG,cplcgWmgAVWm,               & 
& cplcgWpCgAcVWm,cplcgWmgWmVP,cplcgWmgWmVZ,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpCVP,   & 
& cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgWpCgWpCVZ,cplcgWmgZVWm,cplcgWpCgZcVWm,cplcgZgAhh(6),  & 
& cplcgWmgAHm(2),cplcgWpCgAcHm(2),cplcgWmgWmhh(6),cplcgZgWmcHm(2),cplcgWpCgWpChh(6),     & 
& cplcgZgWpCHm(2),cplcgZgZhh(6),cplcgWmgZHm(2),cplcgWpCgZcHm(2)

Complex(dp) :: ctcplhhhhhh(6,6,6),ctcplhhHmcHm(6,2,2),ctcplhhhhVZ(6,6),ctcplhhHmcVWm(6,2),           & 
& ctcplhhcHmVWm(6,2),ctcplHmcHmVP(2,2),ctcplHmcHmVZ(2,2),ctcplhhcVWmVWm(6),              & 
& ctcplhhVZVZ(6),ctcplHmcVWmVP(2),ctcplHmcVWmVZ(2),ctcplcHmVPVWm(2),ctcplcHmVWmVZ(2),    & 
& ctcplVGVGVG,ctcplcVWmVPVWm,ctcplcVWmVWmVZ,ctcplcFdFdhhL(3,3,6),ctcplcFdFdhhR(3,3,6),   & 
& ctcplcFuFdcHmL(3,3,2),ctcplcFuFdcHmR(3,3,2),ctcplcFeFehhL(3,3,6),ctcplcFeFehhR(3,3,6), & 
& ctcplcFvFecHmL(3,3,2),ctcplcFvFecHmR(3,3,2),ctcplcFuFuhhL(3,3,6),ctcplcFuFuhhR(3,3,6), & 
& ctcplcFdFuHmL(3,3,2),ctcplcFdFuHmR(3,3,2),ctcplcFeFvHmL(3,3,2),ctcplcFeFvHmR(3,3,2),   & 
& ctcplcFdFdVGL(3,3),ctcplcFdFdVGR(3,3),ctcplcFdFdVPL(3,3),ctcplcFdFdVPR(3,3),           & 
& ctcplcFdFdVZL(3,3),ctcplcFdFdVZR(3,3),ctcplcFuFdcVWmL(3,3),ctcplcFuFdcVWmR(3,3),       & 
& ctcplcFeFeVPL(3,3),ctcplcFeFeVPR(3,3),ctcplcFeFeVZL(3,3),ctcplcFeFeVZR(3,3),           & 
& ctcplcFvFecVWmL(3,3),ctcplcFvFecVWmR(3,3),ctcplcFuFuVGL(3,3),ctcplcFuFuVGR(3,3),       & 
& ctcplcFuFuVPL(3,3),ctcplcFuFuVPR(3,3),ctcplcFdFuVWmL(3,3),ctcplcFdFuVWmR(3,3),         & 
& ctcplcFuFuVZL(3,3),ctcplcFuFuVZR(3,3),ctcplcFeFvVWmL(3,3),ctcplcFeFvVWmR(3,3),         & 
& ctcplcFvFvVZL(3,3),ctcplcFvFvVZR(3,3)

Complex(dp) :: ZRUZH(6,6),ZRUZP(2,2),ZRUVd(3,3),ZRUUd(3,3),ZRUVu(3,3),ZRUUu(3,3),ZRUVe(3,3),         & 
& ZRUUe(3,3)

Complex(dp) :: Zcplhhhhhh(6,6,6),ZcplhhHmcHm(6,2,2),Zcplhhhhhhhh(6,6,6,6),ZcplhhhhHmcHm(6,6,2,2),    & 
& ZcplHmHmcHmcHm(2,2,2,2),ZcplhhhhVZ(6,6),ZcplhhHmcVWm(6,2),ZcplhhcHmVWm(6,2),           & 
& ZcplHmcHmVP(2,2),ZcplHmcHmVZ(2,2),ZcplhhcVWmVWm(6),ZcplhhVZVZ(6),ZcplHmcVWmVP(2),      & 
& ZcplHmcVWmVZ(2),ZcplcHmVPVWm(2),ZcplcHmVWmVZ(2),ZcplhhhhcVWmVWm(6,6),ZcplhhhhVZVZ(6,6),& 
& ZcplhhHmcVWmVP(6,2),ZcplhhHmcVWmVZ(6,2),ZcplhhcHmVPVWm(6,2),ZcplhhcHmVWmVZ(6,2),       & 
& ZcplHmcHmVPVP(2,2),ZcplHmcHmVPVZ(2,2),ZcplHmcHmcVWmVWm(2,2),ZcplHmcHmVZVZ(2,2),        & 
& ZcplVGVGVG,ZcplcVWmVPVWm,ZcplcVWmVWmVZ,ZcplcFdFdhhL(3,3,6),ZcplcFdFdhhR(3,3,6),        & 
& ZcplcFuFdcHmL(3,3,2),ZcplcFuFdcHmR(3,3,2),ZcplcFeFehhL(3,3,6),ZcplcFeFehhR(3,3,6),     & 
& ZcplcFvFecHmL(3,3,2),ZcplcFvFecHmR(3,3,2),ZcplcFuFuhhL(3,3,6),ZcplcFuFuhhR(3,3,6),     & 
& ZcplcFdFuHmL(3,3,2),ZcplcFdFuHmR(3,3,2),ZcplcFeFvHmL(3,3,2),ZcplcFeFvHmR(3,3,2),       & 
& ZcplcFdFdVGL(3,3),ZcplcFdFdVGR(3,3),ZcplcFdFdVPL(3,3),ZcplcFdFdVPR(3,3),               & 
& ZcplcFdFdVZL(3,3),ZcplcFdFdVZR(3,3),ZcplcFuFdcVWmL(3,3),ZcplcFuFdcVWmR(3,3),           & 
& ZcplcFeFeVPL(3,3),ZcplcFeFeVPR(3,3),ZcplcFeFeVZL(3,3),ZcplcFeFeVZR(3,3),               & 
& ZcplcFvFecVWmL(3,3),ZcplcFvFecVWmR(3,3),ZcplcFuFuVGL(3,3),ZcplcFuFuVGR(3,3),           & 
& ZcplcFuFuVPL(3,3),ZcplcFuFuVPR(3,3),ZcplcFdFuVWmL(3,3),ZcplcFdFuVWmR(3,3),             & 
& ZcplcFuFuVZL(3,3),ZcplcFuFuVZR(3,3),ZcplcFeFvVWmL(3,3),ZcplcFeFvVWmR(3,3),             & 
& ZcplcFvFvVZL(3,3),ZcplcFvFvVZR(3,3),ZcplVGVGVGVG1,ZcplVGVGVGVG2,ZcplVGVGVGVG3,         & 
& ZcplcVWmVPVPVWm1,ZcplcVWmVPVPVWm2,ZcplcVWmVPVPVWm3,ZcplcVWmVPVWmVZ1,ZcplcVWmVPVWmVZ2,  & 
& ZcplcVWmVPVWmVZ3,ZcplcVWmcVWmVWmVWm1,ZcplcVWmcVWmVWmVWm2,ZcplcVWmcVWmVWmVWm3,          & 
& ZcplcVWmVWmVZVZ1,ZcplcVWmVWmVZVZ2,ZcplcVWmVWmVZVZ3,ZcplcgGgGVG,ZcplcgWmgAVWm,          & 
& ZcplcgWpCgAcVWm,ZcplcgWmgWmVP,ZcplcgWmgWmVZ,ZcplcgAgWmcVWm,ZcplcgZgWmcVWm,             & 
& ZcplcgWpCgWpCVP,ZcplcgAgWpCVWm,ZcplcgZgWpCVWm,ZcplcgWpCgWpCVZ,ZcplcgWmgZVWm,           & 
& ZcplcgWpCgZcVWm,ZcplcgZgAhh(6),ZcplcgWmgAHm(2),ZcplcgWpCgAcHm(2),ZcplcgWmgWmhh(6),     & 
& ZcplcgZgWmcHm(2),ZcplcgWpCgWpChh(6),ZcplcgZgWpCHm(2),ZcplcgZgZhh(6),ZcplcgWmgZHm(2),   & 
& ZcplcgWpCgZcHm(2)

Complex(dp) :: GcplhhHmcHm(6,2,2),GcplhhHmcVWm(6,2),GcplhhcHmVWm(6,2),GcplHmcHmVP(2,2),              & 
& GcplHmcHmVZ(2,2),GcplHmcVWmVP(2),GcplHmcVWmVZ(2),GcplcHmVPVWm(2),GcplcHmVWmVZ(2),      & 
& GcplcFuFdcHmL(3,3,2),GcplcFuFdcHmR(3,3,2),GcplcFvFecHmL(3,3,2),GcplcFvFecHmR(3,3,2),   & 
& GcplcFdFuHmL(3,3,2),GcplcFdFuHmR(3,3,2),GcplcFeFvHmL(3,3,2),GcplcFeFvHmR(3,3,2)

Complex(dp) :: GZcplhhHmcHm(6,2,2),GZcplhhHmcVWm(6,2),GZcplhhcHmVWm(6,2),GZcplHmcHmVP(2,2),          & 
& GZcplHmcHmVZ(2,2),GZcplHmcVWmVP(2),GZcplHmcVWmVZ(2),GZcplcHmVPVWm(2),GZcplcHmVWmVZ(2), & 
& GZcplcFuFdcHmL(3,3,2),GZcplcFuFdcHmR(3,3,2),GZcplcFvFecHmL(3,3,2),GZcplcFvFecHmR(3,3,2),& 
& GZcplcFdFuHmL(3,3,2),GZcplcFdFuHmR(3,3,2),GZcplcFeFvHmL(3,3,2),GZcplcFeFvHmR(3,3,2)

Complex(dp) :: GosZcplhhHmcHm(6,2,2),GosZcplhhHmcVWm(6,2),GosZcplhhcHmVWm(6,2),GosZcplHmcHmVP(2,2),  & 
& GosZcplHmcHmVZ(2,2),GosZcplHmcVWmVP(2),GosZcplHmcVWmVZ(2),GosZcplcHmVPVWm(2),          & 
& GosZcplcHmVWmVZ(2),GosZcplcFuFdcHmL(3,3,2),GosZcplcFuFdcHmR(3,3,2),GosZcplcFvFecHmL(3,3,2),& 
& GosZcplcFvFecHmR(3,3,2),GosZcplcFdFuHmL(3,3,2),GosZcplcFdFuHmR(3,3,2),GosZcplcFeFvHmL(3,3,2),& 
& GosZcplcFeFvHmR(3,3,2)

Real(dp), Intent(out) :: gP1LFu(3,30) 
Real(dp), Intent(out) :: gP1LFe(3,27) 
Real(dp), Intent(out) :: gP1LFd(3,30) 
Real(dp), Intent(out) :: gP1Lhh(6,72) 
Real(dp), Intent(out) :: gP1LHm(2,32) 
Iname = Iname + 1 
NameOfUnit(Iname) = 'CalculateOneLoopDecays'
 
Write(*,*) "Calculating one loop decays" 
! Regulator mass for gluon/photon 
MLambda = Mass_Regulator_PhotonGluon 
divset=SetDivonlyAdd(INT(divonly_save)) 
divvalue=SetDivergenceAdd(divergence_save) 
If (.not.CalculateOneLoopMasses) Then 
 If (OSkinematics) Then 
  Write(*,*) "Loop masses not calculated: tree-level masses used for kinematics" 
  OSkinematics = .false. 
 End if
 If (ExternalZfactors) Then 
  Write(*,*) "Loop masses not calculated: no U-factors are applied" 
  ExternalZfactors = .false. 
 End if
End if

If (Extra_scale_loopDecays) Then 
q2_save = GetRenormalizationScale() 
q2 = SetRenormalizationScale(scale_loopdecays **2) 
End if 
If ((OSkinematics).or.(ExternalZfactors)) ShiftIRdiv = .true. 
If (ewOSinDecays) Then 
sinW2=1._dp-mW2/mZ2 
g1SM=sqrt(4*Pi*Alpha_MZ/(1-sinW2)) 
g2SM=sqrt(4*Pi*Alpha_MZ/Sinw2) 
vSM=sqrt(mz2*4._dp/(g1SM**2+g2SM**2)) 
vd=vSM/Sqrt(1 + TanBeta**2) 
vu=(TanBeta*vSM)/Sqrt(1 + TanBeta**2) 
g1=g1SM 
g2=g2SM 
 If (yukOSinDecays) Then !! Allow OS Yukawas only together with vSM 
    YuSM = 0._dp 
    YdSM = 0._dp 
    YuSM = 0._dp 
   Do i1=1,3 
      YuSM(i1,i1)=sqrt(2._dp)*mf_u(i1)/vSM 
      YeSM(i1,i1)=sqrt(2._dp)*mf_l(i1)/vSM 
      YdSM(i1,i1)=sqrt(2._dp)*mf_d(i1)/vSM 
    End Do 
   If(GenerationMixing) Then 
    YuSM = Transpose(Matmul(Transpose(CKM),Transpose(YuSM))) 
   End if 
Ye=(YeSM*(vd - vu*((0._dp,1._dp)*zEiInput + zErInput))*(Cos(etaInput) + (0._dp,1._dp)*Sin(etaInput)))/vSM 
Yd=(YdSM*(vd - vu*((0._dp,1._dp)*zDiInput + zDrInput))*(Cos(etaInput) + (0._dp,1._dp)*Sin(etaInput)))/vSM 
Yu=(YuSM*(vd - vu*((0._dp,1._dp)*zUiInput + zUrInput))*(Cos(etaInput) - (0._dp,1._dp)*Sin(etaInput)))/vSM 
 End if 
End if 
! -------------------------------------------- 
! General information needed in the following 
! -------------------------------------------- 

! DR parameters 
Call SolveTadpoleEquations(g1,g2,g3,Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,               & 
& Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,           & 
& epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,mSp2,vd,vu,vS,(/ ZeroC, ZeroC, ZeroC, ZeroC, ZeroC, ZeroC /))

Call TreeMasses(MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,              & 
& MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,vd,vu,vS,g1,g2,g3,             & 
& Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,            & 
& Lam5p,L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,           & 
& M112,M222,mS2,mSp2,GenerationMixing,kont)

! Stabilize numerics 
Where (Abs(Mhh).lt.1.0E-15_dp) Mhh=0._dp
Where (Abs(Mhh2).lt.1.0E-30_dp) Mhh2=0._dp
Where (Abs(MHm).lt.1.0E-15_dp) MHm=0._dp
Where (Abs(MHm2).lt.1.0E-30_dp) MHm2=0._dp
Where (Abs(MFd).lt.1.0E-15_dp) MFd=0._dp
Where (Abs(MFd2).lt.1.0E-30_dp) MFd2=0._dp
Where (Abs(MFu).lt.1.0E-15_dp) MFu=0._dp
Where (Abs(MFu2).lt.1.0E-30_dp) MFu2=0._dp
Where (Abs(MFe).lt.1.0E-15_dp) MFe=0._dp
Where (Abs(MFe2).lt.1.0E-30_dp) MFe2=0._dp
If (UseZeroRotationMatrices) Then  ! Rotation matrices calculated for p2=0
ZRUZH = MatMul(ZHOS_0, Transpose(ZH))
ZRUZP = MatMul(ZPOS_0, Transpose(ZP))
ZRUVd = MatMul(ZDLOS_0, Conjg(Transpose(ZDL)))
ZRUUd = MatMul(ZDROS_0, Conjg(Transpose(ZDR)))
ZRUVu = MatMul(ZULOS_0, Conjg(Transpose(ZUL)))
ZRUUu = MatMul(ZUROS_0, Conjg(Transpose(ZUR)))
ZRUVe = MatMul(ZELOS_0, Conjg(Transpose(ZEL)))
ZRUUe = MatMul(ZEROS_0, Conjg(Transpose(ZER)))
Else If (UseP2Matrices) Then   ! p2 dependent matrix 
ZRUZH = MatMul(ZHOS_p2, Transpose(ZH))
ZRUZP = MatMul(ZPOS_p2, Transpose(ZP))
ZRUVd = MatMul(ZDLOS_p2, Conjg(Transpose(ZDL)))
ZRUUd = MatMul(ZDROS_p2, Conjg(Transpose(ZDR)))
ZRUVu = MatMul(ZULOS_p2, Conjg(Transpose(ZUL)))
ZRUUu = MatMul(ZUROS_p2, Conjg(Transpose(ZUR)))
ZRUVe = MatMul(ZELOS_p2, Conjg(Transpose(ZEL)))
ZRUUe = MatMul(ZEROS_p2, Conjg(Transpose(ZER)))
Else  ! Rotation matrix for lightest state
ZRUZH = MatMul(ZHOS, Transpose(ZH))
ZRUZP = MatMul(ZPOS, Transpose(ZP))
ZRUVd = MatMul(ZDLOS, Conjg(Transpose(ZDL)))
ZRUUd = MatMul(ZDROS, Conjg(Transpose(ZDR)))
ZRUVu = MatMul(ZULOS, Conjg(Transpose(ZUL)))
ZRUUu = MatMul(ZUROS, Conjg(Transpose(ZUR)))
ZRUVe = MatMul(ZELOS, Conjg(Transpose(ZEL)))
ZRUUe = MatMul(ZEROS, Conjg(Transpose(ZER)))
End if 
! Couplings 
Call AllCouplingsReallyAll(Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,            & 
& L3pp,mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,            & 
& eta,zeta,vd,vu,vS,ZH,ZP,g1,g2,TW,g3,Yd,epsD,ZDL,ZDR,Yu,epsU,ZUL,ZUR,Ye,epsE,           & 
& ZEL,ZER,cplhhhhhh,cplhhHmcHm,cplhhhhhhhh,cplhhhhHmcHm,cplHmHmcHmcHm,cplhhhhVZ,         & 
& cplhhHmcVWm,cplhhcHmVWm,cplHmcHmVP,cplHmcHmVZ,cplhhcVWmVWm,cplhhVZVZ,cplHmcVWmVP,      & 
& cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhcVWmVWm,cplhhhhVZVZ,cplhhHmcVWmVP,          & 
& cplhhHmcVWmVZ,cplhhcHmVPVWm,cplhhcHmVWmVZ,cplHmcHmVPVP,cplHmcHmVPVZ,cplHmcHmcVWmVWm,   & 
& cplHmcHmVZVZ,cplVGVGVG,cplcVWmVPVWm,cplcVWmVWmVZ,cplcFdFdhhL,cplcFdFdhhR,              & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,               & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,           & 
& cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplcFeFvVWmL,cplcFeFvVWmR,           & 
& cplcFvFvVZL,cplcFvFvVZR,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,cplcVWmVPVPVWm1,        & 
& cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,       & 
& cplcVWmcVWmVWmVWm1,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmVWmVZVZ1,              & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcgGgGVG,cplcgWmgAVWm,cplcgWpCgAcVWm,cplcgWmgWmVP,   & 
& cplcgWmgWmVZ,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpCVP,cplcgAgWpCVWm,cplcgZgWpCVWm,   & 
& cplcgWpCgWpCVZ,cplcgWmgZVWm,cplcgWpCgZcVWm,cplcgZgAhh,cplcgWmgAHm,cplcgWpCgAcHm,       & 
& cplcgWmgWmhh,cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,cplcgWmgZHm,          & 
& cplcgWpCgZcHm)

em = cplcVWmVPVWm 
gs = cplcFdFdVGL(1,1) 
Call CouplingsColoredQuartics(Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,               & 
& Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,eta,zeta,ZH,ZP,g2,g1,               & 
& TW,g3,cplhhhhhhhh1,cplhhhhHmcHm1,cplHmHmcHmcHm1,cplhhhhcVWmVWm1,cplhhhhVZVZ1,          & 
& cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhcHmVPVWm1,cplhhcHmVWmVZ1,cplHmcHmVPVP1,             & 
& cplHmcHmVPVZ1,cplHmcHmcVWmVWm1,cplHmcHmVZVZ1,cplVGVGVGVG1Q,cplVGVGVGVG2Q,              & 
& cplVGVGVGVG3Q,cplcVWmVPVPVWm1Q,cplcVWmVPVPVWm2Q,cplcVWmVPVPVWm3Q,cplcVWmVPVWmVZ1Q,     & 
& cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ3Q,cplcVWmcVWmVWmVWm1Q,cplcVWmcVWmVWmVWm2Q,             & 
& cplcVWmcVWmVWmVWm3Q,cplcVWmVWmVZVZ1Q,cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q)

If (externalZfactors) Then 
Call getZCouplings(Lam6,Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,               & 
& mus1,mu11,mu12,mu21,mu22,mus2,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,eta,             & 
& zeta,vd,vu,vS,ZH,ZP,g1,g2,TW,g3,Yd,epsD,ZDL,ZDR,Yu,epsU,ZUL,ZUR,Ye,epsE,               & 
& ZEL,ZER,cplhhhhhh,cplhhHmcHm,cplhhhhhhhh,cplhhhhHmcHm,cplHmHmcHmcHm,cplhhhhVZ,         & 
& cplhhHmcVWm,cplhhcHmVWm,cplHmcHmVP,cplHmcHmVZ,cplhhcVWmVWm,cplhhVZVZ,cplHmcVWmVP,      & 
& cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhcVWmVWm,cplhhhhVZVZ,cplhhHmcVWmVP,          & 
& cplhhHmcVWmVZ,cplhhcHmVPVWm,cplhhcHmVWmVZ,cplHmcHmVPVP,cplHmcHmVPVZ,cplHmcHmcVWmVWm,   & 
& cplHmcHmVZVZ,cplVGVGVG,cplcVWmVPVWm,cplcVWmVWmVZ,cplcFdFdhhL,cplcFdFdhhR,              & 
& cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,cplcFvFecHmR,           & 
& cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,cplcFeFvHmR,               & 
& cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,               & 
& cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,cplcFeFeVZR,           & 
& cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,           & 
& cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplcFeFvVWmL,cplcFeFvVWmR,           & 
& cplcFvFvVZL,cplcFvFvVZR,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,cplcVWmVPVPVWm1,        & 
& cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,cplcVWmVPVWmVZ3,       & 
& cplcVWmcVWmVWmVWm1,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,cplcVWmVWmVZVZ1,              & 
& cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcgGgGVG,cplcgWmgAVWm,cplcgWpCgAcVWm,cplcgWmgWmVP,   & 
& cplcgWmgWmVZ,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpCVP,cplcgAgWpCVWm,cplcgZgWpCVWm,   & 
& cplcgWpCgWpCVZ,cplcgWmgZVWm,cplcgWpCgZcVWm,cplcgZgAhh,cplcgWmgAHm,cplcgWpCgAcHm,       & 
& cplcgWmgWmhh,cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,cplcgZgZhh,cplcgWmgZHm,          & 
& cplcgWpCgZcHm,ZRUZH,ZRUZP,ZRUVd,ZRUUd,ZRUVu,ZRUUu,ZRUVe,ZRUUe,Zcplhhhhhh,              & 
& ZcplhhHmcHm,Zcplhhhhhhhh,ZcplhhhhHmcHm,ZcplHmHmcHmcHm,ZcplhhhhVZ,ZcplhhHmcVWm,         & 
& ZcplhhcHmVWm,ZcplHmcHmVP,ZcplHmcHmVZ,ZcplhhcVWmVWm,ZcplhhVZVZ,ZcplHmcVWmVP,            & 
& ZcplHmcVWmVZ,ZcplcHmVPVWm,ZcplcHmVWmVZ,ZcplhhhhcVWmVWm,ZcplhhhhVZVZ,ZcplhhHmcVWmVP,    & 
& ZcplhhHmcVWmVZ,ZcplhhcHmVPVWm,ZcplhhcHmVWmVZ,ZcplHmcHmVPVP,ZcplHmcHmVPVZ,              & 
& ZcplHmcHmcVWmVWm,ZcplHmcHmVZVZ,ZcplVGVGVG,ZcplcVWmVPVWm,ZcplcVWmVWmVZ,ZcplcFdFdhhL,    & 
& ZcplcFdFdhhR,ZcplcFuFdcHmL,ZcplcFuFdcHmR,ZcplcFeFehhL,ZcplcFeFehhR,ZcplcFvFecHmL,      & 
& ZcplcFvFecHmR,ZcplcFuFuhhL,ZcplcFuFuhhR,ZcplcFdFuHmL,ZcplcFdFuHmR,ZcplcFeFvHmL,        & 
& ZcplcFeFvHmR,ZcplcFdFdVGL,ZcplcFdFdVGR,ZcplcFdFdVPL,ZcplcFdFdVPR,ZcplcFdFdVZL,         & 
& ZcplcFdFdVZR,ZcplcFuFdcVWmL,ZcplcFuFdcVWmR,ZcplcFeFeVPL,ZcplcFeFeVPR,ZcplcFeFeVZL,     & 
& ZcplcFeFeVZR,ZcplcFvFecVWmL,ZcplcFvFecVWmR,ZcplcFuFuVGL,ZcplcFuFuVGR,ZcplcFuFuVPL,     & 
& ZcplcFuFuVPR,ZcplcFdFuVWmL,ZcplcFdFuVWmR,ZcplcFuFuVZL,ZcplcFuFuVZR,ZcplcFeFvVWmL,      & 
& ZcplcFeFvVWmR,ZcplcFvFvVZL,ZcplcFvFvVZR,ZcplVGVGVGVG1,ZcplVGVGVGVG2,ZcplVGVGVGVG3,     & 
& ZcplcVWmVPVPVWm1,ZcplcVWmVPVPVWm2,ZcplcVWmVPVPVWm3,ZcplcVWmVPVWmVZ1,ZcplcVWmVPVWmVZ2,  & 
& ZcplcVWmVPVWmVZ3,ZcplcVWmcVWmVWmVWm1,ZcplcVWmcVWmVWmVWm2,ZcplcVWmcVWmVWmVWm3,          & 
& ZcplcVWmVWmVZVZ1,ZcplcVWmVWmVZVZ2,ZcplcVWmVWmVZVZ3,ZcplcgGgGVG,ZcplcgWmgAVWm,          & 
& ZcplcgWpCgAcVWm,ZcplcgWmgWmVP,ZcplcgWmgWmVZ,ZcplcgAgWmcVWm,ZcplcgZgWmcVWm,             & 
& ZcplcgWpCgWpCVP,ZcplcgAgWpCVWm,ZcplcgZgWpCVWm,ZcplcgWpCgWpCVZ,ZcplcgWmgZVWm,           & 
& ZcplcgWpCgZcVWm,ZcplcgZgAhh,ZcplcgWmgAHm,ZcplcgWpCgAcHm,ZcplcgWmgWmhh,ZcplcgZgWmcHm,   & 
& ZcplcgWpCgWpChh,ZcplcgZgWpCHm,ZcplcgZgZhh,ZcplcgWmgZHm,ZcplcgWpCgZcHm)

End if 
Call getGBCouplings(MhhOS,Mhh2OS,MHmOS,MHm2OS,MFdOS,MFd2OS,MFuOS,MFu2OS,              & 
& MFeOS,MFe2OS,MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS,ZPOS,ZDLOS,ZDROS,ZULOS,ZUROS,            & 
& ZELOS,ZEROS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,               & 
& MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,cplcFdFuVWmL,cplcFdFuVWmR,         & 
& cplcFeFvVWmL,cplcFeFvVWmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFvFecVWmL,cplcFvFecVWmR,     & 
& cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,            & 
& ZcplcFdFuVWmL,ZcplcFdFuVWmR,ZcplcFeFvVWmL,ZcplcFeFvVWmR,ZcplcFuFdcVWmL,ZcplcFuFdcVWmR, & 
& ZcplcFvFecVWmL,ZcplcFvFecVWmR,ZcplcHmVPVWm,ZcplcHmVWmVZ,ZcplcVWmVPVWm,ZcplcVWmVWmVZ,   & 
& ZcplhhcHmVWm,ZcplhhcVWmVWm,GcplhhHmcHm,GcplhhHmcVWm,GcplhhcHmVWm,GcplHmcHmVP,          & 
& GcplHmcHmVZ,GcplHmcVWmVP,GcplHmcVWmVZ,GcplcHmVPVWm,GcplcHmVWmVZ,GcplcFuFdcHmL,         & 
& GcplcFuFdcHmR,GcplcFvFecHmL,GcplcFvFecHmR,GcplcFdFuHmL,GcplcFdFuHmR,GcplcFeFvHmL,      & 
& GcplcFeFvHmR,GZcplhhHmcHm,GZcplhhHmcVWm,GZcplhhcHmVWm,GZcplHmcHmVP,GZcplHmcHmVZ,       & 
& GZcplHmcVWmVP,GZcplHmcVWmVZ,GZcplcHmVPVWm,GZcplcHmVWmVZ,GZcplcFuFdcHmL,GZcplcFuFdcHmR, & 
& GZcplcFvFecHmL,GZcplcFvFecHmR,GZcplcFdFuHmL,GZcplcFdFuHmR,GZcplcFeFvHmL,               & 
& GZcplcFeFvHmR,GosZcplhhHmcHm,GosZcplhhHmcVWm,GosZcplhhcHmVWm,GosZcplHmcHmVP,           & 
& GosZcplHmcHmVZ,GosZcplHmcVWmVP,GosZcplHmcVWmVZ,GosZcplcHmVPVWm,GosZcplcHmVWmVZ,        & 
& GosZcplcFuFdcHmL,GosZcplcFuFdcHmR,GosZcplcFvFecHmL,GosZcplcFvFecHmR,GosZcplcFdFuHmL,   & 
& GosZcplcFdFuHmR,GosZcplcFeFvHmL,GosZcplcFeFvHmR)

! Write intilization of all counter terms 
Call WaveFunctionRenormalisation(MhhOS,Mhh2OS,MHmOS,MHm2OS,MFdOS,MFd2OS,              & 
& MFuOS,MFu2OS,MFeOS,MFe2OS,MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS,ZPOS,ZDLOS,ZDROS,           & 
& ZULOS,ZUROS,ZELOS,ZEROS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,             & 
& MVWm2,MVZ,MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,g1,g2,g3,Lam6,           & 
& Lam5,Lam7,Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,           & 
& L2pp,Lam3p,Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,            & 
& M222,mS2,mSp2,vd,vu,vS,cplhhhhhh,cplhhHmcHm,cplhhhhhhhh,cplhhhhHmcHm,cplHmHmcHmcHm,    & 
& cplhhhhVZ,cplhhHmcVWm,cplhhcHmVWm,cplHmcHmVP,cplHmcHmVZ,cplhhcVWmVWm,cplhhVZVZ,        & 
& cplHmcVWmVP,cplHmcVWmVZ,cplcHmVPVWm,cplcHmVWmVZ,cplhhhhcVWmVWm,cplhhhhVZVZ,            & 
& cplhhHmcVWmVP,cplhhHmcVWmVZ,cplhhcHmVPVWm,cplhhcHmVWmVZ,cplHmcHmVPVP,cplHmcHmVPVZ,     & 
& cplHmcHmcVWmVWm,cplHmcHmVZVZ,cplVGVGVG,cplcVWmVPVWm,cplcVWmVWmVZ,cplcFdFdhhL,          & 
& cplcFdFdhhR,cplcFuFdcHmL,cplcFuFdcHmR,cplcFeFehhL,cplcFeFehhR,cplcFvFecHmL,            & 
& cplcFvFecHmR,cplcFuFuhhL,cplcFuFuhhR,cplcFdFuHmL,cplcFdFuHmR,cplcFeFvHmL,              & 
& cplcFeFvHmR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,cplcFdFdVPR,cplcFdFdVZL,               & 
& cplcFdFdVZR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,           & 
& cplcFeFeVZR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,           & 
& cplcFuFuVPR,cplcFdFuVWmL,cplcFdFuVWmR,cplcFuFuVZL,cplcFuFuVZR,cplcFeFvVWmL,            & 
& cplcFeFvVWmR,cplcFvFvVZL,cplcFvFvVZR,cplVGVGVGVG1,cplVGVGVGVG2,cplVGVGVGVG3,           & 
& cplcVWmVPVPVWm1,cplcVWmVPVPVWm2,cplcVWmVPVPVWm3,cplcVWmVPVWmVZ1,cplcVWmVPVWmVZ2,       & 
& cplcVWmVPVWmVZ3,cplcVWmcVWmVWmVWm1,cplcVWmcVWmVWmVWm2,cplcVWmcVWmVWmVWm3,              & 
& cplcVWmVWmVZVZ1,cplcVWmVWmVZVZ2,cplcVWmVWmVZVZ3,cplcgGgGVG,cplcgWmgAVWm,               & 
& cplcgWpCgAcVWm,cplcgWmgWmVP,cplcgWmgWmVZ,cplcgAgWmcVWm,cplcgZgWmcVWm,cplcgWpCgWpCVP,   & 
& cplcgAgWpCVWm,cplcgZgWpCVWm,cplcgWpCgWpCVZ,cplcgWmgZVWm,cplcgWpCgZcVWm,cplcgZgAhh,     & 
& cplcgWmgAHm,cplcgWpCgAcHm,cplcgWmgWmhh,cplcgZgWmcHm,cplcgWpCgWpChh,cplcgZgWpCHm,       & 
& cplcgZgZhh,cplcgWmgZHm,cplcgWpCgZcHm,GcplhhHmcHm,GcplhhHmcVWm,GcplhhcHmVWm,            & 
& GcplHmcHmVP,GcplHmcHmVZ,GcplHmcVWmVP,GcplHmcVWmVZ,GcplcHmVPVWm,GcplcHmVWmVZ,           & 
& GcplcFuFdcHmL,GcplcFuFdcHmR,GcplcFvFecHmL,GcplcFvFecHmR,GcplcFdFuHmL,GcplcFdFuHmR,     & 
& GcplcFeFvHmL,GcplcFeFvHmR,dg1,dg2,dg3,dM122,dYu,depsU,dYd,dYe,depsD,depsE,             & 
& dLam6,dLam5,dLam7,dM112,dM222,dLam1,dLam4,dLam3,dLam2,dmS2,dLam1p,dLam2p,              & 
& dL3pp,dmSp2,dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,            & 
& dLam5p,dL2pp,dLam3p,deta,dzeta,dvd,dvu,dvS,dZH,dZP,dZDL,dZDR,dZUL,dZUR,dZEL,           & 
& dZER,dSinTW,dCosTW,dTanTW,ZfVG,ZfvL,ZfVP,ZfVZ,ZfVWm,Zfhh,ZfHm,ZfDL,ZfDR,               & 
& ZfUL,ZfUR,ZfEL,ZfER,ZfVPVZ,ZfVZVP,ctcplhhhhhh,ctcplhhHmcHm,ctcplhhhhVZ,ctcplhhHmcVWm,  & 
& ctcplhhcHmVWm,ctcplHmcHmVP,ctcplHmcHmVZ,ctcplhhcVWmVWm,ctcplhhVZVZ,ctcplHmcVWmVP,      & 
& ctcplHmcVWmVZ,ctcplcHmVPVWm,ctcplcHmVWmVZ,ctcplVGVGVG,ctcplcVWmVPVWm,ctcplcVWmVWmVZ,   & 
& ctcplcFdFdhhL,ctcplcFdFdhhR,ctcplcFuFdcHmL,ctcplcFuFdcHmR,ctcplcFeFehhL,               & 
& ctcplcFeFehhR,ctcplcFvFecHmL,ctcplcFvFecHmR,ctcplcFuFuhhL,ctcplcFuFuhhR,               & 
& ctcplcFdFuHmL,ctcplcFdFuHmR,ctcplcFeFvHmL,ctcplcFeFvHmR,ctcplcFdFdVGL,ctcplcFdFdVGR,   & 
& ctcplcFdFdVPL,ctcplcFdFdVPR,ctcplcFdFdVZL,ctcplcFdFdVZR,ctcplcFuFdcVWmL,               & 
& ctcplcFuFdcVWmR,ctcplcFeFeVPL,ctcplcFeFeVPR,ctcplcFeFeVZL,ctcplcFeFeVZR,               & 
& ctcplcFvFecVWmL,ctcplcFvFecVWmR,ctcplcFuFuVGL,ctcplcFuFuVGR,ctcplcFuFuVPL,             & 
& ctcplcFuFuVPR,ctcplcFdFuVWmL,ctcplcFdFuVWmR,ctcplcFuFuVZL,ctcplcFuFuVZR,               & 
& ctcplcFeFvVWmL,ctcplcFeFvVWmR,ctcplcFvFvVZL,ctcplcFvFvVZR,MLambda,deltaM,kont)

! -------------------------------------------- 
! The decays at one-loop 
! -------------------------------------------- 

! Fu
If (CalcLoopDecay_Fu) Then 
Call OneLoopDecay_Fu(MhhOS,Mhh2OS,MHmOS,MHm2OS,MFdOS,MFd2OS,MFuOS,MFu2OS,             & 
& MFeOS,MFe2OS,MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS,ZPOS,ZDLOS,ZDROS,ZULOS,ZUROS,            & 
& ZELOS,ZEROS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,               & 
& MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,g1,g2,g3,Lam6,Lam5,Lam7,           & 
& Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,          & 
& Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,              & 
& mSp2,vd,vu,vS,dg1,dg2,dg3,dM122,dYu,depsU,dYd,dYe,depsD,depsE,dLam6,dLam5,             & 
& dLam7,dM112,dM222,dLam1,dLam4,dLam3,dLam2,dmS2,dLam1p,dLam2p,dL3pp,dmSp2,              & 
& dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,dLam5p,dL2pp,           & 
& dLam3p,deta,dzeta,dvd,dvu,dvS,dZH,dZP,dZDL,dZDR,dZUL,dZUR,dZEL,dZER,dSinTW,            & 
& dCosTW,dTanTW,ZfVG,ZfvL,ZfVP,ZfVZ,ZfVWm,Zfhh,ZfHm,ZfDL,ZfDR,ZfUL,ZfUR,ZfEL,            & 
& ZfER,ZfVPVZ,ZfVZVP,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,        & 
& cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,cplcFdFuVWmL,              & 
& cplcFdFuVWmR,cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,        & 
& cplcFuFuhhR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,               & 
& cplcFuFuVZR,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm,             & 
& cplhhcVWmVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhVZVZ,cplHmcHmVP,          & 
& cplHmcHmVZ,cplHmcVWmVP,cplHmcVWmVZ,cplVGVGVG,ctcplcFuFdcHmL,ctcplcFuFdcHmR,            & 
& ctcplcFuFdcVWmL,ctcplcFuFdcVWmR,ctcplcFuFuhhL,ctcplcFuFuhhR,ctcplcFuFuVGL,             & 
& ctcplcFuFuVGR,ctcplcFuFuVPL,ctcplcFuFuVPR,ctcplcFuFuVZL,ctcplcFuFuVZR,GcplcFuFdcHmL,   & 
& GcplcFuFdcHmR,GcplcHmVPVWm,GcplHmcVWmVP,GosZcplcFuFdcHmL,GosZcplcFuFdcHmR,             & 
& GosZcplcHmVPVWm,GosZcplHmcVWmVP,GZcplcFuFdcHmL,GZcplcFuFdcHmR,GZcplcHmVPVWm,           & 
& GZcplHmcVWmVP,ZcplcFdFdVGL,ZcplcFdFdVGR,ZcplcFdFdVPL,ZcplcFdFdVPR,ZcplcFdFuHmL,        & 
& ZcplcFdFuHmR,ZcplcFdFuVWmL,ZcplcFdFuVWmR,ZcplcFuFdcHmL,ZcplcFuFdcHmR,ZcplcFuFdcVWmL,   & 
& ZcplcFuFdcVWmR,ZcplcFuFuhhL,ZcplcFuFuhhR,ZcplcFuFuVGL,ZcplcFuFuVGR,ZcplcFuFuVPL,       & 
& ZcplcFuFuVPR,ZcplcFuFuVZL,ZcplcFuFuVZR,ZcplcHmVPVWm,ZcplcVWmVPVWm,ZcplHmcHmVP,         & 
& ZcplHmcVWmVP,ZcplVGVGVG,ZRUZH,ZRUZP,ZRUVd,ZRUUd,ZRUVu,ZRUUu,ZRUVe,ZRUUe,               & 
& MLambda,em,gs,deltaM,kont,gP1LFu)

End if 
! Fe
If (CalcLoopDecay_Fe) Then 
Call OneLoopDecay_Fe(MhhOS,Mhh2OS,MHmOS,MHm2OS,MFdOS,MFd2OS,MFuOS,MFu2OS,             & 
& MFeOS,MFe2OS,MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS,ZPOS,ZDLOS,ZDROS,ZULOS,ZUROS,            & 
& ZELOS,ZEROS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,               & 
& MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,g1,g2,g3,Lam6,Lam5,Lam7,           & 
& Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,          & 
& Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,              & 
& mSp2,vd,vu,vS,dg1,dg2,dg3,dM122,dYu,depsU,dYd,dYe,depsD,depsE,dLam6,dLam5,             & 
& dLam7,dM112,dM222,dLam1,dLam4,dLam3,dLam2,dmS2,dLam1p,dLam2p,dL3pp,dmSp2,              & 
& dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,dLam5p,dL2pp,           & 
& dLam3p,deta,dzeta,dvd,dvu,dvS,dZH,dZP,dZDL,dZDR,dZUL,dZUR,dZEL,dZER,dSinTW,            & 
& dCosTW,dTanTW,ZfVG,ZfvL,ZfVP,ZfVZ,ZfVWm,Zfhh,ZfHm,ZfDL,ZfDR,ZfUL,ZfUR,ZfEL,            & 
& ZfER,ZfVPVZ,ZfVZVP,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,        & 
& cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFvFecHmL,            & 
& cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFvFvVZL,cplcFvFvVZR,cplcHmVPVWm,          & 
& cplcHmVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm,cplhhcVWmVWm,cplhhhhhh,              & 
& cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhVZVZ,cplHmcHmVP,cplHmcHmVZ,cplHmcVWmVP,          & 
& cplHmcVWmVZ,ctcplcFeFehhL,ctcplcFeFehhR,ctcplcFeFeVPL,ctcplcFeFeVPR,ctcplcFeFeVZL,     & 
& ctcplcFeFeVZR,ctcplcFeFvHmL,ctcplcFeFvHmR,ctcplcFeFvVWmL,ctcplcFeFvVWmR,               & 
& GcplcFeFvHmL,GcplcFeFvHmR,GcplcHmVPVWm,GcplHmcVWmVP,GosZcplcFeFvHmL,GosZcplcFeFvHmR,   & 
& GosZcplcHmVPVWm,GosZcplHmcVWmVP,GZcplcFeFvHmL,GZcplcFeFvHmR,GZcplcHmVPVWm,             & 
& GZcplHmcVWmVP,ZcplcFeFehhL,ZcplcFeFehhR,ZcplcFeFeVPL,ZcplcFeFeVPR,ZcplcFeFeVZL,        & 
& ZcplcFeFeVZR,ZcplcFeFvHmL,ZcplcFeFvHmR,ZcplcFeFvVWmL,ZcplcFeFvVWmR,ZcplcFvFecHmL,      & 
& ZcplcFvFecHmR,ZcplcFvFecVWmL,ZcplcFvFecVWmR,ZcplcHmVPVWm,ZcplcVWmVPVWm,ZcplHmcHmVP,    & 
& ZcplHmcVWmVP,ZRUZH,ZRUZP,ZRUVd,ZRUUd,ZRUVu,ZRUUu,ZRUVe,ZRUUe,MLambda,em,               & 
& gs,deltaM,kont,gP1LFe)

End if 
! Fd
If (CalcLoopDecay_Fd) Then 
Call OneLoopDecay_Fd(MhhOS,Mhh2OS,MHmOS,MHm2OS,MFdOS,MFd2OS,MFuOS,MFu2OS,             & 
& MFeOS,MFe2OS,MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS,ZPOS,ZDLOS,ZDROS,ZULOS,ZUROS,            & 
& ZELOS,ZEROS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,               & 
& MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,g1,g2,g3,Lam6,Lam5,Lam7,           & 
& Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,          & 
& Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,              & 
& mSp2,vd,vu,vS,dg1,dg2,dg3,dM122,dYu,depsU,dYd,dYe,depsD,depsE,dLam6,dLam5,             & 
& dLam7,dM112,dM222,dLam1,dLam4,dLam3,dLam2,dmS2,dLam1p,dLam2p,dL3pp,dmSp2,              & 
& dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,dLam5p,dL2pp,           & 
& dLam3p,deta,dzeta,dvd,dvu,dvS,dZH,dZP,dZDL,dZDR,dZUL,dZUR,dZEL,dZER,dSinTW,            & 
& dCosTW,dTanTW,ZfVG,ZfvL,ZfVP,ZfVZ,ZfVWm,Zfhh,ZfHm,ZfDL,ZfDR,ZfUL,ZfUR,ZfEL,            & 
& ZfER,ZfVPVZ,ZfVZVP,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,        & 
& cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,cplcFdFuVWmL,              & 
& cplcFdFuVWmR,cplcFuFdcHmL,cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,        & 
& cplcFuFuhhR,cplcFuFuVGL,cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,               & 
& cplcFuFuVZR,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVWm,cplcVWmVWmVZ,cplhhcHmVWm,             & 
& cplhhcVWmVWm,cplhhhhhh,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhVZVZ,cplHmcHmVP,          & 
& cplHmcHmVZ,cplHmcVWmVP,cplHmcVWmVZ,cplVGVGVG,ctcplcFdFdhhL,ctcplcFdFdhhR,              & 
& ctcplcFdFdVGL,ctcplcFdFdVGR,ctcplcFdFdVPL,ctcplcFdFdVPR,ctcplcFdFdVZL,ctcplcFdFdVZR,   & 
& ctcplcFdFuHmL,ctcplcFdFuHmR,ctcplcFdFuVWmL,ctcplcFdFuVWmR,GcplcFdFuHmL,GcplcFdFuHmR,   & 
& GcplcHmVPVWm,GcplHmcVWmVP,GosZcplcFdFuHmL,GosZcplcFdFuHmR,GosZcplcHmVPVWm,             & 
& GosZcplHmcVWmVP,GZcplcFdFuHmL,GZcplcFdFuHmR,GZcplcHmVPVWm,GZcplHmcVWmVP,               & 
& ZcplcFdFdhhL,ZcplcFdFdhhR,ZcplcFdFdVGL,ZcplcFdFdVGR,ZcplcFdFdVPL,ZcplcFdFdVPR,         & 
& ZcplcFdFdVZL,ZcplcFdFdVZR,ZcplcFdFuHmL,ZcplcFdFuHmR,ZcplcFdFuVWmL,ZcplcFdFuVWmR,       & 
& ZcplcFuFdcHmL,ZcplcFuFdcHmR,ZcplcFuFdcVWmL,ZcplcFuFdcVWmR,ZcplcFuFuVGL,ZcplcFuFuVGR,   & 
& ZcplcFuFuVPL,ZcplcFuFuVPR,ZcplcHmVPVWm,ZcplcVWmVPVWm,ZcplHmcHmVP,ZcplHmcVWmVP,         & 
& ZcplVGVGVG,ZRUZH,ZRUZP,ZRUVd,ZRUUd,ZRUVu,ZRUUu,ZRUVe,ZRUUe,MLambda,em,gs,              & 
& deltaM,kont,gP1LFd)

End if 
! hh
If (CalcLoopDecay_hh) Then 
Call OneLoopDecay_hh(MhhOS,Mhh2OS,MHmOS,MHm2OS,MFdOS,MFd2OS,MFuOS,MFu2OS,             & 
& MFeOS,MFe2OS,MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS,ZPOS,ZDLOS,ZDROS,ZULOS,ZUROS,            & 
& ZELOS,ZEROS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,               & 
& MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,g1,g2,g3,Lam6,Lam5,Lam7,           & 
& Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,          & 
& Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,              & 
& mSp2,vd,vu,vS,dg1,dg2,dg3,dM122,dYu,depsU,dYd,dYe,depsD,depsE,dLam6,dLam5,             & 
& dLam7,dM112,dM222,dLam1,dLam4,dLam3,dLam2,dmS2,dLam1p,dLam2p,dL3pp,dmSp2,              & 
& dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,dLam5p,dL2pp,           & 
& dLam3p,deta,dzeta,dvd,dvu,dvS,dZH,dZP,dZDL,dZDR,dZUL,dZUR,dZEL,dZER,dSinTW,            & 
& dCosTW,dTanTW,ZfVG,ZfvL,ZfVP,ZfVZ,ZfVWm,Zfhh,ZfHm,ZfDL,ZfDR,ZfUL,ZfUR,ZfEL,            & 
& ZfER,ZfVPVZ,ZfVZVP,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,        & 
& cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,cplcFdFuVWmL,              & 
& cplcFdFuVWmR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,              & 
& cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFuFdcHmL,            & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVGL,          & 
& cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,cplcFvFecHmL,              & 
& cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFvFvVZL,cplcFvFvVZR,cplcgAgWmcVWm,        & 
& cplcgAgWpCVWm,cplcgWmgAHm,cplcgWmgAVWm,cplcgWmgWmhh,cplcgWmgWmVP,cplcgWmgWmVZ,         & 
& cplcgWmgZHm,cplcgWmgZVWm,cplcgWpCgAcVWm,cplcgWpCgWpChh,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,  & 
& cplcgWpCgZcHm,cplcgWpCgZcVWm,cplcgZgAhh,cplcgZgWmcHm,cplcgZgWmcVWm,cplcgZgWpCHm,       & 
& cplcgZgWpCVWm,cplcgZgZhh,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmcVWmVWmVWm1Q,cplcVWmcVWmVWmVWm2Q,& 
& cplcVWmcVWmVWmVWm3Q,cplcVWmVPVPVWm1Q,cplcVWmVPVPVWm2Q,cplcVWmVPVPVWm3Q,cplcVWmVPVWm,   & 
& cplcVWmVPVWmVZ1Q,cplcVWmVPVWmVZ2Q,cplcVWmVPVWmVZ3Q,cplcVWmVWmVZ,cplcVWmVWmVZVZ1Q,      & 
& cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,cplhhcHmVPVWm1,cplhhcHmVWm,cplhhcHmVWmVZ1,           & 
& cplhhcVWmVWm,cplhhhhcVWmVWm1,cplhhhhhh,cplhhhhhhhh1,cplhhhhHmcHm1,cplhhhhVZ,           & 
& cplhhhhVZVZ1,cplhhHmcHm,cplhhHmcVWm,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,cplhhVZVZ,           & 
& cplHmcHmcVWmVWm1,cplHmcHmVP,cplHmcHmVPVP1,cplHmcHmVPVZ1,cplHmcHmVZ,cplHmcHmVZVZ1,      & 
& cplHmcVWmVP,cplHmcVWmVZ,cplHmHmcHmcHm1,ctcplcFdFdhhL,ctcplcFdFdhhR,ctcplcFeFehhL,      & 
& ctcplcFeFehhR,ctcplcFuFuhhL,ctcplcFuFuhhR,ctcplhhcVWmVWm,ctcplhhhhhh,ctcplhhhhVZ,      & 
& ctcplhhHmcHm,ctcplhhHmcVWm,ctcplhhVZVZ,GcplcHmVPVWm,GcplhhcHmVWm,GcplhhHmcHm,          & 
& GcplHmcVWmVP,GosZcplcHmVPVWm,GosZcplhhcHmVWm,GosZcplhhHmcHm,GosZcplHmcVWmVP,           & 
& GZcplcHmVPVWm,GZcplhhcHmVWm,GZcplhhHmcHm,GZcplHmcVWmVP,ZcplcFdFdhhL,ZcplcFdFdhhR,      & 
& ZcplcFeFehhL,ZcplcFeFehhR,ZcplcFuFuhhL,ZcplcFuFuhhR,ZcplhhcVWmVWm,Zcplhhhhhh,          & 
& ZcplhhhhVZ,ZcplhhHmcHm,ZcplhhHmcVWm,ZcplhhVZVZ,ZRUZH,ZRUZP,ZRUVd,ZRUUd,ZRUVu,          & 
& ZRUUu,ZRUVe,ZRUUe,MLambda,em,gs,deltaM,kont,gP1Lhh)

End if 
! Hm
If (CalcLoopDecay_Hm) Then 
Call OneLoopDecay_Hm(MhhOS,Mhh2OS,MHmOS,MHm2OS,MFdOS,MFd2OS,MFuOS,MFu2OS,             & 
& MFeOS,MFe2OS,MVZOS,MVZ2OS,MVWmOS,MVWm2OS,ZHOS,ZPOS,ZDLOS,ZDROS,ZULOS,ZUROS,            & 
& ZELOS,ZEROS,MFd,MFd2,MFe,MFe2,MFu,MFu2,Mhh,Mhh2,MHm,MHm2,MVWm,MVWm2,MVZ,               & 
& MVZ2,TW,ZDR,ZER,ZUR,v,ZDL,ZEL,ZUL,ZH,ZP,ZW,ZZ,betaH,g1,g2,g3,Lam6,Lam5,Lam7,           & 
& Lam1,Lam4,Lam3,Lam2,Lam1p,Lam2p,L3pp,L1pp,Lam4p,Lam6p,Lam7p,Lam5p,L2pp,Lam3p,          & 
& Yu,epsU,Yd,Ye,epsD,epsE,mus1,mu11,mu12,mu21,mu22,mus2,M122,M112,M222,mS2,              & 
& mSp2,vd,vu,vS,dg1,dg2,dg3,dM122,dYu,depsU,dYd,dYe,depsD,depsE,dLam6,dLam5,             & 
& dLam7,dM112,dM222,dLam1,dLam4,dLam3,dLam2,dmS2,dLam1p,dLam2p,dL3pp,dmSp2,              & 
& dmus1,dmu11,dmu12,dmu21,dmu22,dmus2,dL1pp,dLam4p,dLam6p,dLam7p,dLam5p,dL2pp,           & 
& dLam3p,deta,dzeta,dvd,dvu,dvS,dZH,dZP,dZDL,dZDR,dZUL,dZUR,dZEL,dZER,dSinTW,            & 
& dCosTW,dTanTW,ZfVG,ZfvL,ZfVP,ZfVZ,ZfVWm,Zfhh,ZfHm,ZfDL,ZfDR,ZfUL,ZfUR,ZfEL,            & 
& ZfER,ZfVPVZ,ZfVZVP,cplcFdFdhhL,cplcFdFdhhR,cplcFdFdVGL,cplcFdFdVGR,cplcFdFdVPL,        & 
& cplcFdFdVPR,cplcFdFdVZL,cplcFdFdVZR,cplcFdFuHmL,cplcFdFuHmR,cplcFdFuVWmL,              & 
& cplcFdFuVWmR,cplcFeFehhL,cplcFeFehhR,cplcFeFeVPL,cplcFeFeVPR,cplcFeFeVZL,              & 
& cplcFeFeVZR,cplcFeFvHmL,cplcFeFvHmR,cplcFeFvVWmL,cplcFeFvVWmR,cplcFuFdcHmL,            & 
& cplcFuFdcHmR,cplcFuFdcVWmL,cplcFuFdcVWmR,cplcFuFuhhL,cplcFuFuhhR,cplcFuFuVGL,          & 
& cplcFuFuVGR,cplcFuFuVPL,cplcFuFuVPR,cplcFuFuVZL,cplcFuFuVZR,cplcFvFecHmL,              & 
& cplcFvFecHmR,cplcFvFecVWmL,cplcFvFecVWmR,cplcFvFvVZL,cplcFvFvVZR,cplcgAgWpCVWm,        & 
& cplcgWmgWmhh,cplcgWmgWmVP,cplcgWmgWmVZ,cplcgWmgZHm,cplcgWmgZVWm,cplcgWpCgAcHm,         & 
& cplcgWpCgWpChh,cplcgWpCgWpCVP,cplcgWpCgWpCVZ,cplcgWpCgZcHm,cplcgZgAhh,cplcgZgWmcHm,    & 
& cplcgZgWpCHm,cplcgZgWpCVWm,cplcgZgZhh,cplcHmVPVWm,cplcHmVWmVZ,cplcVWmVPVPVWm1Q,        & 
& cplcVWmVPVPVWm2Q,cplcVWmVPVPVWm3Q,cplcVWmVPVWm,cplcVWmVPVWmVZ1Q,cplcVWmVPVWmVZ2Q,      & 
& cplcVWmVPVWmVZ3Q,cplcVWmVWmVZ,cplcVWmVWmVZVZ1Q,cplcVWmVWmVZVZ2Q,cplcVWmVWmVZVZ3Q,      & 
& cplhhcHmVPVWm1,cplhhcHmVWm,cplhhcHmVWmVZ1,cplhhcVWmVWm,cplhhhhcVWmVWm1,cplhhhhhh,      & 
& cplhhhhHmcHm1,cplhhhhVZ,cplhhHmcHm,cplhhHmcVWm,cplhhHmcVWmVP1,cplhhHmcVWmVZ1,          & 
& cplhhVZVZ,cplHmcHmcVWmVWm1,cplHmcHmVP,cplHmcHmVPVP1,cplHmcHmVPVZ1,cplHmcHmVZ,          & 
& cplHmcHmVZVZ1,cplHmcVWmVP,cplHmcVWmVZ,cplHmHmcHmcHm1,ctcplcFuFdcHmL,ctcplcFuFdcHmR,    & 
& ctcplcFvFecHmL,ctcplcFvFecHmR,ctcplcHmVPVWm,ctcplcHmVWmVZ,ctcplhhcHmVWm,               & 
& ctcplhhHmcHm,ctcplHmcHmVP,ctcplHmcHmVZ,GcplcHmVPVWm,GcplhhHmcHm,GcplHmcHmVZ,           & 
& GcplHmcVWmVP,GosZcplcHmVPVWm,GosZcplhhHmcHm,GosZcplHmcHmVZ,GosZcplHmcVWmVP,            & 
& GZcplcHmVPVWm,GZcplhhHmcHm,GZcplHmcHmVZ,GZcplHmcVWmVP,ZcplcFuFdcHmL,ZcplcFuFdcHmR,     & 
& ZcplcFvFecHmL,ZcplcFvFecHmR,ZcplcHmVWmVZ,ZcplhhcHmVWm,ZcplhhHmcHm,ZcplHmcHmVZ,         & 
& ZRUZH,ZRUZP,ZRUVd,ZRUUd,ZRUVu,ZRUUu,ZRUVe,ZRUUe,MLambda,em,gs,deltaM,kont,gP1LHm)

End if 
If (Extra_scale_loopDecays) Then 
q2 = SetRenormalizationScale(q2_save) 
End if 
Iname = Iname - 1 
 
End Subroutine CalculateOneLoopDecays  
 
 
End Module OneLoopDecays_C2HDMS 
 