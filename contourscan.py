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

ctscanf = scf.scan('2hdmst')

mdf.par.neuID=[25, 35, 45, 36, 46]
mdf.par.charID=[]
mdf.nd = 3

def scanct(inp):
    ctscanf = scf.scan('2hdmst')
    x = inp[0]
    y = inp[1]
    k = inp[2]
    mdf.inpd(
        cba=0.0,
        a13=y,
        a23=0.0,
        a4=0.0,
        mh1=800,
        mh2=125.09,
        mh3=x,
        ma1=800,
        ma2=1500,
        mhp=800,
        vs=246.0,
        tb=1,
        type=2,
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
    lx = np.linspace(130, 1000, 3) # ma
    ly = np.linspace(-np.pi/4, np.pi/4, 3) # alpha
    # lx = np.linspace(150, 1000, 50) # ma
    # ly = np.exp(np.linspace(np.log(0.1), np.log(20), 50)) # tb
    [X,Y] = np.meshgrid(lx, ly)

    shape = str(X.shape)
    dfz = CS(X,Y)
    dz = pd.DataFrame()
    for l in range(len(dfz)):
        dz = dz._append(dfz[l], ignore_index=True)
    # print(out.df)
    dz.to_csv('build/'+str(X.shape)+'.csv')

