#%%
import pandas as pd
import numpy as np
from multiprocessing import Pool
import lib.scanf as scf
import json
import os 
import lib.ttH as tth

# import src.src_n2hdm as mdf
import src.src_2hdmsz3 as mdf
import src.basis_2hdmsz3 as bsz3

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
    mdf.inpd(
        cba=0.0,
        a13=0.0,
        a23=0.0,
        a4=0.0,
        mh1=x,
        mh2=125.09,
        mh3=95.4,
        ma1=x,
        ma2=1500,
        mhp=x,
        vs=246.0,
        tb=y,
        type=1,
    )

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
    if not os.path.exists(scf.init.out_add):
        os.mkdir(scf.init.out_add)
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