import Higgs.tools.Input as hinput

import Higgs.predictions as HP

def tthrate(lstnp, lstcp, spc, pdgh):
    strnp = list(map(str, lstnp))
    strcp = list(map(str, lstcp))

    dict = hinput.readHB5SLHA(spc,lstnp,lstcp)

    input = hinput.predictionsFromDict(dict,strnp,strcp,{})

    h = input.particle(pdgh)
    rate_tth = h.channelRate("LHC14", "Htt", "tt") 
    return ((rate_tth )*1e3)

def excess95(dict_spc):

    mugaga = dict_spc['c_h1gg']**2 * dict_spc['br_h1_gamgam']/0.00139
    mulep = dict_spc['c_h1ZZ']**2 * dict_spc['br_h1_bb']/0.802
    # mutata = dict_spc['c_h1tt']**2 * dict_spc['br_h1tautau']/0.0832
    # if mugaga < 0.33:
    #     chicms = (mugaga-0.33)/(-0.12)
    # else:
    #     chicms = (mugaga-0.33)/(0.19)
    # chiatlas = (mulep-0.18)/0.1
    if mugaga < 0.24:
        chigaga = (mugaga-0.24)/(-0.08)
    else:
        chigaga = (mugaga-0.24)/(0.09)
    chilep = (mulep-0.117)/0.057
    # chitata = (mutata-1.2)/0.5
    muchi2 = chigaga**2 + chilep**2
    return {
        '95muLHC':mugaga,
        '95muLEP':mulep,
        # ({'mutata':mutata})
        '95muchi2':muchi2}

# def excess(hinput, pdg95 = '25'):
#     predsm = HP.Predictions()
#     hsm = predsm.addParticle(HP.BsmParticle("h", charge="neutral", cp="even"))
#     hsm.setMass(95.4)
#     HP.effectiveCouplingInput(hsm, HP.smLikeEffCouplings, HP.ReferenceModel.SMHiggsInterp)
#     h95=hinput.particle(pdg95)
#     mugamgam = (h95.channelRate("LHC13","ggH","gamgam"))/(hsm.channelRate("LHC13","ggH","gamgam"))
    
#     mubb = (h95.channelRate('LEP', 'eeHZ', 'bb')/hsm.channelRate('LEP', 'eeHZ', 'bb'))

#     chi2 = ((mubb - 0.117)/0.057)**2 + max((mugamgam - 0.24)/0.09 , (0.24 - mugamgam)/0.08)**2
    
#     return {
#             'muLEP':mubb,
#             'muLHC':mugamgam,
#             '95chi2':chi2
#             }

def fcp(df, hi, f):
    b1 = df['c_'+hi+f+f]
    b2 = df['ctd_'+hi+f+f]

    df['fcp_'+hi+f+f] = b2**2 / (b1**2 + b2**2)



# import math
# def cpvphase(dict):
#     cpvh1tt =    math.atan(dict['ctd_h1tt']/dict['c_h1tt'])
#     cpvh2tt =    math.atan(dict['ctd_h2tt']/dict['c_h2tt'])
#     cpvh3tt =    math.atan(dict['ctd_h3tt']/dict['c_h3tt'])
#     cpvh1tautau =math.atan(dict['ctd_h1tautau']/dict['c_h1tautau'])
#     cpvh2tautau =math.atan(dict['ctd_h2tautau']/dict['c_h2tautau'])
#     cpvh3tautau =math.atan(dict['ctd_h3tautau']/dict['c_h3tautau'])
#     if dict['c_a1tt'] == 0:
#         cpva1tt = math.pi/2
#     else:
#         cpva1tt =    math.atan(dict['ctd_a1tt']/dict['c_a1tt'])
#     if dict['c_a1tautau'] == 0:
#         cpva1tautau = math.pi/2
#     else:
#         cpva1tautau =math.atan(dict['ctd_a1tautau']/dict['c_a1tautau'])

#     if dict['c_a2tt'] == 0:
#         cpva2tt = math.pi/2
#     else:
#         cpva2tt =    math.atan(dict['ctd_a2tt']/dict['c_a2tt'])
#     if dict['c_a2tautau'] == 0:
#         cpva2tautau = math.pi/2
#     else:
#         cpva2tautau =math.atan(dict['ctd_a2tautau']/dict['c_a2tautau'])

#     return {'cpvh1tt': math.sin(2*cpvh1tt), 
#             'cpvh1tautau': math.sin(2*cpvh1tautau), 
#             'cpvh2tt': math.sin(2*cpvh2tt), 
#             'cpvh2tautau': math.sin(2*cpvh2tautau), 
#             'cpvh3tt': math.sin(2*cpvh3tt),
#             'cpvh3tautau': math.sin(2*cpvh3tautau),
#             'cpva1tt': math.sin(2*cpva1tt),
#             'cpva1tautau': math.sin(2*cpva1tautau),
#             'cpva2tt': math.sin(2*cpva2tt),
#             'cpva2tautau': math.sin(2*cpva2tautau),}

