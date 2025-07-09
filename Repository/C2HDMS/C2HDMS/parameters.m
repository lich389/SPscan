(* ::Package:: *)

ParameterDefinitions = { 

{g1,        { Description -> "Hypercharge-Coupling"}},
{g2,        { Description -> "Left-Coupling"}},
{g3,        { Description -> "Strong-Coupling"}},    
{AlphaS,    {Description -> "Alpha Strong"}},	
{e,         { Description -> "electric charge"}}, 

{Gf,        { Description -> "Fermi's constant"}},
{aEWinv,    { Description -> "inverse weak coupling constant at mZ"}},



{Yu,        { Description -> "Up-Yukawa-Coupling",
			 DependenceNum ->  None}}, 
             									
{Yd,        { Description -> "Down-Yukawa-Coupling",
			  DependenceNum ->  None}},
             									
{Ye,        { Description -> "Lepton-Yukawa-Coupling",
			  DependenceNum ->  None}}, 

{epsE,  {LaTeX ->"\\epsilon_e",
       OutputName -> epsE,
       LesHouches -> epsE }},                                                                           

{epsD,  {LaTeX ->"\\epsilon_d",
       OutputName -> epsD,
       LesHouches -> epsD }},

{epsU,  {LaTeX ->"\\epsilon_u",
       OutputName -> epsU,
       LesHouches -> epsU }},
       
{zUrInput,   { Description -> "kappaur",
            Real->True,
            OutputName -> zUr}}, 

{zUiInput,   { Description -> "kappaui",
            Real->True,
            OutputName -> zUi}}, 
{zDrInput,   { Description -> "kappadr",
            Real->True,
            OutputName -> zDr}}, 
{zDiInput,   { Description -> "kappadi",
            Real->True,
            OutputName -> zDi}}, 
{zErInput,   { Description -> "kappaer",
            Real->True,
            OutputName -> zEr}}, 
{zEiInput,   { Description -> "kappaei",
            Real->True,
            OutputName -> zEi}}, 
                                      


{Lambda1,    { LaTeX -> "l_1",
               OutputName -> Lam1,
               Real->True,
               LesHouches -> {HMIX,31}}},

{Lambda2,    { LaTeX -> "l_2",
               OutputName -> Lam2,
               Real->True,
               LesHouches -> {HMIX,32}}},

{Lambda3,    { LaTeX -> "l_3",
               OutputName -> Lam3,
               Real->True,
               LesHouches -> {HMIX,33}}},
{Lambda4,    { LaTeX -> "l_4",
               OutputName -> Lam4,
               Real->True,
               LesHouches -> {HMIX,34}}},
{Lambda5,    { LaTeX -> "l_5",
               OutputName -> Lam5,
               LesHouches -> {HMIX,35}}},

{Lambda6,    { LaTeX -> "l_6",
               OutputName -> Lam6,
               LesHouches -> {HMIX,36}}},

{Lambda7,    { LaTeX -> "l_7",
               OutputName -> Lam7,
               LesHouches -> {HMIX,37}}},
               
{Lambda1pp,    { LaTeX -> "l_{1pp}",
               OutputName -> L1pp,
	       LesHouches -> {HMIX,38}}
               },                                                                            
{Lambda2pp,    { LaTeX -> "l_{2pp}",
               OutputName -> L2pp,
               LesHouches -> {HMIX,39}}
               },
{Lambda3pp,    { LaTeX -> "l_{3pp}",
               OutputName -> L3pp,
                Real->True,
		LesHouches -> {HMIX,40}}
               },   


{Lambda1p,    { LaTeX -> "l_{1p}",
               OutputName -> Lam1p,
               Real->True,
               LesHouches -> {HMIX,41}}
               }, 
{Lambda2p,    {LaTeX -> "l_{2p}",
               OutputName -> Lam2p,
               Real->True,
		LesHouches -> {HMIX,42}}
               },          
{Lambda3p,    { LaTeX -> "l_{3p}",
               OutputName -> Lam3p,
		LesHouches -> {HMIX,43}}
               },       
{Lambda4p,    { LaTeX -> "l_{4p}",
               OutputName -> Lam4p,
		LesHouches -> {HMIX,44}}
               },              
{Lambda5p,    { LaTeX -> "l_{5p}",
               OutputName -> Lam5p,
		LesHouches -> {HMIX,45}}
               },
{Lambda6p,    {LaTeX -> "l_{6p}",
               OutputName -> Lam6p,
               LesHouches -> {HMIX,46}}
              },
{Lambda7p,    { LaTeX -> "l_{7p}",
               OutputName -> Lam7p,
		LesHouches -> {HMIX,47}}
               },  
 
{mu11,    { LaTeX -> "\\mu_{11}",
               OutputName -> mu11,
		LesHouches -> {HMIX,48}}
               }, 

{mu22,    { LaTeX -> "\\mu_{22}",
               OutputName -> mu22,
		LesHouches -> {HMIX,49}}
               },  

{mu12,    { LaTeX -> "\\mu_{12}",
               OutputName -> mu12,
		LesHouches -> {HMIX,50}}
               },       

{mu21,    { LaTeX -> "\\mu_{21}",
               OutputName -> mu21,
		LesHouches -> {HMIX,51}}
               }, 
{mus1,    { LaTeX -> "\\mu_{s1}",
               OutputName -> mus1,
		LesHouches -> {HMIX,52}}
               }, 

{mus2,    { LaTeX -> "\\mu_{s2}",
               OutputName -> mus2,
		LesHouches -> {HMIX,53}}
               }, 
                       

{M112,    {    LaTeX -> "m_{11}",
               OutputName -> M112,
                Real->True,
               LesHouches -> {HMIX,20}}},


{M222,    {  LaTeX -> "m_{22}",
               OutputName -> M222,
               Real->True,
               LesHouches -> {HMIX,21}}},

{M122,    { LaTeX -> "m_{12}",
               OutputName -> M122,
               LesHouches -> {HMIX,22}}},

{mS2,    { LaTeX -> "m_{S}",
           OutputName -> mS2,
              Real->True,
               LesHouches -> {HMIX,23}}},

{mSp2,    {LaTeX -> "m_{Sp}",
           OutputName -> mSp2,
               LesHouches -> {HMIX,24}}},
 
{v1,        { Description -> "Down-VEV", LaTeX -> "v_1"}}, 
{v2,        { Description -> "Up-VEV", LaTeX -> "v_2"}},       
{vS,        { Description -> "Singlet-VEV", LaTeX -> "v_s"}},       
{v,         { Description -> "EW-VEV"}},
             
{\[Beta],   { Description -> "Pseudo Scalar mixing angle"  }},             
{TanBeta,   { Description -> "Tan Beta" }},              
{\[Alpha],  { Description -> "Scalar mixing angle" }},  

{ZH,        { Description->"Scalar-Mixing-Matrix",
              Dependence -> None,
              DependenceNum -> None,
              DependenceOptional -> None,
              Real -> True }},


{ZP,        { Description->"Charged-Mixing-Matrix",
              Dependence -> None,
              DependenceOptional -> None,
              DependenceNum -> None,
              Real -> True }}, 

{eta,       { Real -> True, 
              OutputName ->"eta",
              LaTeX -> "\\eta",
              LesHouches->{HMIX,500} }},
{zeta,       { Real -> True, 
              OutputName ->"zeta",
              LaTeX -> "\\zeta",
              LesHouches->{HMIX,501} }},


{ThetaW,    { Description -> "Weinberg-Angle"}}, 

{ZZ, {Description ->   "Photon-Z Mixing Matrix" }},
{ZW, {Description -> "W Mixing Matrix"}},


{Vu,        {Description ->"Left-Up-Mixing-Matrix"}},  

{Vd,        {Description ->"Left-Down-Mixing-Matrix"}}, 

{Uu,        {Description ->"Right-Up-Mixing-Matrix"}}, 

{Ud,        {Description ->"Right-Down-Mixing-Matrix"}}, 

{Ve,        {Description ->"Left-Lepton-Mixing-Matrix"}}, 

{Ue,        {Description ->"Right-Lepton-Mixing-Matrix"}}
}; 
 

