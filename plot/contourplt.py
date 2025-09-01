#%%
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib as mpl
import copy

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


