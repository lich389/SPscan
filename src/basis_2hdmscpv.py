#%%
import numpy as np

class mx:
    R11 = 0
    R12 = 0
    R13 = 0
    R14 = 0
    R15 = 0
    R21 = 0
    R22 = 0
    R23 = 0
    R24 = 0
    R25 = 0
    R31 = 0
    R32 = 0
    R33 = 0
    R34 = 0
    R35 = 0
    R41 = 0
    R42 = 0
    R43 = 0
    R44 = 0
    R45 = 0
    R51 = 0
    R52 = 0
    R53 = 0
    R54 = 0
    R55 = 0
    m11sq = 0
    m12sq = 0
    m22sq = 0
    m13sq = 0
    m23sq = 0
    m33sq = 0
    m14sq = 0
    m24sq = 0
    m34sq = 0
    m44sq = 0
    m15sq = 0
    m25sq = 0
    m35sq = 0
    m45sq = 0
    m55sq = 0
    mutild = 0
    mhcsq = 0

def R(a12, a13, a23, a14, a24, a34, a15, a25, a35, a45):
    mx.R11 = np.cos(a12)*np.cos(a13)*np.cos(a14)*np.cos(a15)
    mx.R12 = np.cos(a13)*np.cos(a14)*np.cos(a15)*np.sin(a12)
    mx.R13 = np.cos(a14)*np.cos(a15)*np.sin(a13)
    mx.R14 = np.cos(a15)*np.sin(a14)
    mx.R15 = np.sin(a15)
    mx.R21 = -(np.cos(a23)*np.cos(a24)*np.cos(a25)*np.sin(a12)) + np.cos(a12)*(-(np.cos(a24)*np.cos(a25)*np.sin(a13)*np.sin(a23)) + np.cos(a13)*(-(np.cos(a25)*np.sin(a14)*np.sin(a24)) - np.cos(a14)*np.sin(a15)*np.sin(a25)))
    mx.R22 = np.cos(a12)*np.cos(a23)*np.cos(a24)*np.cos(a25) + np.sin(a12)*(-(np.cos(a24)*np.cos(a25)*np.sin(a13)*np.sin(a23)) + np.cos(a13)*(-(np.cos(a25)*np.sin(a14)*np.sin(a24)) - np.cos(a14)*np.sin(a15)*np.sin(a25)))
    mx.R23 = np.cos(a13)*np.cos(a24)*np.cos(a25)*np.sin(a23) + np.sin(a13)*(-(np.cos(a25)*np.sin(a14)*np.sin(a24)) - np.cos(a14)*np.sin(a15)*np.sin(a25))
    mx.R24 = np.cos(a14)*np.cos(a25)*np.sin(a24) - np.sin(a14)*np.sin(a15)*np.sin(a25)
    mx.R25 = np.cos(a15)*np.sin(a25)
    mx.R31 = -(np.sin(a12)*(-(np.cos(a34)*np.cos(a35)*np.sin(a23)) + np.cos(a23)*(-(np.cos(a35)*np.sin(a24)*np.sin(a34)) - np.cos(a24)*np.sin(a25)*np.sin(a35))))+ np.cos(a12)*(-(np.sin(a13)*(np.cos(a23)*np.cos(a34)*np.cos(a35) + np.sin(a23)*(-(np.cos(a35)*np.sin(a24)*np.sin(a34)) - np.cos(a24)*np.sin(a25)*np.sin(a35)))) + np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.sin(a15)*np.sin(a35)) - np.sin(a14)*(np.cos(a24)*np.cos(a35)*np.sin(a34) - np.sin(a24)*np.sin(a25)*np.sin(a35))))
    mx.R32 = np.cos(a12)*(-(np.cos(a34)*np.cos(a35)*np.sin(a23)) + np.cos(a23)*(-(np.cos(a35)*np.sin(a24)*np.sin(a34)) - np.cos(a24)*np.sin(a25)*np.sin(a35))) + np.sin(a12)*(-(np.sin(a13)*(np.cos(a23)*np.cos(a34)*np.cos(a35) + np.sin(a23)*(-(np.cos(a35)*np.sin(a24)*np.sin(a34)) - np.cos(a24)*np.sin(a25)*np.sin(a35)))) + np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.sin(a15)*np.sin(a35)) - np.sin(a14)*(np.cos(a24)*np.cos(a35)*np.sin(a34) - np.sin(a24)*np.sin(a25)*np.sin(a35))))
    mx.R33 = np.cos(a13)*(np.cos(a23)*np.cos(a34)*np.cos(a35) + np.sin(a23)*(-(np.cos(a35)*np.sin(a24)*np.sin(a34)) - np.cos(a24)*np.sin(a25)*np.sin(a35))) + np.sin(a13)*(-(np.cos(a14)*np.cos(a25)*np.sin(a15)*np.sin(a35)) - np.sin(a14)*(np.cos(a24)*np.cos(a35)*np.sin(a34) - np.sin(a24)*np.sin(a25)*np.sin(a35)))
    mx.R34 = -(np.cos(a25)*np.sin(a14)*np.sin(a15)*np.sin(a35)) + np.cos(a14)*(np.cos(a24)*np.cos(a35)*np.sin(a34) - np.sin(a24)*np.sin(a25)*np.sin(a35))
    mx.R35 = np.cos(a15)*np.cos(a25)*np.sin(a35)
    mx.R41 = -(np.sin(a12)*(-(np.sin(a23)*(-(np.cos(a45)*np.sin(a34)) - np.cos(a34)*np.sin(a35)*np.sin(a45))) + np.cos(a23)*(-(np.cos(a24)*np.cos(a35)*np.sin(a25)*np.sin(a45)) - np.sin(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45))))) + np.cos(a12)*(np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.sin(a15)*np.sin(a45)) - np.sin(a14)*(-(np.cos(a35)*np.sin(a24)*np.sin(a25)*np.sin(a45)) + np.cos(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))) - np.sin(a13)*(np.cos(a23)*(-(np.cos(a45)*np.sin(a34)) - np.cos(a34)*np.sin(a35)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.sin(a25)*np.sin(a45)) - np.sin(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))))
    mx.R42 = np.cos(a12)*(-(np.sin(a23)*(-(np.cos(a45)*np.sin(a34)) - np.cos(a34)*np.sin(a35)*np.sin(a45))) + np.cos(a23)*(-(np.cos(a24)*np.cos(a35)*np.sin(a25)*np.sin(a45)) - np.sin(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))) + np.sin(a12)*(np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.sin(a15)*np.sin(a45)) - np.sin(a14)*(-(np.cos(a35)*np.sin(a24)*np.sin(a25)*np.sin(a45)) + np.cos(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))) - np.sin(a13)*(np.cos(a23)*(-(np.cos(a45)*np.sin(a34)) - np.cos(a34)*np.sin(a35)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.sin(a25)*np.sin(a45)) - np.sin(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))))
    mx.R43 = np.sin(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.sin(a15)*np.sin(a45)) - np.sin(a14)*(-(np.cos(a35)*np.sin(a24)*np.sin(a25)*np.sin(a45)) + np.cos(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))) + np.cos(a13)*(np.cos(a23)*(-(np.cos(a45)*np.sin(a34)) - np.cos(a34)*np.sin(a35)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.sin(a25)*np.sin(a45)) - np.sin(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45))))
    mx.R44 = -(np.cos(a25)*np.cos(a35)*np.sin(a14)*np.sin(a15)*np.sin(a45)) + np.cos(a14)*(-(np.cos(a35)*np.sin(a24)*np.sin(a25)*np.sin(a45)) + np.cos(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))
    mx.R45 = np.cos(a15)*np.cos(a25)*np.cos(a35)*np.sin(a45)
    mx.R51 = -(np.sin(a12)*(-(np.sin(a23)*(-(np.cos(a34)*np.cos(a45)*np.sin(a35)) + np.sin(a34)*np.sin(a45))) + np.cos(a23)*(-(np.cos(a24)*np.cos(a35)*np.cos(a45)*np.sin(a25)) - np.sin(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45))))) + np.cos(a12)*(np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.cos(a45)*np.sin(a15)) - np.sin(a14)*(-(np.cos(a35)*np.cos(a45)*np.sin(a24)*np.sin(a25)) + np.cos(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))) - np.sin(a13)*(np.cos(a23)*(-(np.cos(a34)*np.cos(a45)*np.sin(a35)) + np.sin(a34)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.cos(a45)*np.sin(a25)) - np.sin(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))))
    mx.R52 = np.cos(a12)*(-(np.sin(a23)*(-(np.cos(a34)*np.cos(a45)*np.sin(a35)) + np.sin(a34)*np.sin(a45))) + np.cos(a23)*(-(np.cos(a24)*np.cos(a35)*np.cos(a45)*np.sin(a25)) - np.sin(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))) + np.sin(a12)*(np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.cos(a45)*np.sin(a15)) - np.sin(a14)*(-(np.cos(a35)*np.cos(a45)*np.sin(a24)*np.sin(a25)) + np.cos(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))) - np.sin(a13)*(np.cos(a23)*(-(np.cos(a34)*np.cos(a45)*np.sin(a35)) + np.sin(a34)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.cos(a45)*np.sin(a25)) - np.sin(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))))
    mx.R53 = np.sin(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.cos(a45)*np.sin(a15)) - np.sin(a14)*(-(np.cos(a35)*np.cos(a45)*np.sin(a24)*np.sin(a25)) + np.cos(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))) + np.cos(a13)*(np.cos(a23)*(-(np.cos(a34)*np.cos(a45)*np.sin(a35)) + np.sin(a34)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.cos(a45)*np.sin(a25)) - np.sin(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45))))
    mx.R54 = -(np.cos(a25)*np.cos(a35)*np.cos(a45)*np.sin(a14)*np.sin(a15)) + np.cos(a14)*(-(np.cos(a35)*np.cos(a45)*np.sin(a24)*np.sin(a25)) + np.cos(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))
    mx.R55 = np.cos(a15)*np.cos(a25)*np.cos(a35)*np.cos(a45)


class ipc:
    def __init__(self, impar, ang):
        self.a = ang
        self.rep = impar[0]
        self.imp = impar[1]

    def re(self):
        return self.rep*np.cos(self.a)-self.imp*np.sin(self.a)
    
    def im(self):
        return self.imp*np.cos(self.a)+self.rep*np.sin(self.a)
    

class pci:
    def __init__(self, par, pai, ang):
        self.a = ang
        self.re = par
        self.im = pai
    def impar(self):
        return [self.re*np.cos(self.a)+self.im*np.sin(self.a), self.im*np.cos(self.a)-self.re*np.sin(self.a)]

def massbasis(mh1, mh2, mh3, mh4, mh5, mhp, mut):
    # print(mh1,mh2,mh3)
    mx.m11sq = (mh1*mx.R11)**2 + (mh2*mx.R21)**2 + (mh3*mx.R31)**2 + (mh4*mx.R41)**2 + (mh5*mx.R51)**2
    mx.m22sq = (mh1*mx.R12)**2 + (mh2*mx.R22)**2 + (mh3*mx.R32)**2 + (mh4*mx.R42)**2 + (mh5*mx.R52)**2
    mx.m33sq = (mh1*mx.R13)**2 + (mh2*mx.R23)**2 + (mh3*mx.R33)**2 + (mh4*mx.R43)**2 + (mh5*mx.R53)**2
    mx.m44sq = (mh1*mx.R14)**2 + (mh2*mx.R24)**2 + (mh3*mx.R34)**2 + (mh4*mx.R44)**2 + (mh5*mx.R54)**2
    mx.m55sq = (mh1*mx.R15)**2 + (mh2*mx.R25)**2 + (mh3*mx.R35)**2 + (mh4*mx.R45)**2 + (mh5*mx.R55)**2
    mx.m12sq = (mh1)**2 *mx.R11*mx.R12 + (mh2)**2 *mx.R21*mx.R22 + (mh3)**2 *mx.R31*mx.R32 + (mh4)**2 *mx.R41*mx.R42 + (mh5)**2 *mx.R51*mx.R52
    mx.m13sq = (mh1)**2 *mx.R11*mx.R13 + (mh2)**2 *mx.R21*mx.R23 + (mh3)**2 *mx.R31*mx.R33 + (mh4)**2 *mx.R41*mx.R43 + (mh5)**2 *mx.R51*mx.R53
    mx.m14sq = (mh1)**2 *mx.R11*mx.R14 + (mh2)**2 *mx.R21*mx.R24 + (mh3)**2 *mx.R31*mx.R34 + (mh4)**2 *mx.R41*mx.R44 + (mh5)**2 *mx.R51*mx.R54
    mx.m15sq = (mh1)**2 *mx.R11*mx.R15 + (mh2)**2 *mx.R21*mx.R25 + (mh3)**2 *mx.R31*mx.R35 + (mh4)**2 *mx.R41*mx.R45 + (mh5)**2 *mx.R51*mx.R55
    mx.m23sq = (mh1)**2 *mx.R12*mx.R13 + (mh2)**2 *mx.R22*mx.R23 + (mh3)**2 *mx.R32*mx.R33 + (mh4)**2 *mx.R42*mx.R43 + (mh5)**2 *mx.R52*mx.R53
    mx.m24sq = (mh1)**2 *mx.R12*mx.R14 + (mh2)**2 *mx.R22*mx.R24 + (mh3)**2 *mx.R32*mx.R34 + (mh4)**2 *mx.R42*mx.R44 + (mh5)**2 *mx.R52*mx.R54
    mx.m25sq = (mh1)**2 *mx.R12*mx.R15 + (mh2)**2 *mx.R22*mx.R25 + (mh3)**2 *mx.R32*mx.R35 + (mh4)**2 *mx.R42*mx.R45 + (mh5)**2 *mx.R52*mx.R55
    mx.m34sq = (mh1)**2 *mx.R13*mx.R14 + (mh2)**2 *mx.R23*mx.R24 + (mh3)**2 *mx.R33*mx.R34 + (mh4)**2 *mx.R43*mx.R44 + (mh5)**2 *mx.R53*mx.R54
    mx.m35sq = (mh1)**2 *mx.R13*mx.R15 + (mh2)**2 *mx.R23*mx.R25 + (mh3)**2 *mx.R33*mx.R35 + (mh4)**2 *mx.R43*mx.R45 + (mh5)**2 *mx.R53*mx.R55
    mx.m45sq = (mh1)**2 *mx.R14*mx.R15 + (mh2)**2 *mx.R24*mx.R25 + (mh3)**2 *mx.R34*mx.R35 + (mh4)**2 *mx.R44*mx.R45 + (mh5)**2 *mx.R54*mx.R55
    mx.mhcsq = mhp**2
    mx.mutild = mut**2



def basischange(mspar, intp):
    a12 = np.arctan(intp.tb) - np.arccos(mspar.cba12)
    R(a12, mspar.a13, mspar.a23, mspar.a14, mspar.a24, mspar.a34, mspar.a15, mspar.a25, mspar.a35, mspar.a45)
    massbasis(mspar.mh1, mspar.mh2, mspar.mh3,mspar.mh4,mspar.mh5, mspar.mhp, mspar.mut)

    
    ### extra inputs
    iml5 = mspar.iml5
    rel6 = mspar.rel6
    rel7 = mspar.rel7
    rel1pp = mspar.rel1pp
    # rel3p = mspar.rel3p
    rel4p = mspar.rel4p
    rel5p = mspar.rel5p
    # iml7p = mspar.iml7p
    ### extra complex parameters
    l2ppc = ipc(intp.l2pp,2*intp.zeta)
    l3pc = ipc(intp.l3p, -intp.eta)
    l6pc = ipc(intp.l6p,(2*intp.zeta-intp.eta))
    mu12c = ipc(intp.mu12, (intp.zeta-intp.eta))
    mu21c = ipc(intp.mu21, (intp.zeta+intp.eta))
    mu11c = ipc(intp.mu11, (intp.zeta))
    mu22c = ipc(intp.mu22, (intp.zeta))
    mus1c = ipc(intp.mus1, (3*intp.zeta))
    mus2c = ipc(intp.mus2, (intp.zeta))

    remu12 = mu12c.re()
    remu21 = mu21c.re()
    remu11 = mu11c.re()
    remu22 = mu22c.re()
    remus1 = mus1c.re()
    remus2 = mus2c.re()
    immu12 = mu12c.im()
    immu21 = mu21c.im()
    immu11 = mu11c.im()
    immu22 = mu22c.im()
    immus1 = mus1c.im()
    immus2 = mus2c.im()

    rel2pp = l2ppc.re()
    iml2pp = l2ppc.im()
    rel3p = l3pc.re()
    iml3p = l3pc.im()
    rel6p = l6pc.re()
    iml6p = l6pc.im()


    def Csc(x):
        return 1/np.sin(x)

    rel7p = (mx.m45sq + remu12*intp.v - remu21*intp.v + 2*rel6p*intp.v*intp.vS)/(2.*intp.v*intp.vS)
    rem12 = (mx.mutild*intp.tb)/(1 + intp.tb**2) + intp.vS*(remu12 + remu21 + (rel3p + rel6p + rel7p)*intp.vS)
    intp.l1 = (2*mx.m11sq*(1 + intp.tb**2) + intp.tb*(-2*mx.mutild*intp.tb + (-3*rel6 + rel7*intp.tb**2)*intp.v**2))/(2.*intp.v**2)
    intp.l2 = (-4*mx.mutild*intp.tb + 4*mx.m22sq*(intp.tb + intp.tb**3) + 2*(rel6 - 3*rel7*intp.tb**2)*intp.v**2)/((1 + intp.tb**2)*intp.v**2*(3*intp.tb - np.sqrt(1 + intp.tb**2)*np.sin(3*np.arctan(intp.tb))))
    rel5 = ((-4*mx.m44sq*intp.tb + 4*mx.mutild*intp.tb - 2*rel6*intp.v**2 - rel7*intp.v**2 - rel7*intp.tb**2*intp.v**2 + rel7*(1 + intp.tb**2)*intp.v**2*np.cos(2*np.arctan(intp.tb)))*Csc(2*np.arctan(intp.tb)))/(2.*(1 + intp.tb**2)*intp.v**2)
    intp.l4 = -rel5 - rel6/intp.tb - rel7*intp.tb - (2*mx.mhcsq)/intp.v**2 + (2*mx.mutild)/intp.v**2
    intp.l3 = ((4*mx.m12sq + 4*mx.mutild*intp.tb + 4*mx.m12sq*intp.tb**2 - 6*rel6*intp.v**2 - 3*rel7*intp.v**2 - 4*(intp.l4 + rel5)*intp.tb*intp.v**2 - 3*rel7*intp.tb**2*intp.v**2 + 3*rel7*(1 + intp.tb**2)*intp.v**2*np.cos(2*np.arctan(intp.tb)))*Csc(2*np.arctan(intp.tb)))/(2.*(1 + intp.tb**2)*intp.v**2)

    intp.l3pp = ((3*remu11*intp.v**2)/(1 + intp.tb**2) + (3*remu12*intp.tb*intp.v**2)/(1 + intp.tb**2) + (3*remu21*intp.tb*intp.v**2)/(1 + intp.tb**2) + (3*remu22*intp.tb**2*intp.v**2)/(1 + intp.tb**2) + 3*mx.m33sq*intp.vS - 3*remus1*intp.vS**2 - 9*remus2*intp.vS**2 - 2*rel1pp*intp.vS**3 - 8*rel2pp*intp.vS**3)/(6.*intp.vS**3)
    intp.l1p = (mx.m13sq*np.sqrt(1 + intp.tb**2) - intp.v*(2*remu11 + remu12*intp.tb + remu21*intp.tb + 4*rel4p*intp.vS + 2*rel3p*intp.tb*intp.vS + 2*rel6p*intp.tb*intp.vS + 2*rel7p*intp.tb*intp.vS))/(2.*intp.v*intp.vS)
    intp.l2p = (mx.m23sq*np.sqrt(1 + intp.tb**2) - intp.v*(remu12 + remu21 + 2*remu22*intp.tb + 2*(rel3p + rel6p + rel7p + 2*rel5p*intp.tb)*intp.vS))/(2.*intp.tb*intp.v*intp.vS)

    remsp = (-mx.m55sq - 2*rel5p*intp.v**2 - (4*rel4p*intp.v**2)/(1 + intp.tb**2) - (remu11*intp.v**2)/(2.*intp.vS) - (remu22*intp.v**2)/(2.*intp.vS) - 3*remus1*intp.vS - remus2*intp.vS - (4*rel1pp*intp.vS**2)/3. - (4*rel2pp*intp.vS**2)/3. - (intp.v**2*(remu11 - remu22 - 4*rel5p*intp.vS)*np.cos(2*np.arctan(intp.tb)))/(2.*intp.vS) - 2*rel6p*intp.v**2*np.sin(2*np.arctan(intp.tb)) - 2*rel7p*intp.v**2*np.sin(2*np.arctan(intp.tb)) - (remu12*intp.v**2*np.sin(2*np.arctan(intp.tb)))/(2.*intp.vS) - (remu21*intp.v**2*np.sin(2*np.arctan(intp.tb)))/(2.*intp.vS))/4.

    iml6 = (-2*mx.m14sq*np.sqrt(1 + intp.tb**2) - iml5*intp.tb*intp.v**2)/(2.*intp.v**2)
    iml7 = (-2*mx.m24sq*np.sqrt(1 + intp.tb**2) - iml5*intp.v**2)/(2.*intp.tb*intp.v**2)

    # iml3p = (-mx.m34sq - immu12*intp.v + immu21*intp.v - 2*iml6p*intp.v*intp.vS + 2*iml7p*intp.v*intp.vS)/(2.*intp.v*intp.vS)
    iml7p = iml3p + (mx.m34sq + immu12*intp.v - immu21*intp.v )/(2.*intp.v*intp.vS)+ iml6p

    iml4p = (-(mx.m15sq*np.sqrt(1 + intp.tb**2)) - 2*immu11*intp.v - immu12*intp.tb*intp.v - immu21*intp.tb*intp.v - 2*iml6p*intp.tb*intp.v*intp.vS - 2*iml7p*intp.tb*intp.v*intp.vS)/(4.*intp.v*intp.vS)
    iml5p = (-(mx.m25sq*np.sqrt(1 + intp.tb**2)) - immu12*intp.v - immu21*intp.v - 2*immu22*intp.tb*intp.v - 2*iml6p*intp.v*intp.vS - 2*iml7p*intp.v*intp.vS)/(4.*intp.tb*intp.v*intp.vS)
    iml1pp = (6*immu11*intp.v**2 + 6*immu22*intp.tb**2*intp.v**2 - 6*mx.m35sq*intp.vS - 6*mx.m35sq*intp.tb**2*intp.vS - 6*immus1*intp.vS**2 - 6*immus2*intp.vS**2 - 6*immus1*intp.tb**2*intp.vS**2 - 6*immus2*intp.tb**2*intp.vS**2 - 8*iml2pp*intp.vS**3 - 8*iml2pp*intp.tb**2*intp.vS**3 + 3*immu12*intp.v**2*np.sin(2*np.arctan(intp.tb)) + 3*immu21*intp.v**2*np.sin(2*np.arctan(intp.tb)) + 3*immu12*intp.tb**2*intp.v**2*np.sin(2*np.arctan(intp.tb)) + 3*immu21*intp.tb**2*intp.v**2*np.sin(2*np.arctan(intp.tb)))/(4.*(1 + intp.tb**2)*intp.vS**3)



    imm12 = 1/2 * ((intp.tb* iml5 + iml6 + intp.tb**2 * iml7)*intp.v**2/(1+intp.tb**2) + 2*intp.vS**2 * (iml3p + iml7p + iml6p) + 2*intp.vS * (immu12-immu21))
    immsp = -1/(6*(intp.tb**2)*intp.vS) *(6*(intp.v**2)*intp.vS*(iml4p +intp.tb**2*iml5p + intp.tb*(iml6p+iml7p) ) + (1+intp.tb**2)*intp.vS**3*(iml1pp+2*iml2pp) + 3*(intp.v**2)*(immu11 + intp.tb*immu12+intp.tb*immu21 + intp.tb**2 * immu22) + 3*(1+intp.tb**2)*intp.vS**2 * (immus1+immus2) )

    intp.l5  = pci(rel5, iml5,  -2*intp.eta).impar()
    intp.l6  = pci(rel6, iml6,  -1*intp.eta).impar()
    intp.l7  = pci(rel7, iml7,  -1*intp.eta).impar()
    intp.msp = pci(remsp, immsp,  2*intp.zeta).impar()[0]
    intp.m12 = pci(rem12, imm12, -1*intp.eta).impar()[0]
    intp.l1pp= pci(rel1pp, iml1pp,  4*intp.zeta).impar()
    # intp.l3p = pci(rel3p, iml3p,  -1*intp.eta).impar()
    intp.l4p = pci(rel4p, iml4p,  2*intp.zeta).impar()
    intp.l5p = pci(rel5p, iml5p,  2*intp.zeta).impar()
    intp.l7p = pci(rel7p, iml7p,  (2*intp.zeta+intp.eta)).impar()
# %%

# class intp:
#     # real input parameter
#     v = 2.46220569E+02
#     tb = 0
#     vS = 0
#     eta = 0
#     zeta = 0
#     m12 = 0
#     l1  = 0 # 1,1
#     l2  = 0 # 2,2
#     l3  = 0 # 1,2
#     l4  = 0 # mp
#     l1p = 0 # 1,3
#     l2p = 0 # 2,3
#     l3pp= 0 # 3,3
#     # complex input parameter
#     l5  = [0,0] # 4,4
#     l6  = [0,0] # 1,4
#     l7  = [0,0] # 2,4
#     l3p = [0,0] # 3,4
#     l4p = [0,0] # 1,5
#     l5p = [0,0] # 2,5
#     l1pp= [0,0] # 3,5
#     l7p = [0,0] # 4,5
#     msp = [0,0] # 5,5
#     # complex ext parameter
#     l6p = [0,0]
#     l2pp= [0,0]
#     mu11= [0,0]
#     mu12= [0,0]
#     mu21= [0,0]
#     mu22= [0,0]
#     mus1= [0,0]
#     mus2= [0,0]
# class mspar:
#     mh1 = 800
#     mh2 = 125
#     mh3 = 95
#     mh4 = 800
#     mh5 = 400
#     mhp = 800
#     mut = 800
#     cba12 = 0
#     a13 = 0.0
#     a23 = 0.0
#     a14 = 0.0
#     a24 = 0
#     a34 = 0
#     a15 = 0.0
#     a25 = 0.0
#     a35 = 0.0
#     a45 = 0.0

#     iml5   = 0.0
#     rel6   = 0
#     rel7   = 0
#     immsp  = 0
#     rel1pp = 0
#     rel3p  = 0
#     rel4p  = 0
#     rel5p  = 0
#     iml7p  = 0

# intp.tb = 1
# intp.vS = 500
# intp.zeta = 0.0
# intp.eta = 0.1
# basischange(mspar)

# print(intp.l1)
# print(intp.l2)
# print(intp.l3)
# print(intp.l4)
# print(intp.l5)
# print(intp.l6)
# print(intp.l7)
# print(intp.l1p)
# print(intp.l2p)
# print(intp.l3p)
# print(intp.l4p)
# print(intp.l5p)
# print(intp.l6p)
# print(intp.l7p)
# print(intp.l1pp)
# print(intp.l2pp)
# print(intp.l3pp)
# print(intp.m12)
# print(intp.msp)
# # %%
# print(intp.mu11)
# print(intp.mu12)
# print(intp.mu21)
# print(intp.mu22)
# print(intp.mus1)
# print(intp.mus2)
# %%
