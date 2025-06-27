import os
import pylha



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


def read_width(decay):
    dict_width = {
            'w_h1':decay['25']['info'][0],
            'w_h2':decay['35']['info'][0],
            'w_h3':decay['45']['info'][0],
            'w_a1':decay['36']['info'][0],
            'w_hp':decay['37']['info'][0],
            }
    try:
        dict_width.update({'w_a2':decay['46']['info'][0]})
    except:
         pass
    # dict_width={}
    # for parts in decay.keys():
    #     print(parts)
    #     dict_width.update({'w_h1':decay[parts]['info'][0]})
    
    return dict_width
    

def read_decay(block_decay):
    dict_decay = {}
    mh1_br = block_decay['25']['values']
    mh2_br = block_decay['35']['values']
    mh3_br = block_decay['45']['values']
    ma1_br = block_decay['36']['values']
    mhp_br = block_decay['37']['values']

    for i_d1 in range(len(mh1_br)):
        if mh1_br[i_d1][2] == mh1_br[i_d1][3] == 22:
                dict_decay.update({'br_h1gamgam':mh1_br[i_d1][0]})
        if mh1_br[i_d1][2] == mh1_br[i_d1][3] == 21:
                dict_decay.update({'br_h1gluglu':mh1_br[i_d1][0]})
        if mh1_br[i_d1][2] == mh1_br[i_d1][3] == 23:
                dict_decay.update({'br_h1ZZ':mh1_br[i_d1][0]})
        if abs(mh1_br[i_d1][2]) == abs(mh1_br[i_d1][3]) == 24:
                dict_decay.update({'br_h1WW':mh1_br[i_d1][0]})
        if abs(mh1_br[i_d1][2]) == abs(mh1_br[i_d1][3]) == 5:
                dict_decay.update({'br_h1bb':mh1_br[i_d1][0]})
        if abs(mh1_br[i_d1][2]) == abs(mh1_br[i_d1][3]) == 15:
                dict_decay.update({'br_h1tautau':mh1_br[i_d1][0]})
        if abs(mh1_br[i_d1][2]) == abs(mh1_br[i_d1][3]) == 6:
                dict_decay.update({'br_h1tautau':mh1_br[i_d1][0]})

    for i_d2 in range(len(mh2_br)):
        if mh2_br[i_d2][2] == mh2_br[i_d2][3] == 22:
                dict_decay.update({'br_h2gamgam':mh2_br[i_d2][0]})
        if mh2_br[i_d2][2] == mh2_br[i_d2][3] == 21:
                dict_decay.update({'br_h2gluglu':mh2_br[i_d2][0]})
        if mh2_br[i_d2][2] == mh2_br[i_d2][3] == 23:
                dict_decay.update({'br_h2ZZ':mh2_br[i_d2][0]})
        if abs(mh2_br[i_d2][2]) == abs(mh2_br[i_d2][3]) == 24:
                dict_decay.update({'br_h2WW':mh2_br[i_d2][0]})
        if abs(mh2_br[i_d2][2]) == abs(mh2_br[i_d2][3]) == 5:
                dict_decay.update({'br_h2bb':mh2_br[i_d2][0]})
        if abs(mh2_br[i_d2][2]) == abs(mh2_br[i_d2][3]) == 15:
                dict_decay.update({'br_h2tautau':mh2_br[i_d2][0]})
        if abs(mh2_br[i_d2][2]) == abs(mh2_br[i_d2][3]) == 6:
                dict_decay.update({'br_h2tautau':mh2_br[i_d2][0]})

    try:
         ma2_br = block_decay['46']['values']
    except:
         pass
    return dict_decay

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
