#%%
import numpy as np
# from lib import utilities as uti


v = 246.2205691
class input:
    def __init__(self,a12,a13,a23,a4,mh1,mh2,mh3,ma1,ma2,mhc,tb,vs,type):
        self.a12 = a12
        self.a13 = a13
        self.a23 = a23
        self.a4 = a4
        self.mh1 = mh1
        self.mh2 = mh2
        self.mh3 = mh3
        self.ma1 = ma1
        self.ma2 = ma2
        self.mhp = mhc
        self.tb = tb
        self.beta = np.arctan(tb)
        self.vS = vs
        self.type = type
        self.lam5 = 0
        self.lam6 = 0
        self.lam7 = 0
        self.l1pp = 0
        self.l2pp = 0
        self.l3p = 0
        self.l4p = 0
        self.l5p = 0
        self.l6p = 0
        self.l7p = 0
        self.mus2 = 0
        self.mu11 = 0
        self.mu22 = 0
        self.mu21 = 0
        self.msp = 0
    

    def Rot(self):
        self.R11 = np.cos(self.a12) * np.cos(self.a13)
        self.R12 = np.sin(self.a12) * np.cos(self.a13)
        self.R13 = np.sin(self.a13)
        self.R21 = -np.sin(self.a12)*np.cos(self.a23)-np.cos(self.a12)*np.sin(self.a13)*np.sin(self.a23)
        self.R22 = np.cos(self.a12)*np.cos(self.a23)-np.sin(self.a12)*np.sin(self.a13)*np.sin(self.a23)
        self.R23 = np.cos(self.a13)*np.sin(self.a23)
        self.R31 = np.sin(self.a12)*np.sin(self.a23)-np.cos(self.a12)*np.sin(self.a13)*np.cos(self.a23)
        self.R32 = -np.sin(self.a12)*np.sin(self.a13)*np.cos(self.a23)-np.cos(self.a12)*np.sin(self.a23)
        self.R33 = np.cos(self.a13)*np.cos(self.a23)
        self.RA11 = np.cos(self.a4)
        self.RA12 = np.sin(self.a4)
        self.RA21 = -np.sin(self.a4)
        self.RA22 = np.cos(self.a4)

    def massmx(self):
        self.m11sq = (self.mh1*self.R11)**2 + (self.mh2*self.R21)**2 + (self.mh3*self.R31)**2
        self.m22sq = (self.mh1*self.R12)**2 + (self.mh2*self.R22)**2 + (self.mh3*self.R32)**2
        self.m33sq = (self.mh1*self.R13)**2 + (self.mh2*self.R23)**2 + (self.mh3*self.R33)**2
        self.m12sq = (self.mh1)**2 *self.R11*self.R12 + (self.mh2)**2 *self.R21*self.R22 + (self.mh3)**2 *self.R31*self.R32
        self.m13sq = (self.mh1)**2 *self.R11*self.R13 + (self.mh2)**2 *self.R21*self.R23 + (self.mh3)**2 *self.R31*self.R33
        self.m23sq = (self.mh1)**2 *self.R12*self.R13 + (self.mh2)**2 *self.R22*self.R23 + (self.mh3)**2 *self.R32*self.R33
        self.ma11sq = (self.ma1*self.RA11)**2 + (self.ma2*self.RA21)**2 
        self.ma22sq = (self.ma1*self.RA12)**2 + (self.ma2*self.RA22)**2
        self.ma12sq = (self.ma1)**2 *self.RA11*self.RA12 + (self.ma2)**2 *self.RA21*self.RA22

    def basischange(self):
        self.mutild = -np.sqrt(self.ma11sq)
        self.lam1 = -((-(self.m11sq*(1/np.cos(self.beta))**2) + self.mutild**2*(self.tb)**2)/v**2)
        self.lam2 = -((self.mutild**2*(1/(self.tb))**2 - self.m22sq*(1/np.sin(self.beta))**2)/v**2)
        self.lam4 = (4*(self.ma11sq - self.mhp**2)*(np.cos(self.beta))*(1/np.sin(2*self.beta))*(np.sin(self.beta)))/v**2
        self.lam3 = -((-self.mutild**2 + self.lam4*v**2 - self.m12sq*(1/np.sin(self.beta))*(1/np.cos(self.beta)))/v**2)
        self.mu12 = -(self.ma12sq/v)
        self.mus1 = (-(self.ma22sq*self.vS) + self.ma12sq*v*(np.cos(self.beta))*(np.sin(self.beta)))/(3.*self.vS**2)
        self.l1p  = -0.5*(-(self.m13sq*(1/np.cos(self.beta))) + self.mu12*v*((self.tb)))/(v*self.vS)
        self.l2p  = -0.5*(self.mu12*v*(1/(self.tb)) - self.m23sq*(1/np.sin(self.beta)))/(v*self.vS)
        self.l3pp = -0.5*(-(self.m33sq*self.vS) + self.mus1*self.vS**2 - self.mu12*v**2*(np.cos(self.beta))*(np.sin(self.beta)))/self.vS**3
        self.M12 = self.mutild**2*(np.sin(self.beta)*np.cos(self.beta))
    
    def yukawa(self):
        if int((self.type)) == 1:
            self.zu = 1/self.tb
            self.zd = 1/self.tb
            self.ze = 1/self.tb
        if int((self.type)) == 2:
            self.zu = 1/self.tb
            self.zd =  -self.tb
            self.ze =  -self.tb
        if int((self.type)) == 3:
            self.zu = 1/self.tb
            self.zd = 1/self.tb
            self.ze =  -self.tb
        if int((self.type)) == 4:
            self.zu = 1/self.tb
            self.zd =  -self.tb
            self.ze = 1/self.tb

                                                    


