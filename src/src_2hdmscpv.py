import numpy as np
import json
from lib import scanfunc as scf
from src import STU_2hdms as stu

from lib import input as ifunc

from src import basis_2hdmscpv as bc

spn = 'C2HDMS'

v = 2.46218458E+02
nd = 5
class par:
    neuID = [25, 35, 45, 36, 46]
    charID = [37]
    minpar = {}
    extpar = {}
    params = None



def ran_inp(inpf):
#     -SET RANDOM SCAN PARAMETERS--
#     # generate the random inputs
    inp = json.load(open(inpf))
    tb = ifunc.para_inp(inp['tb'])
    cba12 = ifunc.para_inp(inp['cba'])
    a12 = np.arctan(tb) - np.arccos(cba12)
    # inpset.mu12 = bc.complex(ifunc.para_inp(inp['mu12']['re']), ifunc.para_inp(inp['mu12']['im']))
    # inpset.mus1 = bc.complex(ifunc.para_inp(inp['mus1']['re']), ifunc.para_inp(inp['mus1']['im']))
    immu12 = ifunc.para_inp(inp['mu12']['im'])
    mh1 = ifunc.para_inp(inp['mh1'])
    mh2 = ifunc.para_inp(inp['mh2'])
    mh3 = ifunc.para_inp(inp['mh3'])
    mh4 = ifunc.para_inp(inp['mh4'])
    mh5 = ifunc.para_inp(inp['mh5'])
    a34 = np.arcsin(-2*immu12*v/(mh3**2 - mh4**2))/2
    a15 = np.arcsin(-2*immu12*v*np.sin(2*np.arctan(tb))/(mh1**2 - mh5**2))/2
    a25 = np.arcsin(-2*immu12*v*np.cos(2*np.arctan(tb))/(mh2**2 - mh5**2))/2
    inpset = bc.input(a12=a12,
                a13 = ifunc.para_inp(inp['a13']),
                a23 = ifunc.para_inp(inp['a23']),
                a14 = ifunc.para_inp(inp['a14']),
                a24 = ifunc.para_inp(inp['a24']),
                a34 = ifunc.para_inp(inp['a34']),
                a15 = ifunc.para_inp(inp['a15']),
                a25 = ifunc.para_inp(inp['a25']),
                a35 = ifunc.para_inp(inp['a35']),
                a45 = ifunc.para_inp(inp['a45']),
                mh1 = ifunc.para_inp(inp['mh1']),
                mh2 = ifunc.para_inp(inp['mh2']),
                mh3 = ifunc.para_inp(inp['mh3']),
                mh4 = ifunc.para_inp(inp['mh4']),
                mh5 = ifunc.para_inp(inp['mh5']),
                mhc = ifunc.para_inp(inp['mp']),
                mut = ifunc.para_inp(inp['mutild']),
                tb  = tb,
                vs = ifunc.para_inp(inp['vs']),
                xi = ifunc.para_inp(inp['xi1']),
                xis = ifunc.para_inp(inp['xis']),
                type = int(inp['type']),
                   )

    initinp(inpset)
    # print(par.minpar)

    # return vs, par.tb, a12, a13, a23, a4, mh1, mh2, mh3, ma1, ma2, mp, mutild

def inpd(cba = 0,
                a13 = 0.0,
                a23 = 0.0,
                a14 = 0.0,
                a24 = 0.0,
                a34 = 0.0,
                a15 = 0.0,
                a25 = 0.0,
                a35 = 0.0,
                a45 = 0.0,
                mh1 = 0.0,
                mh2 = 0.0,
                mh3 = 0.0,
                mh4 = 0.0,
                mh5 = 0.0,
                mhc = 0.0,
                mut = 0.0,
                tb  = 1,
                vs = 0.0,
                xi = 0.0,
                xis =0.0,
         type = 2):
    a12 = np.arctan(tb) - np.arccos(cba)
    inpset = bc.input(a12=a12,
                a13 = a13,
                a23 = a23,
                a14 = a14,
                a24 = a24,
                a34 = a34,
                a15 = a15,
                a25 = a25,
                a35 = a35,
                a45 = a45,
                mh1 = mh1,
                mh2 = mh2,
                mh3 = mh3,
                mh4 = mh4,
                mh5 = mh5,
                mhc = mhc,
                mut = mut,
                tb  = tb,
                vs = vs,
                xi = xi,
                xis = xis,
                type = type,)

    initinp(inpset)

def initinp(inp):
    inp.basischange()

    par.minpar = {
        "lam1": {'pdg':1,'value':inp.l1},
        "lam2": {'pdg':2,'value':inp.l2},
        "lam3": {'pdg':3,'value':inp.l3},
        "lam4": {'pdg':4,'value':inp.l4},
        "lam3pp":{'pdg':6,'value':inp.l3pp},
        "lam1p": {'pdg':7,'value':inp.l1p},
        "lam2p": {'pdg':8,'value':inp.l2p},
        "m12":{'pdg':5,'value':inp.m12},
        "msp":{'pdg':9,'value':inp.msp},
        "tb": {'pdg':10,'value':inp.tb},
        "vs": {'pdg':11,'value':inp.vS},
        "zur":{'pdg':12,'value':inp.zur},
        "zdr":{'pdg':13,'value':inp.zdr},
        "zer":{'pdg':14,'value':inp.zer},
        "eta": {'pdg':15,'value':inp.eta},
        "zeta": {'pdg':16,'value':inp.zeta},
    }

    par.extpar = {
        "lam1ppr":{'pdg':1,'value':inp.l1pp.Re()},
        "lam1ppi":{'pdg':11,'value':inp.l1pp.Im()},
        "lam2ppr":{'pdg':2,'value':inp.l2pp.Re()},
        "lam2ppi":{'pdg':12,'value':inp.l2pp.Im()},
        "lam3pr":{'pdg':3,'value':inp.l3p.Re()},
        "lam3pi": {'pdg':13,'value':inp.l3p.Im()},
        "lam4pr":{'pdg':4,'value':inp.l4p.Re()},
        "lam4pi": {'pdg':14,'value':inp.l4p.Im()},
        "lam5pr":{'pdg':5,'value':inp.l5p.Re()},
        "lam5pi": {'pdg':15,'value':inp.l5p.Im()},
        "lam6pr":{'pdg':6,'value':inp.l6p.Re()},
        "lam6pi":{'pdg':16,'value':inp.l6p.Im()},
        "lam7pr":{'pdg':7,'value':inp.l7p.Re()},
        "lam7pi":{'pdg':17,'value':inp.l7p.Im()},
        "lam5r": {'pdg':8,'value':inp.l5.Re()},
        "lam5i":{'pdg':18,'value':inp.l5.Im()},
        "lam6r":{'pdg':9,'value':inp.l6.Re()},
        "lam6i":{'pdg':19,'value':inp.l6.Im()},
        "lam7r":{'pdg':10,'value':inp.l7.Re()},
        "lam7i":{'pdg':20,'value':inp.l7.Im()},
        "mu11r":{'pdg':21,'value':inp.mu11.Re()},
        "mu12r":{'pdg':22,'value':inp.mu12.Re()},
        "mu21r":{'pdg':23,'value':inp.mu21.Re()},
        "mu22r":{'pdg':24,'value':inp.mu22.Re()},
        "mus1r":{'pdg':25,'value':inp.mus1.Re()},
        "mus2r":{'pdg':26,'value':inp.mus2.Re()},
        "mu11i":{'pdg':31,'value':inp.mu11.Im()},
        "mu12i":{'pdg':32,'value':inp.mu12.Im()},
        "mu21i":{'pdg':33,'value':inp.mu21.Im()},
        "mu22i":{'pdg':34,'value':inp.mu22.Im()},
        "mus1i":{'pdg':35,'value':inp.mus1.Im()},
        "mus2i":{'pdg':36,'value':inp.mus2.Im()},
        "zui":{'pdg':41,'value':inp.zui},
        "zdi":{'pdg':42,'value':inp.zdi},
        "zei":{'pdg':43,'value':inp.zei},
    }
    oup.maspar.update({
        "tb": inp.tb,
        "vs": inp.vS,
        "xi1":inp.eta,
        "xis":inp.zeta,
        "a12":inp.a12,
        "cba12":np.cos(np.arctan(inp.tb)-inp.a12),
        "a13":inp.a13,
        "a23":inp.a23,
        "a14":inp.a14,
        "a24":inp.a24,
        "a34":inp.a34,
        "a15":inp.a15,
        "a25":inp.a25,
        "a35":inp.a35,
        "a45":inp.a45,
        "mh1":inp.mh1,
        "mh2":inp.mh2,
        "mh3":inp.mh3,
        "ma1":inp.mh4,
        "ma2":inp.mh5,
        "mhp":inp.mhp,
        "mutild":inp.mut,
        "mu11":[inp.mu11.Re(), inp.mu11.Im()],
        "mu12":[inp.mu12.Re(), inp.mu12.Im()],
        "mu21":[inp.mu21.Re(), inp.mu21.Im()],
        "mu22":[inp.mu22.Re(), inp.mu22.Im()],
        "mus1":[inp.mus1.Re(), inp.mus1.Im()],
        "mus2":[inp.mus2.Re(), inp.mus2.Im()],
    })
    par.params = inp




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
                omr = bfbl.copos(np.array(bfbl.bfb_mat(par, ri, ti, pi)))
                lbfb.append(omr)
                if not omr:
                    break
    # print(lbfb)
    return np.all(lbfb)

def uni(par):
    return -1

def ewp_check(parini, scanf):
            spc = scf.read_spc(scanf.massoup['file'])
            Tobs = spc['BLOCK']['SPhenoLowEnergy']['values'][0][1]
            Sobs = spc['BLOCK']['SPhenoLowEnergy']['values'][1][1]
            Uobs = spc['BLOCK']['SPhenoLowEnergy']['values'][2][1]
            s_exp = -0.04
            t_exp = 0.01
            u_exp = -0.01
                
            ds = 0.1
            dt = 0.12
            du = 0.09
            cst = 0.93
            csu = -0.7
            ctu = -0.87

            cov = np.array([[ds**2, ds*dt*cst, ds*du*csu],[ds*dt*cst, dt**2, dt*du*ctu], [ds*du*csu, dt*du*ctu, du**2]])
            stu = np.array([[Sobs-s_exp],[Tobs-t_exp],[Uobs-u_exp]])
            stuT = stu.transpose()
            stuchi2 = np.matmul(stuT, np.matmul(np.linalg.inv(cov), stu) )[0][0]

            oup.stu.update({'stuchi2':stuchi2})

            t_ref = -2.04101372E-02
            s_ref = 2.95784468E-02
            u_ref = -1.11736496E-03
            stu_ref = np.array([[s_ref-s_exp],[t_ref-t_exp],[u_ref-u_exp]])
            chi2ref = np.matmul(stu_ref.transpose(), np.matmul(np.linalg.inv(cov), stu_ref) )[0][0] 

            delchi2 = stuchi2-chi2ref
            oup.stu.update({'stu_delchi2':delchi2})
            return delchi2<5.99