#%%
from re import I
import Higgs.predictions as HP
import Higgs.bounds as HB
import Higgs.signals as HS
import Higgs.tools as HT
import numpy as np
import matplotlib.pyplot as plt 
import scipy.stats
import pandas as pd
import scipy.interpolate
import matplotlib as mlp
from itertools import product
import Higgs.tools.Input as hinput
# from descartes import PolygonPatch
import warnings
warnings.simplefilter(action='ignore', category=FutureWarning)


# lstnp = ['25', '35', '45', '36', '46']
# lstcp = ['37']

def rate(lstnp, lstcp, spc, pdgh):
    strnp = list(map(str, lstnp))
    strcp = list(map(str, lstcp))

    dict = hinput.readHB5SLHA(spc,lstnp,lstcp)
    # # dict = hinput.readHB5SLHA("./check_a4/2hdms_b1/10/SPheno.spc.THDMSZ3",{25,35,45,36,46},{37})

    input = hinput.predictionsFromDict(dict,strnp,strcp,{})

    '''def rate(spc):
    dict = hinput.readHB5SLHA(spc,{25,35,45,36,46},{37})

    input = hinput.predictionsFromDict(dict,{'25','35','45','36','46'},{'37'},{})
    a = input.particle('46')
    h3 = input.particle('45')'''

    # a = input.particle(pdga)
# 
    h = input.particle(pdgh)
    

    # ma = a.mass()
# 
    # mh = h3.mass()
    # br_tt_a = a.br("tt")
# 
    # br_tt_h = h3.br("tt")
# 
    rate_tth = h.channelRate("LHC14", "Htt", "tt") 
# 
    # rate_tth_h =  h3.channelRate("LHC13", "Htt", "tt") 
# 
    # rate_tautau_a = a.channelRate("LHC13", "Htt", "tautau") 
# 
    # rate_tautau_h =  h3.channelRate("LHC13", "Htt", "tautau") 
# 
    # return ((rate_tth_a + rate_tth_h)*1e3)
    return ((rate_tth )*1e3)
# 
# (a.cxn("LHC13", "Htt") + h3.cxn("LHC13", "Htt") )*1e3

# %%

# import src.src_2hdms as f

# f.pdg.mh1
# spc = '/data2/licheng/sphenoscan_v2/check_a4/2hdms_b1/10/SPheno.spc.THDMSZ3'
# rate(f.pdg.lstnp, f.pdg.lstcp, spc, str(f.pdg.ma2), str(f.pdg.mh3))
# %%
