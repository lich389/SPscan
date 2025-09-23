import os
import numpy as np

def readinput(spc):
    blockpar = spc['HMIX']['values']
    blockpar2 = spc['NMSSMRUN']['values']
    dict_par = {}
    for i in range(len(blockpar)):
        if blockpar[i][0] == 10:
            dict_par.update({'tb': np.tan(blockpar[i][1])})
        if blockpar[i][0] == 20:
            dict_par.update({'m11sq': blockpar[i][1]})
        if blockpar[i][0] == 21:
            dict_par.update({'m22sq': blockpar[i][1]})
        if blockpar[i][0] == 23:
            dict_par.update({'mssq': blockpar[i][1]})
        dict_par.update({'vS': blockpar2[1][1]})
    return dict_par

def read_mix(zh, l='h'):
    dict_mx = {}
    for ih in range(len(zh)):
            dict_mx.update({'R'+l+str(zh[ih][0])+str(zh[ih][1]): zh[ih][2]})

    return dict_mx

def read_mass(block_mass):
    dict_mass={}
    for i_m in range(len(block_mass)):
        if block_mass[i_m][0] == 25:
            dict_mass.update({'mh1': block_mass[i_m][1]})
        if block_mass[i_m][0] == 35:
            dict_mass.update({'mh2': block_mass[i_m][1]})
        if block_mass[i_m][0] == 45:
            dict_mass.update({'mh3': block_mass[i_m][1]})
        if block_mass[i_m][0] == 36:
            dict_mass.update({'ma1': block_mass[i_m][1]})
        if block_mass[i_m][0] == 46:
            dict_mass.update({'ma2': block_mass[i_m][1]})
        if block_mass[i_m][0] == 37:
            dict_mass.update({'mhp': block_mass[i_m][1]})
    return dict_mass

def read_coupling_boson(block_coupl):
    dict_coup = {}
    for i_c in range(len(block_coupl)):
        if block_coupl[i_c][1] == 3:
            pdgh = get_id(abs(int(block_coupl[i_c][2])))
            pdg1 = get_id(abs(int(block_coupl[i_c][3])))
            pdg2 = get_id(abs(int(block_coupl[i_c][4])))
            dict_coup.update({'c_'+pdgh+pdg1+pdg2:block_coupl[i_c][0]})
    return dict_coup


def read_coupling_fermion(block_coupl):
    dict_coup = {}
    for i_c in range(len(block_coupl)):
        pdgh = get_id(abs(int(block_coupl[i_c][3])))
        pdg1 = get_id(abs(int(block_coupl[i_c][4])))
        pdg2 = get_id(abs(int(block_coupl[i_c][5])))
        dict_coup.update({'c_'+pdgh+pdg1+pdg2:block_coupl[i_c][0]})
        dict_coup.update({'ctd_'+pdgh+pdg1+pdg2:block_coupl[i_c][1]})
    return dict_coup


    
def get_id(id):
    if abs(int(id)) ==  25:
        return 'h1'
    if abs(int(id)) ==  35:
        return 'h2'
    if abs(int(id)) ==  45:
        return 'h3'
    if abs(int(id)) ==  36:
        return 'a1'
    if abs(int(id)) ==  46:
        return 'a2'
    if abs(int(id)) ==  37:
        return 'hp'
    if abs(int(id)) ==  21:
        return 'g'
    if abs(int(id)) ==  22:
        return 'gam'
    if abs(int(id)) ==  23:
        return 'Z'
    if abs(int(id)) ==  24:
        return 'W'
    if abs(int(id)) ==  1:
        return 'd'
    if abs(int(id)) ==  2:
        return 'u'
    if abs(int(id)) ==  3:
        return 's'
    if abs(int(id)) ==  4:
        return 'c'
    if abs(int(id)) ==  5:
        return 'b'
    if abs(int(id)) ==  6:
        return 't'
    if abs(int(id)) ==  11:
        return 'e'
    if abs(int(id)) ==  12:
        return 'nue'
    if abs(int(id)) ==  13:
        return 'mu'
    if abs(int(id)) ==  14:
        return 'numu'
    if abs(int(id)) ==  15:
        return 'tau'
    if abs(int(id)) ==  16:
        return 'nutau'


def read_decay(decay):
    dict_width = {}
    for id in  decay.keys():
        pdgmt = get_id(id)
        dict_width.update({'w_'+pdgmt:decay[id]['info'][0]})
        lstbr = decay[id]['values']
        for idxbr in range(len(lstbr)):
            pdg1 = get_id(int(lstbr[idxbr][2]))
            pdg2 = get_id(int(lstbr[idxbr][3]))
            dict_width.update({'br_'+pdgmt+'_'+str(pdg1)+str(pdg2):lstbr[idxbr][0]})
    
    return dict_width
    



def read_angle(sdir):
    dict_mix = {}
    if os.path.isfile(sdir+"/mixinginput.csv"):
        mxi = open(sdir+"/mixinginput.csv", "r")
        str_mxi = mxi.readline()
        lst_mxi = str_mxi.split(",")
        for ai in range(len(lst_mxi)):
            dict_mix.update({'Alpha'+str(ai+1): float(lst_mxi[ai])})
        mxi.close()
    return dict_mix

import math
def cpvphase(dict):
    cpvh1tt =    math.atan(dict['ctd_h1tt']/dict['c_h1tt'])
    cpvh2tt =    math.atan(dict['ctd_h2tt']/dict['c_h2tt'])
    cpvh3tt =    math.atan(dict['ctd_h3tt']/dict['c_h3tt'])
    cpvh1tautau =math.atan(dict['ctd_h1tautau']/dict['c_h1tautau'])
    cpvh2tautau =math.atan(dict['ctd_h2tautau']/dict['c_h2tautau'])
    cpvh3tautau =math.atan(dict['ctd_h3tautau']/dict['c_h3tautau'])
    if dict['c_a1tt'] == 0:
        cpva1tt = math.pi/2
    else:
        cpva1tt =    math.atan(dict['ctd_a1tt']/dict['c_a1tt'])
    if dict['c_a1tautau'] == 0:
        cpva1tautau = math.pi/2
    else:
        cpva1tautau =math.atan(dict['ctd_a1tautau']/dict['c_a1tautau'])

    if dict['c_a2tt'] == 0:
        cpva2tt = math.pi/2
    else:
        cpva2tt =    math.atan(dict['ctd_a2tt']/dict['c_a2tt'])
    if dict['c_a2tautau'] == 0:
        cpva2tautau = math.pi/2
    else:
        cpva2tautau =math.atan(dict['ctd_a2tautau']/dict['c_a2tautau'])

    return {'cpvh1tt': math.sin(2*cpvh1tt), 
            'cpvh1tautau': math.sin(2*cpvh1tautau), 
            'cpvh2tt': math.sin(2*cpvh2tt), 
            'cpvh2tautau': math.sin(2*cpvh2tautau), 
            'cpvh3tt': math.sin(2*cpvh3tt),
            'cpvh3tautau': math.sin(2*cpvh3tautau),
            'cpva1tt': math.sin(2*cpva1tt),
            'cpva1tautau': math.sin(2*cpva1tautau),
            'cpva2tt': math.sin(2*cpva2tt),
            'cpva2tautau': math.sin(2*cpva2tautau),}


