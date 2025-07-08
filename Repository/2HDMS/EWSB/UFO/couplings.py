from object_library import all_couplings,Coupling 
from cmath import exp 
from function_library import complexconjugate,re,im,csc,sec,acsc,asec 
 
 
GC_1 = Coupling(name = 'GC_1',
	 value = '(ZA11*(ZA11*(3*vu*ZA11*(Lam6 - complexconjugate(Lam6)) + ZA12*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + 2*ZA13*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA13*(2*vu*ZA13*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA11*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA12*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA12*(ZA11*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA12*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA13*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA11*(ZA11*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA12*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA13*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA13*(2*vd*ZA13*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA11*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA12*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZA12*(3*vd*ZA12*(-Lam7 + complexconjugate(Lam7)) + ZA11*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + 2*ZA13*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZA13*(ZA11*(2*vu*ZA13*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA11*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA12*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA12*(2*vd*ZA13*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA11*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA12*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) - 2*ZA13*(vd*ZA12*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + vu*ZA11*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA13*(-MUS1 + 3*MUS2 - Lam1pp*vS + 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) - 3*complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_2 = Coupling(name = 'GC_2',
	 value = '(ZA11*(ZA11*(3*vu*ZA21*(Lam6 - complexconjugate(Lam6)) + ZA22*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + 2*ZA23*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA13*(2*vu*ZA23*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA12*(ZA21*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA22*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA23*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA11*(ZA21*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA22*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA23*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA13*(2*vd*ZA23*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZA12*(3*vd*ZA22*(-Lam7 + complexconjugate(Lam7)) + ZA21*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + 2*ZA23*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZA13*(ZA11*(2*vu*ZA23*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA12*(2*vd*ZA23*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) - 2*ZA13*(vd*ZA22*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + vu*ZA21*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA23*(-MUS1 + 3*MUS2 - Lam1pp*vS + 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) - 3*complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_3 = Coupling(name = 'GC_3',
	 value = '(ZA11*(ZA11*(3*vu*ZA31*(Lam6 - complexconjugate(Lam6)) + ZA32*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + 2*ZA33*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA13*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA12*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA11*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA13*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZA12*(3*vd*ZA32*(-Lam7 + complexconjugate(Lam7)) + ZA31*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + 2*ZA33*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZA13*(ZA11*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA12*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) - 2*ZA13*(vd*ZA32*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + vu*ZA31*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA33*(-MUS1 + 3*MUS2 - Lam1pp*vS + 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) - 3*complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_4 = Coupling(name = 'GC_4',
	 value = '(ZA11*(ZA21*(3*vu*ZA21*(Lam6 - complexconjugate(Lam6)) + ZA22*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + 2*ZA23*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA23*(2*vu*ZA23*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(ZA21*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA22*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA23*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA21*(ZA21*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA22*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA23*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA23*(2*vd*ZA23*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZA22*(3*vd*ZA22*(-Lam7 + complexconjugate(Lam7)) + ZA21*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + 2*ZA23*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZA13*(ZA21*(2*vu*ZA23*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(2*vd*ZA23*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) - 2*ZA23*(vd*ZA22*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + vu*ZA21*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA23*(-MUS1 + 3*MUS2 - Lam1pp*vS + 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) - 3*complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_5 = Coupling(name = 'GC_5',
	 value = '(ZA11*(ZA21*(3*vu*ZA31*(Lam6 - complexconjugate(Lam6)) + ZA32*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + 2*ZA33*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA23*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA21*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA23*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZA22*(3*vd*ZA32*(-Lam7 + complexconjugate(Lam7)) + ZA31*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + 2*ZA33*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZA13*(ZA21*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) - 2*ZA23*(vd*ZA32*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + vu*ZA31*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA33*(-MUS1 + 3*MUS2 - Lam1pp*vS + 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) - 3*complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_6 = Coupling(name = 'GC_6',
	 value = '(ZA11*(ZA31*(3*vu*ZA31*(Lam6 - complexconjugate(Lam6)) + ZA32*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + 2*ZA33*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA31*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA33*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZA32*(3*vd*ZA32*(-Lam7 + complexconjugate(Lam7)) + ZA31*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + 2*ZA33*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZA13*(ZA31*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) - 2*ZA33*(vd*ZA32*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + vu*ZA31*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA33*(-MUS1 + 3*MUS2 - Lam1pp*vS + 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) - 3*complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_7 = Coupling(name = 'GC_7',
	 value = '(ZA21*(ZA21*(3*vu*ZA21*(Lam6 - complexconjugate(Lam6)) + ZA22*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + 2*ZA23*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA23*(2*vu*ZA23*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(ZA21*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA22*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA23*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA22*(ZA21*(ZA21*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA22*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA23*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA23*(2*vd*ZA23*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZA22*(3*vd*ZA22*(-Lam7 + complexconjugate(Lam7)) + ZA21*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + 2*ZA23*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZA23*(ZA21*(2*vu*ZA23*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(2*vd*ZA23*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) - 2*ZA23*(vd*ZA22*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + vu*ZA21*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA23*(-MUS1 + 3*MUS2 - Lam1pp*vS + 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) - 3*complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_8 = Coupling(name = 'GC_8',
	 value = '(ZA21*(ZA21*(3*vu*ZA31*(Lam6 - complexconjugate(Lam6)) + ZA32*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + 2*ZA33*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA23*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA22*(ZA21*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA23*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZA22*(3*vd*ZA32*(-Lam7 + complexconjugate(Lam7)) + ZA31*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + 2*ZA33*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZA23*(ZA21*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) - 2*ZA23*(vd*ZA32*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + vu*ZA31*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA33*(-MUS1 + 3*MUS2 - Lam1pp*vS + 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) - 3*complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_9 = Coupling(name = 'GC_9',
	 value = '(ZA21*(ZA31*(3*vu*ZA31*(Lam6 - complexconjugate(Lam6)) + ZA32*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + 2*ZA33*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA22*(ZA31*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA33*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZA32*(3*vd*ZA32*(-Lam7 + complexconjugate(Lam7)) + ZA31*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + 2*ZA33*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZA23*(ZA31*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) - 2*ZA33*(vd*ZA32*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + vu*ZA31*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA33*(-MUS1 + 3*MUS2 - Lam1pp*vS + 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) - 3*complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_10 = Coupling(name = 'GC_10',
	 value = '(ZA31*(ZA31*(3*vu*ZA31*(Lam6 - complexconjugate(Lam6)) + ZA32*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + 2*ZA33*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA32*(ZA31*(ZA31*(-(Lam6*vd) - Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZA32*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + ZA33*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA33*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZA32*(3*vd*ZA32*(-Lam7 + complexconjugate(Lam7)) + ZA31*(Lam5*vd + Lam7*vu - vd*complexconjugate(Lam5) - vu*complexconjugate(Lam7)) + 2*ZA33*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZA33*(ZA31*(2*vu*ZA33*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + 2*ZA31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZA32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(2*vd*ZA33*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZA32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) - 2*ZA33*(vd*ZA32*(Lam3p - Lam6p + Lam7p - complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + vu*ZA31*(-Lam3p + Lam6p - Lam7p + complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZA33*(-MUS1 + 3*MUS2 - Lam1pp*vS + 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) - 3*complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_11 = Coupling(name = 'GC_11',
	 value = '-1./2.*complex(0,1)*(ZA11*(ZA11*(ZH12*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH13*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA13*(2*vu*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH12*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA12*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA13*(2*vd*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH11*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA11*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA12*(ZH12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH11*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH13*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA13*(ZA12*(2*vd*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH11*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA11*(2*vu*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH12*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA13*(ZH12*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH13*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_12 = Coupling(name = 'GC_12',
	 value = '-1./2.*complex(0,1)*(ZA11*(ZA11*(ZH22*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH23*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA13*(2*vu*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA12*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA13*(2*vd*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA11*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA12*(ZH22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH21*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH23*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA13*(ZA12*(2*vd*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA11*(2*vu*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA13*(ZH22*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_13 = Coupling(name = 'GC_13',
	 value = '-1./2.*complex(0,1)*(ZA11*(ZA11*(ZH32*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA13*(2*vu*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA12*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA13*(2*vd*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA11*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA12*(ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA13*(ZA12*(2*vd*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA11*(2*vu*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA13*(ZH32*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_14 = Coupling(name = 'GC_14',
	 value = '-1./2.*complex(0,1)*(ZA11*(ZA21*(ZH12*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH13*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA23*(2*vu*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH12*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA22*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA23*(2*vd*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH11*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA21*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(ZH12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH11*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH13*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA13*(ZA22*(2*vd*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH11*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA21*(2*vu*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH12*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA23*(ZH12*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH13*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_15 = Coupling(name = 'GC_15',
	 value = '-1./2.*complex(0,1)*(ZA11*(ZA21*(ZH22*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH23*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA23*(2*vu*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA22*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA23*(2*vd*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA21*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(ZH22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH21*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH23*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA13*(ZA22*(2*vd*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA21*(2*vu*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA23*(ZH22*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_16 = Coupling(name = 'GC_16',
	 value = '-1./2.*complex(0,1)*(ZA11*(ZA21*(ZH32*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA23*(2*vu*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA22*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA23*(2*vd*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA21*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA13*(ZA22*(2*vd*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA21*(2*vu*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA23*(ZH32*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_17 = Coupling(name = 'GC_17',
	 value = '-1./2.*complex(0,1)*(ZA11*(ZA31*(ZH12*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH13*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH12*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA32*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA33*(2*vd*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH11*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA31*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZH12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH11*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH13*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA13*(ZA32*(2*vd*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH11*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA31*(2*vu*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH12*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA33*(ZH12*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH13*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_18 = Coupling(name = 'GC_18',
	 value = '-1./2.*complex(0,1)*(ZA11*(ZA31*(ZH22*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH23*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA32*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA33*(2*vd*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA31*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZH22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH21*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH23*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA13*(ZA32*(2*vd*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA31*(2*vu*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA33*(ZH22*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_19 = Coupling(name = 'GC_19',
	 value = '-1./2.*complex(0,1)*(ZA11*(ZA31*(ZH32*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA32*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA12*(ZA33*(2*vd*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA31*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA13*(ZA32*(2*vd*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA31*(2*vu*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA33*(ZH32*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_20 = Coupling(name = 'GC_20',
	 value = '-1./2.*complex(0,1)*(ZA21*(ZA21*(ZH12*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH13*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA23*(2*vu*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH12*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA22*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA22*(ZA23*(2*vd*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH11*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA21*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(ZH12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH11*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH13*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA23*(ZA22*(2*vd*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH11*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA21*(2*vu*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH12*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA23*(ZH12*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH13*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_21 = Coupling(name = 'GC_21',
	 value = '-1./2.*complex(0,1)*(ZA21*(ZA21*(ZH22*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH23*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA23*(2*vu*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA22*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA22*(ZA23*(2*vd*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA21*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(ZH22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH21*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH23*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA23*(ZA22*(2*vd*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA21*(2*vu*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA23*(ZH22*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_22 = Coupling(name = 'GC_22',
	 value = '-1./2.*complex(0,1)*(ZA21*(ZA21*(ZH32*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA23*(2*vu*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA22*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA22*(ZA23*(2*vd*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA21*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA22*(ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA23*(ZA22*(2*vd*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA21*(2*vu*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA23*(ZH32*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_23 = Coupling(name = 'GC_23',
	 value = '-1./2.*complex(0,1)*(ZA21*(ZA31*(ZH12*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH13*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH12*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA32*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA22*(ZA33*(2*vd*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH11*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA31*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZH12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH11*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH13*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA23*(ZA32*(2*vd*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH11*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA31*(2*vu*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH12*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA33*(ZH12*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH13*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_24 = Coupling(name = 'GC_24',
	 value = '-1./2.*complex(0,1)*(ZA21*(ZA31*(ZH22*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH23*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA32*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA22*(ZA33*(2*vd*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA31*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZH22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH21*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH23*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA23*(ZA32*(2*vd*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA31*(2*vu*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA33*(ZH22*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_25 = Coupling(name = 'GC_25',
	 value = '-1./2.*complex(0,1)*(ZA21*(ZA31*(ZH32*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA32*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA22*(ZA33*(2*vd*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA31*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA23*(ZA32*(2*vd*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA31*(2*vu*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA33*(ZH32*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_26 = Coupling(name = 'GC_26',
	 value = '-1./2.*complex(0,1)*(ZA31*(ZA31*(ZH12*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH13*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH12*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA32*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA32*(ZA33*(2*vd*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH11*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA31*(ZH11*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZH12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH11*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH13*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA33*(ZA32*(2*vd*ZH13*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH11*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA31*(2*vu*ZH13*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH12*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA33*(ZH12*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH13*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_27 = Coupling(name = 'GC_27',
	 value = '-1./2.*complex(0,1)*(ZA31*(ZA31*(ZH22*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH23*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA32*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA32*(ZA33*(2*vd*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA31*(ZH21*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZH22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH21*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH23*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA33*(ZA32*(2*vd*ZH23*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA31*(2*vu*ZH23*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA33*(ZH22*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_28 = Coupling(name = 'GC_28',
	 value = '-1./2.*complex(0,1)*(ZA31*(ZA31*(ZH32*(Lam6*vd - Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) - vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZA33*(2*vu*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA32*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZA32*(ZA33*(2*vd*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZA31*(ZH31*(Lam6*vd + Lam5*vu + vu*complexconjugate(Lam5) + vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + Lam7*vu + vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZA32*(ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(-(Lam5*vd) + Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) - ZA33*(ZA32*(2*vd*ZH33*(Lam6p - Lam7p + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(MU12 - MU21 + 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZA31*(2*vu*ZH33*(-Lam6p + Lam7p - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(-MU12 + MU21 - 2*Lam6p*vS + 2*Lam7p*vS - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + 2*ZA33*(ZH32*(-(Lam3p*vd) + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu - 2*vu*complexconjugate(Lam2p) - vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd - Lam3p*vu + Lam6p*vu + Lam7p*vu - 2*vd*complexconjugate(Lam1p) - vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 - MUS2 + Lam1pp*vS + vS*complexconjugate(Lam1pp) - 2*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) - complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_29 = Coupling(name = 'GC_29',
	 value = '(ZA12*(ZH12*(vd*ZH12*(-Lam7 + complexconjugate(Lam7)) + ZH11*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH13*(2*vd*ZH13*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH11*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH11*(ZH11*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA11*(ZH11*(vu*ZH11*(Lam6 - complexconjugate(Lam6)) + ZH12*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH13*(2*vu*ZH13*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH12*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH11*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH12*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH13*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA13*(ZH11*(2*ZH13*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH11*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH12*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH13*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH12*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH12*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH13*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_30 = Coupling(name = 'GC_30',
	 value = '(ZA12*(ZH12*(vd*ZH22*(-Lam7 + complexconjugate(Lam7)) + ZH21*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH13*(2*vd*ZH23*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH11*(ZH21*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA11*(ZH11*(vu*ZH21*(Lam6 - complexconjugate(Lam6)) + ZH22*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH13*(2*vu*ZH23*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH21*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH22*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA13*(ZH11*(2*ZH23*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH23*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH22*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_31 = Coupling(name = 'GC_31',
	 value = '(ZA12*(ZH12*(vd*ZH32*(-Lam7 + complexconjugate(Lam7)) + ZH31*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH13*(2*vd*ZH33*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH11*(ZH31*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA11*(ZH11*(vu*ZH31*(Lam6 - complexconjugate(Lam6)) + ZH32*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH13*(2*vu*ZH33*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH31*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH32*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA13*(ZH11*(2*ZH33*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH33*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH32*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_32 = Coupling(name = 'GC_32',
	 value = '(ZA12*(ZH22*(vd*ZH22*(-Lam7 + complexconjugate(Lam7)) + ZH21*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH23*(2*vd*ZH23*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH21*(ZH21*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA11*(ZH21*(vu*ZH21*(Lam6 - complexconjugate(Lam6)) + ZH22*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH23*(2*vu*ZH23*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(ZH21*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH22*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA13*(ZH21*(2*ZH23*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(2*ZH23*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH23*(ZH22*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_33 = Coupling(name = 'GC_33',
	 value = '(ZA12*(ZH22*(vd*ZH32*(-Lam7 + complexconjugate(Lam7)) + ZH31*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH23*(2*vd*ZH33*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH21*(ZH31*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA11*(ZH21*(vu*ZH31*(Lam6 - complexconjugate(Lam6)) + ZH32*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH23*(2*vu*ZH33*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(ZH31*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH32*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA13*(ZH21*(2*ZH33*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(2*ZH33*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH23*(ZH32*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_34 = Coupling(name = 'GC_34',
	 value = '(ZA12*(ZH32*(vd*ZH32*(-Lam7 + complexconjugate(Lam7)) + ZH31*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH33*(2*vd*ZH33*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH31*(ZH31*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA11*(ZH31*(vu*ZH31*(Lam6 - complexconjugate(Lam6)) + ZH32*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH33*(2*vu*ZH33*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(ZH31*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH32*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA13*(ZH31*(2*ZH33*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(2*ZH33*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH33*(ZH32*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_35 = Coupling(name = 'GC_35',
	 value = '(ZA22*(ZH12*(vd*ZH12*(-Lam7 + complexconjugate(Lam7)) + ZH11*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH13*(2*vd*ZH13*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH11*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH11*(ZH11*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA21*(ZH11*(vu*ZH11*(Lam6 - complexconjugate(Lam6)) + ZH12*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH13*(2*vu*ZH13*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH12*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH11*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH12*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH13*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA23*(ZH11*(2*ZH13*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH11*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH12*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH13*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH12*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH12*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH13*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_36 = Coupling(name = 'GC_36',
	 value = '(ZA22*(ZH12*(vd*ZH22*(-Lam7 + complexconjugate(Lam7)) + ZH21*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH13*(2*vd*ZH23*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH11*(ZH21*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA21*(ZH11*(vu*ZH21*(Lam6 - complexconjugate(Lam6)) + ZH22*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH13*(2*vu*ZH23*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH21*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH22*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA23*(ZH11*(2*ZH23*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH23*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH22*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_37 = Coupling(name = 'GC_37',
	 value = '(ZA22*(ZH12*(vd*ZH32*(-Lam7 + complexconjugate(Lam7)) + ZH31*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH13*(2*vd*ZH33*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH11*(ZH31*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA21*(ZH11*(vu*ZH31*(Lam6 - complexconjugate(Lam6)) + ZH32*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH13*(2*vu*ZH33*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH31*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH32*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA23*(ZH11*(2*ZH33*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH33*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH32*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_38 = Coupling(name = 'GC_38',
	 value = '(ZA22*(ZH22*(vd*ZH22*(-Lam7 + complexconjugate(Lam7)) + ZH21*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH23*(2*vd*ZH23*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH21*(ZH21*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA21*(ZH21*(vu*ZH21*(Lam6 - complexconjugate(Lam6)) + ZH22*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH23*(2*vu*ZH23*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(ZH21*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH22*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA23*(ZH21*(2*ZH23*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(2*ZH23*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH23*(ZH22*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_39 = Coupling(name = 'GC_39',
	 value = '(ZA22*(ZH22*(vd*ZH32*(-Lam7 + complexconjugate(Lam7)) + ZH31*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH23*(2*vd*ZH33*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH21*(ZH31*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA21*(ZH21*(vu*ZH31*(Lam6 - complexconjugate(Lam6)) + ZH32*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH23*(2*vu*ZH33*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(ZH31*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH32*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA23*(ZH21*(2*ZH33*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(2*ZH33*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH23*(ZH32*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_40 = Coupling(name = 'GC_40',
	 value = '(ZA22*(ZH32*(vd*ZH32*(-Lam7 + complexconjugate(Lam7)) + ZH31*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH33*(2*vd*ZH33*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH31*(ZH31*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA21*(ZH31*(vu*ZH31*(Lam6 - complexconjugate(Lam6)) + ZH32*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH33*(2*vu*ZH33*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(ZH31*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH32*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA23*(ZH31*(2*ZH33*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(2*ZH33*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH33*(ZH32*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_41 = Coupling(name = 'GC_41',
	 value = '(ZA32*(ZH12*(vd*ZH12*(-Lam7 + complexconjugate(Lam7)) + ZH11*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH13*(2*vd*ZH13*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH11*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH11*(ZH11*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH13*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA31*(ZH11*(vu*ZH11*(Lam6 - complexconjugate(Lam6)) + ZH12*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH13*(2*vu*ZH13*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH12*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH11*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH12*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH13*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA33*(ZH11*(2*ZH13*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH11*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH12*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH13*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH12*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH12*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH13*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_42 = Coupling(name = 'GC_42',
	 value = '(ZA32*(ZH12*(vd*ZH22*(-Lam7 + complexconjugate(Lam7)) + ZH21*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH13*(2*vd*ZH23*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH11*(ZH21*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA31*(ZH11*(vu*ZH21*(Lam6 - complexconjugate(Lam6)) + ZH22*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH13*(2*vu*ZH23*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH21*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH22*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA33*(ZH11*(2*ZH23*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH23*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH22*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_43 = Coupling(name = 'GC_43',
	 value = '(ZA32*(ZH12*(vd*ZH32*(-Lam7 + complexconjugate(Lam7)) + ZH31*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH13*(2*vd*ZH33*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH11*(ZH31*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA31*(ZH11*(vu*ZH31*(Lam6 - complexconjugate(Lam6)) + ZH32*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH13*(2*vu*ZH33*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH31*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH32*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA33*(ZH11*(2*ZH33*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH33*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH32*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_44 = Coupling(name = 'GC_44',
	 value = '(ZA32*(ZH22*(vd*ZH22*(-Lam7 + complexconjugate(Lam7)) + ZH21*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH23*(2*vd*ZH23*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH21*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH21*(ZH21*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH23*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA31*(ZH21*(vu*ZH21*(Lam6 - complexconjugate(Lam6)) + ZH22*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH23*(2*vu*ZH23*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH22*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(ZH21*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH22*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA33*(ZH21*(2*ZH23*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(2*ZH23*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH23*(ZH22*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_45 = Coupling(name = 'GC_45',
	 value = '(ZA32*(ZH22*(vd*ZH32*(-Lam7 + complexconjugate(Lam7)) + ZH31*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH23*(2*vd*ZH33*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH21*(ZH31*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA31*(ZH21*(vu*ZH31*(Lam6 - complexconjugate(Lam6)) + ZH32*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH23*(2*vu*ZH33*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(ZH31*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH32*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA33*(ZH21*(2*ZH33*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(2*ZH33*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH23*(ZH32*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_46 = Coupling(name = 'GC_46',
	 value = '(ZA32*(ZH32*(vd*ZH32*(-Lam7 + complexconjugate(Lam7)) + ZH31*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7))) + ZH33*(2*vd*ZH33*(-Lam3p - Lam6p + Lam7p + complexconjugate(Lam3p) + complexconjugate(Lam6p) - complexconjugate(Lam7p)) + ZH31*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21))) + ZH31*(ZH31*(-3*Lam6*vd + Lam5*vu - vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd - Lam7*vu - vd*complexconjugate(Lam5) + vu*complexconjugate(Lam7)) + ZH33*(-MU12 + MU21 - 2*Lam3p*vS - 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) - 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) - complexconjugate(MU21)))) + ZA31*(ZH31*(vu*ZH31*(Lam6 - complexconjugate(Lam6)) + ZH32*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6))) + ZH33*(2*vu*ZH33*(Lam3p + Lam6p - Lam7p - complexconjugate(Lam3p) - complexconjugate(Lam6p) + complexconjugate(Lam7p)) + ZH32*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(ZH31*(Lam6*vd - Lam5*vu + vu*complexconjugate(Lam5) - vd*complexconjugate(Lam6)) + ZH32*(-(Lam5*vd) + 3*Lam7*vu + vd*complexconjugate(Lam5) - 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 - MU21 + 2*Lam3p*vS + 2*Lam6p*vS - 2*Lam7p*vS - 2*vS*complexconjugate(Lam3p) - 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) - complexconjugate(MU12) + complexconjugate(MU21)))) + ZA33*(ZH31*(2*ZH33*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(2*ZH33*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-MU12 - MU21 - 2*Lam6p*vS - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH33*(ZH32*(-(Lam6p*vd) - Lam7p*vd - 2*Lam5p*vu + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(-2*Lam4p*vd - Lam6p*vu - Lam7p*vu + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(-MUS1 - MUS2 - Lam1pp*vS - 2*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 2*vS*complexconjugate(Lam2pp) + complexconjugate(MUS1) + complexconjugate(MUS2)))))/2.', 
	 order = {'QED':1} ) 
 
GC_47 = Coupling(name = 'GC_47',
	 value = '(vu*ZA11*(ZP11*(ZP12*(-Lam5 + complexconjugate(Lam4)) + ZP11*(Lam6 - complexconjugate(Lam6))) + ZP12*(ZP11*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP12*(Lam7 - complexconjugate(Lam7)))) + vd*ZA12*(ZP11*(ZP12*(Lam5 - complexconjugate(Lam4)) + ZP11*(-Lam6 + complexconjugate(Lam6))) + ZP12*(ZP11*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP12*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA13*(ZP11*(ZP11*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP11*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_48 = Coupling(name = 'GC_48',
	 value = '(vu*ZA11*(ZP11*(ZP22*(-Lam5 + complexconjugate(Lam4)) + ZP21*(Lam6 - complexconjugate(Lam6))) + ZP12*(ZP21*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP22*(Lam7 - complexconjugate(Lam7)))) + vd*ZA12*(ZP11*(ZP22*(Lam5 - complexconjugate(Lam4)) + ZP21*(-Lam6 + complexconjugate(Lam6))) + ZP12*(ZP21*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP22*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA13*(ZP11*(ZP21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP21*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_49 = Coupling(name = 'GC_49',
	 value = '(vu*ZA11*(ZP21*(ZP12*(-Lam5 + complexconjugate(Lam4)) + ZP11*(Lam6 - complexconjugate(Lam6))) + ZP22*(ZP11*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP12*(Lam7 - complexconjugate(Lam7)))) + vd*ZA12*(ZP21*(ZP12*(Lam5 - complexconjugate(Lam4)) + ZP11*(-Lam6 + complexconjugate(Lam6))) + ZP22*(ZP11*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP12*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA13*(ZP21*(ZP11*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP11*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_50 = Coupling(name = 'GC_50',
	 value = '(vu*ZA11*(ZP21*(ZP22*(-Lam5 + complexconjugate(Lam4)) + ZP21*(Lam6 - complexconjugate(Lam6))) + ZP22*(ZP21*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP22*(Lam7 - complexconjugate(Lam7)))) + vd*ZA12*(ZP21*(ZP22*(Lam5 - complexconjugate(Lam4)) + ZP21*(-Lam6 + complexconjugate(Lam6))) + ZP22*(ZP21*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP22*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA13*(ZP21*(ZP21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP21*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_51 = Coupling(name = 'GC_51',
	 value = '(vu*ZA21*(ZP11*(ZP12*(-Lam5 + complexconjugate(Lam4)) + ZP11*(Lam6 - complexconjugate(Lam6))) + ZP12*(ZP11*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP12*(Lam7 - complexconjugate(Lam7)))) + vd*ZA22*(ZP11*(ZP12*(Lam5 - complexconjugate(Lam4)) + ZP11*(-Lam6 + complexconjugate(Lam6))) + ZP12*(ZP11*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP12*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA23*(ZP11*(ZP11*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP11*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_52 = Coupling(name = 'GC_52',
	 value = '(vu*ZA21*(ZP11*(ZP22*(-Lam5 + complexconjugate(Lam4)) + ZP21*(Lam6 - complexconjugate(Lam6))) + ZP12*(ZP21*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP22*(Lam7 - complexconjugate(Lam7)))) + vd*ZA22*(ZP11*(ZP22*(Lam5 - complexconjugate(Lam4)) + ZP21*(-Lam6 + complexconjugate(Lam6))) + ZP12*(ZP21*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP22*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA23*(ZP11*(ZP21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP21*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_53 = Coupling(name = 'GC_53',
	 value = '(vu*ZA21*(ZP21*(ZP12*(-Lam5 + complexconjugate(Lam4)) + ZP11*(Lam6 - complexconjugate(Lam6))) + ZP22*(ZP11*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP12*(Lam7 - complexconjugate(Lam7)))) + vd*ZA22*(ZP21*(ZP12*(Lam5 - complexconjugate(Lam4)) + ZP11*(-Lam6 + complexconjugate(Lam6))) + ZP22*(ZP11*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP12*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA23*(ZP21*(ZP11*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP11*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_54 = Coupling(name = 'GC_54',
	 value = '(vu*ZA21*(ZP21*(ZP22*(-Lam5 + complexconjugate(Lam4)) + ZP21*(Lam6 - complexconjugate(Lam6))) + ZP22*(ZP21*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP22*(Lam7 - complexconjugate(Lam7)))) + vd*ZA22*(ZP21*(ZP22*(Lam5 - complexconjugate(Lam4)) + ZP21*(-Lam6 + complexconjugate(Lam6))) + ZP22*(ZP21*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP22*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA23*(ZP21*(ZP21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP21*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_55 = Coupling(name = 'GC_55',
	 value = '(vu*ZA31*(ZP11*(ZP12*(-Lam5 + complexconjugate(Lam4)) + ZP11*(Lam6 - complexconjugate(Lam6))) + ZP12*(ZP11*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP12*(Lam7 - complexconjugate(Lam7)))) + vd*ZA32*(ZP11*(ZP12*(Lam5 - complexconjugate(Lam4)) + ZP11*(-Lam6 + complexconjugate(Lam6))) + ZP12*(ZP11*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP12*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA33*(ZP11*(ZP11*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP11*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_56 = Coupling(name = 'GC_56',
	 value = '(vu*ZA31*(ZP11*(ZP22*(-Lam5 + complexconjugate(Lam4)) + ZP21*(Lam6 - complexconjugate(Lam6))) + ZP12*(ZP21*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP22*(Lam7 - complexconjugate(Lam7)))) + vd*ZA32*(ZP11*(ZP22*(Lam5 - complexconjugate(Lam4)) + ZP21*(-Lam6 + complexconjugate(Lam6))) + ZP12*(ZP21*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP22*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA33*(ZP11*(ZP21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP21*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_57 = Coupling(name = 'GC_57',
	 value = '(vu*ZA31*(ZP21*(ZP12*(-Lam5 + complexconjugate(Lam4)) + ZP11*(Lam6 - complexconjugate(Lam6))) + ZP22*(ZP11*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP12*(Lam7 - complexconjugate(Lam7)))) + vd*ZA32*(ZP21*(ZP12*(Lam5 - complexconjugate(Lam4)) + ZP11*(-Lam6 + complexconjugate(Lam6))) + ZP22*(ZP11*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP12*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA33*(ZP21*(ZP11*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP11*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_58 = Coupling(name = 'GC_58',
	 value = '(vu*ZA31*(ZP21*(ZP22*(-Lam5 + complexconjugate(Lam4)) + ZP21*(Lam6 - complexconjugate(Lam6))) + ZP22*(ZP21*(-complexconjugate(Lam4) + complexconjugate(Lam5)) + ZP22*(Lam7 - complexconjugate(Lam7)))) + vd*ZA32*(ZP21*(ZP22*(Lam5 - complexconjugate(Lam4)) + ZP21*(-Lam6 + complexconjugate(Lam6))) + ZP22*(ZP21*(complexconjugate(Lam4) - complexconjugate(Lam5)) + ZP22*(-Lam7 + complexconjugate(Lam7)))) + 2*ZA33*(ZP21*(ZP21*(-MU11 - 2*Lam4p*vS + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(-MU21 - 2*Lam7p*vS + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP21*(-MU12 - 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(-MU22 - 2*Lam5p*vS + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))/2.', 
	 order = {'QED':1} ) 
 
GC_59 = Coupling(name = 'GC_59',
	 value = '-1./2.*complex(0,1)*(ZH11*(ZH11*(ZH12*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + 3*ZH11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH13*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZH13*(2*ZH13*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH11*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH12*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH11*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZH12*(ZH11*(ZH11*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH12*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH13*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH13*(2*ZH13*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH12*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZH12*(3*ZH12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH11*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + 2*ZH13*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZH13*(ZH11*(2*ZH13*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH11*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH12*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH13*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH12*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH12*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH11*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH13*(MUS1 + 3*MUS2 + Lam1pp*vS + 4*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 4*vS*complexconjugate(Lam2pp) + 6*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) + 3*complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_60 = Coupling(name = 'GC_60',
	 value = '-1./2.*complex(0,1)*(ZH11*(ZH11*(ZH22*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + 3*ZH21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH23*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZH13*(2*ZH23*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH21*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZH12*(ZH11*(ZH21*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH13*(2*ZH23*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZH12*(3*ZH22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH21*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + 2*ZH23*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZH13*(ZH11*(2*ZH23*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH23*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH22*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(MUS1 + 3*MUS2 + Lam1pp*vS + 4*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 4*vS*complexconjugate(Lam2pp) + 6*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) + 3*complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_61 = Coupling(name = 'GC_61',
	 value = '-1./2.*complex(0,1)*(ZH11*(ZH11*(ZH32*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + 3*ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZH13*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZH12*(ZH11*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH13*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZH12*(3*ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZH13*(ZH11*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH12*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH13*(ZH32*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 + 3*MUS2 + Lam1pp*vS + 4*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 4*vS*complexconjugate(Lam2pp) + 6*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) + 3*complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_62 = Coupling(name = 'GC_62',
	 value = '-1./2.*complex(0,1)*(ZH11*(ZH21*(ZH22*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + 3*ZH21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH23*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZH23*(2*ZH23*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(ZH21*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZH12*(ZH21*(ZH21*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH23*(2*ZH23*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZH22*(3*ZH22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH21*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + 2*ZH23*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZH13*(ZH21*(2*ZH23*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(2*ZH23*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH23*(ZH22*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(MUS1 + 3*MUS2 + Lam1pp*vS + 4*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 4*vS*complexconjugate(Lam2pp) + 6*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) + 3*complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_63 = Coupling(name = 'GC_63',
	 value = '-1./2.*complex(0,1)*(ZH11*(ZH21*(ZH32*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + 3*ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZH23*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZH12*(ZH21*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH23*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZH22*(3*ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZH13*(ZH21*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH23*(ZH32*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 + 3*MUS2 + Lam1pp*vS + 4*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 4*vS*complexconjugate(Lam2pp) + 6*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) + 3*complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_64 = Coupling(name = 'GC_64',
	 value = '-1./2.*complex(0,1)*(ZH11*(ZH31*(ZH32*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + 3*ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZH33*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZH12*(ZH31*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH33*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZH32*(3*ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZH13*(ZH31*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH33*(ZH32*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 + 3*MUS2 + Lam1pp*vS + 4*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 4*vS*complexconjugate(Lam2pp) + 6*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) + 3*complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_65 = Coupling(name = 'GC_65',
	 value = '-1./2.*complex(0,1)*(ZH21*(ZH21*(ZH22*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + 3*ZH21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH23*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZH23*(2*ZH23*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(ZH21*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZH22*(ZH21*(ZH21*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH22*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH23*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH23*(2*ZH23*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZH22*(3*ZH22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH21*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + 2*ZH23*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZH23*(ZH21*(2*ZH23*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH22*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(2*ZH23*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH23*(ZH22*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH21*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH23*(MUS1 + 3*MUS2 + Lam1pp*vS + 4*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 4*vS*complexconjugate(Lam2pp) + 6*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) + 3*complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_66 = Coupling(name = 'GC_66',
	 value = '-1./2.*complex(0,1)*(ZH21*(ZH21*(ZH32*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + 3*ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZH23*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZH22*(ZH21*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH23*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZH22*(3*ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZH23*(ZH21*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH22*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH23*(ZH32*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 + 3*MUS2 + Lam1pp*vS + 4*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 4*vS*complexconjugate(Lam2pp) + 6*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) + 3*complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_67 = Coupling(name = 'GC_67',
	 value = '-1./2.*complex(0,1)*(ZH21*(ZH31*(ZH32*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + 3*ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZH33*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZH22*(ZH31*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH33*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZH32*(3*ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZH23*(ZH31*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH33*(ZH32*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 + 3*MUS2 + Lam1pp*vS + 4*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 4*vS*complexconjugate(Lam2pp) + 6*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) + 3*complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_68 = Coupling(name = 'GC_68',
	 value = '-1./2.*complex(0,1)*(ZH31*(ZH31*(ZH32*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + 3*ZH31*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6)) + 2*ZH33*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11))) + ZH33*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)))) + ZH32*(ZH31*(ZH31*(3*Lam6*vd + Lam5*vu + 2*vu*complexconjugate(Lam3) + 2*vu*complexconjugate(Lam4) + vu*complexconjugate(Lam5) + 3*vd*complexconjugate(Lam6)) + ZH32*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + ZH33*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH33*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + ZH32*(3*ZH32*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7)) + ZH31*(Lam5*vd + 3*Lam7*vu + 2*vd*complexconjugate(Lam3) + 2*vd*complexconjugate(Lam4) + vd*complexconjugate(Lam5) + 3*vu*complexconjugate(Lam7)) + 2*ZH33*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))) + ZH33*(ZH31*(2*ZH33*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + 2*ZH31*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZH32*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21))) + ZH32*(2*ZH33*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(MU12 + MU21 + 2*Lam3p*vS + 2*Lam6p*vS + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU12) + complexconjugate(MU21)) + 2*ZH32*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22))) + 2*ZH33*(ZH32*(Lam3p*vd + Lam6p*vd + Lam7p*vd + 2*Lam5p*vu + 2*vu*complexconjugate(Lam2p) + vd*complexconjugate(Lam3p) + 2*vu*complexconjugate(Lam5p) + vd*complexconjugate(Lam6p) + vd*complexconjugate(Lam7p)) + ZH31*(2*Lam4p*vd + Lam3p*vu + Lam6p*vu + Lam7p*vu + 2*vd*complexconjugate(Lam1p) + vu*complexconjugate(Lam3p) + 2*vd*complexconjugate(Lam4p) + vu*complexconjugate(Lam6p) + vu*complexconjugate(Lam7p)) + ZH33*(MUS1 + 3*MUS2 + Lam1pp*vS + 4*Lam2pp*vS + vS*complexconjugate(Lam1pp) + 4*vS*complexconjugate(Lam2pp) + 6*vS*complexconjugate(Lam3pp) + complexconjugate(MUS1) + 3*complexconjugate(MUS2)))))', 
	 order = {'QED':1} ) 
 
GC_69 = Coupling(name = 'GC_69',
	 value = '-1./2.*complex(0,1)*(ZH11*(ZP11*(ZP12*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP12*(ZP11*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH12*(ZP12*(ZP11*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP11*(ZP11*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP12*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH13*(ZP11*(ZP11*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP11*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_70 = Coupling(name = 'GC_70',
	 value = '-1./2.*complex(0,1)*(ZH11*(ZP11*(ZP22*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP12*(ZP21*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH12*(ZP12*(ZP21*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP11*(ZP21*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP22*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH13*(ZP11*(ZP21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP21*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_71 = Coupling(name = 'GC_71',
	 value = '-1./2.*complex(0,1)*(ZH11*(ZP21*(ZP12*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP22*(ZP11*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH12*(ZP22*(ZP11*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP21*(ZP11*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP12*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH13*(ZP21*(ZP11*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP11*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_72 = Coupling(name = 'GC_72',
	 value = '-1./2.*complex(0,1)*(ZH11*(ZP21*(ZP22*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP22*(ZP21*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH12*(ZP22*(ZP21*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP21*(ZP21*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP22*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH13*(ZP21*(ZP21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP21*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_73 = Coupling(name = 'GC_73',
	 value = '-1./2.*complex(0,1)*(ZH21*(ZP11*(ZP12*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP12*(ZP11*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH22*(ZP12*(ZP11*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP11*(ZP11*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP12*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH23*(ZP11*(ZP11*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP11*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_74 = Coupling(name = 'GC_74',
	 value = '-1./2.*complex(0,1)*(ZH21*(ZP11*(ZP22*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP12*(ZP21*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH22*(ZP12*(ZP21*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP11*(ZP21*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP22*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH23*(ZP11*(ZP21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP21*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_75 = Coupling(name = 'GC_75',
	 value = '-1./2.*complex(0,1)*(ZH21*(ZP21*(ZP12*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP22*(ZP11*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH22*(ZP22*(ZP11*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP21*(ZP11*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP12*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH23*(ZP21*(ZP11*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP11*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_76 = Coupling(name = 'GC_76',
	 value = '-1./2.*complex(0,1)*(ZH21*(ZP21*(ZP22*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP22*(ZP21*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH22*(ZP22*(ZP21*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP21*(ZP21*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP22*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH23*(ZP21*(ZP21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP21*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_77 = Coupling(name = 'GC_77',
	 value = '-1./2.*complex(0,1)*(ZH31*(ZP11*(ZP12*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP12*(ZP11*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH32*(ZP12*(ZP11*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP11*(ZP11*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP12*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH33*(ZP11*(ZP11*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP11*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_78 = Coupling(name = 'GC_78',
	 value = '-1./2.*complex(0,1)*(ZH31*(ZP11*(ZP22*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP12*(ZP21*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH32*(ZP12*(ZP21*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP11*(ZP21*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP22*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH33*(ZP11*(ZP21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP12*(ZP21*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_79 = Coupling(name = 'GC_79',
	 value = '-1./2.*complex(0,1)*(ZH31*(ZP21*(ZP12*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP11*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP22*(ZP11*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH32*(ZP22*(ZP11*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP12*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP21*(ZP11*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP12*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH33*(ZP21*(ZP11*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP12*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP11*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP12*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_80 = Coupling(name = 'GC_80',
	 value = '-1./2.*complex(0,1)*(ZH31*(ZP21*(ZP22*(Lam5*vu + vu*complexconjugate(Lam4) + 2*vd*complexconjugate(Lam6)) + ZP21*(Lam6*vu + 2*vd*complexconjugate(Lam1) + vu*complexconjugate(Lam6))) + ZP22*(ZP21*(2*Lam6*vd + vu*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vu + 2*vd*complexconjugate(Lam3) + vu*complexconjugate(Lam7)))) + ZH32*(ZP22*(ZP21*(2*Lam7*vu + vd*(complexconjugate(Lam4) + complexconjugate(Lam5))) + ZP22*(Lam7*vd + 2*vu*complexconjugate(Lam2) + vd*complexconjugate(Lam7))) + ZP21*(ZP21*(Lam6*vd + 2*vu*complexconjugate(Lam3) + vd*complexconjugate(Lam6)) + ZP22*(Lam5*vd + vd*complexconjugate(Lam4) + 2*vu*complexconjugate(Lam7)))) + 2*ZH33*(ZP21*(ZP21*(MU11 + 2*Lam4p*vS + 2*vS*complexconjugate(Lam1p) + 2*vS*complexconjugate(Lam4p) + complexconjugate(MU11)) + ZP22*(MU21 + 2*Lam7p*vS + 2*vS*complexconjugate(Lam3p) + 2*vS*complexconjugate(Lam6p) + complexconjugate(MU12))) + ZP22*(ZP21*(MU12 + 2*Lam3p*vS + 2*Lam6p*vS + 2*vS*complexconjugate(Lam7p) + complexconjugate(MU21)) + ZP22*(MU22 + 2*Lam5p*vS + 2*vS*complexconjugate(Lam2p) + 2*vS*complexconjugate(Lam5p) + complexconjugate(MU22)))))', 
	 order = {'QED':1} ) 
 
GC_81 = Coupling(name = 'GC_81',
	 value = '1./2.*complex(0,1)*g2**2*(ZA11**2 + ZA12**2)', 
	 order = {'QED':2} ) 
 
GC_82 = Coupling(name = 'GC_82',
	 value = '1./2.*complex(0,1)*g2**2*(ZA11*ZA21 + ZA12*ZA22)', 
	 order = {'QED':2} ) 
 
GC_83 = Coupling(name = 'GC_83',
	 value = '1./2.*complex(0,1)*g2**2*(ZA11*ZA31 + ZA12*ZA32)', 
	 order = {'QED':2} ) 
 
GC_84 = Coupling(name = 'GC_84',
	 value = '1./2.*complex(0,1)*g2**2*(ZA21**2 + ZA22**2)', 
	 order = {'QED':2} ) 
 
GC_85 = Coupling(name = 'GC_85',
	 value = '1./2.*complex(0,1)*g2**2*(ZA21*ZA31 + ZA22*ZA32)', 
	 order = {'QED':2} ) 
 
GC_86 = Coupling(name = 'GC_86',
	 value = '1./2.*complex(0,1)*g2**2*(ZA31**2 + ZA32**2)', 
	 order = {'QED':2} ) 
 
GC_87 = Coupling(name = 'GC_87',
	 value = '1./2.*complex(0,1)*(ZA11**2 + ZA12**2)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_88 = Coupling(name = 'GC_88',
	 value = '1./2.*complex(0,1)*(ZA11*ZA21 + ZA12*ZA22)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_89 = Coupling(name = 'GC_89',
	 value = '1./2.*complex(0,1)*(ZA11*ZA31 + ZA12*ZA32)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_90 = Coupling(name = 'GC_90',
	 value = '1./2.*complex(0,1)*(ZA21**2 + ZA22**2)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_91 = Coupling(name = 'GC_91',
	 value = '1./2.*complex(0,1)*(ZA21*ZA31 + ZA22*ZA32)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_92 = Coupling(name = 'GC_92',
	 value = '1./2.*complex(0,1)*(ZA31**2 + ZA32**2)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_93 = Coupling(name = 'GC_93',
	 value = '-1./2.*(g1*g2*(ZA11*ZP11 + ZA12*ZP12)*cmath.cos(TW))', 
	 order = {'QED':2} ) 
 
GC_94 = Coupling(name = 'GC_94',
	 value = '-1./2.*(g1*g2*(ZA11*ZP21 + ZA12*ZP22)*cmath.cos(TW))', 
	 order = {'QED':2} ) 
 
GC_95 = Coupling(name = 'GC_95',
	 value = '-1./2.*(g1*g2*(ZA21*ZP11 + ZA22*ZP12)*cmath.cos(TW))', 
	 order = {'QED':2} ) 
 
GC_96 = Coupling(name = 'GC_96',
	 value = '-1./2.*(g1*g2*(ZA21*ZP21 + ZA22*ZP22)*cmath.cos(TW))', 
	 order = {'QED':2} ) 
 
GC_97 = Coupling(name = 'GC_97',
	 value = '-1./2.*(g1*g2*(ZA31*ZP11 + ZA32*ZP12)*cmath.cos(TW))', 
	 order = {'QED':2} ) 
 
GC_98 = Coupling(name = 'GC_98',
	 value = '-1./2.*(g1*g2*(ZA31*ZP21 + ZA32*ZP22)*cmath.cos(TW))', 
	 order = {'QED':2} ) 
 
GC_99 = Coupling(name = 'GC_99',
	 value = '(g1*g2*(ZA11*ZP11 + ZA12*ZP12)*cmath.sin(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_100 = Coupling(name = 'GC_100',
	 value = '(g1*g2*(ZA11*ZP21 + ZA12*ZP22)*cmath.sin(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_101 = Coupling(name = 'GC_101',
	 value = '(g1*g2*(ZA21*ZP11 + ZA22*ZP12)*cmath.sin(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_102 = Coupling(name = 'GC_102',
	 value = '(g1*g2*(ZA21*ZP21 + ZA22*ZP22)*cmath.sin(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_103 = Coupling(name = 'GC_103',
	 value = '(g1*g2*(ZA31*ZP11 + ZA32*ZP12)*cmath.sin(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_104 = Coupling(name = 'GC_104',
	 value = '(g1*g2*(ZA31*ZP21 + ZA32*ZP22)*cmath.sin(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_105 = Coupling(name = 'GC_105',
	 value = '(g1*g2*(ZA11*ZP11 + ZA12*ZP12)*cmath.cos(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_106 = Coupling(name = 'GC_106',
	 value = '(g1*g2*(ZA11*ZP21 + ZA12*ZP22)*cmath.cos(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_107 = Coupling(name = 'GC_107',
	 value = '(g1*g2*(ZA21*ZP11 + ZA22*ZP12)*cmath.cos(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_108 = Coupling(name = 'GC_108',
	 value = '(g1*g2*(ZA21*ZP21 + ZA22*ZP22)*cmath.cos(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_109 = Coupling(name = 'GC_109',
	 value = '(g1*g2*(ZA31*ZP11 + ZA32*ZP12)*cmath.cos(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_110 = Coupling(name = 'GC_110',
	 value = '(g1*g2*(ZA31*ZP21 + ZA32*ZP22)*cmath.cos(TW))/2.', 
	 order = {'QED':2} ) 
 
GC_111 = Coupling(name = 'GC_111',
	 value = '-1./2.*(g1*g2*(ZA11*ZP11 + ZA12*ZP12)*cmath.sin(TW))', 
	 order = {'QED':2} ) 
 
GC_112 = Coupling(name = 'GC_112',
	 value = '-1./2.*(g1*g2*(ZA11*ZP21 + ZA12*ZP22)*cmath.sin(TW))', 
	 order = {'QED':2} ) 
 
GC_113 = Coupling(name = 'GC_113',
	 value = '-1./2.*(g1*g2*(ZA21*ZP11 + ZA22*ZP12)*cmath.sin(TW))', 
	 order = {'QED':2} ) 
 
GC_114 = Coupling(name = 'GC_114',
	 value = '-1./2.*(g1*g2*(ZA21*ZP21 + ZA22*ZP22)*cmath.sin(TW))', 
	 order = {'QED':2} ) 
 
GC_115 = Coupling(name = 'GC_115',
	 value = '-1./2.*(g1*g2*(ZA31*ZP11 + ZA32*ZP12)*cmath.sin(TW))', 
	 order = {'QED':2} ) 
 
GC_116 = Coupling(name = 'GC_116',
	 value = '-1./2.*(g1*g2*(ZA31*ZP21 + ZA32*ZP22)*cmath.sin(TW))', 
	 order = {'QED':2} ) 
 
GC_117 = Coupling(name = 'GC_117',
	 value = '1./2.*complex(0,1)*g2**2*(ZH11**2 + ZH12**2)', 
	 order = {'QED':2} ) 
 
GC_118 = Coupling(name = 'GC_118',
	 value = '1./2.*complex(0,1)*g2**2*(ZH11*ZH21 + ZH12*ZH22)', 
	 order = {'QED':2} ) 
 
GC_119 = Coupling(name = 'GC_119',
	 value = '1./2.*complex(0,1)*g2**2*(ZH11*ZH31 + ZH12*ZH32)', 
	 order = {'QED':2} ) 
 
GC_120 = Coupling(name = 'GC_120',
	 value = '1./2.*complex(0,1)*g2**2*(ZH21**2 + ZH22**2)', 
	 order = {'QED':2} ) 
 
GC_121 = Coupling(name = 'GC_121',
	 value = '1./2.*complex(0,1)*g2**2*(ZH21*ZH31 + ZH22*ZH32)', 
	 order = {'QED':2} ) 
 
GC_122 = Coupling(name = 'GC_122',
	 value = '1./2.*complex(0,1)*g2**2*(ZH31**2 + ZH32**2)', 
	 order = {'QED':2} ) 
 
GC_123 = Coupling(name = 'GC_123',
	 value = '1./2.*complex(0,1)*(ZH11**2 + ZH12**2)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_124 = Coupling(name = 'GC_124',
	 value = '1./2.*complex(0,1)*(ZH11*ZH21 + ZH12*ZH22)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_125 = Coupling(name = 'GC_125',
	 value = '1./2.*complex(0,1)*(ZH11*ZH31 + ZH12*ZH32)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_126 = Coupling(name = 'GC_126',
	 value = '1./2.*complex(0,1)*(ZH21**2 + ZH22**2)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_127 = Coupling(name = 'GC_127',
	 value = '1./2.*complex(0,1)*(ZH21*ZH31 + ZH22*ZH32)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_128 = Coupling(name = 'GC_128',
	 value = '1./2.*complex(0,1)*(ZH31**2 + ZH32**2)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_129 = Coupling(name = 'GC_129',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH11*ZP11 + ZH12*ZP12)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_130 = Coupling(name = 'GC_130',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH11*ZP21 + ZH12*ZP22)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_131 = Coupling(name = 'GC_131',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH21*ZP11 + ZH22*ZP12)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_132 = Coupling(name = 'GC_132',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH21*ZP21 + ZH22*ZP22)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_133 = Coupling(name = 'GC_133',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH31*ZP11 + ZH32*ZP12)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_134 = Coupling(name = 'GC_134',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH31*ZP21 + ZH32*ZP22)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_135 = Coupling(name = 'GC_135',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH11*ZP11 + ZH12*ZP12)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_136 = Coupling(name = 'GC_136',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH11*ZP21 + ZH12*ZP22)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_137 = Coupling(name = 'GC_137',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH21*ZP11 + ZH22*ZP12)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_138 = Coupling(name = 'GC_138',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH21*ZP21 + ZH22*ZP22)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_139 = Coupling(name = 'GC_139',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH31*ZP11 + ZH32*ZP12)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_140 = Coupling(name = 'GC_140',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH31*ZP21 + ZH32*ZP22)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_141 = Coupling(name = 'GC_141',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH11*ZP11 + ZH12*ZP12)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_142 = Coupling(name = 'GC_142',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH11*ZP21 + ZH12*ZP22)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_143 = Coupling(name = 'GC_143',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH21*ZP11 + ZH22*ZP12)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_144 = Coupling(name = 'GC_144',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH21*ZP21 + ZH22*ZP22)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_145 = Coupling(name = 'GC_145',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH31*ZP11 + ZH32*ZP12)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_146 = Coupling(name = 'GC_146',
	 value = '1./2.*complex(0,1)*g1*g2*(ZH31*ZP21 + ZH32*ZP22)*cmath.cos(TW)', 
	 order = {'QED':2} ) 
 
GC_147 = Coupling(name = 'GC_147',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH11*ZP11 + ZH12*ZP12)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_148 = Coupling(name = 'GC_148',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH11*ZP21 + ZH12*ZP22)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_149 = Coupling(name = 'GC_149',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH21*ZP11 + ZH22*ZP12)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_150 = Coupling(name = 'GC_150',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH21*ZP21 + ZH22*ZP22)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_151 = Coupling(name = 'GC_151',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH31*ZP11 + ZH32*ZP12)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_152 = Coupling(name = 'GC_152',
	 value = '-1./2.*complex(0,1)*g1*g2*(ZH31*ZP21 + ZH32*ZP22)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_153 = Coupling(name = 'GC_153',
	 value = '1./2.*complex(0,1)*(ZP11**2 + ZP12**2)*(g1*cmath.cos(TW) + g2*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_154 = Coupling(name = 'GC_154',
	 value = '1./2.*complex(0,1)*(ZP11*ZP21 + ZP12*ZP22)*(g1*cmath.cos(TW) + g2*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_155 = Coupling(name = 'GC_155',
	 value = '1./2.*complex(0,1)*(ZP11*ZP21 + ZP12*ZP22)*(g1*cmath.cos(TW) + g2*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_156 = Coupling(name = 'GC_156',
	 value = '1./2.*complex(0,1)*(ZP21**2 + ZP22**2)*(g1*cmath.cos(TW) + g2*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_157 = Coupling(name = 'GC_157',
	 value = '-1./4.*complex(0,1)*(ZP11**2 + ZP12**2)*(-2*g1*g2*cmath.cos(2*TW) + (g1**2 - g2**2)*cmath.sin(2*TW))', 
	 order = {'QED':2} ) 
 
GC_158 = Coupling(name = 'GC_158',
	 value = '-1./4.*complex(0,1)*(ZP11*ZP21 + ZP12*ZP22)*(-2*g1*g2*cmath.cos(2*TW) + (g1**2 - g2**2)*cmath.sin(2*TW))', 
	 order = {'QED':2} ) 
 
GC_159 = Coupling(name = 'GC_159',
	 value = '-1./4.*complex(0,1)*(ZP11*ZP21 + ZP12*ZP22)*(-2*g1*g2*cmath.cos(2*TW) + (g1**2 - g2**2)*cmath.sin(2*TW))', 
	 order = {'QED':2} ) 
 
GC_160 = Coupling(name = 'GC_160',
	 value = '-1./4.*complex(0,1)*(ZP21**2 + ZP22**2)*(-2*g1*g2*cmath.cos(2*TW) + (g1**2 - g2**2)*cmath.sin(2*TW))', 
	 order = {'QED':2} ) 
 
GC_161 = Coupling(name = 'GC_161',
	 value = '1./2.*complex(0,1)*g2**2*(ZP11**2 + ZP12**2)', 
	 order = {'QED':2} ) 
 
GC_162 = Coupling(name = 'GC_162',
	 value = '1./2.*complex(0,1)*g2**2*(ZP11*ZP21 + ZP12*ZP22)', 
	 order = {'QED':2} ) 
 
GC_163 = Coupling(name = 'GC_163',
	 value = '1./2.*complex(0,1)*g2**2*(ZP11*ZP21 + ZP12*ZP22)', 
	 order = {'QED':2} ) 
 
GC_164 = Coupling(name = 'GC_164',
	 value = '1./2.*complex(0,1)*g2**2*(ZP21**2 + ZP22**2)', 
	 order = {'QED':2} ) 
 
GC_165 = Coupling(name = 'GC_165',
	 value = '1./2.*complex(0,1)*(ZP11**2 + ZP12**2)*(g2*cmath.cos(TW) - g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_166 = Coupling(name = 'GC_166',
	 value = '1./2.*complex(0,1)*(ZP11*ZP21 + ZP12*ZP22)*(g2*cmath.cos(TW) - g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_167 = Coupling(name = 'GC_167',
	 value = '1./2.*complex(0,1)*(ZP11*ZP21 + ZP12*ZP22)*(g2*cmath.cos(TW) - g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_168 = Coupling(name = 'GC_168',
	 value = '1./2.*complex(0,1)*(ZP21**2 + ZP22**2)*(g2*cmath.cos(TW) - g1*cmath.sin(TW))**2', 
	 order = {'QED':2} ) 
 
GC_169 = Coupling(name = 'GC_169',
	 value = '((ZA11*ZH11 + ZA12*ZH12)*(g2*cmath.cos(TW) + g1*cmath.sin(TW)))/2.', 
	 order = {'QED':1} ) 
 
GC_170 = Coupling(name = 'GC_170',
	 value = '((ZA11*ZH21 + ZA12*ZH22)*(g2*cmath.cos(TW) + g1*cmath.sin(TW)))/2.', 
	 order = {'QED':1} ) 
 
GC_171 = Coupling(name = 'GC_171',
	 value = '((ZA11*ZH31 + ZA12*ZH32)*(g2*cmath.cos(TW) + g1*cmath.sin(TW)))/2.', 
	 order = {'QED':1} ) 
 
GC_172 = Coupling(name = 'GC_172',
	 value = '((ZA21*ZH11 + ZA22*ZH12)*(g2*cmath.cos(TW) + g1*cmath.sin(TW)))/2.', 
	 order = {'QED':1} ) 
 
GC_173 = Coupling(name = 'GC_173',
	 value = '((ZA21*ZH21 + ZA22*ZH22)*(g2*cmath.cos(TW) + g1*cmath.sin(TW)))/2.', 
	 order = {'QED':1} ) 
 
GC_174 = Coupling(name = 'GC_174',
	 value = '((ZA21*ZH31 + ZA22*ZH32)*(g2*cmath.cos(TW) + g1*cmath.sin(TW)))/2.', 
	 order = {'QED':1} ) 
 
GC_175 = Coupling(name = 'GC_175',
	 value = '((ZA31*ZH11 + ZA32*ZH12)*(g2*cmath.cos(TW) + g1*cmath.sin(TW)))/2.', 
	 order = {'QED':1} ) 
 
GC_176 = Coupling(name = 'GC_176',
	 value = '((ZA31*ZH21 + ZA32*ZH22)*(g2*cmath.cos(TW) + g1*cmath.sin(TW)))/2.', 
	 order = {'QED':1} ) 
 
GC_177 = Coupling(name = 'GC_177',
	 value = '((ZA31*ZH31 + ZA32*ZH32)*(g2*cmath.cos(TW) + g1*cmath.sin(TW)))/2.', 
	 order = {'QED':1} ) 
 
GC_178 = Coupling(name = 'GC_178',
	 value = '-1./2.*(g2*(ZA11*ZP11 + ZA12*ZP12))', 
	 order = {'QED':1} ) 
 
GC_179 = Coupling(name = 'GC_179',
	 value = '-1./2.*(g2*(ZA11*ZP21 + ZA12*ZP22))', 
	 order = {'QED':1} ) 
 
GC_180 = Coupling(name = 'GC_180',
	 value = '-1./2.*(g2*(ZA21*ZP11 + ZA22*ZP12))', 
	 order = {'QED':1} ) 
 
GC_181 = Coupling(name = 'GC_181',
	 value = '-1./2.*(g2*(ZA21*ZP21 + ZA22*ZP22))', 
	 order = {'QED':1} ) 
 
GC_182 = Coupling(name = 'GC_182',
	 value = '-1./2.*(g2*(ZA31*ZP11 + ZA32*ZP12))', 
	 order = {'QED':1} ) 
 
GC_183 = Coupling(name = 'GC_183',
	 value = '-1./2.*(g2*(ZA31*ZP21 + ZA32*ZP22))', 
	 order = {'QED':1} ) 
 
GC_184 = Coupling(name = 'GC_184',
	 value = '-1./2.*(g2*(ZA11*ZP11 + ZA12*ZP12))', 
	 order = {'QED':1} ) 
 
GC_185 = Coupling(name = 'GC_185',
	 value = '-1./2.*(g2*(ZA11*ZP21 + ZA12*ZP22))', 
	 order = {'QED':1} ) 
 
GC_186 = Coupling(name = 'GC_186',
	 value = '-1./2.*(g2*(ZA21*ZP11 + ZA22*ZP12))', 
	 order = {'QED':1} ) 
 
GC_187 = Coupling(name = 'GC_187',
	 value = '-1./2.*(g2*(ZA21*ZP21 + ZA22*ZP22))', 
	 order = {'QED':1} ) 
 
GC_188 = Coupling(name = 'GC_188',
	 value = '-1./2.*(g2*(ZA31*ZP11 + ZA32*ZP12))', 
	 order = {'QED':1} ) 
 
GC_189 = Coupling(name = 'GC_189',
	 value = '-1./2.*(g2*(ZA31*ZP21 + ZA32*ZP22))', 
	 order = {'QED':1} ) 
 
GC_190 = Coupling(name = 'GC_190',
	 value = '1./2.*complex(0,1)*g2*(ZH11*ZP11 + ZH12*ZP12)', 
	 order = {'QED':1} ) 
 
GC_191 = Coupling(name = 'GC_191',
	 value = '1./2.*complex(0,1)*g2*(ZH11*ZP21 + ZH12*ZP22)', 
	 order = {'QED':1} ) 
 
GC_192 = Coupling(name = 'GC_192',
	 value = '1./2.*complex(0,1)*g2*(ZH21*ZP11 + ZH22*ZP12)', 
	 order = {'QED':1} ) 
 
GC_193 = Coupling(name = 'GC_193',
	 value = '1./2.*complex(0,1)*g2*(ZH21*ZP21 + ZH22*ZP22)', 
	 order = {'QED':1} ) 
 
GC_194 = Coupling(name = 'GC_194',
	 value = '1./2.*complex(0,1)*g2*(ZH31*ZP11 + ZH32*ZP12)', 
	 order = {'QED':1} ) 
 
GC_195 = Coupling(name = 'GC_195',
	 value = '1./2.*complex(0,1)*g2*(ZH31*ZP21 + ZH32*ZP22)', 
	 order = {'QED':1} ) 
 
GC_196 = Coupling(name = 'GC_196',
	 value = '-1./2.*complex(0,1)*g2*(ZH11*ZP11 + ZH12*ZP12)', 
	 order = {'QED':1} ) 
 
GC_197 = Coupling(name = 'GC_197',
	 value = '-1./2.*complex(0,1)*g2*(ZH11*ZP21 + ZH12*ZP22)', 
	 order = {'QED':1} ) 
 
GC_198 = Coupling(name = 'GC_198',
	 value = '-1./2.*complex(0,1)*g2*(ZH21*ZP11 + ZH22*ZP12)', 
	 order = {'QED':1} ) 
 
GC_199 = Coupling(name = 'GC_199',
	 value = '-1./2.*complex(0,1)*g2*(ZH21*ZP21 + ZH22*ZP22)', 
	 order = {'QED':1} ) 
 
GC_200 = Coupling(name = 'GC_200',
	 value = '-1./2.*complex(0,1)*g2*(ZH31*ZP11 + ZH32*ZP12)', 
	 order = {'QED':1} ) 
 
GC_201 = Coupling(name = 'GC_201',
	 value = '-1./2.*complex(0,1)*g2*(ZH31*ZP21 + ZH32*ZP22)', 
	 order = {'QED':1} ) 
 
GC_202 = Coupling(name = 'GC_202',
	 value = '-1./2.*complex(0,1)*(ZP11**2 + ZP12**2)*(g1*cmath.cos(TW) + g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_203 = Coupling(name = 'GC_203',
	 value = '-1./2.*complex(0,1)*(ZP11*ZP21 + ZP12*ZP22)*(g1*cmath.cos(TW) + g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_204 = Coupling(name = 'GC_204',
	 value = '-1./2.*complex(0,1)*(ZP11*ZP21 + ZP12*ZP22)*(g1*cmath.cos(TW) + g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_205 = Coupling(name = 'GC_205',
	 value = '-1./2.*complex(0,1)*(ZP21**2 + ZP22**2)*(g1*cmath.cos(TW) + g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_206 = Coupling(name = 'GC_206',
	 value = '-1./2.*complex(0,1)*(ZP11**2 + ZP12**2)*(g2*cmath.cos(TW) - g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_207 = Coupling(name = 'GC_207',
	 value = '-1./2.*complex(0,1)*(ZP11*ZP21 + ZP12*ZP22)*(g2*cmath.cos(TW) - g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_208 = Coupling(name = 'GC_208',
	 value = '-1./2.*complex(0,1)*(ZP11*ZP21 + ZP12*ZP22)*(g2*cmath.cos(TW) - g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_209 = Coupling(name = 'GC_209',
	 value = '-1./2.*complex(0,1)*(ZP21**2 + ZP22**2)*(g2*cmath.cos(TW) - g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_210 = Coupling(name = 'GC_210',
	 value = '1./2.*complex(0,1)*g2**2*(vd*ZH11 + vu*ZH12)', 
	 order = {'QED':1} ) 
 
GC_211 = Coupling(name = 'GC_211',
	 value = '1./2.*complex(0,1)*g2**2*(vd*ZH21 + vu*ZH22)', 
	 order = {'QED':1} ) 
 
GC_212 = Coupling(name = 'GC_212',
	 value = '1./2.*complex(0,1)*g2**2*(vd*ZH31 + vu*ZH32)', 
	 order = {'QED':1} ) 
 
GC_213 = Coupling(name = 'GC_213',
	 value = '1./2.*complex(0,1)*(vd*ZH11 + vu*ZH12)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':1} ) 
 
GC_214 = Coupling(name = 'GC_214',
	 value = '1./2.*complex(0,1)*(vd*ZH21 + vu*ZH22)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':1} ) 
 
GC_215 = Coupling(name = 'GC_215',
	 value = '1./2.*complex(0,1)*(vd*ZH31 + vu*ZH32)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))**2', 
	 order = {'QED':1} ) 
 
GC_216 = Coupling(name = 'GC_216',
	 value = '1./2.*complex(0,1)*g1*g2*(vd*ZP11 + vu*ZP12)*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_217 = Coupling(name = 'GC_217',
	 value = '1./2.*complex(0,1)*g1*g2*(vd*ZP21 + vu*ZP22)*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_218 = Coupling(name = 'GC_218',
	 value = '-1./2.*complex(0,1)*g1*g2*(vd*ZP11 + vu*ZP12)*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_219 = Coupling(name = 'GC_219',
	 value = '-1./2.*complex(0,1)*g1*g2*(vd*ZP21 + vu*ZP22)*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_220 = Coupling(name = 'GC_220',
	 value = '1./2.*complex(0,1)*g1*g2*(vd*ZP11 + vu*ZP12)*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_221 = Coupling(name = 'GC_221',
	 value = '1./2.*complex(0,1)*g1*g2*(vd*ZP21 + vu*ZP22)*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_222 = Coupling(name = 'GC_222',
	 value = '-1./2.*complex(0,1)*g1*g2*(vd*ZP11 + vu*ZP12)*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_223 = Coupling(name = 'GC_223',
	 value = '-1./2.*complex(0,1)*g1*g2*(vd*ZP21 + vu*ZP22)*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_224 = Coupling(name = 'GC_224',
	 value = '-((ZA12*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZA11*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_225 = Coupling(name = 'GC_225',
	 value = '(ZA12*(ZDL11*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL12*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL13*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZA11*(ZDL11*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL12*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL13*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_226 = Coupling(name = 'GC_226',
	 value = '-((ZA22*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZA21*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_227 = Coupling(name = 'GC_227',
	 value = '(ZA22*(ZDL11*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL12*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL13*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZA21*(ZDL11*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL12*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL13*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_228 = Coupling(name = 'GC_228',
	 value = '-((ZA32*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZA31*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_229 = Coupling(name = 'GC_229',
	 value = '(ZA32*(ZDL11*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL12*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL13*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZA31*(ZDL11*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL12*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL13*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_230 = Coupling(name = 'GC_230',
	 value = '-((ZA12*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZA11*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_231 = Coupling(name = 'GC_231',
	 value = '(ZA12*(ZDL11*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL12*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL13*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZA11*(ZDL11*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL12*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL13*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_232 = Coupling(name = 'GC_232',
	 value = '-((ZA22*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZA21*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_233 = Coupling(name = 'GC_233',
	 value = '(ZA22*(ZDL11*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL12*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL13*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZA21*(ZDL11*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL12*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL13*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_234 = Coupling(name = 'GC_234',
	 value = '-((ZA32*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZA31*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_235 = Coupling(name = 'GC_235',
	 value = '(ZA32*(ZDL11*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL12*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL13*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZA31*(ZDL11*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL12*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL13*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_236 = Coupling(name = 'GC_236',
	 value = '-((ZA12*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZA11*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_237 = Coupling(name = 'GC_237',
	 value = '(ZA12*(ZDL11*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL12*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL13*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZA11*(ZDL11*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL12*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL13*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_238 = Coupling(name = 'GC_238',
	 value = '-((ZA22*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZA21*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_239 = Coupling(name = 'GC_239',
	 value = '(ZA22*(ZDL11*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL12*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL13*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZA21*(ZDL11*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL12*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL13*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_240 = Coupling(name = 'GC_240',
	 value = '-((ZA32*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZA31*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_241 = Coupling(name = 'GC_241',
	 value = '(ZA32*(ZDL11*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL12*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL13*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZA31*(ZDL11*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL12*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL13*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_242 = Coupling(name = 'GC_242',
	 value = '-((ZA12*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZA11*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_243 = Coupling(name = 'GC_243',
	 value = '(ZA12*(ZDL21*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL22*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL23*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZA11*(ZDL21*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL22*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL23*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_244 = Coupling(name = 'GC_244',
	 value = '-((ZA22*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZA21*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_245 = Coupling(name = 'GC_245',
	 value = '(ZA22*(ZDL21*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL22*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL23*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZA21*(ZDL21*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL22*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL23*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_246 = Coupling(name = 'GC_246',
	 value = '-((ZA32*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZA31*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_247 = Coupling(name = 'GC_247',
	 value = '(ZA32*(ZDL21*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL22*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL23*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZA31*(ZDL21*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL22*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL23*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_248 = Coupling(name = 'GC_248',
	 value = '-((ZA12*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZA11*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_249 = Coupling(name = 'GC_249',
	 value = '(ZA12*(ZDL21*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL22*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL23*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZA11*(ZDL21*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL22*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL23*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_250 = Coupling(name = 'GC_250',
	 value = '-((ZA22*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZA21*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_251 = Coupling(name = 'GC_251',
	 value = '(ZA22*(ZDL21*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL22*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL23*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZA21*(ZDL21*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL22*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL23*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_252 = Coupling(name = 'GC_252',
	 value = '-((ZA32*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZA31*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_253 = Coupling(name = 'GC_253',
	 value = '(ZA32*(ZDL21*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL22*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL23*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZA31*(ZDL21*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL22*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL23*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_254 = Coupling(name = 'GC_254',
	 value = '-((ZA12*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZA11*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_255 = Coupling(name = 'GC_255',
	 value = '(ZA12*(ZDL21*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL22*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL23*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZA11*(ZDL21*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL22*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL23*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_256 = Coupling(name = 'GC_256',
	 value = '-((ZA22*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZA21*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_257 = Coupling(name = 'GC_257',
	 value = '(ZA22*(ZDL21*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL22*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL23*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZA21*(ZDL21*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL22*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL23*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_258 = Coupling(name = 'GC_258',
	 value = '-((ZA32*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZA31*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_259 = Coupling(name = 'GC_259',
	 value = '(ZA32*(ZDL21*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL22*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL23*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZA31*(ZDL21*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL22*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL23*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_260 = Coupling(name = 'GC_260',
	 value = '-((ZA12*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZA11*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_261 = Coupling(name = 'GC_261',
	 value = '(ZA12*(ZDL31*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL32*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL33*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZA11*(ZDL31*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL32*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL33*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_262 = Coupling(name = 'GC_262',
	 value = '-((ZA22*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZA21*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_263 = Coupling(name = 'GC_263',
	 value = '(ZA22*(ZDL31*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL32*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL33*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZA21*(ZDL31*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL32*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL33*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_264 = Coupling(name = 'GC_264',
	 value = '-((ZA32*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZA31*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_265 = Coupling(name = 'GC_265',
	 value = '(ZA32*(ZDL31*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL32*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL33*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZA31*(ZDL31*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL32*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL33*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_266 = Coupling(name = 'GC_266',
	 value = '-((ZA12*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZA11*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_267 = Coupling(name = 'GC_267',
	 value = '(ZA12*(ZDL31*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL32*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL33*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZA11*(ZDL31*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL32*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL33*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_268 = Coupling(name = 'GC_268',
	 value = '-((ZA22*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZA21*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_269 = Coupling(name = 'GC_269',
	 value = '(ZA22*(ZDL31*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL32*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL33*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZA21*(ZDL31*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL32*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL33*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_270 = Coupling(name = 'GC_270',
	 value = '-((ZA32*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZA31*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_271 = Coupling(name = 'GC_271',
	 value = '(ZA32*(ZDL31*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL32*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL33*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZA31*(ZDL31*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL32*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL33*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_272 = Coupling(name = 'GC_272',
	 value = '-((ZA12*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZA11*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_273 = Coupling(name = 'GC_273',
	 value = '(ZA12*(ZDL31*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL32*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL33*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZA11*(ZDL31*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL32*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL33*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_274 = Coupling(name = 'GC_274',
	 value = '-((ZA22*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZA21*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_275 = Coupling(name = 'GC_275',
	 value = '(ZA22*(ZDL31*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL32*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL33*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZA21*(ZDL31*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL32*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL33*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_276 = Coupling(name = 'GC_276',
	 value = '-((ZA32*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZA31*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_277 = Coupling(name = 'GC_277',
	 value = '(ZA32*(ZDL31*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL32*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL33*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZA31*(ZDL31*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL32*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL33*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_278 = Coupling(name = 'GC_278',
	 value = '-((ZA12*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZA11*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_279 = Coupling(name = 'GC_279',
	 value = '(ZA12*(ZEL11*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL12*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL13*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZA11*(ZEL11*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL12*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL13*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_280 = Coupling(name = 'GC_280',
	 value = '-((ZA22*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZA21*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_281 = Coupling(name = 'GC_281',
	 value = '(ZA22*(ZEL11*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL12*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL13*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZA21*(ZEL11*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL12*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL13*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_282 = Coupling(name = 'GC_282',
	 value = '-((ZA32*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZA31*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_283 = Coupling(name = 'GC_283',
	 value = '(ZA32*(ZEL11*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL12*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL13*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZA31*(ZEL11*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL12*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL13*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_284 = Coupling(name = 'GC_284',
	 value = '-((ZA12*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZA11*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_285 = Coupling(name = 'GC_285',
	 value = '(ZA12*(ZEL11*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL12*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL13*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZA11*(ZEL11*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL12*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL13*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_286 = Coupling(name = 'GC_286',
	 value = '-((ZA22*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZA21*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_287 = Coupling(name = 'GC_287',
	 value = '(ZA22*(ZEL11*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL12*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL13*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZA21*(ZEL11*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL12*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL13*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_288 = Coupling(name = 'GC_288',
	 value = '-((ZA32*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZA31*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_289 = Coupling(name = 'GC_289',
	 value = '(ZA32*(ZEL11*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL12*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL13*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZA31*(ZEL11*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL12*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL13*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_290 = Coupling(name = 'GC_290',
	 value = '-((ZA12*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZA11*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_291 = Coupling(name = 'GC_291',
	 value = '(ZA12*(ZEL11*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL12*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL13*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZA11*(ZEL11*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL12*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL13*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_292 = Coupling(name = 'GC_292',
	 value = '-((ZA22*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZA21*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_293 = Coupling(name = 'GC_293',
	 value = '(ZA22*(ZEL11*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL12*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL13*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZA21*(ZEL11*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL12*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL13*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_294 = Coupling(name = 'GC_294',
	 value = '-((ZA32*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZA31*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_295 = Coupling(name = 'GC_295',
	 value = '(ZA32*(ZEL11*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL12*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL13*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZA31*(ZEL11*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL12*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL13*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_296 = Coupling(name = 'GC_296',
	 value = '-((ZA12*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZA11*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_297 = Coupling(name = 'GC_297',
	 value = '(ZA12*(ZEL21*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL22*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL23*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZA11*(ZEL21*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL22*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL23*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_298 = Coupling(name = 'GC_298',
	 value = '-((ZA22*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZA21*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_299 = Coupling(name = 'GC_299',
	 value = '(ZA22*(ZEL21*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL22*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL23*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZA21*(ZEL21*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL22*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL23*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_300 = Coupling(name = 'GC_300',
	 value = '-((ZA32*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZA31*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_301 = Coupling(name = 'GC_301',
	 value = '(ZA32*(ZEL21*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL22*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL23*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZA31*(ZEL21*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL22*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL23*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_302 = Coupling(name = 'GC_302',
	 value = '-((ZA12*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZA11*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_303 = Coupling(name = 'GC_303',
	 value = '(ZA12*(ZEL21*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL22*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL23*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZA11*(ZEL21*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL22*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL23*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_304 = Coupling(name = 'GC_304',
	 value = '-((ZA22*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZA21*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_305 = Coupling(name = 'GC_305',
	 value = '(ZA22*(ZEL21*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL22*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL23*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZA21*(ZEL21*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL22*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL23*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_306 = Coupling(name = 'GC_306',
	 value = '-((ZA32*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZA31*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_307 = Coupling(name = 'GC_307',
	 value = '(ZA32*(ZEL21*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL22*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL23*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZA31*(ZEL21*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL22*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL23*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_308 = Coupling(name = 'GC_308',
	 value = '-((ZA12*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZA11*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_309 = Coupling(name = 'GC_309',
	 value = '(ZA12*(ZEL21*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL22*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL23*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZA11*(ZEL21*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL22*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL23*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_310 = Coupling(name = 'GC_310',
	 value = '-((ZA22*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZA21*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_311 = Coupling(name = 'GC_311',
	 value = '(ZA22*(ZEL21*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL22*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL23*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZA21*(ZEL21*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL22*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL23*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_312 = Coupling(name = 'GC_312',
	 value = '-((ZA32*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZA31*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_313 = Coupling(name = 'GC_313',
	 value = '(ZA32*(ZEL21*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL22*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL23*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZA31*(ZEL21*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL22*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL23*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_314 = Coupling(name = 'GC_314',
	 value = '-((ZA12*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZA11*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_315 = Coupling(name = 'GC_315',
	 value = '(ZA12*(ZEL31*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL32*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL33*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZA11*(ZEL31*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL32*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL33*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_316 = Coupling(name = 'GC_316',
	 value = '-((ZA22*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZA21*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_317 = Coupling(name = 'GC_317',
	 value = '(ZA22*(ZEL31*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL32*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL33*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZA21*(ZEL31*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL32*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL33*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_318 = Coupling(name = 'GC_318',
	 value = '-((ZA32*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZA31*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_319 = Coupling(name = 'GC_319',
	 value = '(ZA32*(ZEL31*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL32*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL33*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZA31*(ZEL31*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL32*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL33*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_320 = Coupling(name = 'GC_320',
	 value = '-((ZA12*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZA11*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_321 = Coupling(name = 'GC_321',
	 value = '(ZA12*(ZEL31*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL32*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL33*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZA11*(ZEL31*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL32*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL33*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_322 = Coupling(name = 'GC_322',
	 value = '-((ZA22*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZA21*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_323 = Coupling(name = 'GC_323',
	 value = '(ZA22*(ZEL31*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL32*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL33*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZA21*(ZEL31*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL32*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL33*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_324 = Coupling(name = 'GC_324',
	 value = '-((ZA32*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZA31*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_325 = Coupling(name = 'GC_325',
	 value = '(ZA32*(ZEL31*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL32*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL33*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZA31*(ZEL31*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL32*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL33*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_326 = Coupling(name = 'GC_326',
	 value = '-((ZA12*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZA11*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_327 = Coupling(name = 'GC_327',
	 value = '(ZA12*(ZEL31*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL32*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL33*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZA11*(ZEL31*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL32*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL33*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_328 = Coupling(name = 'GC_328',
	 value = '-((ZA22*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZA21*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_329 = Coupling(name = 'GC_329',
	 value = '(ZA22*(ZEL31*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL32*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL33*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZA21*(ZEL31*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL32*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL33*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_330 = Coupling(name = 'GC_330',
	 value = '-((ZA32*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZA31*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_331 = Coupling(name = 'GC_331',
	 value = '(ZA32*(ZEL31*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL32*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL33*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZA31*(ZEL31*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL32*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL33*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_332 = Coupling(name = 'GC_332',
	 value = '(ZA12*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZA11*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_333 = Coupling(name = 'GC_333',
	 value = '-((ZA12*(ZUL11*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL12*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL13*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZA11*(ZUL11*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL12*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL13*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_334 = Coupling(name = 'GC_334',
	 value = '(ZA22*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZA21*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_335 = Coupling(name = 'GC_335',
	 value = '-((ZA22*(ZUL11*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL12*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL13*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZA21*(ZUL11*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL12*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL13*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_336 = Coupling(name = 'GC_336',
	 value = '(ZA32*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZA31*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_337 = Coupling(name = 'GC_337',
	 value = '-((ZA32*(ZUL11*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL12*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL13*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZA31*(ZUL11*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL12*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL13*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_338 = Coupling(name = 'GC_338',
	 value = '(ZA12*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZA11*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_339 = Coupling(name = 'GC_339',
	 value = '-((ZA12*(ZUL11*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL12*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL13*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZA11*(ZUL11*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL12*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL13*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_340 = Coupling(name = 'GC_340',
	 value = '(ZA22*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZA21*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_341 = Coupling(name = 'GC_341',
	 value = '-((ZA22*(ZUL11*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL12*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL13*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZA21*(ZUL11*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL12*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL13*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_342 = Coupling(name = 'GC_342',
	 value = '(ZA32*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZA31*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_343 = Coupling(name = 'GC_343',
	 value = '-((ZA32*(ZUL11*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL12*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL13*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZA31*(ZUL11*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL12*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL13*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_344 = Coupling(name = 'GC_344',
	 value = '(ZA12*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZA11*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_345 = Coupling(name = 'GC_345',
	 value = '-((ZA12*(ZUL11*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL12*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL13*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZA11*(ZUL11*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL12*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL13*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_346 = Coupling(name = 'GC_346',
	 value = '(ZA22*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZA21*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_347 = Coupling(name = 'GC_347',
	 value = '-((ZA22*(ZUL11*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL12*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL13*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZA21*(ZUL11*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL12*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL13*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_348 = Coupling(name = 'GC_348',
	 value = '(ZA32*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZA31*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_349 = Coupling(name = 'GC_349',
	 value = '-((ZA32*(ZUL11*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL12*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL13*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZA31*(ZUL11*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL12*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL13*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_350 = Coupling(name = 'GC_350',
	 value = '(ZA12*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZA11*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_351 = Coupling(name = 'GC_351',
	 value = '-((ZA12*(ZUL21*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL22*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL23*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZA11*(ZUL21*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL22*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL23*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_352 = Coupling(name = 'GC_352',
	 value = '(ZA22*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZA21*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_353 = Coupling(name = 'GC_353',
	 value = '-((ZA22*(ZUL21*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL22*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL23*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZA21*(ZUL21*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL22*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL23*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_354 = Coupling(name = 'GC_354',
	 value = '(ZA32*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZA31*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_355 = Coupling(name = 'GC_355',
	 value = '-((ZA32*(ZUL21*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL22*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL23*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZA31*(ZUL21*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL22*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL23*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_356 = Coupling(name = 'GC_356',
	 value = '(ZA12*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZA11*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_357 = Coupling(name = 'GC_357',
	 value = '-((ZA12*(ZUL21*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL22*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL23*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZA11*(ZUL21*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL22*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL23*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_358 = Coupling(name = 'GC_358',
	 value = '(ZA22*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZA21*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_359 = Coupling(name = 'GC_359',
	 value = '-((ZA22*(ZUL21*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL22*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL23*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZA21*(ZUL21*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL22*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL23*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_360 = Coupling(name = 'GC_360',
	 value = '(ZA32*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZA31*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_361 = Coupling(name = 'GC_361',
	 value = '-((ZA32*(ZUL21*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL22*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL23*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZA31*(ZUL21*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL22*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL23*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_362 = Coupling(name = 'GC_362',
	 value = '(ZA12*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZA11*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_363 = Coupling(name = 'GC_363',
	 value = '-((ZA12*(ZUL21*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL22*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL23*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZA11*(ZUL21*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL22*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL23*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_364 = Coupling(name = 'GC_364',
	 value = '(ZA22*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZA21*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_365 = Coupling(name = 'GC_365',
	 value = '-((ZA22*(ZUL21*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL22*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL23*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZA21*(ZUL21*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL22*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL23*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_366 = Coupling(name = 'GC_366',
	 value = '(ZA32*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZA31*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_367 = Coupling(name = 'GC_367',
	 value = '-((ZA32*(ZUL21*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL22*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL23*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZA31*(ZUL21*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL22*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL23*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_368 = Coupling(name = 'GC_368',
	 value = '(ZA12*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZA11*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_369 = Coupling(name = 'GC_369',
	 value = '-((ZA12*(ZUL31*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL32*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL33*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZA11*(ZUL31*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL32*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL33*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_370 = Coupling(name = 'GC_370',
	 value = '(ZA22*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZA21*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_371 = Coupling(name = 'GC_371',
	 value = '-((ZA22*(ZUL31*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL32*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL33*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZA21*(ZUL31*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL32*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL33*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_372 = Coupling(name = 'GC_372',
	 value = '(ZA32*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZA31*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_373 = Coupling(name = 'GC_373',
	 value = '-((ZA32*(ZUL31*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL32*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL33*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZA31*(ZUL31*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL32*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL33*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_374 = Coupling(name = 'GC_374',
	 value = '(ZA12*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZA11*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_375 = Coupling(name = 'GC_375',
	 value = '-((ZA12*(ZUL31*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL32*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL33*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZA11*(ZUL31*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL32*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL33*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_376 = Coupling(name = 'GC_376',
	 value = '(ZA22*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZA21*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_377 = Coupling(name = 'GC_377',
	 value = '-((ZA22*(ZUL31*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL32*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL33*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZA21*(ZUL31*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL32*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL33*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_378 = Coupling(name = 'GC_378',
	 value = '(ZA32*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZA31*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_379 = Coupling(name = 'GC_379',
	 value = '-((ZA32*(ZUL31*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL32*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL33*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZA31*(ZUL31*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL32*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL33*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_380 = Coupling(name = 'GC_380',
	 value = '(ZA12*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZA11*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_381 = Coupling(name = 'GC_381',
	 value = '-((ZA12*(ZUL31*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL32*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL33*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZA11*(ZUL31*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL32*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL33*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_382 = Coupling(name = 'GC_382',
	 value = '(ZA22*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZA21*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_383 = Coupling(name = 'GC_383',
	 value = '-((ZA22*(ZUL31*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL32*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL33*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZA21*(ZUL31*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL32*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL33*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_384 = Coupling(name = 'GC_384',
	 value = '(ZA32*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZA31*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_385 = Coupling(name = 'GC_385',
	 value = '-((ZA32*(ZUL31*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL32*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL33*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZA31*(ZUL31*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL32*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL33*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))/cmath.sqrt(2))', 
	 order = {'QED':1} ) 
 
GC_386 = Coupling(name = 'GC_386',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZH11*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_387 = Coupling(name = 'GC_387',
	 value = '(-1*complex(0,1)*(ZH12*(ZDL11*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL12*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL13*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZH11*(ZDL11*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL12*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL13*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_388 = Coupling(name = 'GC_388',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZH21*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_389 = Coupling(name = 'GC_389',
	 value = '(-1*complex(0,1)*(ZH22*(ZDL11*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL12*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL13*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZH21*(ZDL11*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL12*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL13*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_390 = Coupling(name = 'GC_390',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZH31*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_391 = Coupling(name = 'GC_391',
	 value = '(-1*complex(0,1)*(ZH32*(ZDL11*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL12*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL13*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZH31*(ZDL11*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL12*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL13*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_392 = Coupling(name = 'GC_392',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZH11*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_393 = Coupling(name = 'GC_393',
	 value = '(-1*complex(0,1)*(ZH12*(ZDL11*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL12*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL13*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZH11*(ZDL11*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL12*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL13*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_394 = Coupling(name = 'GC_394',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZH21*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_395 = Coupling(name = 'GC_395',
	 value = '(-1*complex(0,1)*(ZH22*(ZDL11*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL12*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL13*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZH21*(ZDL11*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL12*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL13*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_396 = Coupling(name = 'GC_396',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZH31*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_397 = Coupling(name = 'GC_397',
	 value = '(-1*complex(0,1)*(ZH32*(ZDL11*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL12*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL13*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZH31*(ZDL11*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL12*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL13*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_398 = Coupling(name = 'GC_398',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZH11*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_399 = Coupling(name = 'GC_399',
	 value = '(-1*complex(0,1)*(ZH12*(ZDL11*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL12*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL13*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZH11*(ZDL11*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL12*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL13*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_400 = Coupling(name = 'GC_400',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZH21*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_401 = Coupling(name = 'GC_401',
	 value = '(-1*complex(0,1)*(ZH22*(ZDL11*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL12*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL13*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZH21*(ZDL11*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL12*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL13*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_402 = Coupling(name = 'GC_402',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))) + ZH31*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_403 = Coupling(name = 'GC_403',
	 value = '(-1*complex(0,1)*(ZH32*(ZDL11*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL12*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL13*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZH31*(ZDL11*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL12*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL13*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_404 = Coupling(name = 'GC_404',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZH11*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_405 = Coupling(name = 'GC_405',
	 value = '(-1*complex(0,1)*(ZH12*(ZDL21*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL22*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL23*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZH11*(ZDL21*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL22*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL23*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_406 = Coupling(name = 'GC_406',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZH21*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_407 = Coupling(name = 'GC_407',
	 value = '(-1*complex(0,1)*(ZH22*(ZDL21*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL22*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL23*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZH21*(ZDL21*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL22*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL23*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_408 = Coupling(name = 'GC_408',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZH31*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_409 = Coupling(name = 'GC_409',
	 value = '(-1*complex(0,1)*(ZH32*(ZDL21*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL22*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL23*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZH31*(ZDL21*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL22*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL23*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_410 = Coupling(name = 'GC_410',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZH11*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_411 = Coupling(name = 'GC_411',
	 value = '(-1*complex(0,1)*(ZH12*(ZDL21*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL22*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL23*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZH11*(ZDL21*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL22*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL23*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_412 = Coupling(name = 'GC_412',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZH21*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_413 = Coupling(name = 'GC_413',
	 value = '(-1*complex(0,1)*(ZH22*(ZDL21*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL22*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL23*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZH21*(ZDL21*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL22*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL23*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_414 = Coupling(name = 'GC_414',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZH31*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_415 = Coupling(name = 'GC_415',
	 value = '(-1*complex(0,1)*(ZH32*(ZDL21*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL22*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL23*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZH31*(ZDL21*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL22*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL23*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_416 = Coupling(name = 'GC_416',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZH11*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_417 = Coupling(name = 'GC_417',
	 value = '(-1*complex(0,1)*(ZH12*(ZDL21*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL22*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL23*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZH11*(ZDL21*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL22*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL23*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_418 = Coupling(name = 'GC_418',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZH21*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_419 = Coupling(name = 'GC_419',
	 value = '(-1*complex(0,1)*(ZH22*(ZDL21*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL22*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL23*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZH21*(ZDL21*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL22*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL23*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_420 = Coupling(name = 'GC_420',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))) + ZH31*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_421 = Coupling(name = 'GC_421',
	 value = '(-1*complex(0,1)*(ZH32*(ZDL21*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL22*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL23*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZH31*(ZDL21*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL22*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL23*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_422 = Coupling(name = 'GC_422',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZH11*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_423 = Coupling(name = 'GC_423',
	 value = '(-1*complex(0,1)*(ZH12*(ZDL31*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL32*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL33*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZH11*(ZDL31*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL32*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL33*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_424 = Coupling(name = 'GC_424',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZH21*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_425 = Coupling(name = 'GC_425',
	 value = '(-1*complex(0,1)*(ZH22*(ZDL31*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL32*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL33*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZH21*(ZDL31*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL32*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL33*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_426 = Coupling(name = 'GC_426',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZDL11)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZH31*(complexconjugate(ZDL11)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL12)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL13)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_427 = Coupling(name = 'GC_427',
	 value = '(-1*complex(0,1)*(ZH32*(ZDL31*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZDL32*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZDL33*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZH31*(ZDL31*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZDL32*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZDL33*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_428 = Coupling(name = 'GC_428',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZH11*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_429 = Coupling(name = 'GC_429',
	 value = '(-1*complex(0,1)*(ZH12*(ZDL31*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL32*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL33*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZH11*(ZDL31*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL32*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL33*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_430 = Coupling(name = 'GC_430',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZH21*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_431 = Coupling(name = 'GC_431',
	 value = '(-1*complex(0,1)*(ZH22*(ZDL31*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL32*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL33*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZH21*(ZDL31*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL32*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL33*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_432 = Coupling(name = 'GC_432',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZDL21)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZH31*(complexconjugate(ZDL21)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL22)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL23)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_433 = Coupling(name = 'GC_433',
	 value = '(-1*complex(0,1)*(ZH32*(ZDL31*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZDL32*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZDL33*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZH31*(ZDL31*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZDL32*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZDL33*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_434 = Coupling(name = 'GC_434',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZH11*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_435 = Coupling(name = 'GC_435',
	 value = '(-1*complex(0,1)*(ZH12*(ZDL31*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL32*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL33*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZH11*(ZDL31*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL32*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL33*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_436 = Coupling(name = 'GC_436',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZH21*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_437 = Coupling(name = 'GC_437',
	 value = '(-1*complex(0,1)*(ZH22*(ZDL31*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL32*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL33*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZH21*(ZDL31*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL32*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL33*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_438 = Coupling(name = 'GC_438',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZDL31)*(epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))) + ZH31*(complexconjugate(ZDL31)*(Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33)) + complexconjugate(ZDL32)*(Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33)) + complexconjugate(ZDL33)*(Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_439 = Coupling(name = 'GC_439',
	 value = '(-1*complex(0,1)*(ZH32*(ZDL31*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZDL32*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZDL33*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZH31*(ZDL31*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZDL32*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZDL33*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_440 = Coupling(name = 'GC_440',
	 value = '1*complex(0,1)*(ZP12*(complexconjugate(ZDL11)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZDL12)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZDL13)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZP11*(complexconjugate(ZDL11)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZDL12)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZDL13)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))', 
	 order = {'QED':1} ) 
 
GC_441 = Coupling(name = 'GC_441',
	 value = '-1*complex(0,1)*(ZP12*(ZUL11*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZUL12*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZUL13*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZP11*(ZUL11*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZUL12*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZUL13*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_442 = Coupling(name = 'GC_442',
	 value = '1*complex(0,1)*(ZP22*(complexconjugate(ZDL11)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZDL12)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZDL13)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZP21*(complexconjugate(ZDL11)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZDL12)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZDL13)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))', 
	 order = {'QED':1} ) 
 
GC_443 = Coupling(name = 'GC_443',
	 value = '-1*complex(0,1)*(ZP22*(ZUL11*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZUL12*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZUL13*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZP21*(ZUL11*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZUL12*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZUL13*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_444 = Coupling(name = 'GC_444',
	 value = '1*complex(0,1)*(ZP12*(complexconjugate(ZDL21)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZDL22)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZDL23)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZP11*(complexconjugate(ZDL21)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZDL22)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZDL23)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))', 
	 order = {'QED':1} ) 
 
GC_445 = Coupling(name = 'GC_445',
	 value = '-1*complex(0,1)*(ZP12*(ZUL11*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZUL12*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZUL13*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZP11*(ZUL11*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZUL12*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZUL13*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_446 = Coupling(name = 'GC_446',
	 value = '1*complex(0,1)*(ZP22*(complexconjugate(ZDL21)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZDL22)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZDL23)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZP21*(complexconjugate(ZDL21)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZDL22)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZDL23)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))', 
	 order = {'QED':1} ) 
 
GC_447 = Coupling(name = 'GC_447',
	 value = '-1*complex(0,1)*(ZP22*(ZUL11*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZUL12*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZUL13*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZP21*(ZUL11*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZUL12*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZUL13*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_448 = Coupling(name = 'GC_448',
	 value = '1*complex(0,1)*(ZP12*(complexconjugate(ZDL31)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZDL32)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZDL33)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZP11*(complexconjugate(ZDL31)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZDL32)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZDL33)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))', 
	 order = {'QED':1} ) 
 
GC_449 = Coupling(name = 'GC_449',
	 value = '-1*complex(0,1)*(ZP12*(ZUL11*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZUL12*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZUL13*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZP11*(ZUL11*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZUL12*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZUL13*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_450 = Coupling(name = 'GC_450',
	 value = '1*complex(0,1)*(ZP22*(complexconjugate(ZDL31)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZDL32)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZDL33)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZP21*(complexconjugate(ZDL31)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZDL32)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZDL33)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13))))', 
	 order = {'QED':1} ) 
 
GC_451 = Coupling(name = 'GC_451',
	 value = '-1*complex(0,1)*(ZP22*(ZUL11*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZUL12*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZUL13*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZP21*(ZUL11*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZUL12*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZUL13*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_452 = Coupling(name = 'GC_452',
	 value = '1*complex(0,1)*(ZP12*(complexconjugate(ZDL11)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZDL12)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZDL13)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZP11*(complexconjugate(ZDL11)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZDL12)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZDL13)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))', 
	 order = {'QED':1} ) 
 
GC_453 = Coupling(name = 'GC_453',
	 value = '-1*complex(0,1)*(ZP12*(ZUL21*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZUL22*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZUL23*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZP11*(ZUL21*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZUL22*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZUL23*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_454 = Coupling(name = 'GC_454',
	 value = '1*complex(0,1)*(ZP22*(complexconjugate(ZDL11)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZDL12)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZDL13)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZP21*(complexconjugate(ZDL11)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZDL12)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZDL13)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))', 
	 order = {'QED':1} ) 
 
GC_455 = Coupling(name = 'GC_455',
	 value = '-1*complex(0,1)*(ZP22*(ZUL21*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZUL22*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZUL23*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZP21*(ZUL21*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZUL22*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZUL23*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_456 = Coupling(name = 'GC_456',
	 value = '1*complex(0,1)*(ZP12*(complexconjugate(ZDL21)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZDL22)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZDL23)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZP11*(complexconjugate(ZDL21)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZDL22)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZDL23)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))', 
	 order = {'QED':1} ) 
 
GC_457 = Coupling(name = 'GC_457',
	 value = '-1*complex(0,1)*(ZP12*(ZUL21*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZUL22*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZUL23*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZP11*(ZUL21*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZUL22*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZUL23*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_458 = Coupling(name = 'GC_458',
	 value = '1*complex(0,1)*(ZP22*(complexconjugate(ZDL21)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZDL22)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZDL23)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZP21*(complexconjugate(ZDL21)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZDL22)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZDL23)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))', 
	 order = {'QED':1} ) 
 
GC_459 = Coupling(name = 'GC_459',
	 value = '-1*complex(0,1)*(ZP22*(ZUL21*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZUL22*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZUL23*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZP21*(ZUL21*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZUL22*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZUL23*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_460 = Coupling(name = 'GC_460',
	 value = '1*complex(0,1)*(ZP12*(complexconjugate(ZDL31)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZDL32)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZDL33)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZP11*(complexconjugate(ZDL31)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZDL32)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZDL33)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))', 
	 order = {'QED':1} ) 
 
GC_461 = Coupling(name = 'GC_461',
	 value = '-1*complex(0,1)*(ZP12*(ZUL21*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZUL22*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZUL23*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZP11*(ZUL21*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZUL22*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZUL23*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_462 = Coupling(name = 'GC_462',
	 value = '1*complex(0,1)*(ZP22*(complexconjugate(ZDL31)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZDL32)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZDL33)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZP21*(complexconjugate(ZDL31)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZDL32)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZDL33)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23))))', 
	 order = {'QED':1} ) 
 
GC_463 = Coupling(name = 'GC_463',
	 value = '-1*complex(0,1)*(ZP22*(ZUL21*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZUL22*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZUL23*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZP21*(ZUL21*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZUL22*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZUL23*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_464 = Coupling(name = 'GC_464',
	 value = '1*complex(0,1)*(ZP12*(complexconjugate(ZDL11)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZDL12)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZDL13)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZP11*(complexconjugate(ZDL11)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZDL12)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZDL13)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))', 
	 order = {'QED':1} ) 
 
GC_465 = Coupling(name = 'GC_465',
	 value = '-1*complex(0,1)*(ZP12*(ZUL31*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZUL32*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZUL33*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZP11*(ZUL31*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZUL32*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZUL33*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_466 = Coupling(name = 'GC_466',
	 value = '1*complex(0,1)*(ZP22*(complexconjugate(ZDL11)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZDL12)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZDL13)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZP21*(complexconjugate(ZDL11)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZDL12)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZDL13)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))', 
	 order = {'QED':1} ) 
 
GC_467 = Coupling(name = 'GC_467',
	 value = '-1*complex(0,1)*(ZP22*(ZUL31*(ZDR11*complexconjugate(epsD11) + ZDR12*complexconjugate(epsD21) + ZDR13*complexconjugate(epsD31)) + ZUL32*(ZDR11*complexconjugate(epsD12) + ZDR12*complexconjugate(epsD22) + ZDR13*complexconjugate(epsD32)) + ZUL33*(ZDR11*complexconjugate(epsD13) + ZDR12*complexconjugate(epsD23) + ZDR13*complexconjugate(epsD33))) + ZP21*(ZUL31*(ZDR11*complexconjugate(Yd11) + ZDR12*complexconjugate(Yd21) + ZDR13*complexconjugate(Yd31)) + ZUL32*(ZDR11*complexconjugate(Yd12) + ZDR12*complexconjugate(Yd22) + ZDR13*complexconjugate(Yd32)) + ZUL33*(ZDR11*complexconjugate(Yd13) + ZDR12*complexconjugate(Yd23) + ZDR13*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_468 = Coupling(name = 'GC_468',
	 value = '1*complex(0,1)*(ZP12*(complexconjugate(ZDL21)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZDL22)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZDL23)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZP11*(complexconjugate(ZDL21)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZDL22)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZDL23)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))', 
	 order = {'QED':1} ) 
 
GC_469 = Coupling(name = 'GC_469',
	 value = '-1*complex(0,1)*(ZP12*(ZUL31*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZUL32*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZUL33*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZP11*(ZUL31*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZUL32*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZUL33*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_470 = Coupling(name = 'GC_470',
	 value = '1*complex(0,1)*(ZP22*(complexconjugate(ZDL21)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZDL22)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZDL23)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZP21*(complexconjugate(ZDL21)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZDL22)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZDL23)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))', 
	 order = {'QED':1} ) 
 
GC_471 = Coupling(name = 'GC_471',
	 value = '-1*complex(0,1)*(ZP22*(ZUL31*(ZDR21*complexconjugate(epsD11) + ZDR22*complexconjugate(epsD21) + ZDR23*complexconjugate(epsD31)) + ZUL32*(ZDR21*complexconjugate(epsD12) + ZDR22*complexconjugate(epsD22) + ZDR23*complexconjugate(epsD32)) + ZUL33*(ZDR21*complexconjugate(epsD13) + ZDR22*complexconjugate(epsD23) + ZDR23*complexconjugate(epsD33))) + ZP21*(ZUL31*(ZDR21*complexconjugate(Yd11) + ZDR22*complexconjugate(Yd21) + ZDR23*complexconjugate(Yd31)) + ZUL32*(ZDR21*complexconjugate(Yd12) + ZDR22*complexconjugate(Yd22) + ZDR23*complexconjugate(Yd32)) + ZUL33*(ZDR21*complexconjugate(Yd13) + ZDR22*complexconjugate(Yd23) + ZDR23*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_472 = Coupling(name = 'GC_472',
	 value = '1*complex(0,1)*(ZP12*(complexconjugate(ZDL31)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZDL32)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZDL33)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZP11*(complexconjugate(ZDL31)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZDL32)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZDL33)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))', 
	 order = {'QED':1} ) 
 
GC_473 = Coupling(name = 'GC_473',
	 value = '-1*complex(0,1)*(ZP12*(ZUL31*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZUL32*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZUL33*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZP11*(ZUL31*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZUL32*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZUL33*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_474 = Coupling(name = 'GC_474',
	 value = '1*complex(0,1)*(ZP22*(complexconjugate(ZDL31)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZDL32)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZDL33)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZP21*(complexconjugate(ZDL31)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZDL32)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZDL33)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33))))', 
	 order = {'QED':1} ) 
 
GC_475 = Coupling(name = 'GC_475',
	 value = '-1*complex(0,1)*(ZP22*(ZUL31*(ZDR31*complexconjugate(epsD11) + ZDR32*complexconjugate(epsD21) + ZDR33*complexconjugate(epsD31)) + ZUL32*(ZDR31*complexconjugate(epsD12) + ZDR32*complexconjugate(epsD22) + ZDR33*complexconjugate(epsD32)) + ZUL33*(ZDR31*complexconjugate(epsD13) + ZDR32*complexconjugate(epsD23) + ZDR33*complexconjugate(epsD33))) + ZP21*(ZUL31*(ZDR31*complexconjugate(Yd11) + ZDR32*complexconjugate(Yd21) + ZDR33*complexconjugate(Yd31)) + ZUL32*(ZDR31*complexconjugate(Yd12) + ZDR32*complexconjugate(Yd22) + ZDR33*complexconjugate(Yd32)) + ZUL33*(ZDR31*complexconjugate(Yd13) + ZDR32*complexconjugate(Yd23) + ZDR33*complexconjugate(Yd33))))', 
	 order = {'QED':1} ) 
 
GC_476 = Coupling(name = 'GC_476',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZH11*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_477 = Coupling(name = 'GC_477',
	 value = '(-1*complex(0,1)*(ZH12*(ZEL11*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL12*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL13*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZH11*(ZEL11*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL12*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL13*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_478 = Coupling(name = 'GC_478',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZH21*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_479 = Coupling(name = 'GC_479',
	 value = '(-1*complex(0,1)*(ZH22*(ZEL11*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL12*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL13*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZH21*(ZEL11*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL12*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL13*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_480 = Coupling(name = 'GC_480',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZH31*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_481 = Coupling(name = 'GC_481',
	 value = '(-1*complex(0,1)*(ZH32*(ZEL11*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL12*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL13*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZH31*(ZEL11*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL12*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL13*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_482 = Coupling(name = 'GC_482',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZH11*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_483 = Coupling(name = 'GC_483',
	 value = '(-1*complex(0,1)*(ZH12*(ZEL11*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL12*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL13*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZH11*(ZEL11*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL12*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL13*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_484 = Coupling(name = 'GC_484',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZH21*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_485 = Coupling(name = 'GC_485',
	 value = '(-1*complex(0,1)*(ZH22*(ZEL11*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL12*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL13*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZH21*(ZEL11*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL12*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL13*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_486 = Coupling(name = 'GC_486',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZH31*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_487 = Coupling(name = 'GC_487',
	 value = '(-1*complex(0,1)*(ZH32*(ZEL11*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL12*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL13*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZH31*(ZEL11*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL12*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL13*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_488 = Coupling(name = 'GC_488',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZH11*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_489 = Coupling(name = 'GC_489',
	 value = '(-1*complex(0,1)*(ZH12*(ZEL11*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL12*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL13*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZH11*(ZEL11*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL12*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL13*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_490 = Coupling(name = 'GC_490',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZH21*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_491 = Coupling(name = 'GC_491',
	 value = '(-1*complex(0,1)*(ZH22*(ZEL11*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL12*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL13*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZH21*(ZEL11*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL12*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL13*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_492 = Coupling(name = 'GC_492',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13))) + ZH31*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_493 = Coupling(name = 'GC_493',
	 value = '(-1*complex(0,1)*(ZH32*(ZEL11*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL12*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL13*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZH31*(ZEL11*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL12*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL13*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_494 = Coupling(name = 'GC_494',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZH11*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_495 = Coupling(name = 'GC_495',
	 value = '(-1*complex(0,1)*(ZH12*(ZEL21*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL22*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL23*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZH11*(ZEL21*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL22*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL23*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_496 = Coupling(name = 'GC_496',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZH21*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_497 = Coupling(name = 'GC_497',
	 value = '(-1*complex(0,1)*(ZH22*(ZEL21*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL22*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL23*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZH21*(ZEL21*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL22*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL23*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_498 = Coupling(name = 'GC_498',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZH31*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_499 = Coupling(name = 'GC_499',
	 value = '(-1*complex(0,1)*(ZH32*(ZEL21*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL22*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL23*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZH31*(ZEL21*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL22*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL23*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_500 = Coupling(name = 'GC_500',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZH11*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_501 = Coupling(name = 'GC_501',
	 value = '(-1*complex(0,1)*(ZH12*(ZEL21*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL22*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL23*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZH11*(ZEL21*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL22*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL23*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_502 = Coupling(name = 'GC_502',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZH21*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_503 = Coupling(name = 'GC_503',
	 value = '(-1*complex(0,1)*(ZH22*(ZEL21*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL22*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL23*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZH21*(ZEL21*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL22*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL23*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_504 = Coupling(name = 'GC_504',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZH31*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_505 = Coupling(name = 'GC_505',
	 value = '(-1*complex(0,1)*(ZH32*(ZEL21*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL22*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL23*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZH31*(ZEL21*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL22*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL23*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_506 = Coupling(name = 'GC_506',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZH11*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_507 = Coupling(name = 'GC_507',
	 value = '(-1*complex(0,1)*(ZH12*(ZEL21*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL22*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL23*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZH11*(ZEL21*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL22*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL23*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_508 = Coupling(name = 'GC_508',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZH21*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_509 = Coupling(name = 'GC_509',
	 value = '(-1*complex(0,1)*(ZH22*(ZEL21*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL22*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL23*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZH21*(ZEL21*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL22*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL23*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_510 = Coupling(name = 'GC_510',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23))) + ZH31*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_511 = Coupling(name = 'GC_511',
	 value = '(-1*complex(0,1)*(ZH32*(ZEL21*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL22*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL23*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZH31*(ZEL21*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL22*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL23*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_512 = Coupling(name = 'GC_512',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZH11*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_513 = Coupling(name = 'GC_513',
	 value = '(-1*complex(0,1)*(ZH12*(ZEL31*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL32*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL33*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZH11*(ZEL31*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL32*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL33*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_514 = Coupling(name = 'GC_514',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZH21*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_515 = Coupling(name = 'GC_515',
	 value = '(-1*complex(0,1)*(ZH22*(ZEL31*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL32*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL33*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZH21*(ZEL31*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL32*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL33*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_516 = Coupling(name = 'GC_516',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZEL11)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZH31*(complexconjugate(ZEL11)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL12)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL13)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_517 = Coupling(name = 'GC_517',
	 value = '(-1*complex(0,1)*(ZH32*(ZEL31*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZEL32*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZEL33*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33))) + ZH31*(ZEL31*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)) + ZEL32*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)) + ZEL33*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_518 = Coupling(name = 'GC_518',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZH11*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_519 = Coupling(name = 'GC_519',
	 value = '(-1*complex(0,1)*(ZH12*(ZEL31*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL32*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL33*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZH11*(ZEL31*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL32*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL33*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_520 = Coupling(name = 'GC_520',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZH21*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_521 = Coupling(name = 'GC_521',
	 value = '(-1*complex(0,1)*(ZH22*(ZEL31*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL32*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL33*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZH21*(ZEL31*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL32*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL33*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_522 = Coupling(name = 'GC_522',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZEL21)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZH31*(complexconjugate(ZEL21)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL22)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL23)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_523 = Coupling(name = 'GC_523',
	 value = '(-1*complex(0,1)*(ZH32*(ZEL31*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZEL32*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZEL33*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33))) + ZH31*(ZEL31*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)) + ZEL32*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)) + ZEL33*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_524 = Coupling(name = 'GC_524',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZH11*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_525 = Coupling(name = 'GC_525',
	 value = '(-1*complex(0,1)*(ZH12*(ZEL31*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL32*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL33*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZH11*(ZEL31*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL32*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL33*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_526 = Coupling(name = 'GC_526',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZH21*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_527 = Coupling(name = 'GC_527',
	 value = '(-1*complex(0,1)*(ZH22*(ZEL31*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL32*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL33*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZH21*(ZEL31*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL32*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL33*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_528 = Coupling(name = 'GC_528',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZEL31)*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33))) + ZH31*(complexconjugate(ZEL31)*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)) + complexconjugate(ZEL32)*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)) + complexconjugate(ZEL33)*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_529 = Coupling(name = 'GC_529',
	 value = '(-1*complex(0,1)*(ZH32*(ZEL31*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZEL32*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZEL33*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33))) + ZH31*(ZEL31*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)) + ZEL32*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)) + ZEL33*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_530 = Coupling(name = 'GC_530',
	 value = '-1*complex(0,1)*(ZP12*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZP11*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)))', 
	 order = {'QED':1} ) 
 
GC_531 = Coupling(name = 'GC_531',
	 value = '-1*complex(0,1)*(ZP22*(ZER11*complexconjugate(epsE11) + ZER12*complexconjugate(epsE21) + ZER13*complexconjugate(epsE31)) + ZP21*(ZER11*complexconjugate(Ye11) + ZER12*complexconjugate(Ye21) + ZER13*complexconjugate(Ye31)))', 
	 order = {'QED':1} ) 
 
GC_532 = Coupling(name = 'GC_532',
	 value = '-1*complex(0,1)*(ZP12*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZP11*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)))', 
	 order = {'QED':1} ) 
 
GC_533 = Coupling(name = 'GC_533',
	 value = '-1*complex(0,1)*(ZP22*(ZER21*complexconjugate(epsE11) + ZER22*complexconjugate(epsE21) + ZER23*complexconjugate(epsE31)) + ZP21*(ZER21*complexconjugate(Ye11) + ZER22*complexconjugate(Ye21) + ZER23*complexconjugate(Ye31)))', 
	 order = {'QED':1} ) 
 
GC_534 = Coupling(name = 'GC_534',
	 value = '-1*complex(0,1)*(ZP12*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZP11*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)))', 
	 order = {'QED':1} ) 
 
GC_535 = Coupling(name = 'GC_535',
	 value = '-1*complex(0,1)*(ZP22*(ZER31*complexconjugate(epsE11) + ZER32*complexconjugate(epsE21) + ZER33*complexconjugate(epsE31)) + ZP21*(ZER31*complexconjugate(Ye11) + ZER32*complexconjugate(Ye21) + ZER33*complexconjugate(Ye31)))', 
	 order = {'QED':1} ) 
 
GC_536 = Coupling(name = 'GC_536',
	 value = '-1*complex(0,1)*(ZP12*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZP11*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)))', 
	 order = {'QED':1} ) 
 
GC_537 = Coupling(name = 'GC_537',
	 value = '-1*complex(0,1)*(ZP22*(ZER11*complexconjugate(epsE12) + ZER12*complexconjugate(epsE22) + ZER13*complexconjugate(epsE32)) + ZP21*(ZER11*complexconjugate(Ye12) + ZER12*complexconjugate(Ye22) + ZER13*complexconjugate(Ye32)))', 
	 order = {'QED':1} ) 
 
GC_538 = Coupling(name = 'GC_538',
	 value = '-1*complex(0,1)*(ZP12*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZP11*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)))', 
	 order = {'QED':1} ) 
 
GC_539 = Coupling(name = 'GC_539',
	 value = '-1*complex(0,1)*(ZP22*(ZER21*complexconjugate(epsE12) + ZER22*complexconjugate(epsE22) + ZER23*complexconjugate(epsE32)) + ZP21*(ZER21*complexconjugate(Ye12) + ZER22*complexconjugate(Ye22) + ZER23*complexconjugate(Ye32)))', 
	 order = {'QED':1} ) 
 
GC_540 = Coupling(name = 'GC_540',
	 value = '-1*complex(0,1)*(ZP12*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZP11*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)))', 
	 order = {'QED':1} ) 
 
GC_541 = Coupling(name = 'GC_541',
	 value = '-1*complex(0,1)*(ZP22*(ZER31*complexconjugate(epsE12) + ZER32*complexconjugate(epsE22) + ZER33*complexconjugate(epsE32)) + ZP21*(ZER31*complexconjugate(Ye12) + ZER32*complexconjugate(Ye22) + ZER33*complexconjugate(Ye32)))', 
	 order = {'QED':1} ) 
 
GC_542 = Coupling(name = 'GC_542',
	 value = '-1*complex(0,1)*(ZP12*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33)) + ZP11*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33)))', 
	 order = {'QED':1} ) 
 
GC_543 = Coupling(name = 'GC_543',
	 value = '-1*complex(0,1)*(ZP22*(ZER11*complexconjugate(epsE13) + ZER12*complexconjugate(epsE23) + ZER13*complexconjugate(epsE33)) + ZP21*(ZER11*complexconjugate(Ye13) + ZER12*complexconjugate(Ye23) + ZER13*complexconjugate(Ye33)))', 
	 order = {'QED':1} ) 
 
GC_544 = Coupling(name = 'GC_544',
	 value = '-1*complex(0,1)*(ZP12*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33)) + ZP11*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33)))', 
	 order = {'QED':1} ) 
 
GC_545 = Coupling(name = 'GC_545',
	 value = '-1*complex(0,1)*(ZP22*(ZER21*complexconjugate(epsE13) + ZER22*complexconjugate(epsE23) + ZER23*complexconjugate(epsE33)) + ZP21*(ZER21*complexconjugate(Ye13) + ZER22*complexconjugate(Ye23) + ZER23*complexconjugate(Ye33)))', 
	 order = {'QED':1} ) 
 
GC_546 = Coupling(name = 'GC_546',
	 value = '-1*complex(0,1)*(ZP12*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33)) + ZP11*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33)))', 
	 order = {'QED':1} ) 
 
GC_547 = Coupling(name = 'GC_547',
	 value = '-1*complex(0,1)*(ZP22*(ZER31*complexconjugate(epsE13) + ZER32*complexconjugate(epsE23) + ZER33*complexconjugate(epsE33)) + ZP21*(ZER31*complexconjugate(Ye13) + ZER32*complexconjugate(Ye23) + ZER33*complexconjugate(Ye33)))', 
	 order = {'QED':1} ) 
 
GC_548 = Coupling(name = 'GC_548',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZH11*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_549 = Coupling(name = 'GC_549',
	 value = '(-1*complex(0,1)*(ZH12*(ZUL11*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL12*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL13*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZH11*(ZUL11*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL12*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL13*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_550 = Coupling(name = 'GC_550',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZH21*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_551 = Coupling(name = 'GC_551',
	 value = '(-1*complex(0,1)*(ZH22*(ZUL11*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL12*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL13*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZH21*(ZUL11*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL12*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL13*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_552 = Coupling(name = 'GC_552',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZH31*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_553 = Coupling(name = 'GC_553',
	 value = '(-1*complex(0,1)*(ZH32*(ZUL11*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL12*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL13*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZH31*(ZUL11*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL12*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL13*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_554 = Coupling(name = 'GC_554',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZH11*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_555 = Coupling(name = 'GC_555',
	 value = '(-1*complex(0,1)*(ZH12*(ZUL11*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL12*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL13*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZH11*(ZUL11*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL12*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL13*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_556 = Coupling(name = 'GC_556',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZH21*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_557 = Coupling(name = 'GC_557',
	 value = '(-1*complex(0,1)*(ZH22*(ZUL11*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL12*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL13*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZH21*(ZUL11*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL12*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL13*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_558 = Coupling(name = 'GC_558',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZH31*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_559 = Coupling(name = 'GC_559',
	 value = '(-1*complex(0,1)*(ZH32*(ZUL11*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL12*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL13*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZH31*(ZUL11*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL12*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL13*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_560 = Coupling(name = 'GC_560',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZH11*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_561 = Coupling(name = 'GC_561',
	 value = '(-1*complex(0,1)*(ZH12*(ZUL11*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL12*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL13*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZH11*(ZUL11*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL12*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL13*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_562 = Coupling(name = 'GC_562',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZH21*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_563 = Coupling(name = 'GC_563',
	 value = '(-1*complex(0,1)*(ZH22*(ZUL11*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL12*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL13*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZH21*(ZUL11*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL12*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL13*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_564 = Coupling(name = 'GC_564',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR11) + epsU21*complexconjugate(ZUR12) + epsU31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR11) + epsU22*complexconjugate(ZUR12) + epsU32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR11) + epsU23*complexconjugate(ZUR12) + epsU33*complexconjugate(ZUR13))) + ZH31*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR11) + Yu21*complexconjugate(ZUR12) + Yu31*complexconjugate(ZUR13)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR11) + Yu22*complexconjugate(ZUR12) + Yu32*complexconjugate(ZUR13)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR11) + Yu23*complexconjugate(ZUR12) + Yu33*complexconjugate(ZUR13)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_565 = Coupling(name = 'GC_565',
	 value = '(-1*complex(0,1)*(ZH32*(ZUL11*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL12*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL13*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZH31*(ZUL11*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL12*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL13*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_566 = Coupling(name = 'GC_566',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZH11*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_567 = Coupling(name = 'GC_567',
	 value = '(-1*complex(0,1)*(ZH12*(ZUL21*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL22*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL23*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZH11*(ZUL21*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL22*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL23*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_568 = Coupling(name = 'GC_568',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZH21*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_569 = Coupling(name = 'GC_569',
	 value = '(-1*complex(0,1)*(ZH22*(ZUL21*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL22*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL23*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZH21*(ZUL21*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL22*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL23*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_570 = Coupling(name = 'GC_570',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZH31*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_571 = Coupling(name = 'GC_571',
	 value = '(-1*complex(0,1)*(ZH32*(ZUL21*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL22*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL23*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZH31*(ZUL21*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL22*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL23*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_572 = Coupling(name = 'GC_572',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZH11*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_573 = Coupling(name = 'GC_573',
	 value = '(-1*complex(0,1)*(ZH12*(ZUL21*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL22*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL23*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZH11*(ZUL21*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL22*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL23*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_574 = Coupling(name = 'GC_574',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZH21*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_575 = Coupling(name = 'GC_575',
	 value = '(-1*complex(0,1)*(ZH22*(ZUL21*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL22*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL23*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZH21*(ZUL21*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL22*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL23*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_576 = Coupling(name = 'GC_576',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZH31*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_577 = Coupling(name = 'GC_577',
	 value = '(-1*complex(0,1)*(ZH32*(ZUL21*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL22*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL23*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZH31*(ZUL21*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL22*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL23*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_578 = Coupling(name = 'GC_578',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZH11*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_579 = Coupling(name = 'GC_579',
	 value = '(-1*complex(0,1)*(ZH12*(ZUL21*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL22*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL23*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZH11*(ZUL21*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL22*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL23*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_580 = Coupling(name = 'GC_580',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZH21*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_581 = Coupling(name = 'GC_581',
	 value = '(-1*complex(0,1)*(ZH22*(ZUL21*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL22*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL23*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZH21*(ZUL21*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL22*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL23*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_582 = Coupling(name = 'GC_582',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR21) + epsU21*complexconjugate(ZUR22) + epsU31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR21) + epsU22*complexconjugate(ZUR22) + epsU32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR21) + epsU23*complexconjugate(ZUR22) + epsU33*complexconjugate(ZUR23))) + ZH31*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR21) + Yu21*complexconjugate(ZUR22) + Yu31*complexconjugate(ZUR23)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR21) + Yu22*complexconjugate(ZUR22) + Yu32*complexconjugate(ZUR23)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR21) + Yu23*complexconjugate(ZUR22) + Yu33*complexconjugate(ZUR23)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_583 = Coupling(name = 'GC_583',
	 value = '(-1*complex(0,1)*(ZH32*(ZUL21*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL22*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL23*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZH31*(ZUL21*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL22*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL23*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_584 = Coupling(name = 'GC_584',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZH11*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_585 = Coupling(name = 'GC_585',
	 value = '(-1*complex(0,1)*(ZH12*(ZUL31*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL32*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL33*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZH11*(ZUL31*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL32*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL33*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_586 = Coupling(name = 'GC_586',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZH21*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_587 = Coupling(name = 'GC_587',
	 value = '(-1*complex(0,1)*(ZH22*(ZUL31*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL32*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL33*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZH21*(ZUL31*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL32*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL33*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_588 = Coupling(name = 'GC_588',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZUL11)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZH31*(complexconjugate(ZUL11)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL12)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL13)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_589 = Coupling(name = 'GC_589',
	 value = '(-1*complex(0,1)*(ZH32*(ZUL31*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZUL32*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZUL33*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZH31*(ZUL31*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZUL32*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZUL33*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_590 = Coupling(name = 'GC_590',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZH11*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_591 = Coupling(name = 'GC_591',
	 value = '(-1*complex(0,1)*(ZH12*(ZUL31*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL32*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL33*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZH11*(ZUL31*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL32*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL33*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_592 = Coupling(name = 'GC_592',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZH21*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_593 = Coupling(name = 'GC_593',
	 value = '(-1*complex(0,1)*(ZH22*(ZUL31*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL32*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL33*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZH21*(ZUL31*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL32*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL33*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_594 = Coupling(name = 'GC_594',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZUL21)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZH31*(complexconjugate(ZUL21)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL22)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL23)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_595 = Coupling(name = 'GC_595',
	 value = '(-1*complex(0,1)*(ZH32*(ZUL31*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZUL32*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZUL33*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZH31*(ZUL31*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZUL32*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZUL33*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_596 = Coupling(name = 'GC_596',
	 value = '(-1*complex(0,1)*(ZH12*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZH11*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_597 = Coupling(name = 'GC_597',
	 value = '(-1*complex(0,1)*(ZH12*(ZUL31*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL32*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL33*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZH11*(ZUL31*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL32*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL33*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_598 = Coupling(name = 'GC_598',
	 value = '(-1*complex(0,1)*(ZH22*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZH21*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_599 = Coupling(name = 'GC_599',
	 value = '(-1*complex(0,1)*(ZH22*(ZUL31*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL32*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL33*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZH21*(ZUL31*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL32*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL33*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_600 = Coupling(name = 'GC_600',
	 value = '(-1*complex(0,1)*(ZH32*(complexconjugate(ZUL31)*(epsU11*complexconjugate(ZUR31) + epsU21*complexconjugate(ZUR32) + epsU31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(epsU12*complexconjugate(ZUR31) + epsU22*complexconjugate(ZUR32) + epsU32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(epsU13*complexconjugate(ZUR31) + epsU23*complexconjugate(ZUR32) + epsU33*complexconjugate(ZUR33))) + ZH31*(complexconjugate(ZUL31)*(Yu11*complexconjugate(ZUR31) + Yu21*complexconjugate(ZUR32) + Yu31*complexconjugate(ZUR33)) + complexconjugate(ZUL32)*(Yu12*complexconjugate(ZUR31) + Yu22*complexconjugate(ZUR32) + Yu32*complexconjugate(ZUR33)) + complexconjugate(ZUL33)*(Yu13*complexconjugate(ZUR31) + Yu23*complexconjugate(ZUR32) + Yu33*complexconjugate(ZUR33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_601 = Coupling(name = 'GC_601',
	 value = '(-1*complex(0,1)*(ZH32*(ZUL31*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZUL32*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZUL33*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZH31*(ZUL31*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZUL32*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZUL33*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33)))))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_602 = Coupling(name = 'GC_602',
	 value = '-1*complex(0,1)*(ZP12*((epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13))*complexconjugate(ZUL11) + (epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13))*complexconjugate(ZUL12) + (epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))*complexconjugate(ZUL13)) + ZP11*((Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13))*complexconjugate(ZUL11) + (Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13))*complexconjugate(ZUL12) + (Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))*complexconjugate(ZUL13)))', 
	 order = {'QED':1} ) 
 
GC_603 = Coupling(name = 'GC_603',
	 value = '1*complex(0,1)*(ZP12*(ZDL11*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZDL12*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZDL13*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZP11*(ZDL11*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZDL12*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZDL13*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_604 = Coupling(name = 'GC_604',
	 value = '-1*complex(0,1)*(ZP22*((epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13))*complexconjugate(ZUL11) + (epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13))*complexconjugate(ZUL12) + (epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))*complexconjugate(ZUL13)) + ZP21*((Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13))*complexconjugate(ZUL11) + (Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13))*complexconjugate(ZUL12) + (Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))*complexconjugate(ZUL13)))', 
	 order = {'QED':1} ) 
 
GC_605 = Coupling(name = 'GC_605',
	 value = '1*complex(0,1)*(ZP22*(ZDL11*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZDL12*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZDL13*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZP21*(ZDL11*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZDL12*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZDL13*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_606 = Coupling(name = 'GC_606',
	 value = '-1*complex(0,1)*(ZP12*((epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13))*complexconjugate(ZUL21) + (epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13))*complexconjugate(ZUL22) + (epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))*complexconjugate(ZUL23)) + ZP11*((Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13))*complexconjugate(ZUL21) + (Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13))*complexconjugate(ZUL22) + (Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))*complexconjugate(ZUL23)))', 
	 order = {'QED':1} ) 
 
GC_607 = Coupling(name = 'GC_607',
	 value = '1*complex(0,1)*(ZP12*(ZDL11*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZDL12*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZDL13*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZP11*(ZDL11*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZDL12*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZDL13*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_608 = Coupling(name = 'GC_608',
	 value = '-1*complex(0,1)*(ZP22*((epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13))*complexconjugate(ZUL21) + (epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13))*complexconjugate(ZUL22) + (epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))*complexconjugate(ZUL23)) + ZP21*((Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13))*complexconjugate(ZUL21) + (Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13))*complexconjugate(ZUL22) + (Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))*complexconjugate(ZUL23)))', 
	 order = {'QED':1} ) 
 
GC_609 = Coupling(name = 'GC_609',
	 value = '1*complex(0,1)*(ZP22*(ZDL11*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZDL12*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZDL13*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZP21*(ZDL11*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZDL12*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZDL13*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_610 = Coupling(name = 'GC_610',
	 value = '-1*complex(0,1)*(ZP12*((epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13))*complexconjugate(ZUL31) + (epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13))*complexconjugate(ZUL32) + (epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))*complexconjugate(ZUL33)) + ZP11*((Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13))*complexconjugate(ZUL31) + (Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13))*complexconjugate(ZUL32) + (Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))*complexconjugate(ZUL33)))', 
	 order = {'QED':1} ) 
 
GC_611 = Coupling(name = 'GC_611',
	 value = '1*complex(0,1)*(ZP12*(ZDL11*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZDL12*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZDL13*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZP11*(ZDL11*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZDL12*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZDL13*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_612 = Coupling(name = 'GC_612',
	 value = '-1*complex(0,1)*(ZP22*((epsD11*complexconjugate(ZDR11) + epsD21*complexconjugate(ZDR12) + epsD31*complexconjugate(ZDR13))*complexconjugate(ZUL31) + (epsD12*complexconjugate(ZDR11) + epsD22*complexconjugate(ZDR12) + epsD32*complexconjugate(ZDR13))*complexconjugate(ZUL32) + (epsD13*complexconjugate(ZDR11) + epsD23*complexconjugate(ZDR12) + epsD33*complexconjugate(ZDR13))*complexconjugate(ZUL33)) + ZP21*((Yd11*complexconjugate(ZDR11) + Yd21*complexconjugate(ZDR12) + Yd31*complexconjugate(ZDR13))*complexconjugate(ZUL31) + (Yd12*complexconjugate(ZDR11) + Yd22*complexconjugate(ZDR12) + Yd32*complexconjugate(ZDR13))*complexconjugate(ZUL32) + (Yd13*complexconjugate(ZDR11) + Yd23*complexconjugate(ZDR12) + Yd33*complexconjugate(ZDR13))*complexconjugate(ZUL33)))', 
	 order = {'QED':1} ) 
 
GC_613 = Coupling(name = 'GC_613',
	 value = '1*complex(0,1)*(ZP22*(ZDL11*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZDL12*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZDL13*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZP21*(ZDL11*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZDL12*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZDL13*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_614 = Coupling(name = 'GC_614',
	 value = '-1*complex(0,1)*(ZP12*((epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23))*complexconjugate(ZUL11) + (epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23))*complexconjugate(ZUL12) + (epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))*complexconjugate(ZUL13)) + ZP11*((Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23))*complexconjugate(ZUL11) + (Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23))*complexconjugate(ZUL12) + (Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))*complexconjugate(ZUL13)))', 
	 order = {'QED':1} ) 
 
GC_615 = Coupling(name = 'GC_615',
	 value = '1*complex(0,1)*(ZP12*(ZDL21*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZDL22*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZDL23*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZP11*(ZDL21*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZDL22*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZDL23*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_616 = Coupling(name = 'GC_616',
	 value = '-1*complex(0,1)*(ZP22*((epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23))*complexconjugate(ZUL11) + (epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23))*complexconjugate(ZUL12) + (epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))*complexconjugate(ZUL13)) + ZP21*((Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23))*complexconjugate(ZUL11) + (Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23))*complexconjugate(ZUL12) + (Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))*complexconjugate(ZUL13)))', 
	 order = {'QED':1} ) 
 
GC_617 = Coupling(name = 'GC_617',
	 value = '1*complex(0,1)*(ZP22*(ZDL21*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZDL22*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZDL23*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZP21*(ZDL21*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZDL22*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZDL23*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_618 = Coupling(name = 'GC_618',
	 value = '-1*complex(0,1)*(ZP12*((epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23))*complexconjugate(ZUL21) + (epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23))*complexconjugate(ZUL22) + (epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))*complexconjugate(ZUL23)) + ZP11*((Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23))*complexconjugate(ZUL21) + (Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23))*complexconjugate(ZUL22) + (Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))*complexconjugate(ZUL23)))', 
	 order = {'QED':1} ) 
 
GC_619 = Coupling(name = 'GC_619',
	 value = '1*complex(0,1)*(ZP12*(ZDL21*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZDL22*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZDL23*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZP11*(ZDL21*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZDL22*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZDL23*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_620 = Coupling(name = 'GC_620',
	 value = '-1*complex(0,1)*(ZP22*((epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23))*complexconjugate(ZUL21) + (epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23))*complexconjugate(ZUL22) + (epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))*complexconjugate(ZUL23)) + ZP21*((Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23))*complexconjugate(ZUL21) + (Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23))*complexconjugate(ZUL22) + (Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))*complexconjugate(ZUL23)))', 
	 order = {'QED':1} ) 
 
GC_621 = Coupling(name = 'GC_621',
	 value = '1*complex(0,1)*(ZP22*(ZDL21*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZDL22*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZDL23*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZP21*(ZDL21*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZDL22*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZDL23*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_622 = Coupling(name = 'GC_622',
	 value = '-1*complex(0,1)*(ZP12*((epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23))*complexconjugate(ZUL31) + (epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23))*complexconjugate(ZUL32) + (epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))*complexconjugate(ZUL33)) + ZP11*((Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23))*complexconjugate(ZUL31) + (Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23))*complexconjugate(ZUL32) + (Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))*complexconjugate(ZUL33)))', 
	 order = {'QED':1} ) 
 
GC_623 = Coupling(name = 'GC_623',
	 value = '1*complex(0,1)*(ZP12*(ZDL21*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZDL22*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZDL23*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZP11*(ZDL21*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZDL22*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZDL23*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_624 = Coupling(name = 'GC_624',
	 value = '-1*complex(0,1)*(ZP22*((epsD11*complexconjugate(ZDR21) + epsD21*complexconjugate(ZDR22) + epsD31*complexconjugate(ZDR23))*complexconjugate(ZUL31) + (epsD12*complexconjugate(ZDR21) + epsD22*complexconjugate(ZDR22) + epsD32*complexconjugate(ZDR23))*complexconjugate(ZUL32) + (epsD13*complexconjugate(ZDR21) + epsD23*complexconjugate(ZDR22) + epsD33*complexconjugate(ZDR23))*complexconjugate(ZUL33)) + ZP21*((Yd11*complexconjugate(ZDR21) + Yd21*complexconjugate(ZDR22) + Yd31*complexconjugate(ZDR23))*complexconjugate(ZUL31) + (Yd12*complexconjugate(ZDR21) + Yd22*complexconjugate(ZDR22) + Yd32*complexconjugate(ZDR23))*complexconjugate(ZUL32) + (Yd13*complexconjugate(ZDR21) + Yd23*complexconjugate(ZDR22) + Yd33*complexconjugate(ZDR23))*complexconjugate(ZUL33)))', 
	 order = {'QED':1} ) 
 
GC_625 = Coupling(name = 'GC_625',
	 value = '1*complex(0,1)*(ZP22*(ZDL21*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZDL22*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZDL23*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZP21*(ZDL21*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZDL22*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZDL23*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_626 = Coupling(name = 'GC_626',
	 value = '-1*complex(0,1)*(ZP12*((epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33))*complexconjugate(ZUL11) + (epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33))*complexconjugate(ZUL12) + (epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))*complexconjugate(ZUL13)) + ZP11*((Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33))*complexconjugate(ZUL11) + (Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33))*complexconjugate(ZUL12) + (Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))*complexconjugate(ZUL13)))', 
	 order = {'QED':1} ) 
 
GC_627 = Coupling(name = 'GC_627',
	 value = '1*complex(0,1)*(ZP12*(ZDL31*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZDL32*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZDL33*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZP11*(ZDL31*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZDL32*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZDL33*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_628 = Coupling(name = 'GC_628',
	 value = '-1*complex(0,1)*(ZP22*((epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33))*complexconjugate(ZUL11) + (epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33))*complexconjugate(ZUL12) + (epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))*complexconjugate(ZUL13)) + ZP21*((Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33))*complexconjugate(ZUL11) + (Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33))*complexconjugate(ZUL12) + (Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))*complexconjugate(ZUL13)))', 
	 order = {'QED':1} ) 
 
GC_629 = Coupling(name = 'GC_629',
	 value = '1*complex(0,1)*(ZP22*(ZDL31*(ZUR11*complexconjugate(epsU11) + ZUR12*complexconjugate(epsU21) + ZUR13*complexconjugate(epsU31)) + ZDL32*(ZUR11*complexconjugate(epsU12) + ZUR12*complexconjugate(epsU22) + ZUR13*complexconjugate(epsU32)) + ZDL33*(ZUR11*complexconjugate(epsU13) + ZUR12*complexconjugate(epsU23) + ZUR13*complexconjugate(epsU33))) + ZP21*(ZDL31*(ZUR11*complexconjugate(Yu11) + ZUR12*complexconjugate(Yu21) + ZUR13*complexconjugate(Yu31)) + ZDL32*(ZUR11*complexconjugate(Yu12) + ZUR12*complexconjugate(Yu22) + ZUR13*complexconjugate(Yu32)) + ZDL33*(ZUR11*complexconjugate(Yu13) + ZUR12*complexconjugate(Yu23) + ZUR13*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_630 = Coupling(name = 'GC_630',
	 value = '-1*complex(0,1)*(ZP12*((epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33))*complexconjugate(ZUL21) + (epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33))*complexconjugate(ZUL22) + (epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))*complexconjugate(ZUL23)) + ZP11*((Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33))*complexconjugate(ZUL21) + (Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33))*complexconjugate(ZUL22) + (Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))*complexconjugate(ZUL23)))', 
	 order = {'QED':1} ) 
 
GC_631 = Coupling(name = 'GC_631',
	 value = '1*complex(0,1)*(ZP12*(ZDL31*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZDL32*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZDL33*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZP11*(ZDL31*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZDL32*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZDL33*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_632 = Coupling(name = 'GC_632',
	 value = '-1*complex(0,1)*(ZP22*((epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33))*complexconjugate(ZUL21) + (epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33))*complexconjugate(ZUL22) + (epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))*complexconjugate(ZUL23)) + ZP21*((Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33))*complexconjugate(ZUL21) + (Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33))*complexconjugate(ZUL22) + (Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))*complexconjugate(ZUL23)))', 
	 order = {'QED':1} ) 
 
GC_633 = Coupling(name = 'GC_633',
	 value = '1*complex(0,1)*(ZP22*(ZDL31*(ZUR21*complexconjugate(epsU11) + ZUR22*complexconjugate(epsU21) + ZUR23*complexconjugate(epsU31)) + ZDL32*(ZUR21*complexconjugate(epsU12) + ZUR22*complexconjugate(epsU22) + ZUR23*complexconjugate(epsU32)) + ZDL33*(ZUR21*complexconjugate(epsU13) + ZUR22*complexconjugate(epsU23) + ZUR23*complexconjugate(epsU33))) + ZP21*(ZDL31*(ZUR21*complexconjugate(Yu11) + ZUR22*complexconjugate(Yu21) + ZUR23*complexconjugate(Yu31)) + ZDL32*(ZUR21*complexconjugate(Yu12) + ZUR22*complexconjugate(Yu22) + ZUR23*complexconjugate(Yu32)) + ZDL33*(ZUR21*complexconjugate(Yu13) + ZUR22*complexconjugate(Yu23) + ZUR23*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_634 = Coupling(name = 'GC_634',
	 value = '-1*complex(0,1)*(ZP12*((epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33))*complexconjugate(ZUL31) + (epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33))*complexconjugate(ZUL32) + (epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))*complexconjugate(ZUL33)) + ZP11*((Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33))*complexconjugate(ZUL31) + (Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33))*complexconjugate(ZUL32) + (Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))*complexconjugate(ZUL33)))', 
	 order = {'QED':1} ) 
 
GC_635 = Coupling(name = 'GC_635',
	 value = '1*complex(0,1)*(ZP12*(ZDL31*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZDL32*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZDL33*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZP11*(ZDL31*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZDL32*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZDL33*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_636 = Coupling(name = 'GC_636',
	 value = '-1*complex(0,1)*(ZP22*((epsD11*complexconjugate(ZDR31) + epsD21*complexconjugate(ZDR32) + epsD31*complexconjugate(ZDR33))*complexconjugate(ZUL31) + (epsD12*complexconjugate(ZDR31) + epsD22*complexconjugate(ZDR32) + epsD32*complexconjugate(ZDR33))*complexconjugate(ZUL32) + (epsD13*complexconjugate(ZDR31) + epsD23*complexconjugate(ZDR32) + epsD33*complexconjugate(ZDR33))*complexconjugate(ZUL33)) + ZP21*((Yd11*complexconjugate(ZDR31) + Yd21*complexconjugate(ZDR32) + Yd31*complexconjugate(ZDR33))*complexconjugate(ZUL31) + (Yd12*complexconjugate(ZDR31) + Yd22*complexconjugate(ZDR32) + Yd32*complexconjugate(ZDR33))*complexconjugate(ZUL32) + (Yd13*complexconjugate(ZDR31) + Yd23*complexconjugate(ZDR32) + Yd33*complexconjugate(ZDR33))*complexconjugate(ZUL33)))', 
	 order = {'QED':1} ) 
 
GC_637 = Coupling(name = 'GC_637',
	 value = '1*complex(0,1)*(ZP22*(ZDL31*(ZUR31*complexconjugate(epsU11) + ZUR32*complexconjugate(epsU21) + ZUR33*complexconjugate(epsU31)) + ZDL32*(ZUR31*complexconjugate(epsU12) + ZUR32*complexconjugate(epsU22) + ZUR33*complexconjugate(epsU32)) + ZDL33*(ZUR31*complexconjugate(epsU13) + ZUR32*complexconjugate(epsU23) + ZUR33*complexconjugate(epsU33))) + ZP21*(ZDL31*(ZUR31*complexconjugate(Yu11) + ZUR32*complexconjugate(Yu21) + ZUR33*complexconjugate(Yu31)) + ZDL32*(ZUR31*complexconjugate(Yu12) + ZUR32*complexconjugate(Yu22) + ZUR33*complexconjugate(Yu32)) + ZDL33*(ZUR31*complexconjugate(Yu13) + ZUR32*complexconjugate(Yu23) + ZUR33*complexconjugate(Yu33))))', 
	 order = {'QED':1} ) 
 
GC_638 = Coupling(name = 'GC_638',
	 value = '-1*complex(0,1)*(ZP12*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + ZP11*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)))', 
	 order = {'QED':1} ) 
 
GC_639 = Coupling(name = 'GC_639',
	 value = '-1*complex(0,1)*(ZP22*(epsE11*complexconjugate(ZER11) + epsE21*complexconjugate(ZER12) + epsE31*complexconjugate(ZER13)) + ZP21*(Ye11*complexconjugate(ZER11) + Ye21*complexconjugate(ZER12) + Ye31*complexconjugate(ZER13)))', 
	 order = {'QED':1} ) 
 
GC_640 = Coupling(name = 'GC_640',
	 value = '-1*complex(0,1)*(ZP12*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + ZP11*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)))', 
	 order = {'QED':1} ) 
 
GC_641 = Coupling(name = 'GC_641',
	 value = '-1*complex(0,1)*(ZP22*(epsE12*complexconjugate(ZER11) + epsE22*complexconjugate(ZER12) + epsE32*complexconjugate(ZER13)) + ZP21*(Ye12*complexconjugate(ZER11) + Ye22*complexconjugate(ZER12) + Ye32*complexconjugate(ZER13)))', 
	 order = {'QED':1} ) 
 
GC_642 = Coupling(name = 'GC_642',
	 value = '-1*complex(0,1)*(ZP12*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13)) + ZP11*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13)))', 
	 order = {'QED':1} ) 
 
GC_643 = Coupling(name = 'GC_643',
	 value = '-1*complex(0,1)*(ZP22*(epsE13*complexconjugate(ZER11) + epsE23*complexconjugate(ZER12) + epsE33*complexconjugate(ZER13)) + ZP21*(Ye13*complexconjugate(ZER11) + Ye23*complexconjugate(ZER12) + Ye33*complexconjugate(ZER13)))', 
	 order = {'QED':1} ) 
 
GC_644 = Coupling(name = 'GC_644',
	 value = '-1*complex(0,1)*(ZP12*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + ZP11*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)))', 
	 order = {'QED':1} ) 
 
GC_645 = Coupling(name = 'GC_645',
	 value = '-1*complex(0,1)*(ZP22*(epsE11*complexconjugate(ZER21) + epsE21*complexconjugate(ZER22) + epsE31*complexconjugate(ZER23)) + ZP21*(Ye11*complexconjugate(ZER21) + Ye21*complexconjugate(ZER22) + Ye31*complexconjugate(ZER23)))', 
	 order = {'QED':1} ) 
 
GC_646 = Coupling(name = 'GC_646',
	 value = '-1*complex(0,1)*(ZP12*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + ZP11*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)))', 
	 order = {'QED':1} ) 
 
GC_647 = Coupling(name = 'GC_647',
	 value = '-1*complex(0,1)*(ZP22*(epsE12*complexconjugate(ZER21) + epsE22*complexconjugate(ZER22) + epsE32*complexconjugate(ZER23)) + ZP21*(Ye12*complexconjugate(ZER21) + Ye22*complexconjugate(ZER22) + Ye32*complexconjugate(ZER23)))', 
	 order = {'QED':1} ) 
 
GC_648 = Coupling(name = 'GC_648',
	 value = '-1*complex(0,1)*(ZP12*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23)) + ZP11*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23)))', 
	 order = {'QED':1} ) 
 
GC_649 = Coupling(name = 'GC_649',
	 value = '-1*complex(0,1)*(ZP22*(epsE13*complexconjugate(ZER21) + epsE23*complexconjugate(ZER22) + epsE33*complexconjugate(ZER23)) + ZP21*(Ye13*complexconjugate(ZER21) + Ye23*complexconjugate(ZER22) + Ye33*complexconjugate(ZER23)))', 
	 order = {'QED':1} ) 
 
GC_650 = Coupling(name = 'GC_650',
	 value = '-1*complex(0,1)*(ZP12*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + ZP11*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)))', 
	 order = {'QED':1} ) 
 
GC_651 = Coupling(name = 'GC_651',
	 value = '-1*complex(0,1)*(ZP22*(epsE11*complexconjugate(ZER31) + epsE21*complexconjugate(ZER32) + epsE31*complexconjugate(ZER33)) + ZP21*(Ye11*complexconjugate(ZER31) + Ye21*complexconjugate(ZER32) + Ye31*complexconjugate(ZER33)))', 
	 order = {'QED':1} ) 
 
GC_652 = Coupling(name = 'GC_652',
	 value = '-1*complex(0,1)*(ZP12*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + ZP11*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)))', 
	 order = {'QED':1} ) 
 
GC_653 = Coupling(name = 'GC_653',
	 value = '-1*complex(0,1)*(ZP22*(epsE12*complexconjugate(ZER31) + epsE22*complexconjugate(ZER32) + epsE32*complexconjugate(ZER33)) + ZP21*(Ye12*complexconjugate(ZER31) + Ye22*complexconjugate(ZER32) + Ye32*complexconjugate(ZER33)))', 
	 order = {'QED':1} ) 
 
GC_654 = Coupling(name = 'GC_654',
	 value = '-1*complex(0,1)*(ZP12*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33)) + ZP11*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33)))', 
	 order = {'QED':1} ) 
 
GC_655 = Coupling(name = 'GC_655',
	 value = '-1*complex(0,1)*(ZP22*(epsE13*complexconjugate(ZER31) + epsE23*complexconjugate(ZER32) + epsE33*complexconjugate(ZER33)) + ZP21*(Ye13*complexconjugate(ZER31) + Ye23*complexconjugate(ZER32) + Ye33*complexconjugate(ZER33)))', 
	 order = {'QED':1} ) 
 
GC_656 = Coupling(name = 'GC_656',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_657 = Coupling(name = 'GC_657',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_658 = Coupling(name = 'GC_658',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_659 = Coupling(name = 'GC_659',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_660 = Coupling(name = 'GC_660',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_661 = Coupling(name = 'GC_661',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_662 = Coupling(name = 'GC_662',
	 value = '1./6.*complex(0,1)*(g1*cmath.cos(TW) - 3*g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_663 = Coupling(name = 'GC_663',
	 value = '-1./3.*complex(0,1)*g1*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_664 = Coupling(name = 'GC_664',
	 value = '1./6.*complex(0,1)*(g1*cmath.cos(TW) - 3*g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_665 = Coupling(name = 'GC_665',
	 value = '-1./3.*complex(0,1)*g1*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_666 = Coupling(name = 'GC_666',
	 value = '1./6.*complex(0,1)*(g1*cmath.cos(TW) - 3*g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_667 = Coupling(name = 'GC_667',
	 value = '-1./3.*complex(0,1)*g1*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_668 = Coupling(name = 'GC_668',
	 value = '-1./6.*complex(0,1)*(3*g2*cmath.cos(TW) + g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_669 = Coupling(name = 'GC_669',
	 value = '1./3.*complex(0,1)*g1*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_670 = Coupling(name = 'GC_670',
	 value = '-1./6.*complex(0,1)*(3*g2*cmath.cos(TW) + g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_671 = Coupling(name = 'GC_671',
	 value = '1./3.*complex(0,1)*g1*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_672 = Coupling(name = 'GC_672',
	 value = '-1./6.*complex(0,1)*(3*g2*cmath.cos(TW) + g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_673 = Coupling(name = 'GC_673',
	 value = '1./3.*complex(0,1)*g1*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_674 = Coupling(name = 'GC_674',
	 value = '(1*complex(0,1)*g2*(ZUL11*complexconjugate(ZDL11) + ZUL12*complexconjugate(ZDL12) + ZUL13*complexconjugate(ZDL13)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_675 = Coupling(name = 'GC_675',
	 value = '(1*complex(0,1)*g2*(ZUL11*complexconjugate(ZDL21) + ZUL12*complexconjugate(ZDL22) + ZUL13*complexconjugate(ZDL23)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_676 = Coupling(name = 'GC_676',
	 value = '(1*complex(0,1)*g2*(ZUL11*complexconjugate(ZDL31) + ZUL12*complexconjugate(ZDL32) + ZUL13*complexconjugate(ZDL33)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_677 = Coupling(name = 'GC_677',
	 value = '(1*complex(0,1)*g2*(ZUL21*complexconjugate(ZDL11) + ZUL22*complexconjugate(ZDL12) + ZUL23*complexconjugate(ZDL13)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_678 = Coupling(name = 'GC_678',
	 value = '(1*complex(0,1)*g2*(ZUL21*complexconjugate(ZDL21) + ZUL22*complexconjugate(ZDL22) + ZUL23*complexconjugate(ZDL23)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_679 = Coupling(name = 'GC_679',
	 value = '(1*complex(0,1)*g2*(ZUL21*complexconjugate(ZDL31) + ZUL22*complexconjugate(ZDL32) + ZUL23*complexconjugate(ZDL33)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_680 = Coupling(name = 'GC_680',
	 value = '(1*complex(0,1)*g2*(ZUL31*complexconjugate(ZDL11) + ZUL32*complexconjugate(ZDL12) + ZUL33*complexconjugate(ZDL13)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_681 = Coupling(name = 'GC_681',
	 value = '(1*complex(0,1)*g2*(ZUL31*complexconjugate(ZDL21) + ZUL32*complexconjugate(ZDL22) + ZUL33*complexconjugate(ZDL23)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_682 = Coupling(name = 'GC_682',
	 value = '(1*complex(0,1)*g2*(ZUL31*complexconjugate(ZDL31) + ZUL32*complexconjugate(ZDL32) + ZUL33*complexconjugate(ZDL33)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_683 = Coupling(name = 'GC_683',
	 value = '-1./2.*complex(0,1)*(g1*cmath.cos(TW) + g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_684 = Coupling(name = 'GC_684',
	 value = '-1*complex(0,1)*g1*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_685 = Coupling(name = 'GC_685',
	 value = '-1./2.*complex(0,1)*(g1*cmath.cos(TW) + g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_686 = Coupling(name = 'GC_686',
	 value = '-1*complex(0,1)*g1*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_687 = Coupling(name = 'GC_687',
	 value = '-1./2.*complex(0,1)*(g1*cmath.cos(TW) + g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_688 = Coupling(name = 'GC_688',
	 value = '-1*complex(0,1)*g1*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_689 = Coupling(name = 'GC_689',
	 value = '-1./2.*complex(0,1)*(g2*cmath.cos(TW) - g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_690 = Coupling(name = 'GC_690',
	 value = '1*complex(0,1)*g1*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_691 = Coupling(name = 'GC_691',
	 value = '-1./2.*complex(0,1)*(g2*cmath.cos(TW) - g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_692 = Coupling(name = 'GC_692',
	 value = '1*complex(0,1)*g1*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_693 = Coupling(name = 'GC_693',
	 value = '-1./2.*complex(0,1)*(g2*cmath.cos(TW) - g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_694 = Coupling(name = 'GC_694',
	 value = '1*complex(0,1)*g1*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_695 = Coupling(name = 'GC_695',
	 value = '(1*complex(0,1)*g2*ZEL11)/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_696 = Coupling(name = 'GC_696',
	 value = '(1*complex(0,1)*g2*ZEL21)/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_697 = Coupling(name = 'GC_697',
	 value = '(1*complex(0,1)*g2*ZEL31)/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_698 = Coupling(name = 'GC_698',
	 value = '(1*complex(0,1)*g2*ZEL12)/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_699 = Coupling(name = 'GC_699',
	 value = '(1*complex(0,1)*g2*ZEL22)/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_700 = Coupling(name = 'GC_700',
	 value = '(1*complex(0,1)*g2*ZEL32)/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_701 = Coupling(name = 'GC_701',
	 value = '(1*complex(0,1)*g2*ZEL13)/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_702 = Coupling(name = 'GC_702',
	 value = '(1*complex(0,1)*g2*ZEL23)/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_703 = Coupling(name = 'GC_703',
	 value = '(1*complex(0,1)*g2*ZEL33)/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_704 = Coupling(name = 'GC_704',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_705 = Coupling(name = 'GC_705',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_706 = Coupling(name = 'GC_706',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_707 = Coupling(name = 'GC_707',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_708 = Coupling(name = 'GC_708',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_709 = Coupling(name = 'GC_709',
	 value = '1*complex(0,1)*G', 
	 order = {'QCD':1} ) 
 
GC_710 = Coupling(name = 'GC_710',
	 value = '1./6.*complex(0,1)*(g1*cmath.cos(TW) + 3*g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_711 = Coupling(name = 'GC_711',
	 value = '2./3.*complex(0,1)*g1*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_712 = Coupling(name = 'GC_712',
	 value = '1./6.*complex(0,1)*(g1*cmath.cos(TW) + 3*g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_713 = Coupling(name = 'GC_713',
	 value = '2./3.*complex(0,1)*g1*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_714 = Coupling(name = 'GC_714',
	 value = '1./6.*complex(0,1)*(g1*cmath.cos(TW) + 3*g2*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_715 = Coupling(name = 'GC_715',
	 value = '2./3.*complex(0,1)*g1*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_716 = Coupling(name = 'GC_716',
	 value = '(1*complex(0,1)*g2*(ZDL11*complexconjugate(ZUL11) + ZDL12*complexconjugate(ZUL12) + ZDL13*complexconjugate(ZUL13)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_717 = Coupling(name = 'GC_717',
	 value = '(1*complex(0,1)*g2*(ZDL11*complexconjugate(ZUL21) + ZDL12*complexconjugate(ZUL22) + ZDL13*complexconjugate(ZUL23)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_718 = Coupling(name = 'GC_718',
	 value = '(1*complex(0,1)*g2*(ZDL11*complexconjugate(ZUL31) + ZDL12*complexconjugate(ZUL32) + ZDL13*complexconjugate(ZUL33)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_719 = Coupling(name = 'GC_719',
	 value = '(1*complex(0,1)*g2*(ZDL21*complexconjugate(ZUL11) + ZDL22*complexconjugate(ZUL12) + ZDL23*complexconjugate(ZUL13)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_720 = Coupling(name = 'GC_720',
	 value = '(1*complex(0,1)*g2*(ZDL21*complexconjugate(ZUL21) + ZDL22*complexconjugate(ZUL22) + ZDL23*complexconjugate(ZUL23)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_721 = Coupling(name = 'GC_721',
	 value = '(1*complex(0,1)*g2*(ZDL21*complexconjugate(ZUL31) + ZDL22*complexconjugate(ZUL32) + ZDL23*complexconjugate(ZUL33)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_722 = Coupling(name = 'GC_722',
	 value = '(1*complex(0,1)*g2*(ZDL31*complexconjugate(ZUL11) + ZDL32*complexconjugate(ZUL12) + ZDL33*complexconjugate(ZUL13)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_723 = Coupling(name = 'GC_723',
	 value = '(1*complex(0,1)*g2*(ZDL31*complexconjugate(ZUL21) + ZDL32*complexconjugate(ZUL22) + ZDL33*complexconjugate(ZUL23)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_724 = Coupling(name = 'GC_724',
	 value = '(1*complex(0,1)*g2*(ZDL31*complexconjugate(ZUL31) + ZDL32*complexconjugate(ZUL32) + ZDL33*complexconjugate(ZUL33)))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_725 = Coupling(name = 'GC_725',
	 value = '1./6.*complex(0,1)*(3*g2*cmath.cos(TW) - g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_726 = Coupling(name = 'GC_726',
	 value = '-2./3.*complex(0,1)*g1*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_727 = Coupling(name = 'GC_727',
	 value = '1./6.*complex(0,1)*(3*g2*cmath.cos(TW) - g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_728 = Coupling(name = 'GC_728',
	 value = '-2./3.*complex(0,1)*g1*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_729 = Coupling(name = 'GC_729',
	 value = '1./6.*complex(0,1)*(3*g2*cmath.cos(TW) - g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_730 = Coupling(name = 'GC_730',
	 value = '-2./3.*complex(0,1)*g1*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_731 = Coupling(name = 'GC_731',
	 value = '(1*complex(0,1)*g2*complexconjugate(ZEL11))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_732 = Coupling(name = 'GC_732',
	 value = '(1*complex(0,1)*g2*complexconjugate(ZEL12))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_733 = Coupling(name = 'GC_733',
	 value = '(1*complex(0,1)*g2*complexconjugate(ZEL13))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_734 = Coupling(name = 'GC_734',
	 value = '(1*complex(0,1)*g2*complexconjugate(ZEL21))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_735 = Coupling(name = 'GC_735',
	 value = '(1*complex(0,1)*g2*complexconjugate(ZEL22))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_736 = Coupling(name = 'GC_736',
	 value = '(1*complex(0,1)*g2*complexconjugate(ZEL23))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_737 = Coupling(name = 'GC_737',
	 value = '(1*complex(0,1)*g2*complexconjugate(ZEL31))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_738 = Coupling(name = 'GC_738',
	 value = '(1*complex(0,1)*g2*complexconjugate(ZEL32))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_739 = Coupling(name = 'GC_739',
	 value = '(1*complex(0,1)*g2*complexconjugate(ZEL33))/cmath.sqrt(2)', 
	 order = {'QED':1} ) 
 
GC_740 = Coupling(name = 'GC_740',
	 value = '1./2.*complex(0,1)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_741 = Coupling(name = 'GC_741',
	 value = '1./2.*complex(0,1)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_742 = Coupling(name = 'GC_742',
	 value = '1./2.*complex(0,1)*(g2*cmath.cos(TW) + g1*cmath.sin(TW))', 
	 order = {'QED':1} ) 
 
GC_743 = Coupling(name = 'GC_743',
	 value = 'G', 
	 order = {'QCD':1} ) 
 
GC_744 = Coupling(name = 'GC_744',
	 value = '-1*complex(0,1)*g2*cmath.sin(TW)', 
	 order = {'QED':1} ) 
 
GC_745 = Coupling(name = 'GC_745',
	 value = '1*complex(0,1)*g2*cmath.cos(TW)', 
	 order = {'QED':1} ) 
 
GC_746 = Coupling(name = 'GC_746',
	 value = '-1*complex(0,1)*G**2', 
	 order = {'QCD':2} ) 
 
GC_747 = Coupling(name = 'GC_747',
	 value = '-1*complex(0,1)*G**2', 
	 order = {'QCD':2} ) 
 
GC_748 = Coupling(name = 'GC_748',
	 value = '1*complex(0,1)*G**2', 
	 order = {'QCD':2} ) 
 
GC_749 = Coupling(name = 'GC_749',
	 value = '-1*complex(0,1)*G**2', 
	 order = {'QCD':2} ) 
 
GC_750 = Coupling(name = 'GC_750',
	 value = '1*complex(0,1)*G**2', 
	 order = {'QCD':2} ) 
 
GC_751 = Coupling(name = 'GC_751',
	 value = '1*complex(0,1)*G**2', 
	 order = {'QCD':2} ) 
 
GC_752 = Coupling(name = 'GC_752',
	 value = '1*complex(0,1)*g2**2*cmath.sin(TW)**2', 
	 order = {'QED':2} ) 
 
GC_753 = Coupling(name = 'GC_753',
	 value = '1*complex(0,1)*g2**2*cmath.sin(TW)**2', 
	 order = {'QED':2} ) 
 
GC_754 = Coupling(name = 'GC_754',
	 value = '-2*complex(0,1)*g2**2*cmath.sin(TW)**2', 
	 order = {'QED':2} ) 
 
GC_755 = Coupling(name = 'GC_755',
	 value = '1*complex(0,1)*g2**2*cmath.cos(TW)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_756 = Coupling(name = 'GC_756',
	 value = '-1*complex(0,1)*g2**2*cmath.sin(2*TW)', 
	 order = {'QED':2} ) 
 
GC_757 = Coupling(name = 'GC_757',
	 value = '1*complex(0,1)*g2**2*cmath.cos(TW)*cmath.sin(TW)', 
	 order = {'QED':2} ) 
 
GC_758 = Coupling(name = 'GC_758',
	 value = '2*complex(0,1)*g2**2', 
	 order = {'QED':2} ) 
 
GC_759 = Coupling(name = 'GC_759',
	 value = '-1*complex(0,1)*g2**2', 
	 order = {'QED':2} ) 
 
GC_760 = Coupling(name = 'GC_760',
	 value = '-1*complex(0,1)*g2**2', 
	 order = {'QED':2} ) 
 
GC_761 = Coupling(name = 'GC_761',
	 value = '-2*complex(0,1)*g2**2*cmath.cos(TW)**2', 
	 order = {'QED':2} ) 
 
GC_762 = Coupling(name = 'GC_762',
	 value = '1*complex(0,1)*g2**2*cmath.cos(TW)**2', 
	 order = {'QED':2} ) 
 
GC_763 = Coupling(name = 'GC_763',
	 value = '1*complex(0,1)*g2**2*cmath.cos(TW)**2', 
	 order = {'QED':2} ) 
 
GC_764=Coupling(name='GC_764',
	 value='-(HPP1*complex(0,1))', 
	 order={'HIW':1})

GC_765=Coupling(name='GC_765',
	 value='-(HGG1*complex(0,1))', 
	 order={'HIG':1})

GC_766=Coupling(name='GC_766',
	 value='-(HPP2*complex(0,1))', 
	 order={'HIW':1})

GC_767=Coupling(name='GC_767',
	 value='-(HGG2*complex(0,1))', 
	 order={'HIG':1})

GC_768=Coupling(name='GC_768',
	 value='-(HPP3*complex(0,1))', 
	 order={'HIW':1})

GC_769=Coupling(name='GC_769',
	 value='-(HGG3*complex(0,1))', 
	 order={'HIG':1})

GC_770=Coupling(name='GC_770',
	 value='-(APP2*complex(0,1))', 
	 order={'HIW':1})

GC_771=Coupling(name='GC_771',
	 value='-(AGG2*complex(0,1))', 
	 order={'HIG':1})

GC_772=Coupling(name='GC_772',
	 value='-(APP3*complex(0,1))', 
	 order={'HIW':1})

GC_773=Coupling(name='GC_773',
	 value='-(AGG3*complex(0,1))', 
	 order={'HIG':1})

