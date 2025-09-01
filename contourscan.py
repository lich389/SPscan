#%%
import pandas as pd
import numpy as np
from multiprocessing import Pool
import lib.scanf as scf
import json
import os 
import lib.ttH as tth

# import src.src_n2hdm as mdf
import src.src_2hdms as mdf

class out:
    dz = pd.DataFrame()
    df = {}

shape = ''

scf.init.out_add = '/home/licheng/Documents/myscript/git/SPscan/results/2hdmst'
scf.pref_init()
mdf.par.neuID=[25, 35, 45, 36, 46]
mdf.par.charID=[37]
mdf.nd = 3

def scanct(inp):
    x = inp[0]
    y = inp[1]
    k = inp[2]

    mdf.par.type = 1
    # bt = np.pi/4
    mhh = x

    mdf.par.vs = 246.0
    mdf.par.tb = y 

    # mdf.par.align = 0.05
    # mdf.par.ch1bt = 0.8 
    # mdf.par.ch1v = 0.3#0.35 #0.03, 

    mdf.par.cba = 0
    mdf.par.a13 = 0
    mdf.par.a23 = 0
    mdf.par.a4 = 0

    mdf.par.mh1 = mhh
    mdf.par.mh2 = 125.09 
    mdf.par.mh3 = 95.4#+200, 
    mdf.par.ma1 = mhh#+200, 
    mdf.par.ma2 = 1500
    mdf.par.mhp = mhh
    mdf.par.mutild = mhh
    mdf.initinp()
    # mdf.extinitinp('z3')
    # out_thy =  (scf.check_thy(da_inp,k))
    scf.SP_run(mdf,k)
    # scf.check_vstb(mdf,k)
    exc = scf.check_exp(mdf, ex95=False)
    # exc = exc + (scf.check_thy(mdf,k))
    df ={}
    df.update({'exclusion': exc})
    df.update(scf.oup.massoup)
    df.update(scf.oup.constoup)
    # df.update({'rate_tttt_a':tth.rate([ 36, 45], [37], scf.init.out_add+str(k)+'/SPheno.spc.'+mdf.spn,  '36')})
    # df.update({'rate_tttt_h':tth.rate([ 36, 45], [37], scf.init.out_add+str(k)+'/SPheno.spc.'+mdf.spn,  '45')})
    return df
def CS(X,Y):
    lx = np.reshape(X, -1)
    ly = np.reshape(Y, -1)
    lz = []
    for k in range(len(lx)):
        lz.append([lx[k],ly[k], k])

    # print(lz)
    p = Pool(processes = 30)
    z = p.map(scanct, lz)
    return z

if __name__ == '__main__':
    os.system('rm -r '+scf.init.out_add+'/*')
    lx = np.linspace(150, 1000, 20) # ma
    ly = np.linspace(0.1, 10.0, 20) # tb
    [X,Y] = np.meshgrid(lx, ly)
    # print(X)
    # print(Y)
    shape = str(X.shape)
    dfz = CS(X,Y)
    # print(dfz)
    dz = pd.DataFrame()
    for l in range(len(dfz)):
        dz = dz._append(dfz[l], ignore_index=True)
    # print(out.df)
    dz.to_csv(str(X.shape)+'.csv')
# print(np.reshape((dfz['r36']),X.shape))
# print(Y)
# print(np.reshape((dfz['a2']),X.shape))

# %%