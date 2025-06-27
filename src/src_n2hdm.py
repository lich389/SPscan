import math
import os
import numpy as np
import random
from lib import utilities as uti
from lib import scanf as scf
from src import STU_2hdms as stu
from lib import input as ifunc
import json
import pandas as pd

spn = 'N2HDM'
v = 246.2205691
nd = 3
class par:
    neuID = [25, 35, 45, 36]
    charID = [37]
    vs = 0
    tb = 0
    a1 = 0
    a2 = 0
    a3 = 0
    ch1bt = 0
    ch1v = 0
    align = 0
    mh1 = 0
    mh2 = 0
    mh3 = 0
    ma = 0
    mp = 0
    mutil = 0
    minpar = {
        "lam1":{'pdg':1,'value':0},
        "lam2":{'pdg':2,'value':0},
        "lam3":{'pdg':3,'value':0},
        "lam4":{'pdg':4,'value':0},
        "lam5":{'pdg':5,'value':0},
        "lam6":{'pdg':6,'value':0},
        "lam7":{'pdg':7,'value':0},
        "lam8":{'pdg':8,'value':0},
        "m12": {'pdg':9,'value':0},
        "vs":  {'pdg':11,'value':0},
        "tb":  {'pdg':10,'value':0}
    }
    extpar = None

# ------------------------------SET SCAN PARAMETERS--------------------------

def ran_inp(inpf):
    # ------------------------------SET RANDOM SCAN PARAMETERS--------------------------
    # generate the random inputs
    inp = json.load(open(inpf))

    par.tb = ifunc.para_inp(inp['tb'])
    par.align = ifunc.para_inp(inp['align'])
    par.ch1bt = ifunc.para_inp(inp['ch1bt'])
    par.ch1v = ifunc.para_inp(inp['ch1v'])
    par.mh1 = ifunc.para_inp(inp['mh1'])
    par.mh2 = ifunc.para_inp(inp['mh2'])
    par.mh3 = ifunc.para_inp(inp['mh3'])
    par.mp = ifunc.para_inp(inp['mp'])
    par.ma = ifunc.para_inp(inp['ma'])
    # par.mutil = ifunc.para_inp(inp['m12'])**2*(par.tb+1/par.tb)
    par.mutil = ifunc.para_inp(inp['ma'])**2
    par.vs = ifunc.para_inp(inp['vs'])

    


# def ran_inp(inp):

#     # take random number
#     data = json.load(open(inp))

#     tb = random.uniform(float(data['tb']['min']),float(data['tb']['max']))

#     align = -(math.pi/2+random.uniform(float(data['alignment']['min']),float(data['alignment']['max'])))#*uti.ransgn()
#     c_h1bt = random.uniform(float(data['ch1bt']['min']),float(data['ch1bt']['max']))
#     mu_h1v = random.uniform(float(data['ch1v']['min']),float(data['ch1v']['max']))
#     bt = math.atan(tb)
#     a1 = math.atan(tb/c_h1bt)#*uti.ransgn()
#     a3 = (bt-a1-align)*(1)#*uti.ransgn()
#     a2 = math.acos(mu_h1v/math.cos(bt-a1))#*sgn

#     mh1 = random.uniform(float(data['mh1']['min']), float(data['mh1']['max']))
#     mh2 = random.uniform(float(data['mh2']['min']), float(data['mh2']['max']))
#     mp = random.uniform(float(data['mp']['min']), float(data['mp']['max']))
#     ma = random.uniform(float(data['ma']['min']), float(data['ma']['max']))
#     mh3 = random.uniform(float(data['mh3']['min']), float(data['mh3']['max']))
#     # ma = random.uniform(float(data['ma']['min']), float(data['ma']['max']))
#     # mut = random.uniform(float(data['mutil']['min']), float(data['mutil']['max']))
#     vs = random.uniform(float(data['vs']['min']), float(data['vs']['max']))
#     mutil = (ma+random.uniform(-float(data['mutil']['dmutil']), float(data['mutil']['dmutil'])))**2#mut**2  
#     # mutil = mut**2  
#     m12 = (mutil)/(tb+1/tb)
#     return vs, tb, a1, a2, a3,  mh1, mh2, mh3, ma, mp, mutil

    #########################################################################################################
def initinp():
    bt = math.atan(par.tb)
    par.a1 = np.arctan(par.tb/par.ch1bt)
    par.a2 = np.arccos(par.ch1v/(np.cos(bt-par.a1)))
    par.a3 = (bt-par.a1-np.pi/2 + par.align)

    r_m = uti.mixing(par.a1, par.a2, par.a3)
    r11 = r_m[0][0]
    r12 = r_m[0][1]
    r13 = r_m[0][2]
    r21 = r_m[1][0]
    r22 = r_m[1][1]
    r23 = r_m[1][2]
    r31 = r_m[2][0]
    r32 = r_m[2][1]
    r33 = r_m[2][2]
    par.minpar['lam1']['value'] = (par.mh1**2 * r11**2 + par.mh2**2 * r21**2 + par.mh3**2 * r31**2 - par.mutil* math.sin(bt)**2)/(v**2 * math.cos(bt)**2)
    par.minpar['lam2']['value'] = (par.mh1**2 * r12**2 + par.mh2**2 * r22**2 + par.mh3**2 * r32**2 - par.mutil* math.cos(bt)**2)/(v**2 * math.sin(bt)**2)
    par.minpar['lam4']['value'] = (par.mutil + par.ma**2 - 2*par.mp**2)/(v**2)
    par.minpar['lam5']['value'] = (par.mutil - par.ma**2)/(v**2)
    par.minpar['lam3']['value'] = (par.mh1**2 * r11*r12 + par.mh2**2 * r21*r22 + par.mh3**2 * r31*r32)/(v**2 * math.sin(bt)*math.cos(bt)) + (2*par.mp**2 - par.mutil)/(v**2) 
    par.minpar['lam7']['value'] = (par.mh1**2 * r11*r13 + par.mh2**2 * r21*r23 + par.mh3**2 * r31*r33)/(par.vs*v*math.cos(bt))
    par.minpar['lam8']['value'] = (par.mh1**2 * r12*r13 + par.mh2**2 * r22*r23 + par.mh3**2 * r32*r33)/(par.vs*v*math.sin(bt))
    par.minpar['lam6']['value'] = (par.mh1**2 * r13**2 + par.mh2**2 * r23**2 + par.mh3**2 * r33**2)/(par.vs**2)

    par.minpar['m12']['value']=par.mutil*np.sin(bt)*np.cos(bt)
    par.minpar['vs']['value']=par.vs
    par.minpar['tb']['value']=par.tb

    return par

def bfb(par):
    l1 = par.minpar['lam1']['value']
    l2 = par.minpar['lam2']['value']
    l3 = par.minpar['lam3']['value']
    l4 = par.minpar['lam4']['value']
    l5 = par.minpar['lam5']['value']
    l6 = par.minpar['lam6']['value']
    l7 = par.minpar['lam7']['value']
    l8 = par.minpar['lam8']['value']
 
    if l1>0 and l2>0 and l6>0:
        C1 = math.sqrt(l1*l6)
        C2 = math.sqrt(l2*l6)
        C3 = math.sqrt(l1*l2)
        C4 = math.sqrt(l1/l2)*l8
        if (l4-abs(l5))>0:
            D = 0
        else:
            D = l4-abs(l5)
        BFB11 = C1 + l7
        BFB12 = C2 + l8
        BFB13 = C3 + l3 + D
        BFB14 = C4 + l7
        if BFB11 > 0 and BFB12 > 0 and BFB13 > 0 and BFB14 >=0:
            Omega1 = True
        else:
            Omega1 = False

        BFB21 = C2 - l8
        BFB22 = l8 + C2
        BFB23 = C1 + l7
        BFB24 = -l7 - C4
        if BFB21 >= 0 and BFB22 > 0 and BFB23 > 0 and BFB24 >=0:
            BFB25 = math.sqrt((l7**2-l1*l6)*(l8**2-l2*l6))-l7*l8+(D+l3)*l6
            if BFB25 > 0:
                Omega2 = True
            else:
                Omega2 = False
        else:
            Omega2 = False

        if Omega1 or Omega2:
            #print(Omega1)
            return True
        else:
            #print(BFB23, BFB22)
            return False
    else:
        return False

def uni(par):
    plim = 8*math.pi
    l1 = par.minpar['lam1']['value']
    l2 = par.minpar['lam2']['value']
    l3 = par.minpar['lam3']['value']
    l4 = par.minpar['lam4']['value']
    l5 = par.minpar['lam5']['value']
    l6 = par.minpar['lam6']['value']
    l7 = par.minpar['lam7']['value']
    l8 = par.minpar['lam8']['value']
 
    if abs(l7) < plim and abs(l8) < plim:
        uni1 = l3 - l4
        #uni2 = abs(l3 + 2*l4) + abs(3*l5)
        uni2 = l3 + 2*l4 + 3*l5
        uni22 = l3 + 2*l4 - 3*l5
        uni3 = (l1 + l2 + math.sqrt((l1-l2)**2 + 4 * l4**2))/2
        uni4 = (l1 + l2 + math.sqrt((l1-l2)**2 + 4 * l5**2))/2
        if abs(uni1) < plim and abs(uni2) < plim and abs(uni22) < plim and abs(uni3) < plim and abs(uni4) < plim:
            c0 = 4*(-27*l1*l2*l6 + 12* l3**2 *l6 + 12*l3*l4*l6 + 3*l4**2 *l6 + 6*l2* l7**2 - 8*l3*l7*l8-4*l4*l7*l8 + 6*l1* l8**2)
            c1 = 36*l1*l2 - 16*l3**2-16*l3*l4 - 4*l4*2 + 18*l1*l6 + 18*l2*l6 - 4*l7**2 - 4*l8**2
            c2 = -6 * (l1+l2) - 3*l6
            roots = np.roots([1, c2, c1, c0])
            #print(roots)
            if abs(roots[0]/2) < plim and abs(roots[1]/2) < plim and abs(roots[2]/2) < plim:
                return True
            else:
                return False
        else:
            return False
    else:
        return False
    #return True
# ??????????????????????????????????????????????????
def bfb1(l0, l1, l2, l3, l4, l5, l6, l7):
    D = min(l3 - abs(l4), 0.0)
    O1 = (l0 > 0) and (l1 > 0) and (l5 > 0) and (math.sqrt(l0 * l5) + l6 > 0) and (math.sqrt(l1 * l5) + l7 > 0) and (math.sqrt(l0 * l1) + l2 + D > 0) and (l6 + math.sqrt(l0 / l1) * l7 >= 0)
    O2 = (l0 > 0) and (l1 > 0) and (l5 > 0) and (l1 * l5 >= l7 * l7) and (l6 + math.sqrt(l0 / l1) * l7 <= 0) and (math.sqrt(l0 * l5) + l6 > 0) and (math.sqrt((l6 * l6 - l0 * l5) * (l7 * l7 - l1 * l5)) > l6 * l7 - (D + l2) * l5)
    b_r = O1 or O2
    return b_r
# ???????????????????????????????????????????????


def ev_check(oup_add, eva_dir, n):
# def ev_check(scr_dir, spc_dir, eva_dir, n):
    os.chdir(oup_add+'/'+str(n))
    f_spc = scf.read_spc(oup_add+'/'+str(n)+'/'+'SPheno.spc.N2HDM')['BLOCK']
    b_hmix = f_spc['HMIX']
    # d_tadp1 = uti.read("SPheno.spc.N2HDM",69)
    # d_tadp2 = uti.read("SPheno.spc.N2HDM",70)
    # d_tadp3 = uti.read("SPheno.spc.N2HDM",68)
    m11sq =scf.read_data(b_hmix,20)
    m22sq =scf.read_data(b_hmix,21)
    mssq = scf.read_data(b_hmix,23)
    lam1 = scf.read_data(b_hmix,31)
    lam2 = scf.read_data(b_hmix,32)
    lam3 = scf.read_data(b_hmix,33)
    lam4 = scf.read_data(b_hmix,34)
    lam5 = scf.read_data(b_hmix,35)
    lam6 = scf.read_data(b_hmix,36)
    lam7 = scf.read_data(b_hmix,37)
    lam8 = scf.read_data(b_hmix,38)
    m12 =  scf.read_data(b_hmix,22)
    beta = scf.read_data(b_hmix,10)
    vs =   scf.read_data(f_spc['NMSSMRUN'],5)
    eva_inp = open(oup_add+'/'+str(n)+'/'+"evade_n2hdm.in", "w")
    eva_inp.write("\tbeta\tvSM\tvs\tL1\tL2\tL3\tL4\tL5\tL6\tL7\tL8\tm12sq\tm11sq\tm22sq\tmssq\n")
    eva_inp.close()
    eva_inp = open(oup_add+'/'+str(n)+'/'+"evade_n2hdm.in", "a")
    eva_inp.write("0\t"+str(beta)+"\t"+str(v)+"\t"+str(vs)+"\t"+str(lam1)+"\t"+str(lam2)+"\t"+str(lam3)+"\t"+str(lam4)+"\t")
    eva_inp.write(str(lam5)+"\t"+str(lam6)+"\t"+str(lam7)+"\t"+str(lam8)+"\t"+str(m12)+"\t"+str(m11sq)+"\t"+str(m22sq)+"\t"+str(mssq))
    eva_inp.close()
    # os.system("mv N2HDM"+str(n)+".in "+eva_dir)
    os.system("cp /home/licheng/Code/myscripts/sphenoscan2/inputs/n2hdm.cfg "+oup_add+'/'+str(n))
    # os.system("sed -i 's+N2HDM.in+"+eva_dir+"N2HDM"+str(n)+".in+g' "+eva_dir+"n2hdm"+str(n)+".cfg")
    # os.system("sed -i 's/N2HDM.tsv/N2HDM"+str(n)+".tsv/g' "+eva_dir+"n2hdm"+str(n)+".cfg")
    os.system(eva_dir+"EVADE_N2HDM "+oup_add+'/'+str(n)+"/n2hdm.cfg")
    # os.system("rm "+eva_dir+"N2HDM"+str(n)+".in")
    # os.system("rm "+eva_dir+"n2hdm"+str(n)+".cfg")
    dfeva = pd.read_csv(oup_add+'/'+str(n)+"/evade_n2hdm.tsv", sep='\t')
    # eva_re = open("N2HDM"+str(n)+".tsv", "r")
    # line_evar = eva_re.readlines()
    os.chdir(oup_add)
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
    # if len(line_evar) == 1:
    #     eva_re.close()
    #     os.system("rm N2HDM"+str(n)+".tsv")
    #     return False
    # else:
    #     out_eva = line_evar[1].split("\t")
    #     fast_B = out_eva[5]
    #     eva_re.close()
    #     if float(fast_B) > 440 or float(fast_B) == -4 or float(fast_B) == -2:
    #             #os.system("mv "+eva_dir+"N2HDM"+str(n)+".tsv"+spc_dir)
    #         return True
    #     else:
    #         os.system("rm N2HDM"+str(n)+".tsv ")
    #         return False

class oup:
    bfbct = {}
    unict = {}
    vacstab = {}
    stu = {}
    maspar = {}

def recmas():
    oup.maspar.update({
        "tb":par.tb,
        "vs":par.vs,
        "a1":par.a1,
        "a2":par.a2,
        "a3":par.a3,
        "mh1":par.mh1,
        "mh2":par.mh2,
        "mh3":par.mh3,
        "ma":par.ma,
        "mp":par.mp,
        "mutild":np.sqrt(par.mutil),
        "align":par.align,
        "ch1bt":par.ch1bt,
        "ch1v":par.ch1v
    })
    return oup.maspar
# def ewp_check(par):
#     res_stu = stu.STU(par.mh1, par.mh2, par.mh3, par.ma, 0,par.mp, par.tb, par.a1, par.a2, par.a3, 0)
#     if res_stu[3] < 7.81:
#         #f_stu = open("stu_results.csv", "w")
#         #lst_stu = str(res_stu)
#         #lst_stu = lst_stu.replace("[", "")
#         #lst_stu = lst_stu.replace("]", "")
#         #f_stu.write("T,S,U,chi2\n")
#         #f_stu.write(lst_stu)
#         #f_stu.close()
#         return True
#     else:
#         return False


def ewp_check(par):
    res_stu = stu.STUchk(par.mh1, par.mh2, par.mh3, par.ma, par.ma, par.mp, par.tb, par.a1, par.a2, par.a3, 0)
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