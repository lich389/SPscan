#! /home/licheng/.local/miniconda3/bin/python
import os
import sys
import time
import json
import pandas as pd
from multiprocessing import Pool
import lib.scanfunc as scf


####################################PREFIX###########################
#if len(sys.argv) =! 5:
#    print("Usage: ./scan.py [model] [n_exp] [n_threads] [output]")
#    exit(1)

# __SCAN LOOP__

def ranscan(label):
    # spc_dir = memout_add+str(label)
    re_scan = {'count':0, 'exclusion':''}
    os.chdir(scan.out_add)
    mdf.ran_inp(inpjson)
    # df.columns = ['unitarity', 'boundedness', 'STU', 'spc','flavor','vacuuminstabil','DMexp']
    if not scan.check_uni(mdf):
        # print('uni')
        re_scan['count'] = 0
        # re_scan['unitarity'] = 1
        re_scan['exclusion'] = 'unitarity'
    elif not scan.check_bfb(mdf):
        # print('bfb')
        re_scan['count'] = 0
        # re_scan['boundedness'] = 1
        re_scan['exclusion'] = 'bounded from below'
    elif not scan.SP_run(mdf, label):
        # run SPheno
        re_scan['count'] = 0
        # re_scan['spc'] = 1
        re_scan['exclusion'] = 'invalid spc generation'
    elif not scan.check_stu(mdf):
        # print('STU')
        re_scan['count'] = 0
        # re_scan['STU'] = 1
        re_scan['exclusion'] = 'STU'
    elif not scan.check_flavor():
        # check b physics
        re_scan['count'] = 0
        re_scan['exclusion'] = 'flavor'
        # re_scan['flavor'] = 1
        os.chdir(scan.out_add)
        os.system("rm -rf "+str(label)+"/")
    elif not scan.check_ht(mdf):
        # check Higgstools
        re_scan['count'] = 0
        # re_scan.update()
        # re_scan['higgsexp'] = 1
        re_scan['exclusion'] = 'higgstools'
        # print(check.idht['r'])
        os.chdir(scan.out_add)
        os.system("rm -rf "+str(label)+"/")
    elif not scan.check_vstb(mdf, label):
        # check Evade
        re_scan['count'] = 0
        re_scan['vacuuminstabil'] = 1
        re_scan['exclusion'] = 'evade'
        os.chdir(scan.out_add)
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
        scf.save(scan,scan.out_add+'/'+str(label)+'/')
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
        inpjson = '/home/licheng/Code/myscripts/sphenoscan/inputs/input_2HDMS.json' # default value

    inp_lst = json.load(open(inpjson))

    model = inp_lst['model']
    if model == "n2hdm" :
        from src import src_n2hdm as mdf # for n2hdm
    if model == "2hdms" :
        from src import src_2hdmsz3 as mdf # for 2hdms
    if model == "2hdms_cpv" :
        from src import src_2hdmscpv as mdf # for 2hdms

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
    n = int(inp_lst['n_run'])

    num_count = 0
    while num_count < n_exp:
        t = time.strftime("%Y_%m_%d_%H_%M_%S", time.localtime())
        # scan = scf.scan(str(inp_lst['outdir']))
        scan = scf.scan("output_"+str(t)+"/")
        os.chdir(scan.memdir)
        os.mkdir(scan.out_add)
        pool = Pool(processes=n_core)              # start n worker processes
        inputs = range(n)
        yy = pool.map(ranscan, inputs)
        num_count = num_count + sum(yy)
        #time.sleep(0.5)

    # if not os.path.exists(str(inp_lst['outdir'])):
    #     os.mkdir(str(inp_lst['outdir']))
    # os.system('rm -r '+str(inp_lst['outdir'])+'/*')
    scf.move_result(str(inp_lst['outdir']), scan.memdir)
    os.system('mv results*.csv '+str(inp_lst['outdir']))
    print("scan done!")
