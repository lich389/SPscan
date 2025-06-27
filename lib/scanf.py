import pylha
import sys
import os
import json
import time
import pandas as pd
import numpy as np

import lib.higgstools as ht
import lib.flavor as flv

class init:
    inp_dir = './'
    out_add = './results/'
    sp_dir = './'
    home_add = './'
    scr_add = './'
    hb_dir = './'
    hs_dir = './'
    eva_dir = './'
    arg_uni = True
    arg_bfb = True
    arg_stu = True
    arg_ht = True
    arg_flv = True
    arg_vstb = True
    arg_dm = True
    n = 0

class arg:
    hb_exbr = True
    hs_exbr = False
    ex95 = True
    hb_q = False
    hs_q = False

class oup:
    massoup = {}
    constoup = {
        # 'exclusion':[],
        }
    htinput = None

def pref_init():

    pref = json.load(open('prefix.json'))
    init.home_add = pref['home']
    init.scr_add = pref['scan']
    init.sp_dir = pref['SPheno']
    init.omg_dir = pref['micromega']
    init.hb_dir = pref['hbdataset']
    init.hs_dir = pref['hsdataset']
    init.inp_dir = pref['input_path']
    init.eva_dir = pref['evade']
    init.infocheck = pref['print check']
    init.n = int(pref['n'])
    init.arg_uni = pref['unitarity check']
    init.arg_bfb = pref['boundedness from below check']
    init.arg_stu = pref['ew precision check']

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


def SP_run(srcf,n, out_add = init.out_add):
    ############# initialize ##############
    inp_dir = init.inp_dir
    out_add = init.out_add
    sp_dir = init.sp_dir
    srcf.initinp()
    da_inp = srcf.par.minpar
    da_extp = srcf.par.extpar
    model = srcf.spn
    lhinp = read_spc(inp_dir + 'LesHouches.in.'+model)

    # print(da_inp.keys())
    
    os.chdir(out_add)
    # Check whether all minpar are provided
    if len(lhinp['BLOCK']['MINPAR']['values']) != len(da_inp):
        print('invalid input')
        sys.exit(1)

    
    # Give the input to LesHouches input
    for park in da_inp.keys():
        for ip_p in range(len(lhinp['BLOCK']['MINPAR']['values'])):
            if lhinp['BLOCK']['MINPAR']['values'][ip_p][0] == da_inp[park]['pdg']:
                lhinp['BLOCK']['MINPAR']['values'][ip_p][1] = da_inp[park]['value']
    # print((lhinp['BLOCK']['MINPAR']['values']))
    # give extra parameters
    if da_extp != None:
        for parek in da_extp.keys():
            for ip_p in range(len(lhinp['BLOCK']['EXTPAR']['values'])):
                if lhinp['BLOCK']['EXTPAR']['values'][ip_p][0] == da_extp[parek]['pdg']:
                    lhinp['BLOCK']['EXTPAR']['values'][ip_p][1] = da_extp[parek]['value']

    write_input('/dev/shm/LesHouches.in.'+model+str(n), inp_dir + 'SPhenoInput', lhinp)
    # print(lhinp)

    # Run SPheno
    os.mkdir(out_add +'/' + str(n))
    os.chdir(out_add +'/'+ str(n))
    os.system(sp_dir+'bin/SPheno'+model+' '+'/dev/shm/LesHouches.in.'+model+str(n)+" | grep -q \"string\"")
    # os.system('rm '+'/dev/shm/LesHouches.in.'+model+str(n))
    os.chdir(out_add)
    if not os.path.isfile(str(n)+"/SPheno.spc."+model):
        print(da_inp)
        re_SPheno = {
            'spc_gen':False
        }
        os.system("rm -rf "+out_add+str(n)+"/")
    else:
        re_SPheno = {
            'spc_gen':True,
            'file':out_add +'/' + str(n)+"/SPheno.spc."+model
        }
        
        srcf.recmas()
        # df = pd.DataFrame(da_inp)
        # oup.massoup = df.loc[['value']].to_dict(orient='index')['value']
        # oup.massoup.update({'cba':srcf.par.cba})
        oup.massoup.update(re_SPheno)
        oup.massoup.update(srcf.oup.maspar)


    return re_SPheno['spc_gen']

def save(oupdir):
    # os.system('touch '+oupdir+'/masspar.json')
    with open(oupdir+'/masspar.json', 'w') as mxinp:
        json.dump(oup.massoup, mxinp, indent = 4)
        mxinp.close()

def move_result(result_name,res_loc):
    os.chdir(res_loc)
    if len(result_name) == 0:
        result_name = time.strftime("%Y_%m_%d_%H_%M_%S", time.localtime())
    i = 0
    while os.path.isdir(result_name):
        result_name = result_name+'_'+str(i)
        i += 1
    os.mkdir(result_name)
    os.system("mv -t "+str(result_name)+"/ output_*/")
    for lst_out in os.listdir(result_name):
        for lst_spc in os.listdir(result_name+'/'+lst_out):
            k = 0
            while os.path.isdir(result_name+'/'+lst_spc+'_'+str(k)):
                k +=1
            os.system('mv ' + result_name+'/'+lst_out+'/'+lst_spc+' '+result_name+'/'+lst_spc+'_'+str(k))#lst_out)
            # os.rename(result_name+'/'+lst_out+'/'+lst_spc, result_name+'/'+lst_spc+'_'+str(k))#lst_out)
        os.rmdir(result_name+'/'+lst_out)

def check_ht(srcf, arg = init.arg_ht):
    if arg : 
        ht_read(srcf, arg=False)
        if check_hs(srcf,exbr=False):
            ht_read(srcf, arg=True)
            oup.massoup.update(ht.excess(oup.hinput))
            return ht.hb(oup.hinput, init.hb_dir,  arg=True)
        else:
            return False
    else:
        return True

def ht_read(srcf,arg = True):
    slha = read_spc(oup.massoup['file'])
    lk = slha['DECAY'].keys()
    lstid = []
    for id in srcf.par.neuID:
        if str(id) in lk:
            lstid.append(id)
    # print(lstid)
    oup.hinput = ht.htread(oup.massoup['file'], lstid, srcf.par.charID, exbr = arg)


def check_hb(srcf, exbr=arg.hb_exbr,q=arg.hb_q):
    # oup.hinput = ht.htread(oup.massoup['file'], srcf.par.neuID, srcf.par.charID, exbr = arg.hb_exbr)
    # ht.hb(oup.htinput, init.hb_dir, srcf.par.neuID, srcf.par.charID)
    # print('0')
    hbcheck = ht.hb_sel(oup.hinput, init.hb_dir, neuID=srcf.par.neuID, q=q)#, idp='25')
    # try:
    ht.hb_channl(oup.hinput, init.hb_dir, 'VV', neuID=srcf.par.neuID)
    ht.hb_channl(oup.hinput, init.hb_dir, 'bb', neuID=srcf.par.neuID)
    ht.hb_channl(oup.hinput, init.hb_dir, 'tautau', neuID=srcf.par.neuID)
    ht.hb_channl(oup.hinput, init.hb_dir, 'tt', neuID=srcf.par.neuID)
    ht.hb_channl(oup.hinput, init.hb_dir, 'tttt', neuID=srcf.par.neuID)
    ht.hb_channl(oup.hinput, init.hb_dir, 'gamgam', neuID=srcf.par.neuID)
    ht.hb_channl(oup.hinput, init.hb_dir, 'HH', neuID=srcf.par.neuID)
    ht.hb_channl(oup.hinput, init.hb_dir, 'jj', neuID=srcf.par.neuID)
    ht.hb_channl(oup.hinput, init.hb_dir, 'ZH', neuID=srcf.par.neuID)
    # except:
        # pass
    oup.constoup.update(ht.ht_output.hb_r)
    return  hbcheck

def check_hs(srcf,exbr=arg.hs_exbr,q =arg.hs_q):
    # print('1')
    # oup.hinput = ht.htread(oup.massoup['file'], srcf.par.neuID, srcf.par.charID, exbr = arg.hs_exbr)
    hscheck = ht.hs(oup.hinput, init.hs_dir, ndf=srcf.nd, q=q)
    oup.constoup.update({
        'delchi2':ht.ht_output.hs_delch2,
        'hscheck':ht.ht_output.hs_check_SM
    })
    return hscheck

def check_stu(srcf, arg=init.arg_stu, mt = 'analy'):
    if arg:
        if mt == 'analy':
            res = srcf.ewp_check(srcf.par)
            oup.constoup.update(srcf.oup.stu)
            return res
        if mt == 'spheno':
            spc = read_spc(oup.massoup['file'])
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
            return stuchi2 < 5.99
    else:
        return True

def check_flavor(arg=init.arg_flv):
    if arg:
        flchk = flv.flavor_check(oup.massoup['file'])
        oup.constoup.update(flv.oup.flavor)
        return flchk
    else:
        return True


def check_uni_sp(arg=init.arg_uni):
    if arg:
        spc = read_spc(oup.massoup['file'])
        uni = spc['BLOCK']['TREELEVELUNITARITY']['values'][0][1]
        triuni = spc['BLOCK']['TREELEVELUNITARITYwTRILINEARS']['values'][0][1]
        if int(uni) == 1 and int(triuni)==1:
            return True
        else:
            return False
    else:
        return False



def check_vstb(srcf, n, arg=init.arg_vstb):
    if arg:
        evchk = srcf.ev_check(init.out_add, init.eva_dir, n)
        oup.constoup.update(srcf.oup.vacstab)
        return evchk
    else:
        return True

def check_bfb(srcf, arg=init.arg_bfb):
    if arg:
        return srcf.bfb(srcf.par)
    else:
        return True

def check_uni(srcf, arg=init.arg_uni):
    if arg:
        return srcf.uni(srcf.par)
    else:
        return True


def check_thy(srcf,n):
    argthy = []
    if not check_bfb(srcf):
        # oup.constoup['exclusion'].append('bfb')
        argthy.append('bfb')
    if not check_uni(srcf):
        # oup.constoup['exclusion'].append('uni')
        argthy.append('uni')
    if not check_vstb(srcf,n):
        argthy.append('vstb')
    # oup.constoup['exclusion'].append(argthy)
    return argthy


def check_exp(srcf, ex95=arg.ex95):
    ht_read(srcf, arg=True)
    hbchk = check_hb(srcf)
    ht_read(srcf, arg=False)
    hschk = check_hs(srcf)
    stuchk = check_stu(srcf)
    flchk = check_flavor()
    if ex95:
        oup.constoup.update(ht.excess(oup.hinput))
    # df.update({'hbcheck':hbcheck})
    # oup.constoup.update({'flv': flchk,
    #                    'stu': stuchk,
    #                     'hb': hbchk,
    #                     'hs': hschk})
    argexp = []
    if not hbchk:
        # oup.constoup['exclusion'].append('hb')
        argexp.append('hb')
    if not hschk:
        # oup.constoup['exclusion'].append('hs')
        argexp.append('hs')
    if not flchk:
        # oup.constoup['exclusion'].append('flv')
        argexp.append('flv')
    if not stuchk:
        # oup.constoup['exclusion'].append('stu')
        argexp.append('stu')
    # oup.constoup['exclusion'].append(argexc)
    # oup.constoup.update({'exclusion':argexc})
    # oup.constoup.update({'exclu_exp':  flchk and stuchk and hbchk and hschk})
    # df = pd.DataFrame(data=[hscheck,hschi2],columns=['hs_95CL', 'chi2'])
    # return oup.constoup
    return argexp