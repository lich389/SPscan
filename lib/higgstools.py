#%%
from re import I
import Higgs.predictions as HP
import Higgs.bounds as HB
import Higgs.signals as HS
import Higgs.tools as HT
import numpy as np
from itertools import product
import Higgs.tools.Input as hinput
from scipy.stats import chi2
import os

predsm = HP.Predictions()
hsm = predsm.addParticle(HP.BsmParticle("h", charge="neutral", cp="even"))
#%%

class ht_output:
    spc = {}
    hs_chi2 = 0
    hs_delch2 = 0
    hs_check_95 = 1
    hs_check_SM = 1
    hb_r = {}
    lst_hb = []
    htinput = None
    hinpuths = None

# higgstools read
def htread(spc, neuID, charID, exbr =True):
        ht_output.spc = hinput.readHB5SLHA(spc,neuID,charID)
        input = hinput.predictionsFromDict(ht_output.spc,list(map(str, neuID)),list(map(str, charID)),{},useExplicitBr=exbr)#, referenceModels=HP.SMHiggsInterp )
        return input

def hb_sel(input, dir_hbdata, neuID, idp='', q = False):
    bounds = HB.Bounds(dir_hbdata)
    hbresult = bounds(input)
    if q:
        print(hbresult)
    dict_re = {}
    for ipn in neuID:
        try:
            dict_re.update({
                'rs'+str(ipn):(hbresult.selectedLimits[str(ipn)].obsRatio()),
                'procs'+str(ipn):(hbresult.selectedLimits[str(ipn)].limit().processDesc())

            })
        except:
            dict_re.update({})
    ht_output.hb_r = dict_re
    return hbresult.allowed


def hb(input, dir_hbdata, arg = True):
    bounds = HB.Bounds(dir_hbdata)
    hbresult = bounds(input)
    if not arg:
        print(hbresult)

    return hbresult.allowed


def hb_channl(input,dir_hbdata, chan,  neuID, idp='', arg = 'q' ):
    if chan == 'VV':
        # os.mkdir(dir_hbdata+'/neutral/VV')
        # os.system('cp '+ dir_hbdata+'/neutral/WW/* '+dir_hbdata+'/neutral/VV')
        # os.system('cp '+ dir_hbdata+'/neutral/ZZ/* '+dir_hbdata+'/neutral/VV')
        bounds = HB.Bounds(dir_hbdata+'../VV')
        # os.rmdir(dir_hbdata+'/neutral/VV')
    else:
        bounds = HB.Bounds(dir_hbdata+'/neutral/'+chan)
    hbresult = bounds(input)
    dict_re = {}
    for ipn in neuID:
        try:
            dict_re.update({
                'r'+str(ipn)+chan:(hbresult.selectedLimits[str(ipn)].obsRatio()),
                'procs'+str(ipn)+chan: (hbresult.selectedLimits[str(ipn)].limit().processDesc()) 

            })
        except:
            dict_re.update({})
    ht_output.hb_r.update(dict_re)
    return hbresult.allowed

def hb_app(input, dir_hbdata, neuID=[25, 35, 45, 46], idp='', arg = 'q'):
    bounds = HB.Bounds(dir_hbdata)
    hbresult = bounds(input)
    dict_re = {}
    for ipn in neuID:
        try:
            dict_re.update({
                'rs'+str(ipn):(hbresult.selectedLimits[str(ipn)].obsRatio()),
                'procs'+str(ipn):(hbresult.selectedLimits[str(ipn)].limit().processDesc())

            })
        except:
            dict_re.update({})
    applim = hbresult.appliedLimits
    for i in range(len(applim)):
        r = (applim[i].obsRatio())
        part = (hbresult.appliedLimits[(i)].contributingParticles())
        if idp in part  or (r >= 0.9 ):
            chan = ''.join(part)
            proc = (hbresult.appliedLimits[(i)].limit().processDesc())


            dict_re.update({
                        str(chan)+'_'+str(proc):r,
                        })
    ht_output.hb_r = dict_re

    return hbresult.allowed
    # return lst_re

def hs(input, dir_hsdata, ndf=2, method='SM95',q=False):
    # dict_hs = {}
    signals = HS.Signals(dir_hsdata)
    hsm.setMass(125.09)
    HP.effectiveCouplingInput(hsm, HP.smLikeEffCouplings, HP.ReferenceModel.SMHiggsInterp)


    # SM 95CL intepretation
    # if method == 'SM95':
    chisq_sm = signals(predsm)
    # print(chisq_sm)



    hschi2 = signals(input)
    ht_output.hs_chi2 = hschi2
    ht_output.hs_delch2 = hschi2 - chisq_sm
    if q:
        print(hschi2, ht_output.hs_delch2)
    
        # chi2_crit = chisq_sm + chi2.ppf(0.95,ndf)

    # global 95CL intepretation
    # if method == 'Global':
    n_hs = signals.observableCount()
    ht_output.hs_check_95 = ht_output.hs_chi2 / chi2.ppf(0.95,n_hs)
    ht_output.hs_check_SM = ht_output.hs_delch2 / chi2.ppf(0.95,ndf)
    

    if method == 'SM95':
        hsresult = ht_output.hs_check_SM
    if method == 'Global':
        hsresult = ht_output.hs_check_95


    if hsresult > 1.0:
        return False
    else:
        # print(hsresult)
        return True
    #dict_hs['n_obs'] = n_hs
    # return dict_hs




def hbextract(dict_hb):
    out = {}
    for i in range(len(dict_hb['r'])):
        # if dict_hb['r'][i] > 1:
        out.update({
            'proc'+str(dict_hb['particle'][i]): dict_hb['proc'][i],
            'r'+str(dict_hb['particle'][i]): dict_hb['r'][i],
        })
    return out




def excess(hinput, pdg95 = '25'):
    hsm.setMass(95.4)
    HP.effectiveCouplingInput(hsm, HP.smLikeEffCouplings, HP.ReferenceModel.SMHiggsInterp)
    h95=hinput.particle(pdg95)
    mugamgam = (h95.channelRate("LHC13","ggH","gamgam"))/(hsm.channelRate("LHC13","ggH","gamgam"))
    
    mubb = (h95.channelRate('LEP', 'eeHZ', 'bb')/hsm.channelRate('LEP', 'eeHZ', 'bb'))

    # ch1zz = ht_output.spc['effc_25_ZZ']
    # ch1gg = ht_output.spc['effc_25_gg']
    # brh1bb = ht_output.spc['br_25_bb']
    # brh1gamgam = ht_output.spc['br_25_gamgam']
    # mubb = ch1zz**2 * brh1bb/brhsmbb
    # mugamgam = ch1gg**2 * brh1gamgam/brhsmgamgam
    chi2 = ((mubb - 0.117)/0.057)**2 + max((mugamgam - 0.24)/0.09 , (0.24 - mugamgam)/0.08)**2
    
    return {
        # 'ch1vv':ch1zz,
        #     'ch1tt':ht_output.spc['effc_25_tt_s'],
        #     'ch1bb':ht_output.spc['effc_25_bb_s'],
            'muLEP':mubb,
            'muLHC':mugamgam,
            '95chi2':chi2
            }


