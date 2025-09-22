import os
import pylha

def readinput(spc):
    blockpar = spc['HMIX']['values']
    blockpar2 = spc['NMSSMRUN']['values']
    dict_par = {}
    for i in range(len(blockpar)):
        if blockpar[i][0] == 31:
            dict_par.update({'Lambda1': blockpar[i][1]})
        if blockpar[i][0] == 34:
            dict_par.update({'Lambda4': blockpar[i][1]})
        if blockpar[i][0] == 33:
            dict_par.update({'Lambda3': blockpar[i][1]})
        if blockpar[i][0] == 32:
            dict_par.update({'Lambda2': blockpar[i][1]})
        if blockpar[i][0] == 38:
            dict_par.update({'Lambda1p': blockpar[i][1]})
        if blockpar[i][0] == 39:
            dict_par.update({'Lambda2p': blockpar[i][1]})
        if blockpar[i][0] == 40:
            dict_par.update({'Lambda3pp': blockpar[i][1]})
        if blockpar[i][0] == 41:
            dict_par.update({'MUS1': blockpar[i][1]})
        if blockpar[i][0] == 42:
            dict_par.update({'MU12': blockpar[i][1]})
        if blockpar[i][0] == 102:
            dict_par.update({'v1': blockpar[i][1]})
        if blockpar[i][0] == 103:
            dict_par.update({'v2': blockpar[i][1]})
        dict_par.update({'vS': blockpar2[1][1]})
    return dict_par

def read_mix(zh, l='h'):
    dict_mx = {}
    for ih in range(len(zh)):
        if zh[ih][0] == 1 and zh[ih][1] ==1:
            dict_mx.update({'z'+l+'11': zh[ih][2]})
        if zh[ih][0] == 1 and zh[ih][1] ==2:
            dict_mx.update({'z'+l+'12': zh[ih][2]})
        if zh[ih][0] == 1 and zh[ih][1] ==3:
            dict_mx.update({'z'+l+'13': zh[ih][2]})
        if zh[ih][0] == 2 and zh[ih][1] ==1:
            dict_mx.update({'z'+l+'21': zh[ih][2]})
        if zh[ih][0] == 2 and zh[ih][1] ==2:
            dict_mx.update({'z'+l+'22': zh[ih][2]})
        if zh[ih][0] == 2 and zh[ih][1] ==3:
            dict_mx.update({'z'+l+'23': zh[ih][2]})
        if zh[ih][0] == 3 and zh[ih][1] ==1:
            dict_mx.update({'z'+l+'31': zh[ih][2]})
        if zh[ih][0] == 3 and zh[ih][1] ==2:
            dict_mx.update({'z'+l+'32': zh[ih][2]})
        if zh[ih][0] == 3 and zh[ih][1] ==3:
            dict_mx.update({'z'+l+'33': zh[ih][2]})

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
        if block_coupl[i_c][2] == 25 and block_coupl[i_c][1] ==3:
            #h1_coup
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 24:
                dict_coup.update({'c_h1WW':block_coupl[i_c][0]})
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 23:
                dict_coup.update({'c_h1ZZ':block_coupl[i_c][0]})
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 22:
                dict_coup.update({'c_h1gamgam':block_coupl[i_c][0]})
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 21:
                dict_coup.update({'c_h1gluglu':block_coupl[i_c][0]})
        if block_coupl[i_c][2] == 35 and block_coupl[i_c][1] ==3:
            #h2_coup
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 24:
                dict_coup.update({'c_h2WW':block_coupl[i_c][0]})
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 23:
                dict_coup.update({'c_h2ZZ':block_coupl[i_c][0]})
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 22:
                dict_coup.update({'c_h2gamgam':block_coupl[i_c][0]})
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 21:
                dict_coup.update({'c_h2gluglu':block_coupl[i_c][0]})
        if block_coupl[i_c][2] == 45 and block_coupl[i_c][1] ==3:
            #h3_coup
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 24:
                dict_coup.update({'c_h3WW':block_coupl[i_c][0]})
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 23:
                dict_coup.update({'c_h3ZZ':block_coupl[i_c][0]})
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 22:
                dict_coup.update({'c_h3gamgam':block_coupl[i_c][0]})
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 21:
                dict_coup.update({'c_h3gluglu':block_coupl[i_c][0]})
        if block_coupl[i_c][2] == 36 and block_coupl[i_c][1] ==3:
            #a1_coup
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 22:
                dict_coup.update({'c_a1gamgam':block_coupl[i_c][0]})
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 21:
                dict_coup.update({'c_a1gluglu':block_coupl[i_c][0]})
        if block_coupl[i_c][2] == 46 and block_coupl[i_c][1] ==3:
            #a2_coup
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 22:
                dict_coup.update({'c_a2gamgam':block_coupl[i_c][0]})
            if block_coupl[i_c][3] == block_coupl[i_c][4] == 21:
                dict_coup.update({'c_a2gluglu':block_coupl[i_c][0]})
    return dict_coup


def read_coupling_fermion(block_coupl):
    dict_coup = {}
    for i_c in range(len(block_coupl)):
        if block_coupl[i_c][3] == 25 and block_coupl[i_c][2] ==3:
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 5:
                dict_coup.update({'c_h1bb':block_coupl[i_c][0]})
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 6:
                dict_coup.update({'c_h1tt':block_coupl[i_c][0]})
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 15:
                dict_coup.update({'c_h1tautau':block_coupl[i_c][0]})
        if block_coupl[i_c][3] == 35 and block_coupl[i_c][2] ==3:
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 5:
                dict_coup.update({'c_h2bb':block_coupl[i_c][0]})
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 6:
                dict_coup.update({'c_h2tt':block_coupl[i_c][0]})
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 15:
                dict_coup.update({'c_h2tautau':block_coupl[i_c][0]})
        if block_coupl[i_c][3] == 45 and block_coupl[i_c][2] ==3:
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 5:
                dict_coup.update({'c_h3bb':block_coupl[i_c][0]})
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 6:
                dict_coup.update({'c_h3tt':block_coupl[i_c][0]})
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 15:
                dict_coup.update({'c_h3tautau':block_coupl[i_c][0]})
        if block_coupl[i_c][3] == 36 and block_coupl[i_c][2] ==3:
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 5:
                dict_coup.update({'c_a1bb':block_coupl[i_c][1]})
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 6:
                dict_coup.update({'c_a1tt':block_coupl[i_c][1]})
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 15:
                dict_coup.update({'c_a1tautau':block_coupl[i_c][1]})
        if block_coupl[i_c][3] == 46 and block_coupl[i_c][2] ==3:
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 5:
                dict_coup.update({'c_a2bb':block_coupl[i_c][1]})
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 6:
                dict_coup.update({'c_a2tt':block_coupl[i_c][1]})
            if block_coupl[i_c][4] == block_coupl[i_c][5] == 15:
                dict_coup.update({'c_a2tautau':block_coupl[i_c][1]})
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
    



def read_mixing(sdir):
    dict_mix = {}
    if os.path.isfile(sdir+"/mixinginput.csv"):
        mxi = open(sdir+"/mixinginput.csv", "r")
        str_mxi = mxi.readline()
        lst_mxi = str_mxi.split(",")
        for ai in range(len(lst_mxi)):
            dict_mix.update({'Alpha'+str(ai+1): float(lst_mxi[ai])})
        mxi.close()
    return dict_mix
