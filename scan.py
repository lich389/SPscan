#! /home/licheng/.local/miniconda3/bin/python
import os
import sys
import time
import json
import pandas as pd
from multiprocessing import Pool
import lib.scanf as scf

import lib.utilities as uti
import lib.higgstools as ht
import lib.micromega as dm
import lib.flavor as fl
####################################PREFIX###########################
#if len(sys.argv) =! 5:
#    print("Usage: ./scan.py [model] [n_exp] [n_threads] [output]")
#    exit(1)

# __SCAN LOOP__

def scan(label):
    # spc_dir = memout_add+str(label)
    re_scan = {'count':0, 'exclusion':''}
    os.chdir(memout_add)
    scf.init.out_add = memout_add
    mdf.ran_inp(inpjson)
    # df.columns = ['unitarity', 'boundedness', 'STU', 'spc','flavor','vacuuminstabil','DMexp']
    if not scf.check_uni(mdf, arg=False):
        # print('uni')
        re_scan['count'] = 0
        # re_scan['unitarity'] = 1
        re_scan['exclusion'] = 'unitarity'
    elif not scf.check_bfb(mdf, arg=True):
        # print('bfb')
        re_scan['count'] = 0
        # re_scan['boundedness'] = 1
        re_scan['exclusion'] = 'bounded from below'
    elif not scf.SP_run(mdf, label):
        # run SPheno
        re_scan['count'] = 0
        # re_scan['spc'] = 1
        re_scan['exclusion'] = 'invalid spc generation'
    elif not scf.check_stu(mdf,arg=False):
        # print('STU')
        re_scan['count'] = 0
        # re_scan['STU'] = 1
        re_scan['exclusion'] = 'STU'
    elif not scf.check_uni_sp(arg=True):
        # print('uni')
        re_scan['count'] = 0
        # re_scan['unitarity'] = 1
        re_scan['exclusion'] = 'unitarity'
        os.chdir(memout_add)
        os.system("rm -rf "+str(label)+"/")
    elif not scf.check_flavor():
        # check b physics
        re_scan['count'] = 0
        re_scan['exclusion'] = 'flavor'
        # re_scan['flavor'] = 1
        os.chdir(memout_add)
        os.system("rm -rf "+str(label)+"/")
    elif not scf.check_ht(mdf):
        # check Higgstools
        re_scan['count'] = 0
        # re_scan.update()
        # re_scan['higgsexp'] = 1
        re_scan['exclusion'] = 'higgstools'
        # print(check.idht['r'])
        os.chdir(memout_add)
        os.system("rm -rf "+str(label)+"/")
    elif not scf.check_vstb(mdf, label,arg=False):
        # check Evade
        re_scan['count'] = 0
        re_scan['vacuuminstabil'] = 1
        re_scan['exclusion'] = 'evade'
        os.chdir(memout_add)
        os.system("rm -rf "+str(label)+"/")
    # elif not check(checklist).omg(omg_dir, spc_dir):
    #     # check micromega
    #     re_scan['count'] = 0
    #     re_scan['DMexp'] = 1
    #     re_scan['exclusion'] = 'DM'
    #     os.chdir(home_add+scr_add+out_add)
    #     os.system("rm -rf "+str(label)+"/")
    else:
        re_scan['count'] = 1
        re_scan['exclusion'] = 'non'
        scf.save(memout_add+str(label)+'/')
    # if scf.init.infocheck:
    #     re_scan['file'] = str(label)+'_'+out_add
    #     re_scan.update(scf.oup.massoup)
    #     re_scan.update(scf.oup.constoup)
    #     df = pd.DataFrame(columns=['unitarity', 'boundedness', 'STU', 'spc','flavor','higgsexp','vacuuminstabil','DMexp'])
    #     df = df._append(re_scan, ignore_index=True)
    #     df.to_csv(home+script+'results_'+out_add.replace('/','')+'.csv', mode='a', index=False)
    return re_scan['count']



# -----------------main----------------------

if __name__ == '__main__':
    try:
        inpjson = str(sys.argv[1])
        #model = str(sys.argv[1])
    except:
        inpjson = '/home/licheng/Code/myscripts/sphenoscan/inputs/input_THDMSZ3.json' # default value

    inp_lst = json.load(open(inpjson))

    model = inp_lst['model']
    if model == "n2hdm" :
        from src import src_n2hdm as mdf # for n2hdm
    if model == "2hdms" :
        from src import src_2hdms as mdf # for 2hdms
    if model == "2hdms_cpv" :
        from src import src_2hdmscpv as mdf # for 2hdms

    scf.pref_init()

    memdir = '/dev/shm/'
    # try:
    #     n_exp = int(sys.argv[2])
    # except:
    #     print("Usage: ./scan.py [input_file] [n_exp] [n_threads] [output]")
    #     sys.exit(1)

    # try:
    #     n_core = int(sys.argv[3])# run with n threadings
    #     scf.init.out_add = str(sys.argv[4])
    #     # name_re = str(sys.argv[4])
    # except:
    #     n_core = 1
    #     name_re = 'scan_output'

    n_exp = int(inp_lst['n_exp'])
    n_core = int(inp_lst['n_threads'])
    scf.init.out_add = str(inp_lst['outdir'])
    scf.init.n = int(inp_lst['n_run'])

    num_count = 0
    while num_count < n_exp:
        os.chdir(memdir)
        t = time.strftime("%Y_%m_%d_%H_%M_%S", time.localtime())
        memout_add = "/dev/shm/output_"+str(t)+"/"
        os.mkdir(memout_add)
        pool = Pool(processes=n_core)              # start n worker processes
        inputs = range(scf.init.n)
        yy = pool.map(scan, inputs)
        num_count = num_count + sum(yy)
        #time.sleep(0.5)

    scf.move_result(scf.init.out_add, memdir)
    os.system('mv results*.csv '+scf.init.out_add)
    print("scan done!")
