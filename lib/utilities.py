import random
import math
import numpy as np
from re import I
import pylha

def ransgn():
    ra = random.random()
    if ra >= 0.5:
        sgn = 1
    else:
        sgn = -1
    return sgn
 
def readfield(file):
    lst = []
    with open(file, 'r') as f:
        for line in f:
            if not line.strip() or line.strip().startswith('#'):
                continue
            fields = line.strip().split()
            lst.append(fields)
    return lst




def mixing(a1, a2, a3):
    lst_mxi = [[],[],[]]
    lst_mxi[0].append(math.cos(a1) * math.cos(a2))
    lst_mxi[0].append(math.sin(a1) * math.cos(a2))
    lst_mxi[0].append(math.sin(a2))
    lst_mxi[1].append(-math.sin(a1)*math.cos(a3)-math.cos(a1)*math.sin(a2)*math.sin(a3))
    lst_mxi[1].append(math.cos(a1)*math.cos(a3)-math.sin(a1)*math.sin(a2)*math.sin(a3))
    lst_mxi[1].append(math.cos(a2)*math.sin(a3))
    lst_mxi[2].append(math.sin(a1)*math.sin(a3)-math.cos(a1)*math.sin(a2)*math.cos(a3))
    lst_mxi[2].append(-math.sin(a1)*math.sin(a2)*math.cos(a3)-math.cos(a1)*math.sin(a3))
    lst_mxi[2].append(math.cos(a2)*math.cos(a3))
    return lst_mxi


def read_spc(f_spc):
    with open(f_spc, "r") as slhafile:
        lines = slhafile.read()
        spc = pylha.load(lines)
        return spc

def read_data(block, pdg):
    # f = read_spc(f_spc)['BLOCK']
    db = block['values']
    for i in range(len(db)):
        if int(db[i][0]) == int(pdg):
            return float(db[i][1])

def write_input(i_f, setup, i_lha):
    f = open(i_f, 'w')
    lstinp = pylha.dump(i_lha,'lha')
    with open(setup, 'r') as f_setup:
        str_setup = f_setup.read()
    lstinp = lstinp+(str_setup)
    f.write(lstinp)
    f.close()
    f_setup.close()
    return 0



# SPheno function



