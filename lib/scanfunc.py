import pylha
import sys
import os
import json
import time
import pandas as pd
import numpy as np

import lib.higgstools as ht
import lib.flavor as flv

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

def save(scanf, oupdir):
    # os.system('touch '+oupdir+'/masspar.json')
    with open(oupdir+'/masspar.json', 'w') as mxinp:
        json.dump(scanf.massoup, mxinp, indent = 4)
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

spset = 'SPhenoInput'

class scan:
    def __init__(self,oup, pref = json.load(open('prefix.json'))):
        self.home_add = pref['home']
        self.scr_add = pref['scan']
        self.sp_dir = pref['SPheno']
        self.omg_dir = pref['micromega']
        self.hb_dir = pref['hbdataset']
        self.hs_dir = pref['hsdataset']
        self.inp_dir = pref['input_path']
        self.eva_dir = pref['evade']
        self.memdir = pref['memory']
        self.n = int(pref['n'])
        self.oupfolder = oup
        self.out_add = self.memdir+self.oupfolder
        self.constoup = {
            # 'exclusion':[],
            }
        self.arg_bfb  = True
        self.arg_uni  = True
        self.arg_stu  = True
        self.arg_ht   = True
        self.arg_flv  = True
        self.arg_vstb = False
        self.arg_dm   = False



    def SP_run(self, srcf,n):
        ############# initialize ##############
        # inp_dir = self.inp_dir
        # out_add = self.out_add
        # sp_dir = self.sp_dir
        # srcf.initinp()
        da_inp = srcf.par.minpar
        da_extp = srcf.par.extpar
        model = srcf.spn
        os.chdir(self.out_add)
        os.mkdir(self.out_add +'/' + str(n))
        os.chdir(self.out_add +'/'+ str(n))
        lhinp = read_spc(self.inp_dir + 'LesHouches.in.'+model)
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

        write_input('./LesHouches.in.'+model+str(n), self.inp_dir + spset, lhinp)
        # print(lhinp)

        # Run SPheno
        os.system(self.sp_dir+'bin/SPheno'+model+' '+'./LesHouches.in.'+model+str(n)+" | grep -q \"string\"")
        # os.system('mv '+'/dev/shm/LesHouches.in.'+model+str(n)+' '+out_add+'/' + str(n))
        # os.system('rm '+'/dev/shm/LesHouches.in.'+model+str(n))
        os.chdir(self.out_add)
        if not os.path.isfile(str(n)+"/SPheno.spc."+model):
            # print(da_inp)
            re_SPheno = {
                'spc_gen':False
            }
            os.system("rm -rf "+str(n)+"/")
        else:
            re_SPheno = {
                'spc_gen':True,
                'file':self.out_add +'/' + str(n)+"/SPheno.spc."+model
            }
            
            self.massoup = re_SPheno
            self.massoup.update(srcf.oup.maspar)


        return re_SPheno['spc_gen']


    def ht_input(self, srcf):
        slha = read_spc(self.massoup['file'])
        lk = slha['DECAY'].keys()
        lstid = []
        for id in srcf.par.neuID:
            if str(id) in lk:
                lstid.append(id)

        neuidhs = []
        lstm = slha['BLOCK']['MASS']['values']
        for im in range(len(lstm)):
            if lstm[im][1] < 130 and lstm[im][1] > 120:
                neuidhs.append(lstm[im][0])
        # print(oup.massoup['file'])
        self.hinput = ht.htread(self.massoup['file'], lstid, [], exbr = True) # higgstools input for hb using explicit br
        self.hinpuths = ht.htread(self.massoup['file'], neuidhs, [], exbr= False) # higgstools input for hs using br by higgstools



    def check_hb(self, srcf, q=False):
        # oup.hinput = ht.htread(oup.massoup['file'], srcf.par.neuID, srcf.par.charID, exbr = arg.hb_exbr)
        # ht.hb(oup.htinput, init.hb_dir, srcf.par.neuID, srcf.par.charID)
        # print('0')
        hbcheck = ht.hb_sel(self.hinput, self.hb_dir, neuID=srcf.par.neuID, q=q)#, idp='25')
        # try:
        ht.hb_channl(self.hinput, self.hb_dir, 'VV', neuID=srcf.par.neuID)
        ht.hb_channl(self.hinput, self.hb_dir, 'bb', neuID=srcf.par.neuID)
        ht.hb_channl(self.hinput, self.hb_dir, 'tautau', neuID=srcf.par.neuID)
        ht.hb_channl(self.hinput, self.hb_dir, 'tt', neuID=srcf.par.neuID)
        ht.hb_channl(self.hinput, self.hb_dir, 'tttt', neuID=srcf.par.neuID)
        ht.hb_channl(self.hinput, self.hb_dir, 'gamgam', neuID=srcf.par.neuID)
        ht.hb_channl(self.hinput, self.hb_dir, 'HH', neuID=srcf.par.neuID)
        ht.hb_channl(self.hinput, self.hb_dir, 'jj', neuID=srcf.par.neuID)
        ht.hb_channl(self.hinput, self.hb_dir, 'ZH', neuID=srcf.par.neuID)
        # except:
            # pass
        self.constoup.update(ht.ht_output.hb_r)
        return  hbcheck

    def check_hs(self,srcf,q =False):
        # print('1')
        # oup.hinput = ht.htread(oup.massoup['file'], srcf.par.neuID, srcf.par.charID, exbr = arg.hs_exbr)
        hscheck = ht.hs(self.hinpuths, self.hs_dir, ndf=srcf.nd, q=q)
        self.constoup.update({
            'delchi2':ht.ht_output.hs_delch2,
            'hscheck':ht.ht_output.hs_check_SM
        })
        return hscheck

    def check_stu(self,srcf, method = 'analy'):
        if self.arg_stu:
            if method == 'analy':
                res = srcf.ewp_check(srcf.par)
                self.constoup.update(srcf.oup.stu)
                return res
            if method == 'spheno':
                spc = read_spc(self.massoup['file'])
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
    def check_flavor(self):
        if self.arg_flv:
            flchk = flv.flavor_check(self.massoup['file'])
            self.constoup.update(flv.oup.flavor)
            return flchk
        else:
            return True

    def check_ht(self, srcf):
        if self.arg_ht : 
            self.ht_input(srcf)
            if self.check_hs(srcf):
                # ht_input(srcf)
                # oup.massoup.update(ht.excess(oup.hinput))
                return ht.hb(self.hinput, self.hb_dir,  arg=True)
            else:
                return False
        else:
            return True



    def check_uni(self,srcf,method='analy'):
        if self.arg_uni:
            if method == 'analy':
                return srcf.uni(srcf.par.params)
            if method == 'spheno':
                spc = read_spc(self.massoup['file'])
                uni = spc['BLOCK']['TREELEVELUNITARITY']['values'][0][1]
                triuni = spc['BLOCK']['TREELEVELUNITARITYwTRILINEARS']['values'][0][1]
                if int(uni) == 1 and int(triuni)==1:
                    return True
                else:
                    return False
        else:
            return True

    def check_bfb(self,srcf):
        if self.arg_bfb:
            return srcf.bfb(srcf.par.params)
        else:
            return True


    def check_vstb(self,srcf, n):
        if self.arg_vstb:
            evchk = srcf.ev_check(self.out_add, self.eva_dir, n)
            self.constoup.update(srcf.oup.vacstab)
            return evchk
        else:
            return True





def check_thy(scanf,srcf,n):
    argthy = []
    if not scanf.check_bfb(srcf):
        # oup.constoup['exclusion'].append('bfb')
        argthy.append('bfb')
    if not scanf.check_uni(srcf):
        # oup.constoup['exclusion'].append('uni')
        argthy.append('uni')
    if not scanf.check_vstb(srcf,n):
        argthy.append('vstb')
    # oup.constoup['exclusion'].append(argthy)
    return argthy


def check_exp(scanf,srcf):
    scanf.ht_input(srcf)
    hbchk = scanf.check_hb(srcf)
    hschk = scanf.check_hs(srcf)
    stuchk = scanf.check_stu(srcf)
    flchk = scanf.check_flavor()
    # if scanf.ex95:
    #     scanf.constoup.update(ht.excess(scanf.hinput))

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

    return argexp