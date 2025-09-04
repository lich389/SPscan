import math
import os
import numpy as np
import pandas as pd
import random
from lib import utilities as uti
from src import STU_2hdms as stu
import json

from lib import input as ifunc


spn = '2HDMS'

v = 246.2205691
nd = 3
class par:
    neuID = [25, 35, 45, 36, 46]
    charID = [37]
    minpar = {}
    extpar = {}
    params = None

md = 'z3'

def ran_inp(inpf, mdarg = 'z3'):
    # - SET RANDOM SCAN PARAMETERS -
    # generate the random inputs
    if mdarg == 'z3':
        import src.basis_2hdmsz3 as mdfz3
    inp = json.load(open(inpf))

    tb = ifunc.para_inp(inp['tb'])
    cba = ifunc.para_inp(inp['cba'])
    a12 = np.arctan(tb) - np.arccos(cba)

    a13 = ifunc.para_inp(inp['a13'])
    a23 = ifunc.para_inp(inp['a23'])
    a4 = ifunc.para_inp(inp['a4'])
    mh1 = ifunc.para_inp(inp['mh1'])
    mh2 = ifunc.para_inp(inp['mh2'])
    mh3 = ifunc.para_inp(inp['mh3'])
    mhp = ifunc.para_inp(inp['mp'])
    ma1 = ifunc.para_inp(inp['ma1'])
    ma2 = ifunc.para_inp(inp['ma2'])
    vs = ifunc.para_inp(inp['vs'])

    type = int(inp['type'])
    # print(a12,a13,a23,a4,mh1,mh2,mh3,ma1,ma2,mhp,tb,vs,type)
    z3inp = mdfz3.z3input(a12,a13,a23,a4,mh1,mh2,mh3,ma1,ma2,mhp,tb,vs,type)
    initinp(z3inp)
    # return vs, par.tb, a12, a13, a23, a4, mh1, mh2, mh3, ma1, ma2, mp, mutild


def inpd(cba = 0,
         a13 = 0,
         a23 = 0,
         a4 = 0,
         mh1 = 800,
         mh2 = 125,
         mh3 = 95,
         ma1 = 800,
         ma2 = 1500,
         mhp = 800,
         tb = 1,
         vs = 500,
         type = 1):
    if md == 'z3':
        import src.basis_2hdmsz3 as mdfz3
    a12 = np.arctan(tb) - np.arccos(cba)
    z3inp = mdfz3.z3input(a12,a13,a23,a4,mh1,mh2,mh3,ma1,ma2,mhp,tb,vs,type)
    initinp(z3inp)

def initinp(inp):
    inp.Rot()
    inp.massmx()
    inp.basischange()
    inp.yukawa()
    par.minpar = {
    "lam1": {'pdg':1,'value':inp.lam1},
    "lam2": {'pdg':2,'value':inp.lam2},
    "lam3": {'pdg':3,'value':inp.lam3},
    "lam4": {'pdg':4,'value':inp.lam4},
    "lam5": {'pdg':5,'value':0.0},
    "lam6": {'pdg':6,'value':0.0},
    "lam7": {'pdg':7,'value':0.0},
    "tb": {'pdg':8,'value':inp.tb},
    "m12": {'pdg':9,'value':inp.M12},
}
    par.extpar = {
    "lam1p": {'pdg':1,'value':inp.l1p},
    "lam2p": {'pdg':2,'value':inp.l2p},
    "lam3p": {'pdg':3,'value':0.0},
    "lam4p": {'pdg':4,'value':0.0},
    "lam5p": {'pdg':5,'value':0.0},
    "lam6p": {'pdg':6,'value':0.0},
    "lam7p": {'pdg':7,'value':0.0},
    "lam1pp": {'pdg':8,'value':0.0},
    "lam2pp": {'pdg':9,'value':0.0},
    "lam3pp": {'pdg':10,'value':inp.l3pp},
    "mus1": {'pdg':11,'value':inp.mus1},
    "mus2": {'pdg':12,'value':0.0},
    "mu11": {'pdg':13,'value':0.0},
    "mu22": {'pdg':14,'value':0.0},
    "mu12": {'pdg':15,'value':inp.mu12},
    "mu21": {'pdg':16,'value':0.0},
    "msp": {'pdg':17,'value':0.0},
    "vS": {'pdg':18,'value':inp.vS},
    "zE":{'pdg':19,'value':inp.ze},
    "zD":{'pdg':20,'value':inp.zd},
    "zU":{'pdg':21,'value':inp.zu},
    }
    oup.maspar.update({
        "tb": inp.tb,
        "vs": inp.vS,
        "a12":inp.a12,
        "a13":inp.a13,
        "a23":inp.a23,
        "mh1":inp.mh1,
        "mh2":inp.mh2,
        "mh3":inp.mh3,
        "ma1":inp.ma1,
        "ma2":inp.ma2,
        "mhp":inp.mhp,
        "mutild":inp.mutild
    })
    par.params = inp

    #--------------------------------------------------------------------
    


class oup:
    bfbct = {}
    unict = {}
    vacstab = {}
    stu = {}
    maspar={}

def recmas(par):
    oup.maspar.update({
        "tb":par.tb,
        "vs":par.vs,
        "a12":par.a12,
        "a13":par.a13,
        "a23":par.a23,
        "mh1":par.mh1,
        "mh2":par.mh2,
        "mh3":par.mh3,
        "ma1":par.ma1,
        "ma2":par.ma2,
        "mhp":par.mhp,
        "mutild":par.mutild
    })

def ewp_check(parini):
    par = parini.params
    res_stu = stu.STUchk(par.mh1, par.mh2, par.mh3, par.ma1, par.ma2, par.mhp, par.tb, par.a12, par.a13, par.a23, par.a4)
    # print(stu.STU.chi2)
    oup.stu.update(
        {
            'S':stu.STU.S,#res_stu[1],
            'T':stu.STU.T,#res_stu[0],
            'U':stu.STU.U,#res_stu[2],
            'STUFit':stu.STU.chi2,#res_stu[3],
            'STUcheck':stu.STU.chi2/7.81,#res_stu[3],
        }
    )
    return res_stu

def bfb(inp):
    l1 = inp['lam1']
    l2 = inp['lam2']
    l3 = inp['lam3']
    l4 = inp['lam4']
    l7 = inp['lam1p']
    l8 = inp['lam2p']
    l6 = inp['lam3pp']
    if l1>0 and l2>0 and l6>0:
        C1 = math.sqrt(l1*l6/2)
        C2 = math.sqrt(l2*l6/2)
        C4 = math.sqrt(l1/l2)*l8
        if l4>0:
            D = 0
        else:
            D = l4
        BFB11 = C1 + l7
        BFB12 = C2 + l8
        BFB13 = math.sqrt(l1*l2) + l3 + D
        BFB14 = C4 + l7
        if BFB11 > 0 and BFB12 > 0 and BFB13 > 0 and BFB14 >=0:
            Omega1 = True
        else:
            oup.bfbct.update({'bfb_arg1':'BFB11','bfb_val1':BFB11,
                            'bfb_arg2':'BFB12','bfb_val2':BFB12,
                            'bfb_arg3':'BFB13','bfb_val3':BFB13,
                            'bfb_arg4':'BFB14','bfb_val4':BFB14,
                              })
            Omega1 = False

        BFB21 = C2 - l8
        BFB22 = l8 + C2
        BFB23 = C1 + l7
        BFB24 = -l7 - C4
        if BFB21 >= 0 and BFB22 > 0 and BFB23 > 0 and BFB24 >=0:
            BFB25 = math.sqrt((l7**2-C1**2)*(l8**2-C2**2))-l7*l8+(D+l3)*l6/2
            if BFB25 > 0:
                Omega2 = True
            else:
                oup.bfbct.update({'bfb_arg1':'BFB21','bfb_val1':BFB21,
                                'bfb_arg2':'BFB22','bfb_val2':BFB22,
                                'bfb_arg3':'BFB23','bfb_val3':BFB23,
                                'bfb_arg4':'BFB24','bfb_val4':BFB24,
                                })
                Omega2 = False
        else:
            Omega2 = False

        if Omega1 or Omega2:
            return True
        else:
            return False
    else:
        oup.bfbct.update({'bfb_arg1':'lam1','bfb_val1':l1,
                        'bfb_arg2':'lam2','bfb_val2':l2,
                        'bfb_arg3':'lam6','bfb_val3':l6,
                        })
        return False

def uni(inp):

    plim = math.pi*8
    l1 = inp['lam1']
    l2 = inp['lam2']
    l3 = inp['lam3']
    l4 = inp['lam4']
    k1 = inp['lam1p']
    k2 = inp['lam2p']
    k3 = inp['lam3pp']
    if abs(k1) < plim and abs(k2) < plim and abs(k3)/2 < plim and abs(l1) < plim and abs(l2) < plim and abs(l3) < plim:
        uni1 = l3 - l4
        uni2 = l3 + l4
        uni5 = l3 + 2*l4
        uni3 = (l1 + l2 - math.sqrt((l1-l2)**2 + 4 * l4**2))/2
        uni4 = (l1 + l2 + math.sqrt((l1-l2)**2 + 4 * l4**2))/2
        if abs(uni1) < plim and abs(uni2) < plim and abs(uni3) < plim and abs(uni4) < plim and abs(uni5) < plim:
            c0 = 384 * k2**2 * l1 + 384* k1**2 * l2 - 576*k3*l1*l2 - 512*k1*k2*l3 + 256*k3*l3**2 - 256*k1*k2*l4 + 256*k3*l3*l4
            c1 = -32 * k1**2 - 32 * k2**2 + 48 * k3* l1+48 * k3 * l2+144 * l1 * l2-64 * l3**2 - 64 * l3 * l4 - 16 * l4**2
            c2 = -4 * k3 - 12 * l1 - 12 * l2
            roots = np.roots([1, c2, c1, c0])
            if abs(roots[0])/4 < plim and abs(roots[1])/4 < plim and abs(roots[2])/4 < plim:
                return True
            else:
                # print(roots[0],roots[1],roots[2])
                return False
        else:
            # print(uni1, uni2, uni3, uni4, uni5)
            return False
    else:
        return False

def evade_inp(par):
    v1 = np.cos(np.arctan(par['tb']))*v
    v2 = np.sin(np.arctan(par['tb']))*v
    m11sq = (par['m12']-par['mu12']*par['vs'])*par['tb'] - (par['lam1']* v1**2 + (par['lam3']+par['lam4'])* v2**2  + par['lam1p']* par['vs']**2)
    m22sq = (par['m12']-par['mu12']*par['vs'])/par['tb'] - (par['lam2']* v2**2 + (par['lam3']+par['lam4'])* v1**2  + par['lam2p']* par['vs']**2)
    mssq = -par['mu12']*v1*v2/par['vs']-par['mus1']*par['vs']/2 -par['lam3pp']* par['vs']**2 /2 - par['lam1p'] *v1**2 - par['lam2p'] *v2**2
    parout = {}
    parout.update(par)
    parout.update({'m11sq': m11sq,
                'm22sq': m22sq,
                'mssq': mssq,
                   })
    return parout

def evade(eva_dir,scr_dir,n, inp):
    eva_inp = open("thdmsz3"+str(n)+".in", "w")
    eva_inp.write("\tbeta\tvSM\tvs\tL1\tL2\tL3\tL4\tK1\tK2\tK3\tmus1\tmu12\tm12sq\tm11sq\tm22sq\tmssq\n")
    eva_inp.close()
    eva_inp = open("thdmsz3"+str(n)+".in", "a")
    eva_inp.write("0\t"+str(math.atan(inp['tb']))+"\t"+str(v)+"\t"+str(inp['vs'])+"\t"+str(inp['lam1'])+"\t"+str(inp['lam2'])+"\t"+str(inp['lam3'])+"\t"+str(inp['lam4'])+"\t")
    eva_inp.write(str(inp['lam1p'])+"\t"+str(inp['lam2p'])+"\t"+str(inp['lam3pp'])+"\t"+str(inp['mus1'])+"\t"+str(inp['mu12'])+"\t"+str(inp['m12'])+"\t"+str(inp['m11sq'])+"\t"+str(inp['m22sq'])+"\t"+str(inp['mssq']))
    eva_inp.close()
    os.system("mv thdmsz3"+str(n)+".in "+eva_dir)
    os.system("cp "+scr_dir+"inputs/thdmsz3.cfg "+eva_dir+"thdmsz3"+str(n)+".cfg")
    os.system("sed -i 's+\"thdmsz3.in\"+\""+eva_dir+"thdmsz3"+str(n)+".in\"+g' "+eva_dir+"thdmsz3"+str(n)+".cfg")
    os.system("sed -i 's/thdmsz3out.tsv/thdmsz3out"+str(n)+".tsv/g' "+eva_dir+"thdmsz3"+str(n)+".cfg")
    os.system(eva_dir+"EVADE_THDMSZ3 "+eva_dir+"thdmsz3"+str(n)+".cfg"+" | grep -q \"string\"")
    os.system("rm "+eva_dir+"thdmsz3"+str(n)+".in")
    os.system("rm "+eva_dir+"thdmsz3"+str(n)+".cfg")
    dfeva = pd.read_csv("thdmsz3out"+str(n)+".tsv", sep='\t')
    os.system("rm thdmsz3out"+str(n)+".tsv")

    # print(dfeva['fast_B'][0])
    oup.vacstab = {'fast_B': dfeva['fast_B'][0]}

    if float(dfeva['fast_B'][0]) > 440 or (dfeva['fast_B'][0]) == -4 or (dfeva['fast_B'][0]) == -2:
        if float(dfeva['fast_B'][0]) == -4 or float(dfeva['fast_B'][0]) == -2:
            stab = 2
            oup.vacstab.update({'stability': stab})
        else:
            stab = 1
        return True
    else:
        stab = 0
        oup.vacstab.update({'stability': stab})
        return False




def ev_check(scr_dir, spc_dir, eva_dir,  n):
    os.chdir(spc_dir)
    #d_tadp1 = uti.read("SPheno.spc.THDMSZ3",70)
    #d_tadp2 = uti.read("SPheno.spc.THDMSZ3",71)
    #d_tadp3 = uti.read("SPheno.spc.THDMSZ3",72)
    f_spc = uti.read_spc('SPheno.spc.'+pdg.spn)['BLOCK']
    b_hmix = f_spc['HMIX']
    # m11sq = uti.read_data(b_hmix,20)
    # m22sq = uti.read_data(b_hmix,21)
    # mssq = uti.read_data(b_hmix,23)
    inp = {
        'lam1':uti.read_data(b_hmix,31),
        'lam2':uti.read_data(b_hmix,32),
        'lam3':uti.read_data(b_hmix,33),
        'lam4':uti.read_data(b_hmix,34),
        'lam1p':uti.read_data(b_hmix,38),
        'lam2p':uti.read_data(b_hmix,39),
        'lam3pp':uti.read_data(b_hmix,40),
        'mus1':uti.read_data(b_hmix,41),
        'mu12':uti.read_data(b_hmix,42),
        'm12':uti.read_data(b_hmix,22),
        'm11sq': uti.read_data(b_hmix,20),
        'm22sq' : uti.read_data(b_hmix,21),
        'mssq' : uti.read_data(b_hmix,23),
        'tb' : uti.read_data(b_hmix,103)/uti.read_data(b_hmix,102),
        'vs' : uti.read_data(f_spc['NMSSMRUN'],5),
    }
    eva_inp = open("thdmsz3"+str(n)+".in", "w")
    eva_inp.write("\tbeta\tvSM\tvs\tL1\tL2\tL3\tL4\tK1\tK2\tK3\tmus1\tmu12\tm12sq\tm11sq\tm22sq\tmssq\n")
    eva_inp.close()
    eva_inp = open("thdmsz3"+str(n)+".in", "a")
    eva_inp.write("0\t"+str(math.atan(inp['tb']))+"\t"+str(v)+"\t"+str(inp['vs'])+"\t"+str(inp['lam1'])+"\t"+str(inp['lam2'])+"\t"+str(inp['lam3'])+"\t"+str(inp['lam4'])+"\t")
    eva_inp.write(str(inp['lam1p'])+"\t"+str(inp['lam2p'])+"\t"+str(inp['lam3pp'])+"\t"+str(inp['mus1'])+"\t"+str(inp['mu12'])+"\t"+str(inp['m12'])+"\t"+str(inp['m11sq'])+"\t"+str(inp['m22sq'])+"\t"+str(inp['mssq']))
    eva_inp.close()
    os.system("mv thdmsz3"+str(n)+".in "+eva_dir)
    os.system("cp "+scr_dir+"inputs/thdmsz3.cfg "+eva_dir+"thdmsz3"+str(n)+".cfg")
    os.system("sed -i 's+\"thdmsz3.in\"+\""+eva_dir+"thdmsz3"+str(n)+".in\"+g' "+eva_dir+"thdmsz3"+str(n)+".cfg")
    os.system("sed -i 's/thdmsz3out.tsv/thdmsz3out"+str(n)+".tsv/g' "+eva_dir+"thdmsz3"+str(n)+".cfg")
    os.system(eva_dir+"EVADE_THDMSZ3 "+eva_dir+"thdmsz3"+str(n)+".cfg"+" | grep -q \"string\"")
    os.system("rm "+eva_dir+"thdmsz3"+str(n)+".in")
    os.system("rm "+eva_dir+"thdmsz3"+str(n)+".cfg")
    #os.system("mv "+eva_dir+"thdmsz3"+str(n)+".in "+spc_dir)
    #os.system("mv "+eva_dir+"thdmsz3"+str(n)+".cfg "+spc_dir)
    eva_re = open("thdmsz3out"+str(n)+".tsv", "r")
    line_evar = eva_re.readlines()
    if len(line_evar) == 1:
        eva_re.close()
        return False
    else:
        out_eva = line_evar[1].split("\t")
        fast_B = out_eva[5]
        eva_re.close()
        if float(fast_B) > 440 or float(fast_B) == -4 or float(fast_B) == -2:
            return True
        else:
            return False

    # if res_stu:
        #os.chdir(home_add+scr_add+out_add)
        #f_stu = open(str(n)+"/stu_results.csv", "w")
        #lst_stu = str(res_stu)
        #lst_stu = lst_stu.replace("[", "")
        #lst_stu = lst_stu.replace("]", "")
        #f_stu.write("T,S,U,chi2\n")
        #f_stu.write(lst_stu)
        #f_stu.close()
        # return True
    # else:
        # return False


def tri_h(inp, i,j,k):
    aEW = 1/132.50698
    Gf = 0.0000116639
    MZ = 91.188
    MH = 125.
    ee = 2*math.sqrt(aEW)*math.sqrt(math.pi)
    MW = math.sqrt(MZ**2/2. + math.sqrt(MZ**4/4. - (aEW*math.pi*MZ**2)/(Gf*math.sqrt(2))))
    sw = math.sqrt(1 - MW**2/MZ**2)
    vev = (2*MW*sw)/ee
    lam = MH**2/(2.*vev**2)
    lamhhh = -6*lam*vev

    v1 = v * math.cos(math.atan(inp['Tanb']))#*math.sqrt(2)
    v2 = v * math.sin(math.atan(inp['Tanb']))#*math.sqrt(2)
    vs = inp['vs']
    l1 = inp['lambda1']
    l2 = inp['lambda2']
    l3 = inp['lambda3']
    l4 = inp['lambda4']
    l1p = inp['lambda1prime']
    l2p = inp['lambda2prime']
    l3p = inp['lambda3primeprime']
    mu12 = inp['mu12']
    mus1 = inp['mus1']
    z = uti.mixing(inp['Alpha1'], inp['Alpha2'], inp['Alpha3'])
    i=i-1
    j=j-1
    k=k-1
    th1 = (z[i][0]*z[j][1]+z[i][1]*z[j][0])*(4*(l3+l4)*(v1*z[k][1]+v2*z[k][0])+2*mu12*z[k][2])
    th2 = (z[i][0]*z[j][2]+z[i][2]*z[j][0])*(4*l1p*(v1*z[k][2]+vs*z[k][0])+2*mu12*z[k][1])
    th3 = (z[i][1]*z[j][2]+z[i][2]*z[j][1])*(4*l2p*(v2*z[k][2]+vs*z[k][1])+2*mu12*z[k][0])
    thd1 = z[i][0]*z[j][0]*(3*l1*v1*z[k][0]+(l3+l4)*v2*z[k][1]+l1p*vs*z[k][2])*4
    thd2 = z[i][1]*z[j][1]*(3*l2*v2*z[k][1]+(l3+l4)*v1*z[k][0]+l2p*vs*z[k][2])*4
    thd3 = z[i][2]*z[j][2]*(4*l1p*v1*z[k][0]+4*l2p*v2*z[k][1]+(6*l3p*vs+2*mus1)*z[k][2])
    vhhh = (th1 + th2 + th3 + thd1 + thd2 + thd3)/(2*math.sqrt(2))
    lhhh = vhhh/lamhhh#(v*math.sqrt(2))
    return lhhh
