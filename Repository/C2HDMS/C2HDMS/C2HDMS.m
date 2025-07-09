(* ::Package:: *)

Off[General::spell]

Model`Name = "C2HDMS";
Model`NameLaTeX ="Two Higgs Doublet Model + complex singlet";
Model`Authors = "Jayita Lahiri, Cheng Li";
Model`Date = "2025-02-26";

(* 2014-11-06: Changed sign in Lagrangian *)
(* 2015-11-16: added conj[H1].H2 term *)
 

 


(*-------------------------------------------*)
(*   Particle Content*)
(*-------------------------------------------*)

(* Gauge Superfields *)

Gauge[[1]]={B,   U[1], hypercharge, g1,False,1};
Gauge[[2]]={WB, SU[2], left,        g2,True,1};
Gauge[[3]]={G,  SU[3], color,       g3,False,1};


(* Chiral Superfields *)

FermionFields[[1]] = {q, 3, {uL,dL},     1/6, 2, 3};  
FermionFields[[2]] = {l, 3, {vL,eL},    -1/2, 2, 1};
FermionFields[[3]] = {d, 3, conj[dR],   1/3, 1, -3};
FermionFields[[4]] = {u, 3, conj[uR],  -2/3, 1, -3};
FermionFields[[5]] = {e, 3, conj[eR],     1, 1,  1};

ScalarFields[[1]] =  {H1, 1, {H1p, H10},     1/2, 2, 1};
ScalarFields[[2]] =  {H2, 1, {H2p, H20},     1/2, 2,1};

ScalarFields[[3]] =  {S, 1, sR,     0, 1,1};
     
 

(*----------------------------------------------*)
(*   DEFINITION                                 *)
(*----------------------------------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][Additional]= {
	{LagHC, { AddHC->True}},
	{LagNoHC,{ AddHC->False}},
         {LagSNoHC,{AddHC->False}},
         {LagSHC,{AddHC->True}}
};


LagNoHC = -(M112 conj[H1] . H1 + M222 conj[H2] . H2 + Lambda1/2 conj[H1] . H1 . conj[H1] . H1 +
		Lambda2/2 conj[H2] . H2 . conj[H2] . H2 + Lambda3 conj[H2] . H2 . conj[H1] . H1 + Lambda4 conj[H2] . H1 . conj[H1] . H2);


LagHC = -(-M122 conj[H1] . H2 + Lambda5/2 conj[H1] . H2 . conj[H1] . H2 + Lambda6 conj[H1] . H1 . conj[H1] . H2 + Lambda7 conj[H2] . H2 . conj[H1] . H2 
		+ Yd conj[H1] . d . q + Ye conj[H1] . e . l - Yu H1 . u . q + epsD conj[H2] . d . q + epsE conj[H2] . e . l - epsU H2 . u . q);

LagSNoHC= -(mS2 conj[S] . S + Lambda3pp/4 (conj[S] . S) . (conj[S] . S) + Lambda1p (conj[S] . S) . (conj[H1] . H1) +  
              Lambda2p (conj[S] . S) . (conj[H2] . H2) );
 
LagSHC=-(mSp2/2  S . S + mus1/6 S . S . S + mus2/2 (conj[S] . S) . S + Lambda1pp/24  S . S . S . S + Lambda2pp/6  conj[S] . S . S . S+ 
		Lambda3p (conj[S] . S) . (conj[H1] . H2) + Lambda4p (S . S) . (conj[H1] . H1) + Lambda5p (S . S) . (conj[H2] . H2) + Lambda6p (S . S) . (conj[H1] . H2) + Lambda7p (S . S) . (conj[H2] . H1)  +
			 mu11 (conj[H1] . H1) . S + mu22 (conj[H2] . H2) . S + mu12 (conj[H1] . H2) . S + mu21 (conj[H2] . H1) . S );

  
 
(* Gauge Sector*)

DEFINITION[EWSB][GaugeSector] =
{ 
  {{VB,VWB[3]},{VP,VZ},ZZ},
  {{VWB[1],VWB[2]},{VWm,conj[VWm]},ZW}
};     
        
 DEFINITION[GaugeES][Phases]= 
{    {H1p, Exp[I eta]},
     {H10, Exp[I eta]},
     {sR, Exp[I zeta]}
    };         
          	

(* ----- VEVs ---- *)

DEFINITION[EWSB][VEVs]= 
{    {H10, {v1, 1/Sqrt[2]}, {sigma1, I/Sqrt[2]},{phi1, 1/Sqrt[2]}},
     {H20, {v2, 1/Sqrt[2]}, {sigma2, I/Sqrt[2]},{phi2, 1/Sqrt[2]}},

     {sR, {vS, 1}, {sigmaS, I},{phiS, 1}}};


DEFINITION[EWSB][MatterSector]=   
    { {{phi1, phi2, phiS, sigma1, sigma2, sigmaS}, {hh, ZH}},
      {{conj[H1p],conj[H2p]},{Hm,ZP}},
      {{{dL}, {conj[dR]}}, {{DL,Vd}, {DR,Ud}}},
      {{{uL}, {conj[uR]}}, {{UL,Vu}, {UR,Uu}}},
      {{{eL}, {conj[eR]}}, {{EL,Ve}, {ER,Ue}}}       };  


(*------------------------------------------------------*)
(* Dirac-Spinors *)
(*------------------------------------------------------*)

DEFINITION[EWSB][DiracSpinors]={
 Fd ->{  DL, conj[DR]},
 Fe ->{  EL, conj[ER]},
 Fu ->{  UL, conj[UR]},
 Fv ->{  vL, 0}};

DEFINITION[EWSB][GaugeES]={
 Fd1 ->{  FdL, 0},
 Fd2 ->{  0, FdR},
 Fu1 ->{  Fu1, 0},
 Fu2 ->{  0, Fu2},
 Fe1 ->{  Fe1, 0},
 Fe2 ->{  0, Fe2}};

