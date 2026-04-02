#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../../CalcHEP_src/include/extern.h"
#include "../../CalcHEP_src/include/VandP.h"
#include "autoprot.h"
extern int  FError;
/*  Special model functions  */

int nModelParticles=22;
static ModelPrtclsStr ModelPrtcls_[22]=
{
  {"~a","~a",1, 90000001, "Ma","Wa",0,1,1,0}
, {"h1","h1",1, 25, "Mh1","Wh1",0,1,1,0}
, {"h2","h2",1, 35, "Mh2","Wh2",0,1,1,0}
, {"h3","h3",1, 45, "Mh3","Wh3",0,1,1,0}
, {"Ah2","Ah2",1, 36, "MAh2","WAh2",0,1,1,0}
, {"Hm2","Hp2",0, -37, "MHm2","WHm2",0,1,1,-3}
, {"g","g",1, 21, "0","0",2,8,16,0}
, {"A","A",1, 22, "0","0",2,1,2,0}
, {"Z","Z",1, 23, "MZ","WZ",2,1,3,0}
, {"Wm","Wp",0, -24, "MWm","WWm",2,1,3,-3}
, {"nu1","Nu1",0, 12, "0","0",1,1,1,0}
, {"nu2","Nu2",0, 14, "0","0",1,1,1,0}
, {"nu3","Nu3",0, 16, "0","0",1,1,1,0}
, {"d1","D1",0, 1, "Md1","Wd1",1,3,6,-1}
, {"d2","D2",0, 3, "Md2","Wd2",1,3,6,-1}
, {"d3","D3",0, 5, "Md3","Wd3",1,3,6,-1}
, {"u1","U1",0, 2, "Mu1","Wu1",1,3,6,2}
, {"u2","U2",0, 4, "Mu2","Wu2",1,3,6,2}
, {"u3","U3",0, 6, "Mu3","Wu3",1,3,6,2}
, {"e1","E1",0, 11, "Me1","We1",1,1,2,-3}
, {"e2","E2",0, 13, "Me2","We2",1,1,2,-3}
, {"e3","E3",0, 15, "Me3","We3",1,1,2,-3}
};
ModelPrtclsStr *ModelPrtcls=ModelPrtcls_; 
int nModelVars=19;
int nModelFunc=152;
static int nCurrentVars=18;
int*currentVarPtr=&nCurrentVars;
static char*varNames_[171]={
 "WZ","WWm","Wd1","Wd2","Wd3","Wu1","Wu2","Wu3","We1","We2"
,"We3","Maux","sqrt2","Pi","Q","alfSMZ","aS","aEWinv","Gf","rd"
,"Ma","Mh1","Mh2","Mh3","MAh2","MHm2","MZ","Md1","Md2","Md3"
,"Mu1","Mu2","Mu3","Me1","Me2","Me3","Lam5","Lam1","Lam4","Lam3"
,"Lam2","Lam1p","Lam2p","Lam3pp","Lam1pp","Lam4p","Lam5p","vS","ZH11","ZH12"
,"ZH13","ZH21","ZH22","ZH23","ZH31","ZH32","ZH33","ZA11","ZA12","ZA21"
,"ZA22","ZP11","ZP12","ZP21","ZP22","ZDL11","ZDL12","ZDL13","ZDL21","ZDL22"
,"ZDL23","ZDL31","ZDL32","ZDL33","ZDR11","ZDR12","ZDR13","ZDR21","ZDR22","ZDR23"
,"ZDR31","ZDR32","ZDR33","ZUL11","ZUL12","ZUL13","ZUL21","ZUL22","ZUL23","ZUL31"
,"ZUL32","ZUL33","ZUR11","ZUR12","ZUR13","ZUR21","ZUR22","ZUR23","ZUR31","ZUR32"
,"ZUR33","ZEL11","ZEL12","ZEL13","ZEL21","ZEL22","ZEL23","ZEL31","ZEL32","ZEL33"
,"ZER11","ZER12","ZER13","ZER21","ZER22","ZER23","ZER31","ZER32","ZER33","betaH"
,"HPP1","HGG1","HPP2","HGG2","HPP3","HGG3","APP2","AGG2","QCDok","g3"
,"Sb","Cb","Tb","el","MWm","TW","STW","CTW","TTW","g1"
,"g2","v","vd","vu","Yd11","Yd12","Yd13","Yd21","Yd22","Yd23"
,"Yd31","Yd32","Yd33","Ye11","Ye12","Ye13","Ye21","Ye22","Ye23","Ye31"
,"Ye32","Ye33","Yu11","Yu12","Yu13","Yu21","Yu22","Yu23","Yu31","Yu32"
,"Yu33"};
char**varNames=varNames_;
static REAL varValues_[171]={
   2.495200E+00,  2.141000E+00,  0.000000E+00,  0.000000E+00,  0.000000E+00,  0.000000E+00,  0.000000E+00,  1.510000E+00,  0.000000E+00,  0.000000E+00
,  0.000000E+00,  1.000000E+00,  1.414214E+00,  3.141593E+00,  1.000000E+02,  1.172000E-01,  1.190000E-01,  1.370360E+02,  1.166390E-05};
REAL*varValues=varValues_;
int calcMainFunc(void)
{
   int i;
   static REAL * VV=NULL;
   static int iQ=-1;
   static int cErr=1;
   REAL *V=varValues;
   FError=0;
   if(VV && cErr==0)
   { for(i=0;i<nModelVars;i++) if(i!=iQ && VV[i]!=V[i]) break;
     if(i==nModelVars)      {if(iQ>=0 && VV[iQ]!=V[iQ]) goto FirstQ; else return 0;} 
   }
  cErr=1;
   nCurrentVars=19;
   V[19]=slhaRead("SPheno.spc.complexZ2b",0);
   if(!isfinite(V[19]) || FError) return 19;
 FirstQ:
 cErr=1;
   nCurrentVars=20;
   V[20]=slhaVal("MASS",V[14],1,90000001);
   if(!isfinite(V[20]) || FError) return 20;
   nCurrentVars=21;
   V[21]=slhaVal("MASS",V[14],1,25);
   if(!isfinite(V[21]) || FError) return 21;
   nCurrentVars=22;
   V[22]=slhaVal("MASS",V[14],1,35);
   if(!isfinite(V[22]) || FError) return 22;
   nCurrentVars=23;
   V[23]=slhaVal("MASS",V[14],1,45);
   if(!isfinite(V[23]) || FError) return 23;
   nCurrentVars=24;
   V[24]=slhaVal("MASS",V[14],1,36);
   if(!isfinite(V[24]) || FError) return 24;
   nCurrentVars=25;
   V[25]=slhaVal("MASS",V[14],1,37);
   if(!isfinite(V[25]) || FError) return 25;
   nCurrentVars=26;
   V[26]=slhaVal("MASS",V[14],1,23);
   if(!isfinite(V[26]) || FError) return 26;
   nCurrentVars=27;
   V[27]=slhaVal("MASS",V[14],1,1);
   if(!isfinite(V[27]) || FError) return 27;
   nCurrentVars=28;
   V[28]=slhaVal("MASS",V[14],1,3);
   if(!isfinite(V[28]) || FError) return 28;
   nCurrentVars=29;
   V[29]=slhaVal("MASS",V[14],1,5);
   if(!isfinite(V[29]) || FError) return 29;
   nCurrentVars=30;
   V[30]=slhaVal("MASS",V[14],1,2);
   if(!isfinite(V[30]) || FError) return 30;
   nCurrentVars=31;
   V[31]=slhaVal("MASS",V[14],1,4);
   if(!isfinite(V[31]) || FError) return 31;
   nCurrentVars=32;
   V[32]=slhaVal("MASS",V[14],1,6);
   if(!isfinite(V[32]) || FError) return 32;
   nCurrentVars=33;
   V[33]=slhaVal("MASS",V[14],1,11);
   if(!isfinite(V[33]) || FError) return 33;
   nCurrentVars=34;
   V[34]=slhaVal("MASS",V[14],1,13);
   if(!isfinite(V[34]) || FError) return 34;
   nCurrentVars=35;
   V[35]=slhaVal("MASS",V[14],1,15);
   if(!isfinite(V[35]) || FError) return 35;
   nCurrentVars=36;
   V[36]=slhaVal("HMIX",V[14],1,35);
   if(!isfinite(V[36]) || FError) return 36;
   nCurrentVars=37;
   V[37]=slhaVal("HMIX",V[14],1,31);
   if(!isfinite(V[37]) || FError) return 37;
   nCurrentVars=38;
   V[38]=slhaVal("HMIX",V[14],1,34);
   if(!isfinite(V[38]) || FError) return 38;
   nCurrentVars=39;
   V[39]=slhaVal("HMIX",V[14],1,33);
   if(!isfinite(V[39]) || FError) return 39;
   nCurrentVars=40;
   V[40]=slhaVal("HMIX",V[14],1,32);
   if(!isfinite(V[40]) || FError) return 40;
   nCurrentVars=41;
   V[41]=slhaVal("HMIX",V[14],1,38);
   if(!isfinite(V[41]) || FError) return 41;
   nCurrentVars=42;
   V[42]=slhaVal("HMIX",V[14],1,40);
   if(!isfinite(V[42]) || FError) return 42;
   nCurrentVars=43;
   V[43]=slhaVal("HMIX",V[14],1,42);
   if(!isfinite(V[43]) || FError) return 43;
   nCurrentVars=44;
   V[44]=slhaVal("HMIX",V[14],1,39);
   if(!isfinite(V[44]) || FError) return 44;
   nCurrentVars=45;
   V[45]=slhaVal("HMIX",V[14],1,43);
   if(!isfinite(V[45]) || FError) return 45;
   nCurrentVars=46;
   V[46]=slhaVal("HMIX",V[14],1,44);
   if(!isfinite(V[46]) || FError) return 46;
   nCurrentVars=47;
   V[47]=slhaVal("NMSSMRUN",V[14],1,5);
   if(!isfinite(V[47]) || FError) return 47;
   nCurrentVars=48;
   V[48]=slhaVal("SCALARMIX",V[14],2,1,1);
   if(!isfinite(V[48]) || FError) return 48;
   nCurrentVars=49;
   V[49]=slhaVal("SCALARMIX",V[14],2,1,2);
   if(!isfinite(V[49]) || FError) return 49;
   nCurrentVars=50;
   V[50]=slhaVal("SCALARMIX",V[14],2,1,3);
   if(!isfinite(V[50]) || FError) return 50;
   nCurrentVars=51;
   V[51]=slhaVal("SCALARMIX",V[14],2,2,1);
   if(!isfinite(V[51]) || FError) return 51;
   nCurrentVars=52;
   V[52]=slhaVal("SCALARMIX",V[14],2,2,2);
   if(!isfinite(V[52]) || FError) return 52;
   nCurrentVars=53;
   V[53]=slhaVal("SCALARMIX",V[14],2,2,3);
   if(!isfinite(V[53]) || FError) return 53;
   nCurrentVars=54;
   V[54]=slhaVal("SCALARMIX",V[14],2,3,1);
   if(!isfinite(V[54]) || FError) return 54;
   nCurrentVars=55;
   V[55]=slhaVal("SCALARMIX",V[14],2,3,2);
   if(!isfinite(V[55]) || FError) return 55;
   nCurrentVars=56;
   V[56]=slhaVal("SCALARMIX",V[14],2,3,3);
   if(!isfinite(V[56]) || FError) return 56;
   nCurrentVars=57;
   V[57]=slhaVal("PSEUDOSCALARMIX",V[14],2,1,1);
   if(!isfinite(V[57]) || FError) return 57;
   nCurrentVars=58;
   V[58]=slhaVal("PSEUDOSCALARMIX",V[14],2,1,2);
   if(!isfinite(V[58]) || FError) return 58;
   nCurrentVars=59;
   V[59]=slhaVal("PSEUDOSCALARMIX",V[14],2,2,1);
   if(!isfinite(V[59]) || FError) return 59;
   nCurrentVars=60;
   V[60]=slhaVal("PSEUDOSCALARMIX",V[14],2,2,2);
   if(!isfinite(V[60]) || FError) return 60;
   nCurrentVars=61;
   V[61]=slhaVal("CHARGEMIX",V[14],2,1,1);
   if(!isfinite(V[61]) || FError) return 61;
   nCurrentVars=62;
   V[62]=slhaVal("CHARGEMIX",V[14],2,1,2);
   if(!isfinite(V[62]) || FError) return 62;
   nCurrentVars=63;
   V[63]=slhaVal("CHARGEMIX",V[14],2,2,1);
   if(!isfinite(V[63]) || FError) return 63;
   nCurrentVars=64;
   V[64]=slhaVal("CHARGEMIX",V[14],2,2,2);
   if(!isfinite(V[64]) || FError) return 64;
   nCurrentVars=65;
   V[65]=slhaVal("UDLMIX",V[14],2,1,1);
   if(!isfinite(V[65]) || FError) return 65;
   nCurrentVars=66;
   V[66]=slhaVal("UDLMIX",V[14],2,1,2);
   if(!isfinite(V[66]) || FError) return 66;
   nCurrentVars=67;
   V[67]=slhaVal("UDLMIX",V[14],2,1,3);
   if(!isfinite(V[67]) || FError) return 67;
   nCurrentVars=68;
   V[68]=slhaVal("UDLMIX",V[14],2,2,1);
   if(!isfinite(V[68]) || FError) return 68;
   nCurrentVars=69;
   V[69]=slhaVal("UDLMIX",V[14],2,2,2);
   if(!isfinite(V[69]) || FError) return 69;
   nCurrentVars=70;
   V[70]=slhaVal("UDLMIX",V[14],2,2,3);
   if(!isfinite(V[70]) || FError) return 70;
   nCurrentVars=71;
   V[71]=slhaVal("UDLMIX",V[14],2,3,1);
   if(!isfinite(V[71]) || FError) return 71;
   nCurrentVars=72;
   V[72]=slhaVal("UDLMIX",V[14],2,3,2);
   if(!isfinite(V[72]) || FError) return 72;
   nCurrentVars=73;
   V[73]=slhaVal("UDLMIX",V[14],2,3,3);
   if(!isfinite(V[73]) || FError) return 73;
   nCurrentVars=74;
   V[74]=slhaVal("UDRMIX",V[14],2,1,1);
   if(!isfinite(V[74]) || FError) return 74;
   nCurrentVars=75;
   V[75]=slhaVal("UDRMIX",V[14],2,1,2);
   if(!isfinite(V[75]) || FError) return 75;
   nCurrentVars=76;
   V[76]=slhaVal("UDRMIX",V[14],2,1,3);
   if(!isfinite(V[76]) || FError) return 76;
   nCurrentVars=77;
   V[77]=slhaVal("UDRMIX",V[14],2,2,1);
   if(!isfinite(V[77]) || FError) return 77;
   nCurrentVars=78;
   V[78]=slhaVal("UDRMIX",V[14],2,2,2);
   if(!isfinite(V[78]) || FError) return 78;
   nCurrentVars=79;
   V[79]=slhaVal("UDRMIX",V[14],2,2,3);
   if(!isfinite(V[79]) || FError) return 79;
   nCurrentVars=80;
   V[80]=slhaVal("UDRMIX",V[14],2,3,1);
   if(!isfinite(V[80]) || FError) return 80;
   nCurrentVars=81;
   V[81]=slhaVal("UDRMIX",V[14],2,3,2);
   if(!isfinite(V[81]) || FError) return 81;
   nCurrentVars=82;
   V[82]=slhaVal("UDRMIX",V[14],2,3,3);
   if(!isfinite(V[82]) || FError) return 82;
   nCurrentVars=83;
   V[83]=slhaVal("UULMIX",V[14],2,1,1);
   if(!isfinite(V[83]) || FError) return 83;
   nCurrentVars=84;
   V[84]=slhaVal("UULMIX",V[14],2,1,2);
   if(!isfinite(V[84]) || FError) return 84;
   nCurrentVars=85;
   V[85]=slhaVal("UULMIX",V[14],2,1,3);
   if(!isfinite(V[85]) || FError) return 85;
   nCurrentVars=86;
   V[86]=slhaVal("UULMIX",V[14],2,2,1);
   if(!isfinite(V[86]) || FError) return 86;
   nCurrentVars=87;
   V[87]=slhaVal("UULMIX",V[14],2,2,2);
   if(!isfinite(V[87]) || FError) return 87;
   nCurrentVars=88;
   V[88]=slhaVal("UULMIX",V[14],2,2,3);
   if(!isfinite(V[88]) || FError) return 88;
   nCurrentVars=89;
   V[89]=slhaVal("UULMIX",V[14],2,3,1);
   if(!isfinite(V[89]) || FError) return 89;
   nCurrentVars=90;
   V[90]=slhaVal("UULMIX",V[14],2,3,2);
   if(!isfinite(V[90]) || FError) return 90;
   nCurrentVars=91;
   V[91]=slhaVal("UULMIX",V[14],2,3,3);
   if(!isfinite(V[91]) || FError) return 91;
   nCurrentVars=92;
   V[92]=slhaVal("UURMIX",V[14],2,1,1);
   if(!isfinite(V[92]) || FError) return 92;
   nCurrentVars=93;
   V[93]=slhaVal("UURMIX",V[14],2,1,2);
   if(!isfinite(V[93]) || FError) return 93;
   nCurrentVars=94;
   V[94]=slhaVal("UURMIX",V[14],2,1,3);
   if(!isfinite(V[94]) || FError) return 94;
   nCurrentVars=95;
   V[95]=slhaVal("UURMIX",V[14],2,2,1);
   if(!isfinite(V[95]) || FError) return 95;
   nCurrentVars=96;
   V[96]=slhaVal("UURMIX",V[14],2,2,2);
   if(!isfinite(V[96]) || FError) return 96;
   nCurrentVars=97;
   V[97]=slhaVal("UURMIX",V[14],2,2,3);
   if(!isfinite(V[97]) || FError) return 97;
   nCurrentVars=98;
   V[98]=slhaVal("UURMIX",V[14],2,3,1);
   if(!isfinite(V[98]) || FError) return 98;
   nCurrentVars=99;
   V[99]=slhaVal("UURMIX",V[14],2,3,2);
   if(!isfinite(V[99]) || FError) return 99;
   nCurrentVars=100;
   V[100]=slhaVal("UURMIX",V[14],2,3,3);
   if(!isfinite(V[100]) || FError) return 100;
   nCurrentVars=101;
   V[101]=slhaVal("UELMIX",V[14],2,1,1);
   if(!isfinite(V[101]) || FError) return 101;
   nCurrentVars=102;
   V[102]=slhaVal("UELMIX",V[14],2,1,2);
   if(!isfinite(V[102]) || FError) return 102;
   nCurrentVars=103;
   V[103]=slhaVal("UELMIX",V[14],2,1,3);
   if(!isfinite(V[103]) || FError) return 103;
   nCurrentVars=104;
   V[104]=slhaVal("UELMIX",V[14],2,2,1);
   if(!isfinite(V[104]) || FError) return 104;
   nCurrentVars=105;
   V[105]=slhaVal("UELMIX",V[14],2,2,2);
   if(!isfinite(V[105]) || FError) return 105;
   nCurrentVars=106;
   V[106]=slhaVal("UELMIX",V[14],2,2,3);
   if(!isfinite(V[106]) || FError) return 106;
   nCurrentVars=107;
   V[107]=slhaVal("UELMIX",V[14],2,3,1);
   if(!isfinite(V[107]) || FError) return 107;
   nCurrentVars=108;
   V[108]=slhaVal("UELMIX",V[14],2,3,2);
   if(!isfinite(V[108]) || FError) return 108;
   nCurrentVars=109;
   V[109]=slhaVal("UELMIX",V[14],2,3,3);
   if(!isfinite(V[109]) || FError) return 109;
   nCurrentVars=110;
   V[110]=slhaVal("UERMIX",V[14],2,1,1);
   if(!isfinite(V[110]) || FError) return 110;
   nCurrentVars=111;
   V[111]=slhaVal("UERMIX",V[14],2,1,2);
   if(!isfinite(V[111]) || FError) return 111;
   nCurrentVars=112;
   V[112]=slhaVal("UERMIX",V[14],2,1,3);
   if(!isfinite(V[112]) || FError) return 112;
   nCurrentVars=113;
   V[113]=slhaVal("UERMIX",V[14],2,2,1);
   if(!isfinite(V[113]) || FError) return 113;
   nCurrentVars=114;
   V[114]=slhaVal("UERMIX",V[14],2,2,2);
   if(!isfinite(V[114]) || FError) return 114;
   nCurrentVars=115;
   V[115]=slhaVal("UERMIX",V[14],2,2,3);
   if(!isfinite(V[115]) || FError) return 115;
   nCurrentVars=116;
   V[116]=slhaVal("UERMIX",V[14],2,3,1);
   if(!isfinite(V[116]) || FError) return 116;
   nCurrentVars=117;
   V[117]=slhaVal("UERMIX",V[14],2,3,2);
   if(!isfinite(V[117]) || FError) return 117;
   nCurrentVars=118;
   V[118]=slhaVal("UERMIX",V[14],2,3,3);
   if(!isfinite(V[118]) || FError) return 118;
   nCurrentVars=119;
   V[119]=slhaVal("HMIX",V[14],1,10);
   if(!isfinite(V[119]) || FError) return 119;
   nCurrentVars=120;
   V[120]=slhaVal("EFFHIGGSCOUPLINGS",V[14],3,25,22,22);
   if(!isfinite(V[120]) || FError) return 120;
   nCurrentVars=121;
   V[121]=slhaVal("EFFHIGGSCOUPLINGS",V[14],3,25,21,21);
   if(!isfinite(V[121]) || FError) return 121;
   nCurrentVars=122;
   V[122]=slhaVal("EFFHIGGSCOUPLINGS",V[14],3,35,22,22);
   if(!isfinite(V[122]) || FError) return 122;
   nCurrentVars=123;
   V[123]=slhaVal("EFFHIGGSCOUPLINGS",V[14],3,35,21,21);
   if(!isfinite(V[123]) || FError) return 123;
   nCurrentVars=124;
   V[124]=slhaVal("EFFHIGGSCOUPLINGS",V[14],3,45,22,22);
   if(!isfinite(V[124]) || FError) return 124;
   nCurrentVars=125;
   V[125]=slhaVal("EFFHIGGSCOUPLINGS",V[14],3,45,21,21);
   if(!isfinite(V[125]) || FError) return 125;
   nCurrentVars=126;
   V[126]=slhaVal("EFFHIGGSCOUPLINGS",V[14],3,36,22,22);
   if(!isfinite(V[126]) || FError) return 126;
   nCurrentVars=127;
   V[127]=slhaVal("EFFHIGGSCOUPLINGS",V[14],3,36,21,21);
   if(!isfinite(V[127]) || FError) return 127;
   nCurrentVars=128;
   V[128]=initQCD(V[15],V[31],V[29],V[32]);
   if(!isfinite(V[128]) || FError) return 128;
   nCurrentVars=129;
   V[129]=Sqrt(alphaQCD(V[14])*4*3.1415927)*1;
   if(!isfinite(V[129]) || FError) return 129;
   nCurrentVars=130;
   V[130]=Sin(V[119]);
   if(!isfinite(V[130]) || FError) return 130;
   nCurrentVars=131;
   V[131]=Cos(V[119]);
   if(!isfinite(V[131]) || FError) return 131;
   nCurrentVars=132;
   V[132]=Tan(V[119]);
   if(!isfinite(V[132]) || FError) return 132;
   nCurrentVars=133;
   V[133]=2*Sqrt(1/(V[17]))*Sqrt(V[13]);
   if(!isfinite(V[133]) || FError) return 133;
   nCurrentVars=134;
   V[134]=Sqrt(Pow(V[26],2)/(2.)+Sqrt(Pow(V[26],4)/(4.)-Pow(V[26],2)*V[13]/(V[12]*V[17]*V[18])));
   if(!isfinite(V[134]) || FError) return 134;
   nCurrentVars=135;
   V[135]=Asin(Sqrt(1-Pow(V[134],2)/(Pow(V[26],2))));
   if(!isfinite(V[135]) || FError) return 135;
   nCurrentVars=136;
   V[136]=Sin(V[135]);
   if(!isfinite(V[136]) || FError) return 136;
   nCurrentVars=137;
   V[137]=Cos(V[135]);
   if(!isfinite(V[137]) || FError) return 137;
   nCurrentVars=138;
   V[138]=Tan(V[135]);
   if(!isfinite(V[138]) || FError) return 138;
   nCurrentVars=139;
   V[139]=V[133]*1/(Cos(V[135]));
   if(!isfinite(V[139]) || FError) return 139;
   nCurrentVars=140;
   V[140]=V[133]*1/(Sin(V[135]));
   if(!isfinite(V[140]) || FError) return 140;
   nCurrentVars=141;
   V[141]=2*Sqrt(Pow(V[134],2)/(Pow(V[140],2)));
   if(!isfinite(V[141]) || FError) return 141;
   nCurrentVars=142;
   V[142]=V[141]*V[131];
   if(!isfinite(V[142]) || FError) return 142;
   nCurrentVars=143;
   V[143]=V[141]*V[130];
   if(!isfinite(V[143]) || FError) return 143;
   nCurrentVars=144;
   V[144]=V[12]*V[27]/(V[142]);
   if(!isfinite(V[144]) || FError) return 144;
   nCurrentVars=145;
   V[145]=0;

   nCurrentVars=146;
   V[146]=0;

   nCurrentVars=147;
   V[147]=0;

   nCurrentVars=148;
   V[148]=V[12]*V[28]/(V[142]);
   if(!isfinite(V[148]) || FError) return 148;
   nCurrentVars=149;
   V[149]=0;

   nCurrentVars=150;
   V[150]=0;

   nCurrentVars=151;
   V[151]=0;

   nCurrentVars=152;
   V[152]=V[12]*MbEff(V[14])*1/(V[142]);
   if(!isfinite(V[152]) || FError) return 152;
   nCurrentVars=153;
   V[153]=V[12]*V[33]/(V[142]);
   if(!isfinite(V[153]) || FError) return 153;
   nCurrentVars=154;
   V[154]=0;

   nCurrentVars=155;
   V[155]=0;

   nCurrentVars=156;
   V[156]=0;

   nCurrentVars=157;
   V[157]=V[12]*V[34]/(V[142]);
   if(!isfinite(V[157]) || FError) return 157;
   nCurrentVars=158;
   V[158]=0;

   nCurrentVars=159;
   V[159]=0;

   nCurrentVars=160;
   V[160]=0;

   nCurrentVars=161;
   V[161]=V[12]*V[35]/(V[142]);
   if(!isfinite(V[161]) || FError) return 161;
   nCurrentVars=162;
   V[162]=V[12]*V[30]/(V[143]);
   if(!isfinite(V[162]) || FError) return 162;
   nCurrentVars=163;
   V[163]=0;

   nCurrentVars=164;
   V[164]=0;

   nCurrentVars=165;
   V[165]=0;

   nCurrentVars=166;
   V[166]=V[12]*McEff(V[14])*1/(V[143]);
   if(!isfinite(V[166]) || FError) return 166;
   nCurrentVars=167;
   V[167]=0;

   nCurrentVars=168;
   V[168]=0;

   nCurrentVars=169;
   V[169]=0;

   nCurrentVars=170;
   V[170]=V[12]*MtEff(V[14])*1/(V[143]);
   if(!isfinite(V[170]) || FError) return 170;
   if(VV==NULL) 
   {  VV=malloc(sizeof(REAL)*nModelVars);
      for(i=0;i<nModelVars;i++) if(strcmp(varNames[i],"Q")==0) iQ=i;
   }
   for(i=0;i<nModelVars;i++) VV[i]=V[i];
   cErr=0;
   nCurrentVars++;
   return 0;
}
