import numpy as np
import json
from lib import utilities as uti
from src import STU_2hdms as stu

from lib import input as ifunc

from src import basis_2hdmscpv as bc

spn = '2HDMSCPV'

nd = 5
class par:
    neuID = [25, 35, 45, 36, 46]
    charID = [37]
    zur = 1
    zui = 0
    zdr = -1
    zdi = 0
    zer = -1
    zei = 0
    class ms:
        mh1 = 800 # l1
        mh2 = 125 # l2
        mh3 = 95 # l3pp
        mh4 = 800 # rel5e(-i2xi1)
        mh5 = 400 # remspe(-ixis)
        mhp = 800 # l4
        mut = 800 # rem12e(-ixi1)
        cba12 = 0 # l3
        a13 = 0.0 # l1p
        a23 = 0.0 # l2p
        a14 = 0.0 # iml6e(-ixi1)
        a24 = 0.0 # iml7e(-ixi1) 
        a34 = 0.0 # iml3pe(-ixi1)
        a15 = 0.0 # iml4pe(i2xis)
        a25 = 0.0 # iml5pe(i2xis)
        a35 = 0.0 # iml1ppe(i4xis)
        a45 = 0.0 # rel7p(i2xis-xi1)
        # direct
        iml5   = 0.0
        rel6   = 0
        rel7   = 0
        rel1pp = 0
        rel4p  = 0
        rel5p  = 0
        iml7p  = 0
        # phase
        phl5 = 0
        phl6 = 0
        phl7 = 0
        phl1pp = 0

    class inp:
        # real input parameter
        v = 2.46218458E+02
        tb = 1
        vS = 500
        zeta = 0
        eta = 0
        m12 = 0
        l1  = 0 
        l2  = 0 
        l3  = 0 
        l4  = 0 
        l1p = 0 
        l2p = 0 
        l3pp= 0 
        # complex input parameter
        l5  = [0,0] 
        l6  = [0,0] 
        l7  = [0,0] 
        l1pp= [0,0] 
        l4p = [0,0] 
        l5p = [0,0] 
        l7p = [0,0] 
        msp = 0 
        # complex ext parameter
        l2pp= [0,0]
        l3p = [0,0] 
        l6p = [0,0]
        mu11= [0,0]
        mu12= [0,0]
        mu21= [0,0]
        mu22= [0,0]
        mus1= [0,0]
        mus2= [0,0]
    # SPheno inputs
    minpar = {
        "lam1": {'pdg':1,'value':0},
        "lam2": {'pdg':2,'value':0},
        "lam3": {'pdg':3,'value':0},
        "lam4": {'pdg':4,'value':0},
        "lam3pp": {'pdg':6,'value':0},
        "lam1p": {'pdg':7,'value':0},
        "lam2p": {'pdg':8,'value':0},
        "m12":{'pdg':5,'value':0},
        "msp":{'pdg':9,'value':0},
        "tb": {'pdg':10,'value':0},
        "vs": {'pdg':11,'value':0},
        "zur":{'pdg':12,'value':0},
        "zdr":{'pdg':13,'value':0},
        "zer":{'pdg':14,'value':0},
        "eta": {'pdg':15,'value':0},
        "zeta": {'pdg':16,'value':0},
    }

    extpar = {
        "lam1ppr":{'pdg':1,'value':0},
        "lam1ppi":{'pdg':11,'value':0},
        "lam2ppr":{'pdg':2,'value':0},
        "lam2ppi":{'pdg':12,'value':0},
        "lam3pr":{'pdg':3,'value':0},
        "lam3pi": {'pdg':13,'value':0},
        "lam4pr":{'pdg':4,'value':0},
        "lam4pi": {'pdg':14,'value':0},
        "lam5pr":{'pdg':5,'value':0},
        "lam5pi": {'pdg':15,'value':0},
        "lam6pr":{'pdg':6,'value':0},
        "lam6pi":{'pdg':16,'value':0},
        "lam7pr":{'pdg':7,'value':0},
        "lam7pi":{'pdg':17,'value':0},
        "lam5r": {'pdg':8,'value':0},
        "lam5i":{'pdg':18,'value':0},
        "lam6r":{'pdg':9,'value':0},
        "lam6i":{'pdg':19,'value':0},
        "lam7r":{'pdg':10,'value':0},
        "lam7i":{'pdg':20,'value':0},
        "mu11r":{'pdg':21,'value':0},
        "mu12r":{'pdg':22,'value':0},
        "mu21r":{'pdg':23,'value':0},
        "mu22r":{'pdg':24,'value':0},
        "mus1r":{'pdg':25,'value':0},
        "mus2r":{'pdg':26,'value':0},
        "mu11i":{'pdg':31,'value':0},
        "mu12i":{'pdg':32,'value':0},
        "mu21i":{'pdg':33,'value':0},
        "mu22i":{'pdg':34,'value':0},
        "mus1i":{'pdg':35,'value':0},
        "mus2i":{'pdg':36,'value':0},
        "zui":{'pdg':41,'value':0},
        "zdi":{'pdg':42,'value':0},
        "zei":{'pdg':43,'value':0},
    }




def recmas():
    oup.maspar.update({
        "tb":par.inp.tb,
        "vs":par.inp.vS,
        "xi1":par.inp.eta,
        "xis":par.inp.zeta,
        "cba12":par.ms.cba12,
        "a13":par.ms.a13,
        "a23":par.ms.a23,
        "a14":par.ms.a14,
        "a24":par.ms.a24,
        "a34":par.ms.a34,
        "a15":par.ms.a15,
        "a25":par.ms.a25,
        "a35":par.ms.a35,
        "a45":par.ms.a45,
        "mh1":par.ms.mh1,
        "mh2":par.ms.mh2,
        "mh3":par.ms.mh3,
        "ma1":par.ms.mh4,
        "ma2":par.ms.mh5,
        "mhp":par.ms.mhp,
        "mutild":par.ms.mut
    })



def ran_inp(inpf):
#     -SET RANDOM SCAN PARAMETERS--
#     # generate the random inputs
    inp = json.load(open(inpf))
    par.inp.tb = ifunc.para_inp(inp['tb'])
    par.ms.cba12 = ifunc.para_inp(inp['cba'])

    par.ms.a13 = ifunc.para_inp(inp['a13'])
    par.ms.a23 = ifunc.para_inp(inp['a23'])
    par.ms.a14 = ifunc.para_inp(inp['a14'])
    par.ms.a24 = ifunc.para_inp(inp['a24'])
    par.ms.a34 = ifunc.para_inp(inp['a34'])
    par.ms.a15 = ifunc.para_inp(inp['a15'])
    par.ms.a25 = ifunc.para_inp(inp['a25'])
    par.ms.a35 = ifunc.para_inp(inp['a35'])
    par.ms.a45 = ifunc.para_inp(inp['a45'])
    par.ms.mh1 = ifunc.para_inp(inp['mh1'])
    par.ms.mh2 = ifunc.para_inp(inp['mh2'])
    par.ms.mh3 = ifunc.para_inp(inp['mh3'])
    par.ms.mh4 = ifunc.para_inp(inp['mh4'])
    par.ms.mh5 = ifunc.para_inp(inp['mh5'])
    par.ms.mhp = ifunc.para_inp(inp['mp'])
    par.ms.mut = ifunc.para_inp(inp['mutild'])
    par.inp.vS = ifunc.para_inp(inp['vs'])
    par.eta = ifunc.para_inp(inp['xi1'])
    par.zeta = ifunc.para_inp(inp['xis'])
    if int((inp['type'])) == -1:
        par.zur = ifunc.para_inp(inp['zur'])
        par.zdr = ifunc.para_inp(inp['zdr'])
        par.zer = ifunc.para_inp(inp['zer'])
    if int((inp['type'])) == 1:
        par.zur = 1/par.inp.tb
        par.zdr = 1/par.inp.tb
        par.zer = 1/par.inp.tb
    if int((inp['type'])) == 2:
        par.zur = 1/par.inp.tb
        par.zdr =  -par.inp.tb
        par.zer =  -par.inp.tb
    if int((inp['type'])) == 3:
        par.zur = 1/par.inp.tb
        par.zdr = 1/par.inp.tb
        par.zer =  -par.inp.tb
    if int((inp['type'])) == 4:
        par.zur = 1/par.inp.tb
        par.zdr =  -par.inp.tb
        par.zer = 1/par.inp.tb
    initinp()
    # print(par.minpar)

    # return vs, par.tb, a12, a13, a23, a4, mh1, mh2, mh3, ma1, ma2, mp, mutild


def initinp():
    bc.basischange(par.ms,par.inp)
    par.minpar['tb']['value'] = par.inp.tb
    par.minpar['vs']['value'] = par.inp.vS
    par.minpar['eta']['value'] = par.inp.eta
    par.minpar['zeta']['value'] = par.inp.zeta
    par.minpar['lam1']['value'] = par.inp.l1
    par.minpar['lam2']['value'] = par.inp.l2
    par.minpar['lam3']['value'] = par.inp.l3
    par.minpar['lam4']['value'] = par.inp.l4
    par.minpar['lam1p']['value'] = par.inp.l1p
    par.minpar['lam2p']['value'] = par.inp.l2p
    par.minpar['lam3pp']['value'] = par.inp.l3pp
    par.minpar['m12']['value'] = par.inp.m12
    par.minpar['msp']['value'] = par.inp.msp
    par.minpar['zur']['value'] = par.zur
    par.minpar['zdr']['value'] = par.zdr
    par.minpar['zer']['value'] = par.zer


    par.extpar['lam5r']['value'] = par.inp.l5[0]
    par.extpar['lam1ppi']['value'] = par.inp.l1pp[1]
    par.extpar['lam3pi']['value'] = par.inp.l3p[1]
    par.extpar['lam4pi']['value'] = par.inp.l4p[1]
    par.extpar['lam5pi']['value'] = par.inp.l5p[1]
    par.extpar['lam6i']['value'] = par.inp.l6[1]
    par.extpar['lam7i']['value'] = par.inp.l7[1]
    par.extpar['lam6r']['value'] = par.inp.l6[0]
    par.extpar['lam7r']['value'] = par.inp.l7[0]
    par.extpar['lam3pr']['value'] = par.inp.l3p[0]
    par.extpar['lam4pr']['value'] = par.inp.l4p[0]
    par.extpar['lam5pr']['value'] = par.inp.l5p[0]
    par.extpar['lam1ppr']['value'] = par.inp.l1pp[0]
    par.extpar['lam5i']['value'] = par.inp.l5[1]
    par.extpar['lam6pi']['value'] = par.inp.l6p[1]
    par.extpar['lam6pr']['value'] = par.inp.l6p[0]
    par.extpar['lam7pr']['value'] = par.inp.l7p[0]
    par.extpar['lam7pi']['value'] = par.inp.l7p[1]
    par.extpar['lam2ppr']['value'] = par.inp.l2pp[0]
    par.extpar['lam2ppi']['value'] = par.inp.l2pp[1]
    par.extpar['mu11r']['value'] = par.inp.mu11[0]
    par.extpar['mu12r']['value'] = par.inp.mu12[0]
    par.extpar['mu21r']['value'] = par.inp.mu21[0]
    par.extpar['mu22r']['value'] = par.inp.mu22[0]
    par.extpar['mus1r']['value'] = par.inp.mus1[0]
    par.extpar['mus2r']['value'] = par.inp.mus2[0]
    par.extpar['mu11i']['value'] = par.inp.mu11[1]
    par.extpar['mu12i']['value'] = par.inp.mu12[1]
    par.extpar['mu21i']['value'] = par.inp.mu21[1]
    par.extpar['mu22i']['value'] = par.inp.mu22[1]
    par.extpar['mus1i']['value'] = par.inp.mus1[1]
    par.extpar['mus2i']['value'] = par.inp.mus2[1]

    par.extpar['zui']['value'] = par.zui
    par.extpar['zdi']['value'] = par.zdi
    par.extpar['zei']['value'] = par.zei


    #--------------------------------------------------------------------
    


class oup:
    bfbct = {}
    unict = {}
    vacstab = {}
    stu = {}
    maspar={}

from src import bfb_2hdmscpv as bfbl


def bfb(par):
    lrho = np.linspace(-1,1,3)
    lth = np.linspace(-1,1,3)*np.pi/2
    lps = np.linspace(-1,1,3)*np.pi/2
    lbfb = []
    for ri in lrho:
        for ti in lth:
            for pi in lps:
                omr = bfbl.copos(np.array(bfbl.bfb_mat(par.inp, ri, ti, pi)))
                lbfb.append(omr)
                if not omr:
                    break
    # print(lbfb)
    return np.all(lbfb)