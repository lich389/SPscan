#%%
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
import copy

class cntplt:
    def __init__(self, xsize, ysize, fpath, flab, xlab, ylab):
        self.shape = (xsize,ysize)
        self.fpath = fpath
        self.flab = flab
        self.xlab = xlab
        self.ylab = ylab
        self.dfin = pd.read_csv(self.fpath+str(self.shape)+self.flab+'.csv')
        self.xdf = self.dfin[self.xlab]
        self.ydf = self.dfin[self.ylab]
        # self.zlab = zlab

    def get_inp(self, zlab, cut = {'x':[],'y':[]}):
        # data saving at inp.dfin
        if len(cut) !=0:
            if len(cut['x']) !=0:
                self.dfin.loc[(self.dfin[self.xlab] > cut['x'][0]) & (self.dfin[self.xlab] < cut['x'][1]),zlab]=0
            if len(cut['y']) !=0:
                self.dfin.loc[(self.dfin[self.ylab] > cut['y'][0]) & (self.dfin[self.ylab] < cut['y'][1]),zlab]=0
        self.zdf = self.dfin[zlab]

    def get_inp_comb(self,chan):
        # self.dfin = pd.read_csv(inp.fpath+str(inp.shape)+inp.flab+'.csv')
        self.zdf = self.dfin[chan].max(axis=1)

    
    def cut(self, cut = {'x':[],'y':[]},both=False):    
        if len(cut) !=0:
            if both:
                for i in self.zdf.index:
                    if self.xdf[i] > cut['x'][0] and self.xdf[i] < cut['x'][1] and self.ydf[i] > cut['y'][0] and self.ydf[i] < cut['y'][1]:
                        self.zdf.loc[i] = 0#np.nan
            else:
                if len(cut['x']) !=0:
                    for i in self.zdf.index:
                        if self.xdf[i] > cut['x'][0] and self.xdf[i] < cut['x'][1]:
                            self.zdf.loc[i] = 0#np.nan
                if len(cut['y']) !=0:
                    for i in self.zdf.index:
                        if self.ydf[i] > cut['y'][0] and self.ydf[i] < cut['y'][1]:
                            self.zdf.loc[i] = 0#np.nan

    def reshape(self):
        self.X = np.reshape(self.xdf,self.shape)
        self.Y = np.reshape(self.ydf,self.shape)
        self.Z = np.reshape(list(map(float, self.zdf)),self.shape)

    
    def contline(self, ax, c, lab='', cr=1.0, il=False, ls = '-'):
        CS = ax.contour((self.X), (self.Y), (self.Z), levels=[cr], colors=[c],linestyles=ls)
        fmt = {}
        strs = [lab]
        for l, s in zip([cr], strs):
            fmt[l] = s
        if lab != '':
            ax.clabel(CS, [cr], inline=il, fmt=fmt, fontsize=10)

    def contcolor(self, ax, color, cr=[1.0, 99999999], alp=0.5, lab=False):

        cmap = mpl.colors.ListedColormap(['white',color])
        cnt = ax.contourf((self.X), (self.Y), (self.Z),  levels=cr, alpha=alp, cmap=cmap)
        # if lab != False:
        #     for pc in cnt.collections:
        #         fc = (pc.get_facecolor()[0])
        #     self.proxy.append(plt.Rectangle((1, 1), 2, 2, fc=fc))
        #     self.lst_lab.append(lab)

        # if line:
        #     plt_conline(ax, color, lab, cr[0], il=il,ls=ls)

class inp:
    shape = (20,20)
    fpath = './'
    flab = ''
    xlab = ''
    ylab = ''
    zlab = ''
    X = []
    Y = []
    Z = []
    # plt inp
    color = ''
    cm = plt.cm.Reds
    lv = []
    proxy = []
    lst_lab = []
    dfin = pd.DataFrame()



def get_inp(cut = {}):
    # data saving at inp.dfin
    inp.dfin = pd.read_csv(inp.fpath+str(inp.shape)+inp.flab+'.csv')


    xdf = (inp.dfin[inp.xlab])
    ydf = (inp.dfin[inp.ylab])
    zdf = inp.dfin[inp.zlab]

# cut the range of x or y
    if len(cut) !=0:
        if len(cut['x']) !=0:
            for i in zdf.index:
                if xdf[i] > cut['x'][0] and xdf[i] < cut['x'][1]:
                    zdf.loc[i] = 0#np.nan
        if len(cut['y']) !=0:
            for i in zdf.index:
                if ydf[i] > cut['y'][0] and ydf[i] < cut['y'][1]:
                    zdf.loc[i] = 0#np.nan

    inp.X = np.reshape(xdf,inp.shape)
    inp.Y = np.reshape(ydf,inp.shape)
    inp.Z = np.reshape(list(map(float, zdf)),inp.shape)


def get_hbinp(procs):
    df = pd.read_csv(inp.fpath+str(inp.shape)+inp.flab+'.csv')
    pdf = df[procs]
    pid = procs.replace('procs','')
    rdf = pd.DataFrame()
    for k in df.columns:
        for p in set(pdf):
            if p in k and pid in k:
                zk = df[k]
                rdf[k] = (zk)
    rdf = rdf.fillna(0.1)
    # print(len(rdf.columns))
    return rdf



def comb(chan):
    inp.dfin = pd.read_csv(inp.fpath+str(inp.shape)+inp.flab+'.csv')
    return (inp.dfin[chan].max(axis=1))

def plt_conline(ax, c, lab, cr, il=True, ls = '-'):

    CS = ax.contour((inp.X), (inp.Y), (inp.Z), levels=[cr], colors=[c],linestyles=ls)
    # print(CS.levels)
    fmt = {}
    strs = [lab]
    for l, s in zip([cr], strs):
        fmt[l] = s
    if lab != False:
        ax.clabel(CS, [cr], inline=il, fmt=fmt, fontsize=10)

def plt_conhatch(ax,  lab):
    # cmap = mpl.colors.ListedColormap(['white',c])
    cnt = ax.contourf((inp.X), (inp.Y), (inp.Z), levels=[1.0, 1.005], colors='none', hatches=['--'])#.resampled(cl))
    plt_conline(ax, 'lightgrey', lab, 1.0, il=True)


def plt_contour(ax, color, cr=[1.0, 99999999], alp=0.5, line=True,il = False,lab=False,ls='-'):
    cmap = mpl.colors.ListedColormap(['white',color])
    # norm = plt.cm.colors.Normalize(vmax=0, vmin=99999999)
    cnt = ax.contourf((inp.X), (inp.Y), (inp.Z),  levels=cr, alpha=alp, cmap=cmap)#.resampled(cl))
    if lab != False:
        for pc in cnt.collections:
            fc = (pc.get_facecolor()[0])
        inp.proxy.append(plt.Rectangle((1, 1), 2, 2, fc=fc))
        inp.lst_lab.append(lab)

    if line:
        plt_conline(ax, color, lab, cr[0], il=il,ls=ls)



# %%
