#%%
import pandas as pd
import numpy as np
from multiprocessing import Pool
import lib.scanfunc as scf
import lib.analyselib as af
import lib.phenofunc as ph
import json
import os
import src.src_2hdmscpv as mdf

class grid:
    def __init__(self, x_param, y_param, lab, ouput_add):
        self.lz = []
        self.x_param = x_param
        self.y_param = y_param
        self.params = default_params.copy()
        self.lab = lab
        self.shape = ''
        self.ouput_add = ouput_add
        self.ctscanf = scf.scan('2hdmst')
        self.ctscanf.arginput({
            "higgstools check":True,
            "flavor check":True,
            "ew precision check":True,
            "boundedness from below check":True,
            "unitarity check":True,
            "evade check": False,
            "micromega check":False,
        })


    def contour(self, lx, ly):
        [self.X,self.Y] = np.meshgrid(lx, ly)
        self.shape = str(self.X.shape)

        lxx = np.reshape(self.X, -1)
        lyy = np.reshape(self.Y, -1)
        for k in range(len(lxx)):
            self.lz.append([lxx[k],lyy[k], k])

    def gridscan(self):

        lab = self.shape+self.lab

        if not os.path.exists(self.ctscanf.out_add):
            os.mkdir(self.ctscanf.out_add)
        os.system('rm -r '+self.ctscanf.out_add+'/*')

        p = Pool(processes = 30)
        dfz = p.map(self.scangf, self.lz)
        dz = pd.DataFrame()
        for l in range(len(dfz)):
            dz = dz._append(dfz[l], ignore_index=True)
        dz.to_csv(self.ouput_add+lab+'.csv')

    def scangf(self, inp):
        x = inp[0]
        y = inp[1]
        k = inp[2]

        # Create a copy of default params and update x and y
        self.params[self.x_param] = x
        self.params[self.y_param] = y

        mdf.inpd(**self.params)

        self.ctscanf.SP_run(mdf,k)
        self.ctscanf.SP_mgrun(mdf,k)

        exc = scf.check_exp(self.ctscanf,mdf)

        df = {'exclusion': exc}
        df.update(self.ctscanf.massoup)
        df.update(self.ctscanf.constoup)
        spc = scf.read_spc('/dev/shm/2hdmst/'+str(k)+'/SPheno.spc.'+mdf.spn)
        df.update(af.read_coupling_boson(spc['BLOCK']['HiggsCouplingsBosons']['values']))
        df.update(af.read_coupling_fermion(spc['BLOCK']['HiggsCouplingsFermions']['values']))
        df.update(af.read_decay(spc['DECAY']))
        df.update(ph.excess95(df))
        ph.fcp(df,'h2','t')
        ph.fcp(df,'h2','tau')

        return df



if __name__ == '__main__':
    # Default parameters for mdf.inpd()

    mdf.par.neuID=[25, 35, 45, 36, 46]
    mdf.par.charID=[]
    mdf.nd = 3
    default_params = {
        'cba': 0.015,
        'a13': 0.0,
        'a23': 0.35,
        'a14': 0.0,
        'a24': 0.0,
        'a34': 0.0356523,
        'a15': 0.0,
        'a25': 0.0,
        'a35': 0.0,
        'a45': 0.0,
        'mh1': 800.0,
        'mh2': 125.09,
        'mh3': 95.4,
        'mh4': 805,
        'mh5': 150,
        'mhc': 795,
        'mut': 800,
        'tb': 1.0,
        'vs': 246.0,
        'xi': 0.0,
        'xis': 0.0,
        'type': 2
    }

    # scan1: a34 vs tb
    lx = np.linspace(-0.1, 0.1, 3)  # Range for x_param
    ly = np.exp(np.linspace(np.log(1), np.log(10), 3))  # Range for y_param

    scan1 = grid('a34', 'tb', 'test1', '/home/licheng/Documents/myscript/SPscan/build/')
    scan1.contour(lx, ly)
    scan1.gridscan()


    # scan2: a24 vs a34
    scan2 = grid('a24', 'a34', 'test2', '/home/licheng/Documents/myscript/SPscan/build/')
    scan2.params['tb'] = 5.0
    scan2.lz = [[-0.2, 1.0, 0], [0.0, 5.0, 1], [0.1, 3.0, 2]]
    scan2.gridscan()


