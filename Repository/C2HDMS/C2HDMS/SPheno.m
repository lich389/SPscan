(* ::Package:: *)

OnlyLowEnergySPheno = True;


MINPAR={{1,Lambda1Input},
        {2,Lambda2Input},
        {3,Lambda3Input},
        {4,Lambda4Input},
        {6,Lambda3ppInput},
        {7,Lambda1pInput},
        {8,Lambda2pInput},
        {5,M122Input},  
        {9,mSp2Input},
        {10,TanBeta},
        {11,vSInput},      
        {12,zUrInput},
        {13,zDrInput},
        {14,zErInput},
        {15,etaInput},
        {16,zetaInput}
         };

EXTPAR={
        {1,Lambda1pprInput},
        {2,Lambda2pprInput},
        {3,Lambda3prInput},
        {4,Lambda4prInput},
        {5,Lambda5prInput},
        {6,Lambda6prInput},
        {7,Lambda7prInput},
        {8,Lambda5rInput},
        {9,Lambda6rInput},
        {10,Lambda7rInput},
        {11,Lambda1ppiInput},
        {12,Lambda2ppiInput},
        {13,Lambda3piInput},
        {14,Lambda4piInput},
        {15,Lambda5piInput},
        {16,Lambda6piInput},
        {17,Lambda7piInput},
        {18,Lambda5iInput},
        {19,Lambda6iInput},
        {20,Lambda7iInput},
        {21,mu11rInput},
        {22,mu12rInput},
        {23,mu21rInput},
        {24,mu22rInput},
        {25,mus1rInput},
        {26,mus2rInput},
        {31,mu11iInput},
        {32,mu12iInput},
        {33,mu21iInput},
        {34,mu22iInput},
        {35,mus1iInput},
        {36,mus2iInput},
        {41,zUiInput},
        {42,zDiInput},
        {43,zEiInput}
 };

RealParameters = {TanBeta,etaInput,zetaInput};

ParametersToSolveTadpoles = {M112,M222,mS2,im[M122],im[mSp2]};
Tad1Loop[5]=-Tad1Loop[4]*v1/v2;

DEFINITION[MatchingConditions]= {
 {v1,vSM*Cos[ArcTan[TanBeta]]},
 {v2,vSM*Sin[ArcTan[TanBeta]]},
 {Ye,   YeSM/vSM*(v1-((zErInput + I zEiInput)*v2))*(Cos[etaInput]+I Sin[etaInput])},
 {Yd,   YdSM/vSM*(v1-((zDrInput + I zDiInput)*v2))*(Cos[etaInput]+I Sin[etaInput])},
 {Yu,   YuSM/vSM*(v1-((zUrInput + I zUiInput)*v2))*(Cos[-etaInput]+I Sin[-etaInput])},
 {epsE, YeSM/vSM*(v2+((zErInput + I zEiInput)*v1))},
 {epsD, YdSM/vSM*(v2+((zDrInput + I zDiInput)*v1))},
 {epsU, YuSM/vSM*(v2+((zUrInput + I zUiInput)*v1))},
 {g1, g1SM},
 {g2, g2SM},
 {g3, g3SM}
 };

BoundaryLowScaleInput={
 {Lambda1,Lambda1Input},
 {Lambda2,Lambda2Input},
 {Lambda3,Lambda3Input},
 {Lambda4,Lambda4Input},
 {re[Lambda5],Lambda5rInput},
 {im[Lambda5],Lambda5iInput},
 {re[Lambda6],Lambda6rInput},
 {im[Lambda6],Lambda6iInput},
 {re[Lambda7],Lambda7rInput},
 {im[Lambda7],Lambda7iInput},
 {re[M122], M122Input},
 {re[mSp2],mSp2Input},
 {Lambda1p,Lambda1pInput},
 {Lambda2p,Lambda2pInput},
 {re[Lambda3p],Lambda3prInput},
 {im[Lambda3p],Lambda3piInput},
 {re[Lambda4p],Lambda4prInput},
 {im[Lambda4p],Lambda4piInput},
 {re[Lambda5p],Lambda5prInput},
 {im[Lambda5p],Lambda5piInput},
 {re[Lambda6p],Lambda6prInput},
 {im[Lambda6p],Lambda6piInput},
 {re[Lambda7p],Lambda7prInput},
 {im[Lambda7p],Lambda7piInput},
 {re[Lambda1pp],Lambda1pprInput},
 {im[Lambda1pp],Lambda1ppiInput},
 {re[Lambda2pp],Lambda2pprInput},
 {im[Lambda2pp],Lambda2ppiInput},
 {Lambda3pp,Lambda3ppInput},
 {vS,vSInput},
 {re[mu11],mu11rInput},
 {im[mu11],mu11iInput},
 {re[mu22],mu22rInput},
 {im[mu22],mu22iInput},
 {re[mu12],mu12rInput},
 {im[mu12],mu12iInput},
 {re[mu21],mu21rInput},
 {im[mu21],mu21iInput},
 {re[mus1],mus1rInput},
 {im[mus1],mus1iInput},
 {re[mus2],mus2rInput},
 {im[mus2],mus2iInput},
 {eta, etaInput}, 
 {zeta, zetaInput}
};


ListDecayParticles = {Fu,Fe,Fd,hh,Hm};
ListDecayParticles3B = {{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};

AddTreeLevelUnitarityLimits=True;


DefaultInputValues ={Lambda1Input -> 0.25773379277026703, Lambda2Input -> 0.25773379277026703, Lambda3Input -> 0.25773379277026703, Lambda3ppInput -> 0.01805, M122Input -> 320000, mSp2Input->-40000, TanBeta->1, vSInput -> 500, zDrInput-> -1, zErInput->-1, zUrInput->1 };

 

