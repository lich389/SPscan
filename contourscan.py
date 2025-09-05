#%%
import pandas as pd
import numpy as np
from multiprocessing import Pool
import lib.scanfunc as scf
import json
import os 
import lib.ttH as tth

import src.src_2hdmsz3 as mdf

class out:
    dz = pd.DataFrame()
    df = {}

shape = ''

ctscanf = scf.scan('/home/licheng/Documents/myscript/git/SPscan/build/results/2hdmst')

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

    ctscanf.SP_run(mdf,k)

    exc = scf.check_exp(ctscanf,mdf)
    # exc = exc + (scf.check_thy(mdf,k))
    df ={}
    df.update({'exclusion': exc})
    df.update(ctscanf.massoup)
    df.update(ctscanf.constoup)

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
    if not os.path.exists(ctscanf.out_add):
        os.mkdir(ctscanf.out_add)
    os.system('rm -r '+ctscanf.out_add+'/*')
    lx = np.linspace(150, 1000, 2) # ma
    ly = np.linspace(0.1, 10.0, 2) # tb
    [X,Y] = np.meshgrid(lx, ly)

    shape = str(X.shape)
    dfz = CS(X,Y)
    dz = pd.DataFrame()
    for l in range(len(dfz)):
        dz = dz._append(dfz[l], ignore_index=True)
    # print(out.df)
    dz.to_csv(str(X.shape)+'.csv')

