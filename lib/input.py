#%%
import numpy as np
import pandas as pd
import random
import json


def ransgn(arg=False):
    if arg:
        ra = random.random()
        if ra >= 0.5:
            sgn = 1
        else:
            sgn = -1
        return sgn
    else:
        return 1

class inpmeth:
    def __init__(self, inputarg):#, inputfile, parametername, index):
        self.arg = inputarg
        # self.file = inputfile
        # self.p = parametername
        # self.i = index

    def ginput(self, inp_da, para, i, n):
        if self.arg == 'random':
            # inp_da = json.load(open(file))
            return float(random.uniform(float(inp_da[para]['min']),float(inp_da[para]['max'])))
        if self.arg == 'grid':
            return float(np.linspace(float(inp_da[para]['min']),float(inp_da[para]['max']), num=int(n))[i])
        if self.arg == 'dataframe':
            # df = pd.read_csv(file)
            return float(inp_da[para][i])
    
def para_inp(par):
    if par['arg'] == 'random':
        return random.uniform(par['min'], par['max'])#*ransgn(par['ransgn'])
    if par['arg'] == 'grid':
        return random.choice(np.linspace(par['min'], par['max'], num = par['num']))
    if par['arg'] == 'gauss':
        return random.gauss(par['mean'], par['dev'])
    

# df = pd.read_csv('/data2/licheng/flc12/analy/exception.csv')

# p1 = input('dataframe').ginput(df, 'tb', 2, 0)

# df2 = json.load(open('/data2/licheng/flc12/sphenoscan/inputs/input_N2HDM.json'))

# p2 = input('grid').ginput(df2, 'ma', 40, 50)

# print(p1, p2)


# %%
