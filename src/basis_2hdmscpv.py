#%%
import numpy as np

class complex:
    def __init__(self, re, im, arg=0):
        self.re = re*np.cos(arg) - im*np.sin(arg)
        self.im = im*np.cos(arg) + re*np.sin(arg)
        # self.a = arg
    def Re(self):
        return self.re
    def Im(self):
        return self.im
    def arg(self):
        if self.re ==0 and self.im > 0:
            return np.pi/2
        elif self.re ==0 and self.im < 0:
            return -np.pi/2
        elif self.re ==0 and self.im == 0:
            return 0
        else:
            return np.arctan(self.im/self.re)
    def abs(self):
        return np.sqrt(self.re**2 + self.im**2)
    
    def phse(self, a):
        re = self.re*np.cos(a) - self.im*np.sin(a)
        im = self.im*np.cos(a) + self.re*np.sin(a)
        return complex(re, im)

    



class input:
    def __init__(self,a12, a13, a23, a14, a24, a34, a15, a25, a35, a45,mh1,mh2,mh3,mh4,mh5,mhc,mut,tb,vs,xi,xis,type,
                 iml5 = 0, rel6 = 0, rel7 = 0, rel1pp = 0, iml1pp=0, rel4p = 0, rel5p = 0, iml7p = 0,remsp = 0):
        self.v = 246.2205691
        self.a12 = a12
        self.a13 = a13
        self.a23 = a23
        self.a14 = a14
        self.a24 = a24
        self.a34 = a34
        self.a15 = a15
        self.a25 = a25
        self.a35 = a35
        self.a45 = a45
        self.mh1 = mh1
        self.mh2 = mh2
        self.mh3 = mh3
        self.mh4 = mh4
        self.mh5 = mh5
        self.mhp = mhc
        self.mut = mut
        self.tb = tb
        self.beta = np.arctan(tb)
        self.vS = vs
        self.zeta = xis
        self.eta = xi

        self.iml5 = iml5
        self.rel6 = rel6
        self.rel7 = rel7
        self.rel1pp = rel1pp
        self.iml1pp = iml1pp
        self.rel4p = rel4p
        self.rel5p = rel5p
        # self.iml7p = iml7p
        self.remsp = remsp

        self.l2pp= complex(0,0)
        self.l3p = complex(0,0)
        self.l6p = complex(0,0)
        self.l7p = complex(0,0)
        self.mu11= complex(0,0)
        # self.mu12= complex(0,0)
        self.mu21= complex(0,0)
        self.mu22= complex(0,0)
        # self.mus1= complex(0,0)
        self.mus2= complex(0,0)


        self.zui = 0
        self.zdi = 0
        self.zei = 0
        if type == -1:
            self.zur = 0
            self.zdr = 0
            self.zer = 0
        if type == 1:
            self.zur = 1/self.tb
            self.zdr = 1/self.tb
            self.zer = 1/self.tb
        if type == 2:
            self.zur = 1/self.tb
            self.zdr =  -self.tb
            self.zer =  -self.tb
        if type == 3:
            self.zur = 1/self.tb
            self.zdr = 1/self.tb
            self.zer =  -self.tb
        if type == 4:
            self.zur = 1/self.tb
            self.zdr =  -self.tb
            self.zer = 1/self.tb

    # def R(self):
        self.R11 = np.cos(a12)*np.cos(a13)*np.cos(a14)*np.cos(a15)
        self.R12 = np.cos(a13)*np.cos(a14)*np.cos(a15)*np.sin(a12)
        self.R13 = np.cos(a14)*np.cos(a15)*np.sin(a13)
        self.R14 = np.cos(a15)*np.sin(a14)
        self.R15 = np.sin(a15)
        self.R21 = -(np.cos(a23)*np.cos(a24)*np.cos(a25)*np.sin(a12)) + np.cos(a12)*(-(np.cos(a24)*np.cos(a25)*np.sin(a13)*np.sin(a23)) + np.cos(a13)*(-(np.cos(a25)*np.sin(a14)*np.sin(a24)) - np.cos(a14)*np.sin(a15)*np.sin(a25)))
        self.R22 = np.cos(a12)*np.cos(a23)*np.cos(a24)*np.cos(a25) + np.sin(a12)*(-(np.cos(a24)*np.cos(a25)*np.sin(a13)*np.sin(a23)) + np.cos(a13)*(-(np.cos(a25)*np.sin(a14)*np.sin(a24)) - np.cos(a14)*np.sin(a15)*np.sin(a25)))
        self.R23 = np.cos(a13)*np.cos(a24)*np.cos(a25)*np.sin(a23) + np.sin(a13)*(-(np.cos(a25)*np.sin(a14)*np.sin(a24)) - np.cos(a14)*np.sin(a15)*np.sin(a25))
        self.R24 = np.cos(a14)*np.cos(a25)*np.sin(a24) - np.sin(a14)*np.sin(a15)*np.sin(a25)
        self.R25 = np.cos(a15)*np.sin(a25)
        self.R31 = -(np.sin(a12)*(-(np.cos(a34)*np.cos(a35)*np.sin(a23)) + np.cos(a23)*(-(np.cos(a35)*np.sin(a24)*np.sin(a34)) - np.cos(a24)*np.sin(a25)*np.sin(a35))))+ np.cos(a12)*(-(np.sin(a13)*(np.cos(a23)*np.cos(a34)*np.cos(a35) + np.sin(a23)*(-(np.cos(a35)*np.sin(a24)*np.sin(a34)) - np.cos(a24)*np.sin(a25)*np.sin(a35)))) + np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.sin(a15)*np.sin(a35)) - np.sin(a14)*(np.cos(a24)*np.cos(a35)*np.sin(a34) - np.sin(a24)*np.sin(a25)*np.sin(a35))))
        self.R32 = np.cos(a12)*(-(np.cos(a34)*np.cos(a35)*np.sin(a23)) + np.cos(a23)*(-(np.cos(a35)*np.sin(a24)*np.sin(a34)) - np.cos(a24)*np.sin(a25)*np.sin(a35))) + np.sin(a12)*(-(np.sin(a13)*(np.cos(a23)*np.cos(a34)*np.cos(a35) + np.sin(a23)*(-(np.cos(a35)*np.sin(a24)*np.sin(a34)) - np.cos(a24)*np.sin(a25)*np.sin(a35)))) + np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.sin(a15)*np.sin(a35)) - np.sin(a14)*(np.cos(a24)*np.cos(a35)*np.sin(a34) - np.sin(a24)*np.sin(a25)*np.sin(a35))))
        self.R33 = np.cos(a13)*(np.cos(a23)*np.cos(a34)*np.cos(a35) + np.sin(a23)*(-(np.cos(a35)*np.sin(a24)*np.sin(a34)) - np.cos(a24)*np.sin(a25)*np.sin(a35))) + np.sin(a13)*(-(np.cos(a14)*np.cos(a25)*np.sin(a15)*np.sin(a35)) - np.sin(a14)*(np.cos(a24)*np.cos(a35)*np.sin(a34) - np.sin(a24)*np.sin(a25)*np.sin(a35)))
        self.R34 = -(np.cos(a25)*np.sin(a14)*np.sin(a15)*np.sin(a35)) + np.cos(a14)*(np.cos(a24)*np.cos(a35)*np.sin(a34) - np.sin(a24)*np.sin(a25)*np.sin(a35))
        self.R35 = np.cos(a15)*np.cos(a25)*np.sin(a35)
        self.R41 = -(np.sin(a12)*(-(np.sin(a23)*(-(np.cos(a45)*np.sin(a34)) - np.cos(a34)*np.sin(a35)*np.sin(a45))) + np.cos(a23)*(-(np.cos(a24)*np.cos(a35)*np.sin(a25)*np.sin(a45)) - np.sin(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45))))) + np.cos(a12)*(np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.sin(a15)*np.sin(a45)) - np.sin(a14)*(-(np.cos(a35)*np.sin(a24)*np.sin(a25)*np.sin(a45)) + np.cos(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))) - np.sin(a13)*(np.cos(a23)*(-(np.cos(a45)*np.sin(a34)) - np.cos(a34)*np.sin(a35)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.sin(a25)*np.sin(a45)) - np.sin(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))))
        self.R42 = np.cos(a12)*(-(np.sin(a23)*(-(np.cos(a45)*np.sin(a34)) - np.cos(a34)*np.sin(a35)*np.sin(a45))) + np.cos(a23)*(-(np.cos(a24)*np.cos(a35)*np.sin(a25)*np.sin(a45)) - np.sin(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))) + np.sin(a12)*(np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.sin(a15)*np.sin(a45)) - np.sin(a14)*(-(np.cos(a35)*np.sin(a24)*np.sin(a25)*np.sin(a45)) + np.cos(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))) - np.sin(a13)*(np.cos(a23)*(-(np.cos(a45)*np.sin(a34)) - np.cos(a34)*np.sin(a35)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.sin(a25)*np.sin(a45)) - np.sin(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))))
        self.R43 = np.sin(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.sin(a15)*np.sin(a45)) - np.sin(a14)*(-(np.cos(a35)*np.sin(a24)*np.sin(a25)*np.sin(a45)) + np.cos(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))) + np.cos(a13)*(np.cos(a23)*(-(np.cos(a45)*np.sin(a34)) - np.cos(a34)*np.sin(a35)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.sin(a25)*np.sin(a45)) - np.sin(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45))))
        self.R44 = -(np.cos(a25)*np.cos(a35)*np.sin(a14)*np.sin(a15)*np.sin(a45)) + np.cos(a14)*(-(np.cos(a35)*np.sin(a24)*np.sin(a25)*np.sin(a45)) + np.cos(a24)*(np.cos(a34)*np.cos(a45) - np.sin(a34)*np.sin(a35)*np.sin(a45)))
        self.R45 = np.cos(a15)*np.cos(a25)*np.cos(a35)*np.sin(a45)
        self.R51 = -(np.sin(a12)*(-(np.sin(a23)*(-(np.cos(a34)*np.cos(a45)*np.sin(a35)) + np.sin(a34)*np.sin(a45))) + np.cos(a23)*(-(np.cos(a24)*np.cos(a35)*np.cos(a45)*np.sin(a25)) - np.sin(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45))))) + np.cos(a12)*(np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.cos(a45)*np.sin(a15)) - np.sin(a14)*(-(np.cos(a35)*np.cos(a45)*np.sin(a24)*np.sin(a25)) + np.cos(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))) - np.sin(a13)*(np.cos(a23)*(-(np.cos(a34)*np.cos(a45)*np.sin(a35)) + np.sin(a34)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.cos(a45)*np.sin(a25)) - np.sin(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))))
        self.R52 = np.cos(a12)*(-(np.sin(a23)*(-(np.cos(a34)*np.cos(a45)*np.sin(a35)) + np.sin(a34)*np.sin(a45))) + np.cos(a23)*(-(np.cos(a24)*np.cos(a35)*np.cos(a45)*np.sin(a25)) - np.sin(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))) + np.sin(a12)*(np.cos(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.cos(a45)*np.sin(a15)) - np.sin(a14)*(-(np.cos(a35)*np.cos(a45)*np.sin(a24)*np.sin(a25)) + np.cos(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))) - np.sin(a13)*(np.cos(a23)*(-(np.cos(a34)*np.cos(a45)*np.sin(a35)) + np.sin(a34)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.cos(a45)*np.sin(a25)) - np.sin(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))))
        self.R53 = np.sin(a13)*(-(np.cos(a14)*np.cos(a25)*np.cos(a35)*np.cos(a45)*np.sin(a15)) - np.sin(a14)*(-(np.cos(a35)*np.cos(a45)*np.sin(a24)*np.sin(a25)) + np.cos(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))) + np.cos(a13)*(np.cos(a23)*(-(np.cos(a34)*np.cos(a45)*np.sin(a35)) + np.sin(a34)*np.sin(a45)) + np.sin(a23)*(-(np.cos(a24)*np.cos(a35)*np.cos(a45)*np.sin(a25)) - np.sin(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45))))
        self.R54 = -(np.cos(a25)*np.cos(a35)*np.cos(a45)*np.sin(a14)*np.sin(a15)) + np.cos(a14)*(-(np.cos(a35)*np.cos(a45)*np.sin(a24)*np.sin(a25)) + np.cos(a24)*(-(np.cos(a45)*np.sin(a34)*np.sin(a35)) - np.cos(a34)*np.sin(a45)))
        self.R55 = np.cos(a15)*np.cos(a25)*np.cos(a35)*np.cos(a45)



    # def massbasis(self):
        # print(mh1,mh2,mh3)
        self.m11sq = (mh1*self.R11)**2 + (mh2*self.R21)**2 + (mh3*self.R31)**2 + (mh4*self.R41)**2 + (mh5*self.R51)**2
        self.m22sq = (mh1*self.R12)**2 + (mh2*self.R22)**2 + (mh3*self.R32)**2 + (mh4*self.R42)**2 + (mh5*self.R52)**2
        self.m33sq = (mh1*self.R13)**2 + (mh2*self.R23)**2 + (mh3*self.R33)**2 + (mh4*self.R43)**2 + (mh5*self.R53)**2
        self.m44sq = (mh1*self.R14)**2 + (mh2*self.R24)**2 + (mh3*self.R34)**2 + (mh4*self.R44)**2 + (mh5*self.R54)**2
        self.m55sq = (mh1*self.R15)**2 + (mh2*self.R25)**2 + (mh3*self.R35)**2 + (mh4*self.R45)**2 + (mh5*self.R55)**2
        self.m12sq = (mh1)**2 *self.R11*self.R12 + (mh2)**2 *self.R21*self.R22 + (mh3)**2 *self.R31*self.R32 + (mh4)**2 *self.R41*self.R42 + (mh5)**2 *self.R51*self.R52
        self.m13sq = (mh1)**2 *self.R11*self.R13 + (mh2)**2 *self.R21*self.R23 + (mh3)**2 *self.R31*self.R33 + (mh4)**2 *self.R41*self.R43 + (mh5)**2 *self.R51*self.R53
        self.m14sq = (mh1)**2 *self.R11*self.R14 + (mh2)**2 *self.R21*self.R24 + (mh3)**2 *self.R31*self.R34 + (mh4)**2 *self.R41*self.R44 + (mh5)**2 *self.R51*self.R54
        self.m15sq = (mh1)**2 *self.R11*self.R15 + (mh2)**2 *self.R21*self.R25 + (mh3)**2 *self.R31*self.R35 + (mh4)**2 *self.R41*self.R45 + (mh5)**2 *self.R51*self.R55
        self.m23sq = (mh1)**2 *self.R12*self.R13 + (mh2)**2 *self.R22*self.R23 + (mh3)**2 *self.R32*self.R33 + (mh4)**2 *self.R42*self.R43 + (mh5)**2 *self.R52*self.R53
        self.m24sq = (mh1)**2 *self.R12*self.R14 + (mh2)**2 *self.R22*self.R24 + (mh3)**2 *self.R32*self.R34 + (mh4)**2 *self.R42*self.R44 + (mh5)**2 *self.R52*self.R54
        self.m25sq = (mh1)**2 *self.R12*self.R15 + (mh2)**2 *self.R22*self.R25 + (mh3)**2 *self.R32*self.R35 + (mh4)**2 *self.R42*self.R45 + (mh5)**2 *self.R52*self.R55
        self.m34sq = (mh1)**2 *self.R13*self.R14 + (mh2)**2 *self.R23*self.R24 + (mh3)**2 *self.R33*self.R34 + (mh4)**2 *self.R43*self.R44 + (mh5)**2 *self.R53*self.R54
        self.m35sq = (mh1)**2 *self.R13*self.R15 + (mh2)**2 *self.R23*self.R25 + (mh3)**2 *self.R33*self.R35 + (mh4)**2 *self.R43*self.R45 + (mh5)**2 *self.R53*self.R55
        self.m45sq = (mh1)**2 *self.R14*self.R15 + (mh2)**2 *self.R24*self.R25 + (mh3)**2 *self.R34*self.R35 + (mh4)**2 *self.R44*self.R45 + (mh5)**2 *self.R54*self.R55
        self.mhcsq = self.mhp**2
        self.mutild = mut**2





    def basischange(self):
        # a12 = np.arctan(self.tb) - np.arccos(msself.cba12)
        # R(a12, msself.a13, msself.a23, msself.a14, msself.a24, msself.a34, msself.a15, msself.a25, msself.a35, msself.a45)
        # massbasis(msself.mh1, msself.mh2, msself.mh3,msself.mh4,msself.mh5, msself.mhp, msself.mut)

        
        ### extra inputs
        # iml5 = self.iml5
        # rel6 = self.rel6
        # rel7 = self.rel7
        # rel1pp = self.rel1pp
        # # rel3p = msself.rel3p
        # rel4p = self.rel4p
        # rel5p = self.rel5p
        # iml7p = msself.iml7p
        ### extra complex self.meters
        l2ppc = self.l2pp.phse(2*self.zeta)
        l3pc =  self.l3p.phse(-self.eta)
        l6pc =  self.l6p.phse(2*self.zeta-self.eta)
        l7pc =  self.l7p.phse(2*self.zeta+self.eta)
        # mu12c = self.mu12.phse((self.zeta-self.eta))
        mu21c = self.mu21.phse((self.zeta+self.eta))
        mu11c = self.mu11.phse((self.zeta))
        mu22c = self.mu22.phse((self.zeta))
        # mus1c = self.mus1.phse((3*self.zeta))
        mus2c = self.mus2.phse((self.zeta))

        rel2pp = l2ppc.Re()
        rel3p  =  l3pc.Re()
        rel6p  =  l6pc.Re()
        rel7p  =  l7pc.Re()
        # remu12 = mu12c.Re()
        remu21 = mu21c.Re()
        remu11 = mu11c.Re()
        remu22 = mu22c.Re()
        # remus1 = mus1c.Re()
        remus2 = mus2c.Re()

        # immu12 = mu12c.Im()
        immu21 = mu21c.Im()
        immu11 = mu11c.Im()
        immu22 = mu22c.Im()
        # immus1 = mus1c.Im()
        immus2 = mus2c.Im()
        iml2pp = l2ppc.Im()
        iml3p  =  l3pc.Im()
        iml6p  =  l6pc.Im()
        iml7p  =  l7pc.Im()


        def Csc(x):
            return 1/np.sin(x)

        # -------- m45sq relation -----------
        # rel7p = (self.m45sq + remu12*self.v - remu21*self.v + 2*rel6p*self.v*self.vS)/(2.*self.v*self.vS)
        remu12 = -(self.m45sq  - remu21*self.v + 2*rel6p*self.v*self.vS - rel7p*(2.*self.v*self.vS))/self.v

        # --------- m12sq relation -----------
        rem12 = (self.mutild*self.tb)/(1 + self.tb**2) + self.vS*(remu12 + remu21 + (rel3p + rel6p + rel7p)*self.vS)
        self.l1 = (2*self.m11sq*(1 + self.tb**2) + self.tb*(-2*self.mutild*self.tb + (-3*self.rel6 + self.rel7*self.tb**2)*self.v**2))/(2.*self.v**2)

        # --------- m22sq relation -----------
        self.l2 = (-4*self.mutild*self.tb + 4*self.m22sq*(self.tb + self.tb**3) + 2*(self.rel6 - 3*self.rel7*self.tb**2)*self.v**2)/((1 + self.tb**2)*self.v**2*(3*self.tb - np.sqrt(1 + self.tb**2)*np.sin(3*np.arctan(self.tb))))
        rel5 = ((-4*self.m44sq*self.tb + 4*self.mutild*self.tb - 2*self.rel6*self.v**2 - self.rel7*self.v**2 - self.rel7*self.tb**2*self.v**2 + self.rel7*(1 + self.tb**2)*self.v**2*np.cos(2*np.arctan(self.tb)))*Csc(2*np.arctan(self.tb)))/(2.*(1 + self.tb**2)*self.v**2)

        # -------- m12sq and mhcsq relation -----------
        self.l4 = -rel5 - self.rel6/self.tb - self.rel7*self.tb - (2*self.mhcsq)/self.v**2 + (2*self.mutild)/self.v**2
        self.l3 = ((4*self.m12sq + 4*self.mutild*self.tb + 4*self.m12sq*self.tb**2 - 6*self.rel6*self.v**2 - 3*self.rel7*self.v**2 - 4*(self.l4 + rel5)*self.tb*self.v**2 - 3*self.rel7*self.tb**2*self.v**2 + 3*self.rel7*(1 + self.tb**2)*self.v**2*np.cos(2*np.arctan(self.tb)))*Csc(2*np.arctan(self.tb)))/(2.*(1 + self.tb**2)*self.v**2)


        # -------- m13sq relation -----------
        self.l1p = (self.m13sq*np.sqrt(1 + self.tb**2) - self.v*(2*remu11 + remu12*self.tb + remu21*self.tb + 4*self.rel4p*self.vS + 2*rel3p*self.tb*self.vS + 2*rel6p*self.tb*self.vS + 2*rel7p*self.tb*self.vS))/(2.*self.v*self.vS)

        # -------- m23sq relation -----------
        self.l2p = (self.m23sq*np.sqrt(1 + self.tb**2) - self.v*(remu12 + remu21 + 2*remu22*self.tb + 2*(rel3p + rel6p + rel7p + 2*self.rel5p*self.tb)*self.vS))/(2.*self.tb*self.v*self.vS)

        # -------- m55sq relation -----------
        # remsp = (-self.m55sq - 2*self.rel5p*self.v**2 - (4*self.rel4p*self.v**2)/(1 + self.tb**2) - (remu11*self.v**2)/(2.*self.vS) - (remu22*self.v**2)/(2.*self.vS) - 3*remus1*self.vS - remus2*self.vS - (4*self.rel1pp*self.vS**2)/3. - (4*rel2pp*self.vS**2)/3. - (self.v**2*(remu11 - remu22 - 4*self.rel5p*self.vS)*np.cos(2*np.arctan(self.tb)))/(2.*self.vS) - 2*rel6p*self.v**2*np.sin(2*np.arctan(self.tb)) - 2*rel7p*self.v**2*np.sin(2*np.arctan(self.tb)) - (remu12*self.v**2*np.sin(2*np.arctan(self.tb)))/(2.*self.vS) - (remu21*self.v**2*np.sin(2*np.arctan(self.tb)))/(2.*self.vS))/4.

        remus1 = -(4*self.remsp + self.m55sq + 2*self.rel5p*self.v**2 + (4*self.rel4p*self.v**2)/(1 + self.tb**2) + (remu11*self.v**2)/(2.*self.vS) + (remu22*self.v**2)/(2.*self.vS) + remus2*self.vS + (4*self.rel1pp*self.vS**2)/3. + (4*rel2pp*self.vS**2)/3. + (self.v**2*(remu11 - remu22 - 4*self.rel5p*self.vS)*np.cos(2*np.arctan(self.tb)))/(2.*self.vS) + 2*rel6p*self.v**2*np.sin(2*np.arctan(self.tb)) + 2*rel7p*self.v**2*np.sin(2*np.arctan(self.tb)) + (remu12*self.v**2*np.sin(2*np.arctan(self.tb)))/(2.*self.vS) + (remu21*self.v**2*np.sin(2*np.arctan(self.tb)))/(2.*self.vS))/(3*self.vS)


        # -------- m33sq relation -----------
        self.l3pp = ((3*remu11*self.v**2)/(1 + self.tb**2) + (3*remu12*self.tb*self.v**2)/(1 + self.tb**2) + (3*remu21*self.tb*self.v**2)/(1 + self.tb**2) + (3*remu22*self.tb**2*self.v**2)/(1 + self.tb**2) + 3*self.m33sq*self.vS - 3*remus1*self.vS**2 - 9*remus2*self.vS**2 - 2*self.rel1pp*self.vS**3 - 8*rel2pp*self.vS**3)/(6.*self.vS**3)

        # -------- m14sq and m24sq relation -----------
        iml6 = (-2*self.m14sq*np.sqrt(1 + self.tb**2) - self.iml5*self.tb*self.v**2)/(2.*self.v**2)
        iml7 = (-2*self.m24sq*np.sqrt(1 + self.tb**2) - self.iml5*self.v**2)/(2.*self.tb*self.v**2)

        # -------- m34sq relation -----------
        # iml3p = (-self.m34sq - immu12*self.v + immu21*self.v - 2*iml6p*self.v*self.vS + 2*iml7p*self.v*self.vS)/(2.*self.v*self.vS)
        # iml7p = iml3p + (self.m34sq + immu12*self.v - immu21*self.v )/(2.*self.v*self.vS)+ iml6p
        immu12 = -(iml3p + (self.m34sq - immu21*self.v )/(2.*self.v*self.vS)+ iml6p-iml7p)*2*self.vS

        # -------- m15sq and m25sq relation -----------
        iml4p = (-(self.m15sq*np.sqrt(1 + self.tb**2)) - 2*immu11*self.v - immu12*self.tb*self.v - immu21*self.tb*self.v - 2*iml6p*self.tb*self.v*self.vS - 2*iml7p*self.tb*self.v*self.vS)/(4.*self.v*self.vS)
        iml5p = (-(self.m25sq*np.sqrt(1 + self.tb**2)) - immu12*self.v - immu21*self.v - 2*immu22*self.tb*self.v - 2*iml6p*self.v*self.vS - 2*iml7p*self.v*self.vS)/(4.*self.tb*self.v*self.vS)

        # -------- m35sq relation -----------
        # iml1pp = (6*immu11*self.v**2 + 6*immu22*self.tb**2*self.v**2 - 6*self.m35sq*self.vS - 6*self.m35sq*self.tb**2*self.vS - 6*immus1*self.vS**2 - 6*immus2*self.vS**2 - 6*immus1*self.tb**2*self.vS**2 - 6*immus2*self.tb**2*self.vS**2 - 8*iml2pp*self.vS**3 - 8*iml2pp*self.tb**2*self.vS**3 + 3*immu12*self.v**2*np.sin(2*np.arctan(self.tb)) + 3*immu21*self.v**2*np.sin(2*np.arctan(self.tb)) + 3*immu12*self.tb**2*self.v**2*np.sin(2*np.arctan(self.tb)) + 3*immu21*self.tb**2*self.v**2*np.sin(2*np.arctan(self.tb)))/(4.*(1 + self.tb**2)*self.vS**3)
        immus1 = -(4*self.iml1pp*(1 + self.tb**2)*self.vS**3 - 6*immu11*self.v**2 - 6*immu22*self.tb**2*self.v**2 + 6*self.m35sq*self.vS*(1 + self.tb**2) + 6*immus2*self.vS**2*(1 + self.tb**2) + 8*iml2pp*self.vS**3*(1 + self.tb**2) - 3*immu12*self.v**2*np.sin(2*np.arctan(self.tb))*(1 + self.tb**2) - 3*immu21*self.v**2*np.sin(2*np.arctan(self.tb))*(1 + self.tb**2)) / (6*self.vS**2*(1 + self.tb**2))

        # -------- im_m12sq tadpole -----------
        imm12 = 1/2 * ((self.tb* self.iml5 + iml6 + self.tb**2 * iml7)*self.v**2/(1+self.tb**2) + 2*self.vS**2 * (iml3p + iml7p + iml6p) + 2*self.vS * (immu12-immu21))

        # -------- im_msp tadpole -----------
        immsp = -1/(6*(self.tb**2)*self.vS) *(6*(self.v**2)*self.vS*(iml4p +self.tb**2*iml5p + self.tb*(iml6p+iml7p) ) + (1+self.tb**2)*self.vS**3*(self.iml1pp+2*iml2pp) + 3*(self.v**2)*(immu11 + self.tb*immu12+self.tb*immu21 + self.tb**2 * immu22) + 3*(1+self.tb**2)*self.vS**2 * (immus1+immus2) )

        self.l5  = complex(rel5, self.iml5,    arg=-(-2*self.eta))
        self.l6  = complex(self.rel6, iml6,    arg=-(-1*self.eta))
        self.l7  = complex(self.rel7, iml7,    arg=-(-1*self.eta))
        self.msp = complex(self.remsp, immsp,       arg=-(2*self.zeta)).Re()
        self.m12 = complex(rem12, imm12,       arg=-(-1*self.eta)).Re()
        self.l1pp= complex(self.rel1pp, self.iml1pp,arg=-(4*self.zeta))
        self.l4p = complex(self.rel4p, iml4p,  arg=-(2*self.zeta))
        self.l5p = complex(self.rel5p, iml5p,  arg=-(2*self.zeta))
        self.mu12 = complex(remu12, immu12,     arg=-(self.zeta - self.eta))
        self.mus1 = complex(remus1, immus1,       arg=-(3*self.zeta))
        # self.l7p = complex(rel7p, iml7p,       arg=-(2*self.zeta+self.eta))
        # self.l3p complexci(rel3p, iml3p,  -1*self.eta).imself.)
# %%

# class self.
#     # real input self.meter
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
#     # complex input self.meter
#     l5  = [0,0] # 4,4
#     l6  = [0,0] # 1,4
#     l7  = [0,0] # 2,4
#     l3p = [0,0] # 3,4
#     l4p = [0,0] # 1,5
#     l5p = [0,0] # 2,5
#     l1pp= [0,0] # 3,5
#     l7p = [0,0] # 4,5
#     msp = [0,0] # 5,5
#     # complex ext self.meter
#     l6p = [0,0]
#     l2pp= [0,0]
#     mu11= [0,0]
#     mu12= [0,0]
#     mu21= [0,0]
#     mu22= [0,0]
#     mus1= [0,0]
#     mus2= [0,0]
# class msself.
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

# self.tb = 1
# self.vS = 500
# self.zeta = 0.0
# self.eta = 0.1
# basischange(msself.

# print(self.l1)
# print(self.l2)
# print(self.l3)
# print(self.l4)
# print(self.l5)
# print(self.l6)
# print(self.l7)
# print(self.l1p)
# print(self.l2p)
# print(self.l3p)
# print(self.l4p)
# print(self.l5p)
# print(self.l6p)
# print(self.l7p)
# print(self.l1pp)
# print(self.l2pp)
# print(self.l3pp)
# print(self.m12)
# print(self.msp)
# # %%
# print(self.mu11)
# print(self.mu12)
# print(self.mu21)
# print(self.mu22)
# print(self.mus1)
# print(self.mus2)
# %%

# class self.
#     R11 = 0
#     R12 = 0
#     R13 = 0
#     R14 = 0
#     R15 = 0
#     R21 = 0
#     R22 = 0
#     R23 = 0
#     R24 = 0
#     R25 = 0
#     R31 = 0
#     R32 = 0
#     R33 = 0
#     R34 = 0
#     R35 = 0
#     R41 = 0
#     R42 = 0
#     R43 = 0
#     R44 = 0
#     R45 = 0
#     R51 = 0
#     R52 = 0
#     R53 = 0
#     R54 = 0
#     R55 = 0
#     m11sq = 0
#     m12sq = 0
#     m22sq = 0
#     m13sq = 0
#     m23sq = 0
#     m33sq = 0
#     m14sq = 0
#     m24sq = 0
#     m34sq = 0
#     m44sq = 0
#     m15sq = 0
#     m25sq = 0
#     m35sq = 0
#     m45sq = 0
#     m55sq = 0
#     mutild = 0
#     mhcsq = 0
