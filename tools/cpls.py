#%%

import os
os.chdir('/home/licheng/Documents/myscript/SPscan/')
# sys.path.append('/home/licheng/Documents/myscript/git/SPscan/')
import lib.analyselib as af
import lib.scanfunc as sf

import glob
import pandas as pd

df = pd.DataFrame()
for spcdir in glob.glob('/home/licheng/Documents/myscript/SPscan/build/test/_0/*'):
    dict_spc = dict()
    f_spc = glob.glob(spcdir+'/SPheno.spc.*')[0]
    spc = sf.read_spc(f_spc)
    dict_spc.update(af.read_mass(spc['BLOCK']['MASS']['values']))
    dict_spc.update(af.readinput(spc['BLOCK']))
    dict_spc.update(af.read_mix(spc['BLOCK']['SCALARMIX']['values']))
    dict_spc.update(af.read_coupling_boson(spc['BLOCK']['HiggsCouplingsBosons']['values']))
    dict_spc.update(af.read_coupling_fermion(spc['BLOCK']['HiggsCouplingsFermions']['values']))
    dict_spc.update(af.read_decay(spc['DECAY']))
    dict_spc.update({'path': spcdir})
    dict_spc.update(af.read_angle(spcdir))


    dict_spc.update(af.cpvphase(dict_spc))

    dict_spc.update(af.excess95(dict_spc))

    df = df._append(dict_spc, ignore_index=True)
# print(df)
# df = af.filter(df)
df.to_csv('analysis.csv', index=False)
# %%
