# %%
# import utilities as al
from lib import utilities as al
from numpy import sqrt
import numpy as np

class oup:
    flavor = {}
    beta0= 23/3
    beta1=116/3
    alpha_sMz=0.1179
    mz = 91.1876
    mt = 162.943153
    mw = 80.379
    u0=160.1
    v= 1 - (beta0* alpha_sMz / (2 * np.pi)) * np.log(mz / u0)
    alpha_s = alpha_sMz / v * (1 - beta1 / beta0 * alpha_sMz / (4 * np.pi) * np.log(v )/ v)

def read_wc(block, pdg):
    db = block['values']
    for i in range(len(db)):
        if int(db[i][0]) == int(pdg[0]) and int(db[i][1]) == int(pdg[1]) and int(db[i][2]) == int(pdg[2]) and int(db[i][3]) == int(pdg[3]):
            return float(db[i][4])

def inp(spc):
    fl_bl = al.read_spc(spc)['BLOCK']['FlavorKitQFV']
    wc_bl = al.read_spc(spc)['BLOCK']['FWCOEF']
    oup.c7sm = (read_wc(wc_bl, [305, 4422, 0, 0]))
    oup.c70 =  (read_wc(wc_bl, [305, 4422, 0, 2]))
    oup.c7np = (read_wc(wc_bl, [305, 4422, 0, 1]))
    oup.c7p =  (read_wc(wc_bl, [305, 4322, 0, 2]))
    oup.c7pnp =(read_wc(wc_bl, [305, 4322, 0, 1]))


    oup.c8sm = (read_wc(wc_bl, [305, 6421, 0, 0]))
    oup.c80 =  (read_wc(wc_bl, [305, 6421, 0, 2]))
    oup.c8np = (read_wc(wc_bl, [305, 6421, 0, 1]))
    oup.c8p =  (read_wc(wc_bl, [305, 6321, 0, 2]))
    oup.c8pnp =(read_wc(wc_bl, [305, 6321, 0, 1]))

    oup.delc7 = oup.c7np/1.12e-8
    oup.delc7p =oup.c7pnp/1.12e-8
    oup.delc8 = oup.c8np/1.06e-8
    oup.delc8p =oup.c8pnp/1.06e-8
    # wilson coefficient matching [hep-ph/9904413]
    oup.bsg = al.read_data(fl_bl, 200)
    oup.bsmumu = al.read_data(fl_bl, 4006)
    oup.delmbs = al.read_data(fl_bl, 1900)
    # oup.tb = al.read_spc(spc)['BLOCK']['MINPAR']['values'][1]
    # oup.bsgunc = oup.bsg*0.07

def cal_bsg():
    # nnlo b->sgamma [2002.01548]
    bsg = (3.4 - 8.25 * oup.delc7 - 2.1 * oup.delc8)
    rgam = (3.35-8.08*oup.delc7 - 2.06*oup.delc8)

    del_bsg =  (0.17**2 + (oup.delc7p*8.25)**2 + (oup.delc8p*2.1)**2)
    del_rgam = (0.16**2 + (8.08*oup.delc7p)**2 + (2.06*oup.delc8p)**2)

    oup.bsgcheck_nlo = ((bsg - 3.32)**2 / (0.15**2 + del_bsg))/3.841
    oup.rgamcheck_nlo = ((rgam - 3.22)**2 / (0.15**2 + del_rgam))/3.841
    # return {'bsgcheck_nlo': bsgcheck_nlo, 'rgamcheck': rgamcheck_nlo}



# def cal_ljx(c70, c71, c72, c80, c81, c82):#2412.04572
#     Rgam = 3.35 - 8.08 * (c70 + oup.alpha_s / (4 * np.pi) * c71)- 2.06 * (c80 + oup.alpha_s / (4 * np.pi) * c81)
#     Brbsgam = 3.4 - 8.25 * (c70 + oup.alpha_s / (4 * np.pi) * c71+(oup.alpha_s / (4 * np.pi))*(oup.alpha_s / (4 * np.pi))*c72)- 2.1 * (c80 + oup.alpha_s / (4 * np.pi) * c81+(oup.alpha_s / (4 * np.pi))*(oup.alpha_s / (4 * np.pi))*c82)

#     oup.chisqRgam = (Rgam - 3.22)**2/0.44**2
#     oup.chisqBrbsgam = (Brbsgam - 3.32)**2/0.444**2

def check_exp():
    # print(oup.bsg, oup.bsmumu, oup.delmbs)

    oup.bsgamcheck =  ((oup.bsg*1e4-3.32)**2/(0.15**2+0.17**2) - (3.4-3.32)**2/(0.15**2+0.17**2)) / 3.841
    oup.bsmumucheck = ((oup.bsmumu*1e9-3.34)**2/(0.27**2+0.12**2) - (3.64-3.34)**2/(0.27**2+0.12**2)) / 3.841
    oup.mbscheck =    ((oup.delmbs - 17.757)**2/(0.021**2+2.7**2) )/3.841

    # return 

def flavor_check(spc):
    inp(spc)
    # 1803.01853
    # chi2 = (bsg-3.32*1e-4)**2 / (0.15*1e-4 + bsg*0.07)**2 
    # chi2 = chi2+ (bsmumu - 3.0*1e-9)**2/((0.6+0.2)*1e-9)**2
    # chi2 = chi2+ (delmbs - 17.757)**2/(0.021+2.7)**2 # SM likelihood
    # chk = naivecheck()
    # check_ljx()
    check_exp()
    # cal_bsgam(mhc, tb)
    oup.flavor.update(
        {
            'b->sgamma': oup.bsg,
            # 'R_gamma': oup.rgam,
            'bs->mumu': oup.bsmumu,
            'delmbs': oup.delmbs,
            # 'c7sm':oup.c7sm,
            # 'c70':oup.c70,
            # 'c7np':oup.c7np,
            # 'c7p':oup.c7p,
            # 'c7pnp':oup.c7pnp,
            # 'c8sm':oup.c8sm,
            # 'c80':oup.c80,
            # 'c8np':oup.c8np,
            # 'c8p':oup.c8p,
            # 'c8pnp':oup.c8pnp,
            'bsgcheck':oup.bsgamcheck,
            'bsmmcheck':oup.bsmumucheck,
            'mbscheck':oup.mbscheck,
        }
    )
    cal_bsg()
    # oup.flavor.update({'bsgcheck_nlo': oup.bsgcheck_nlo, 'rgamcheck_nlo': oup.rgamcheck_nlo})

    chk = max([oup.bsgamcheck, oup.bsmumucheck, oup.mbscheck])

    oup.flavor.update({'flavorcheck': chk})
    # print(chi2)
    return chk<1
    # if chi2 < 7.81:
    #     return True
    # else:
    #     return False




# %%
# inp('/home/licheng/Code/myscripts/sphenoscan/test/1199/SPheno.spc.THDMSZ3')
# bsgnnlo()
# %%



# %%

VtsVtb = 0.0405
Gf = 1.1663787e-5
e = np.sqrt(4*np.pi/127)
g3 = np.sqrt(4*np.pi*0.1179)
alp_160 = 1/127.9
alps_160 = 0.1179

oo16pi2 = 1/(16*np.pi**2)

mb = 4.18

# f = -VtsVtb*alp_160/(8*np.pi*sw_160*mw2)
# f = VtsVtb*Gf*4/np.sqrt(2)

# f7 = -0.25*np.sqrt(alp_160 *np.pi*4)/mb *oo16pi2 * f
# f8 = -0.25*np.sqrt(alps_160 *np.pi*4)/mb *oo16pi2 * f
# print(f, f7,f8)


# %%


import numpy as np
from scipy.special import spence

# ----------------------------------------------------------------------
# Basic auxiliary functions (some are not directly used but kept for completeness)
# ----------------------------------------------------------------------
def E0(x):
    return (x*(x**2 + 11*x - 18))/(12*(x-1)**3) + (x**2*(4*x**2 - 16*x + 15))/(6*(x-1)**4)*np.log(x) - (2/3)*np.log(x) - 2/3

def W7SM(x):
    return ((-16*x**4 - 122*x**3 + 80*x**2 - 8*x) / (9*(x-1)**4) * spence(1/x) +
            (6*x**4 + 46*x**3 - 28*x**2) / (3*(x-1)**5) * np.log(x)**2 +
            (-102*x**5 - 588*x**4 - 2262*x**3 + 3244*x**2 - 1364*x + 208) / (81*(x-1)**5) * np.log(x) +
            (1646*x**4 + 12205*x**3 - 10740*x**2 + 2509*x - 436) / (486*(x-1)**4))

def W8SM(x):
    return ((-4*x**4 + 40*x**3 + 41*x**2 + x) / (6*(x-1)**4) * spence(1/x) +
            (-17*x**3 - 31*x**2) / (2*(x-1)**5) * np.log(x)**2 +
            (-210*x**5 + 1086*x**4 + 4893*x**3 + 2857*x**2 - 1994*x + 280) / (216*(x-1)**5) * np.log(x) +
            (737*x**4 - 14102*x**3 - 28209*x**2 + 610*x - 508) / (1296*(x-1)**4))

def M7SM(x):
    return (82*x**5 + 301*x**4 + 703*x**3 - 2197*x**2 + 1319*x - 208 -
            (162*x**4 + 1242*x**3 - 756*x**2)*np.log(x)) / (81*(x-1)**5)

def M8SM(x):
    return (77*x**5 - 475*x**4 - 1111*x**3 + 607*x**2 + 1042*x - 140 +
            (918*x**3 + 1674*x**2)*np.log(x)) / (108*(x-1)**5)

def T7SM(x):
    return (x/3) * (47*x**3 - 63*x**2 + 9*x + 7 - (18*x**3 + 30*x**2 - 24*x)*np.log(x)) / ((x-1)**5)

def T8SM(x):
    return 2*x * (-x**3 - 9*x**2 + 9*x + 1 + (6*x**2 + 6*x)*np.log(x)) / ((x-1)**5)

def EH(y):
    return (1/36) * y * (7*y**3 - 36*y**2 + 45*y - 16 + (18*y - 12)*np.log(y)) / ((y-1)**4)

def W7YY(y):
    term1 = (8*y**3 - 37*y**2 + 18*y) / ((y-1)**4) * spence(1/y)
    term2 = (3*y**3 + 23*y**2 - 14*y) / ((y-1)**5) * np.log(y)**2
    term3 = (21*y**4 - 192*y**3 - 174*y**2 + 251*y - 50) / (9*(y-1)**5) * np.log(y)
    term4 = (-1202*y**3 + 7569*y**2 - 5436*y + 797) / (108*(y-1)**4)
    return (2/9) * y * (term1 + term2 + term3 + term4) - (4/9) * EH(y)

def W8YY(y):
    term1 = (13*y**3 - 17*y**2 + 30*y) / ((y-1)**4) * spence(1/y)
    term2 = -(17*y**2 + 31*y) / ((y-1)**5) * np.log(y)**2
    term3 = (42*y**4 + 318*y**3 + 1353*y**2 + 817*y - 226) / (36*(y-1)**5) * np.log(y)
    term4 = (-4451*y**3 + 7650*y**2 - 18153*y + 1130) / (216*(y-1)**4)
    return (1/6) * y * (term1 + term2 + term3 + term4) - (1/6) * EH(y)

def M7YY(y):
    return (1/27) * y * (-14*y**4 + 149*y**3 - 153*y**2 - 13*y + 31 -
                         (18*y**3 + 138*y**2 - 84*y)*np.log(y)) / ((y-1)**5)

def M8YY(y):
    return (1/36) * y * (-7*y**4 + 25*y**3 - 279*y**2 + 223*y + 38 +
                         (102*y**2 + 186*y)*np.log(y)) / ((y-1)**5)

def T7YY(y):
    return (1/3) * T7SM(y)

def T8YY(y):
    return (1/3) * T8SM(y)

def W7XY(y):
    term1 = (8*y**2 - 28*y + 12) / (3*(y-1)**3) * spence(1/y)
    term2 = (3*y**2 + 14*y - 8) / (3*(y-1)**4) * np.log(y)**2
    term3 = (4*y**3 - 24*y**2 + 2*y + 6) / (3*(y-1)**4) * np.log(y)
    term4 = (-2*y**2 + 13*y - 7) / ((y-1)**3)
    return (4/3) * y * (term1 + term2 + term3 + term4)

def W8XY(y):
    term1 = (17*y**2 - 25*y + 36) / (2*(y-1)**3) * spence(1/y)
    term2 = -(17*y + 19) / ((y-1)**4) * np.log(y)**2
    term3 = (14*y**3 - 12*y**2 + 187*y + 3) / (4*(y-1)**4) * np.log(y)
    term4 = ( -3*(29*y**2 - 44*y + 143) ) / (8*(y-1)**3)
    return (1/3) * y * (term1 + term2 + term3 + term4)

def M7XY(y):
    return (2/9) * y * (-8*y**3 + 55*y**2 - 68*y + 21 -
                        (6*y**2 + 28*y - 16)*np.log(y)) / ((y-1)**4)

def M8XY(y):
    return (1/6) * y * (-7*y**3 + 23*y**2 - 97*y + 81 +
                        (34*y + 38)*np.log(y)) / ((y-1)**4)

def T7XY(y):
    return (2/3) * y * (13*y**2 - 20*y + 7 -
                        (6*y**2 + 4*y - 4)*np.log(y)) / ((y-1)**4)

def T8XY(y):
    return 2 * y * (-y**2 - 4*y + 5 + (4*y + 2)*np.log(y)) / ((y-1)**4)

# ----------------------------------------------------------------------
# Coefficient functions (without the extra LO terms, as indicated in the comment)
# ----------------------------------------------------------------------
def C7SM1(mu0, mt, mw, mC):
    x = mt**2 / mw**2
    return W7SM(x) + M7SM(x) * np.log(mu0**2 / mw**2)

def C8SM1(mu0, mt, mw, mC):
    x = mt**2 / mw**2
    return W8SM(x) + M8SM(x) * np.log(mu0**2 / mw**2)

def C7YY1(mu0, mt, mw, mC):
    y = mt**2 / mC**2
    return W7YY(y) + M7YY(y) * np.log(mu0**2 / mC**2)

def C8YY1(mu0, mt, mw, mC):
    y = mt**2 / mC**2
    return W8YY(y) + M8YY(y) * np.log(mu0**2 / mC**2)

def C7XY1(mu0, mt, mw, mC):
    y = mt**2 / mC**2
    return W7XY(y) + M7XY(y) * np.log(mu0**2 / mC**2)

def C8XY1(mu0, mt, mw, mC):
    y = mt**2 / mC**2
    return W8XY(y) + M8XY(y) * np.log(mu0**2 / mC**2)


# ----------------------------------------------------------------------
# Helper: polylog(2, 1 - 1/x) = spence(1/x)
# ----------------------------------------------------------------------

# ----------------------------------------------------------------------
# Top‑mass approximations for SM coefficients
# ----------------------------------------------------------------------
def C7t2mt(x):
    z = 1.0 / x
    w = 1.0 - z
    y = np.sqrt(z)
    if y < 0.4:
        return (12.06 + 12.93*z + 3.013*z*np.log(z) +
                96.71*z**2 + 52.73*z**2*np.log(z) +
                147.9*z**3 + 187.7*z**3*np.log(z) -
                144.9*z**4 + 236.1*z**4*np.log(z))
    else:
        return (11.7358 + 0.364203*w + 0.115526*w**2 - 0.00314453*w**3 -
                0.0326274*w**4 - 0.035285*w**5 - 0.0307627*w**6 -
                0.0250402*w**7 - 0.0198455*w**8 - 0.015559*w**9 -
                0.0121463*w**10 - 0.00946608*w**11 - 0.00736888*w**12 -
                0.00572644*w**13 - 0.00443612*w**14 - 0.00341827*w**15 -
                0.0026118*w**16)

def C7c2MW(x):
    z = 1.0 / x
    w = 1.0 - z
    y = np.sqrt(z)
    if y < 0.4:
        return (1.525 - 0.1165*z + 0.01975*z*np.log(z) +
                0.06283*z**2 + 0.005349*z**2*np.log(z) +
                0.01005*z**2*np.log(z)**2 - 0.04202*z**3 +
                0.01535*z**3*np.log(z) - 0.00329*z**3*np.log(z)**2 +
                0.002372*z**4 - 0.0007910*z**4*np.log(z))
    else:
        return (1.432 + 0.06709*w + 0.01257*w**2 + 0.004710*w**3 +
                0.002373*w**4 + 0.001406*w**5 + 0.0009216*w**6 +
                0.00064730*w**7 + 0.0004779*w**8)

def C8t2mt(x):
    z = 1.0 / x
    w = 1.0 - z
    y = np.sqrt(z)
    if y < 0.35:
        return (-0.8954 - 7.043*z - 98.34*z**2 -
                46.21*z**2*np.log(z) - 127.1*z**3 -
                181.6*z**3*np.log(z) + 535.8*z**4 -
                76.76*z**4*np.log(z))
    else:
        return (-0.614093 - 0.897491*w - 0.0349242*w**2 + 0.0679089*w**3 +
                0.0796552*w**4 + 0.0722587*w**5 + 0.0613235*w**6 +
                0.0509632*w**7 + 0.0421555*w**8 + 0.0349448*w**9 +
                0.0291171*w**10 + 0.0244182*w**11 + 0.020619*w**12 +
                0.0175317*w**13 + 0.015007*w**14 + 0.0129285*w**15 +
                0.0112057*w**16)

def C8c2MW(x):
    z = 1.0 / x
    w = 1.0 - z
    y = np.sqrt(z)
    if y < 0.35:
        return (-1.870 + 0.1010*z - 0.1218*z*np.log(z) + 0.1045*z**2 -
                0.03748*z**2*np.log(z) + 0.01151*z**2*np.log(z)**2 -
                0.01023*z**3 + 0.004342*z**3*np.log(z) +
                0.0003031*z**3*np.log(z)**2 - 0.001537*z**4 +
                0.0007532*z**4*np.log(z))
    else:
        return (-1.676 - 0.1179*w - 0.02926*w**2 - 0.01297*w**3 -
                0.007296*w**4 - 0.004672*w**5 - 0.003248*w**6 -
                0.002389*w**7 - 0.001831*w**8)

# ----------------------------------------------------------------------
# SM two‑loop pieces
# ----------------------------------------------------------------------
def SM72(mu0, mt, x):
    logterm = np.log(mu0**2 / mt**2)
    logterm2 = logterm**2
    # Note: some coefficients in the original may contain typos (e.g. repeated x^5 terms)
    part1 = logterm * (
        ((-592*x**5 - 22*x**4 + 12814*x**3 - 6376*x**2 + 512*x) / (27*(x-1)**5)) * spence(1/x) +
        ((-26838*x**5 + 25938*x**4 + 627367*x**3 - 331956*x**2 + 16989*x - 460) / (729*(x-1)**6)) * np.log(x) +
        (34400*x**5 + 276644*x**5 - 2668324*x**5 + 1694437*x**5 - 323354*x + 53077) / (2187*(x-1)**5)
    )
    part2 = logterm2 * (
        ((-63*x**5 + 532*x**4 + 2089*x**3 - 1118*x**2) / (9*(x-1)**6)) * np.log(x) +
        (1186*x**5 - 2705*x**5 - 24791*x**5 - 16099*x**5 + 19229*x - 2740) / (162*(x-1)**5)
    )
    return part1 + part2

def SM82(mu0, mt, x):
    logterm = np.log(mu0**2 / mt**2)
    logterm2 = logterm**2
    part1 = logterm * (
        ((-148*x**5 + 1052*x**4 - 4811*x**3 - 3520*x**2 - 61*x) / (18*(x-1)**5)) * spence(1/x) +
        ((-15984*x**5 + 152379*x**4 - 1358060*x**3 - 1201653*x**2 - 74190*x + 9188) / (1944*(x-1)**6)) * np.log(x) +
        (109669*x**5 - 1112675*x**4 + 6239377*x**3 + 8967623*x**2 + 768722*x - 42796) / (11664*(x-1)**5)
    )
    part2 = logterm2 * (
        ((-139*x**4 - 2938*x**3 - 2683*x**2) / (12*(x-1)**6)) * np.log(x) +
        (1295*x**5 - 7009*x**4 + 29495*x**3 + 64513*x**2 + 17458*x - 2072) / (216*(x-1)**5)
    )
    return part1 + part2

def C7SM2(mu0, mt, mw, mC, mtr):
    x = mtr**2 / mw**2
    return (C7t2mt(x) + SM72(mu0, mt, x) -
            (C7c2MW(x) + (13763/2187)*np.log(mu0**2/mw**2) + (13763/2187)*np.log(mu0**2/mw**2)**2))

def C8SM2(mu0, mt, mw, mC, mtr):
    x = mtr**2 / mw**2
    return (C8t2mt(x) + SM82(mu0, mt, x) -
            (C8c2MW(x) + (16607/5832)*np.log(mu0**2/mw**2) + (397/486)*np.log(mu0**2/mw**2)**2))

# ----------------------------------------------------------------------
# Two‑Higgs‑doublet model functions
# ----------------------------------------------------------------------
def C7H2lulumt(y):
    if y < 0.16:
        return (-8.27754*y - 480.917*y**2 - 1158.21*y**3 - 1491.65*y**4 - 823.03*y**5 +
                4.31733*y*np.log(y) - 396.082*y**2*np.log(y) - 1292.39*y**3*np.log(y) -
                2540.33*y**4*np.log(y) - 3362.49*y**5*np.log(y) +
                0.922497*y*np.log(y)**2 - 112.353*y**2*np.log(y)**2 -
                348.239*y**3*np.log(y)**2 - 541.372*y**4*np.log(y)**2 -
                412.426*y**5*np.log(y)**2 -
                20.7325*y**2*np.log(y)**3 - 34.5021*y**3*np.log(y)**3 -
                23.2551*y**4*np.log(y)**3 + 42.3018*y**5*np.log(y)**3)
    elif y <= 1.0:
        w = 1.0 - y
        return (1.2835 - 0.715834*w - 0.303943*w**2 - 0.154911*w**3 - 0.0862524*w**4 -
                0.0502032*w**5 - 0.0296977*w**6 - 0.0173999*w**7 - 0.00975217*w**8 -
                0.00487721*w**9 - 0.0017209*w**10 + 0.000337773*w**11 + 0.00167884*w**12 +
                0.00254213*w**13 + 0.00308287*w**14 + 0.0034037*w**15 + 0.00357366*w**16)
    elif y < 10.5:
        u = 1.0 - 1.0/y
        return (1.2835 + 0.715834*u + 0.411891*u**2 + 0.262859*u**3 + 0.182486*u**4 +
                0.134723*u**5 + 0.104026*u**6 + 0.0830584*u**7 + 0.0680429*u**8 +
                0.0568813*u**9 + 0.0483331*u**10 + 0.0416253*u**11 + 0.0362548*u**12 +
                0.0318817*u**13 + 0.0282691*u**14 + 0.0252475*u**15 + 0.0226928*u**16)
    else:
        return (3.96988 - 274.233/y**5 + 24.4124/y**4 + 79.1456/y**3 + 47.0925/y**2 +
                15.3541/y - (72.1251*np.log(y))/y**5 - (168.261*np.log(y))/y**4 -
                (103.794*np.log(y))/y**3 - (38.1211*np.log(y))/y**2 - (8.75279*np.log(y))/y)

def C7H2ldlumt(y):
    if y < 0.16:
        return (-572.224*y - 524.114*y**2 + 166.709*y**3 + 1479.91*y**4 + 2828.07*y**5 -
                453.485*y*np.log(y) - 870.291*y**2*np.log(y) - 826.157*y**3*np.log(y) +
                169.874*y**4*np.log(y) + 1985.76*y**5*np.log(y) -
                123.519*y*np.log(y)**2 - 195.667*y**2*np.log(y)**2 -
                46.6111*y**3*np.log(y)**2 + 323.191*y**4*np.log(y)**2 +
                469.396*y**5*np.log(y)**2 -
                20.9383*y*np.log(y)**3 - 8.88889*y**2*np.log(y)**3 +
                19.7284*y**3*np.log(y)**3 + 36.0768*y**4*np.log(y)**3 -
                66.631*y**5*np.log(y)**3)
    elif y <= 1.0:
        w = 1.0 - y
        return (12.8225 + 1.66323*w + 0.77799*w**2 + 0.375487*w**3 + 0.158083*w**4 +
                0.0302107*w**5 - 0.0486763*w**6 - 0.0986447*w**7 - 0.130636*w**8 -
                0.15103*w**9 - 0.163732*w**10 - 0.171227*w**11 - 0.175145*w**12 -
                0.17658*w**13 - 0.176283*w**14 - 0.174777*w**15 - 0.172432*w**16)
    elif y < 10.5:
        u = 1.0 - 1.0/y
        return (12.8225 - 1.66323*u - 0.885238*u**2 - 0.482735*u**3 - 0.297636*u**4 -
                0.202068*u**5 - 0.147045*u**6 - 0.112501*u**7 - 0.0893095*u**8 -
                0.0729095*u**9 - 0.0608295*u**10 - 0.0516382*u**11 - 0.0444588*u**12 -
                0.038729*u**13 - 0.0340731*u**14 - 0.030232*u**15 - 0.0270216*u**16)
    else:
        return (8.08756 + 194.326/y**5 - 24.9665/y**4 - 78.8992/y**3 - 49.3185/y**2 -
                12.9103/y + (101.082*np.log(y))/y**5 + (168.442*np.log(y))/y**4 +
                (106.216*np.log(y))/y**3 + (38.4258*np.log(y))/y**2 + (9.75728*np.log(y))/y)

def C8H2lulumt(y):
    if y < 0.16:
        # note: the constant term 0.743716*y (original comment says it should be 0.743716, not -0.743716)
        return (0.743716*y - 805.468*y**2 - 3357.02*y**3 - 9016.34*y**4 - 19606.1*y**5 +
                3.23783*y*np.log(y) - 602.665*y**2*np.log(y) - 3077.38*y**3*np.log(y) -
                10102.2*y**4*np.log(y) - 26090.2*y**5*np.log(y) +
                0.690844*y*np.log(y)**2 - 169.105*y**2*np.log(y)**2 -
                779.588*y**3*np.log(y)**2 - 2243.8*y**4*np.log(y)**2 -
                5251.1*y**5*np.log(y)**2 -
                22.9807*y**2*np.log(y)**3 - 66.3202*y**3*np.log(y)**3 -
                143.424*y**4*np.log(y)**3 - 226.68*y**5*np.log(y)**3)
    elif y <= 1.0:
        w = 1.0 - y
        return (1.18809 - 0.407808*w - 0.20763*w**2 - 0.126464*w**3 - 0.0856991*w**4 -
                0.0620372*w**5 - 0.0468892*w**6 - 0.0365182*w**7 - 0.0290741*w**8 -
                0.0235439*w**9 - 0.0193272*w**10 - 0.0160457*w**11 - 0.0134495*w**12 -
                0.0113673*w**13 - 0.00967771*w**14 - 0.00829289*w**15 - 0.00714781*w**16)
    elif y < 10.5:
        u = 1.0 - 1.0/y
        return (1.18809 + 0.407808*u + 0.200178*u**2 + 0.119012*u**3 + 0.0786112*u**4 +
                0.0553134*u**5 + 0.0406051*u**6 + 0.0307493*u**7 + 0.023859*u**8 +
                0.0188842*u**9 + 0.0151985*u**10 + 0.0124088*u**11 + 0.0102586*u**12 +
                0.00857494*u**13 + 0.00723815*u**14 + 0.00616365*u**15 + 0.00529038*u**16)
    else:
        # original comment: "2.7835 should be 0.27835" – we keep as written
        return (2.7835 + 826.151/y**5 + 96.3468/y**4 - 66.3939/y**3 - 39.7588/y**2 -
                5.21409/y - (300.663*np.log(y))/y**5 + (91.89*np.log(y))/y**4 +
                (78.5823*np.log(y))/y**3 + (20.0187*np.log(y))/y**2)

def C8H2ldlumt(y):
    if y < 0.16:
        return (-929.846*y - 2942.88*y**2 - 6480.66*y**3 - 11683.8*y**4 - 15961.9*y**5 -
                658.39*y*np.log(y) - 2769.99*y**2*np.log(y) - 7906.35*y**3*np.log(y) -
                17770*y**4*np.log(y) - 29962.3*y**5*np.log(y) -
                174.653*y*np.log(y)**2 - 612.625*y**2*np.log(y)**2 -
                1438.79*y**3*np.log(y)**2 - 2776.64*y**4*np.log(y)**2 -
                2626.73*y**5*np.log(y)**2 -
                19.7963*y*np.log(y)**3 - 31.8333*y**2*np.log(y)**3 -
                40.6759*y**3*np.log(y)**3 + 54.6584*y**4*np.log(y)**3 +
                1002.93*y**5*np.log(y)**3)
    elif y <= 1.0:
        w = 1.0 - y
        return (-0.610999 + 1.09548*w + 0.649151*w**2 + 0.459582*w**3 + 0.356928*w**4 +
                0.291027*w**5 + 0.243786*w**6 + 0.207532*w**7 + 0.178511*w**8 +
                0.154649*w**9 + 0.134673*w**10 + 0.117736*w**11 + 0.103236*w**12 +
                0.0907291*w**13 + 0.0798733*w**14 + 0.0704007*w**15 + 0.0620968*w**16)
    elif y < 10.5:
        u = 1.0 - 1.0/y
        return (-0.610999 - 1.09548*u - 0.446333*u**2 - 0.256764*u**3 - 0.169848*u**4 -
                0.119684*u**5 - 0.0876105*u**6 - 0.0659531*u**7 - 0.0507877*u**8 -
                0.0398674*u**9 - 0.0318194*u**10 - 0.0257687*u**11 - 0.0211391*u**12 -
                0.0175414*u**13 - 0.0147063*u**14 - 0.0124441*u**15 - 0.0106184*u**16)
    else:
        return (-3.17375 - 1002.87/y**5 - 205.702/y**4 + 62.2604/y**3 + 63.7396/y**2 +
                10.8891/y + (476.897*np.log(y))/y**5 - (71.6153*np.log(y))/y**4 -
                (110.665*np.log(y))/y**3 - (35.4207*np.log(y))/y**2)

# ----------------------------------------------------------------------
# Two‑loop pieces for 2HDM
# ----------------------------------------------------------------------
def YY72(mu0, mt, y):
    logterm = np.log(mu0**2 / mt**2)
    logterm2 = logterm**2
    # note: original comment about -1515y^3 should be -1515y^2; we keep as given
    part1 = logterm * y * (
        -( (67930*y**4 - 470095*y**3 + 1358478*y**2 - 700243*y + 54970) / (2187*(y-1)**5) ) +
        ( (10422*y**4 - 84390*y**3 + 322801*y**2 - 146588*y + 1435) / (729*(y-1)**6) ) * np.log(y) +
        ( 2*y*(260*y**3 - 1515*y**2 + 3757*y - 1446) / (27*(y-1)**5) ) * spence(1/y)
    )
    part2 = logterm2 * y * (
        ( (-518*y**4 + 3665*y**3 - 17397*y**2 + 3767*y + 1843) / (162*(y-1)**5) ) +
        ( y*(-63*y**3 + 532*y**2 + 2089*y - 1118) / (27*(y-1)**6) ) * np.log(y)
    )
    return part1 + part2

def XY72(mu0, mt, y):
    logterm = np.log(mu0**2 / mt**2)
    logterm2 = logterm**2
    # note: comment about 7642y^3 should be 7642y^2; we keep as given
    part1 = logterm * y * (
        (3790*y**3 - 22511*y**2 + 53614*y - 21069) / (81*(y-1)**4) +
        (2*(-1266*y**3 + 7642*y**2 - 21467*y + 8179)) / (81*(y-1)**5) * np.log(y) -
        (8*(139*y**3 - 612*y**2 + 1103*y - 342)) / (27*(y-1)**4) * spence(1/y)
    )
    part2 = logterm2 * y * (
        (284*y**3 - 1435*y**2 + 4304*y - 1425) / (27*(y-1)**4) +
        (2*(63*y**3 - 397*y**2 - 970*y + 440)) / (27*(y-1)**5) * np.log(y)
    )
    return part1 + part2

def YY82(mu0, mt, y):
    logterm = np.log(mu0**2 / mt**2)
    logterm2 = logterm**2
    part1 = logterm * y * (
        ((51948*y**4 - 233781*y**3 + 48634*y**2 - 698693*y + 2452) / (1944*(y-1)**6)) * np.log(y) -
        (522347*y**4 - 2423255*y**3 + 2706021*y**2 - 5930609*y + 148856) / (11664*(y-1)**5) +
        ( y*(481*y**3 - 1950*y**2 + 1523*y - 2550) / (18*(y-1)**5) ) * spence(1/y)
    )
    part2 = logterm2 * y * (
        (-259*y**4 + 1117*y**3 + 2925*y**2 + 28411*y + 2366) / (216*(y-1)**5) -
        ( y*(139*y**2 + 2938*y + 2683) / (36*(y-1)**6) ) * np.log(y)
    )
    return part1 + part2

def XY82(mu0, mt, y):
    logterm = np.log(mu0**2 / mt**2)
    logterm2 = logterm**2
    part1 = logterm * y * (
        (1463*y**3 - 5794*y**2 + 5543*y - 15036) / (27*(y-1)**4) +
        (-1887*y**3 + 7115*y**2 + 2519*y + 19901) / (54*(y-1)**5) * np.log(y) +
        (-629*y**3 + 2178*y**2 - 1729*y + 2196) / (18*(y-1)**4) * spence(1/y)
    )
    part2 = logterm2 * y * (
        (259*y**3 - 947*y**2 - 251*y - 5973) / (36*(y-1)**4) +
        (139*y**2 + 2134*y + 1183) / (18*(y-1)**5) * np.log(y)
    )
    return part1 + part2

# ----------------------------------------------------------------------
# Combined 2HDM coefficients
# ----------------------------------------------------------------------
def C7YY2(mu0, mt, mw, mC, mtr):
    y = mtr**2 / mC**2
    return C7H2lulumt(y) + YY72(mu0, mt, y)

def C7XY2(mu0, mt, mw, mC, mtr):
    y = mtr**2 / mC**2
    return C7H2ldlumt(y) + XY72(mu0, mt, y)

def C8YY2(mu0, mt, mw, mC, mtr):
    y = mtr**2 / mC**2
    return C8H2lulumt(y) + YY82(mu0, mt, y)

def C8XY2(mu0, mt, mw, mC, mtr):
    y = mtr**2 / mC**2
    return C8H2ldlumt(y) + XY82(mu0, mt, y)


def dc70(mhc, tb,mt):
    x = mt**2/mhc**2
    c7sm = x/24 * (-8*x**3+3*x**2 + 12*x -7 + (18*x**2-12*x)*np.log(x))/(x-1)**4
    c7xy = x/12 * (-5*x**2+8*x-3+(6*x-4)*np.log(x))/(x-1)**3
    return  c7sm/3 / tb**2 +  c7xy

def dc80(mhc, tb,mt):
    x = mt**2/mhc**2
    c8sm = x/8 * (-x**3+6*x**2-3*x-2-6*x*np.log(x))/(x-1)**4
    c8xy = x/4 * (-x**2+4*x-3-2*np.log(x))/(x-1)**3
    return  c8sm/3/ tb**2 +  c8xy

# ----------------------------------------------------------------------
# Final ΔC7 and ΔC8 functions
# ----------------------------------------------------------------------
def DeltaC71(mu0, mt, mw, mC, X, Y):
    """
    ΔC7(μ0) for a two‑Higgs‑doublet model with parameters X, Y.
    """
    return Y**2 * C7YY1(mu0, mt, mw, mC) + X * Y * C7XY1(mu0, mt, mw, mC)

def DeltaC81(mu0, mt, mw, mC, X, Y):
    """
    ΔC8(μ0) for a two‑Higgs‑doublet model with parameters X, Y.
    """
    return Y**2 * C8YY1(mu0, mt, mw, mC) + X * Y * C8XY1(mu0, mt, mw, mC)




# ----------------------------------------------------------------------
# Final ΔC7 and ΔC8 for 2HDM (second order)
# ----------------------------------------------------------------------
def DeltaC72(mu0, mt, mw, mC, mtr, X, Y):
    """
    ΔC7(μ0) at two‑loop order for a two‑Higgs‑doublet model.
    The SM part is commented out in the original.
    """
    return Y**2 * C7YY2(mu0, mt, mw, mC, mtr) - X * Y * C7XY2(mu0, mt, mw, mC, mtr)

def DeltaC82(mu0, mt, mw, mC, mtr, X, Y):
    """
    ΔC8(μ0) at two‑loop order for a two‑Higgs‑doublet model.
    The SM part is commented out in the original.
    """
    return Y**2 * C8YY2(mu0, mt, mw, mC, mtr) - X * Y * C8XY2(mu0, mt, mw, mC, mtr)



def delc7(mhc, tb,mu, mt,mw):
    oup.dc701 =  dc70(mhc, tb, mt) + oup.alpha_s / (4 * np.pi) * DeltaC71(mu, mt, mw, mhc, tb, 1/tb) 
    oup.dc702 =  dc70(mhc, tb, mt) + oup.alpha_s / (4 * np.pi) * DeltaC71(mu, mt, mw, mhc, tb, 1/tb) + (oup.alpha_s / (4 * np.pi))**2 * DeltaC72(mu, mt, mw, mhc, mt, tb, 1/tb)
    

def delc8(mhc, tb,mu, mt,mw):
    oup.dc801 =  dc80(mhc, tb, mt) + oup.alpha_s / (4 * np.pi) * DeltaC81(mu, mt, mw, mhc, tb, 1/tb) 
    oup.dc802 =  dc80(mhc, tb, mt) + oup.alpha_s / (4 * np.pi) * DeltaC81(mu, mt, mw, mhc, tb, 1/tb) + (oup.alpha_s / (4 * np.pi))**2 * DeltaC82(mu, mt, mw, mhc, mt, tb, 1/tb)




# class oup:
#     beta0= 23/3
#     beta1=116/3
#     alpha_sMz=0.1179
#     mz = 91.1876
#     u0=160.1
#     v= 1 - (beta0* alpha_sMz / (2 * np.pi)) * np.log(mz / u0)
#     alpha_s = alpha_sMz / v * (1 - beta1 / beta0 * alpha_sMz / (4 * np.pi) * np.log(v )/ v)

def cal_bsgam(mhc,tb):#2412.04572
    delc7(mhc, tb, 160.1, oup.mt, oup.mw)
    delc8(mhc, tb, 160.1, oup.mt, oup.mw)
    Rgam = 3.35 - 8.08 * oup.dc701- 2.06 * oup.dc801
    Brbsgam = 3.4 - 8.25 * oup.dc702- 2.1 * oup.dc802

    # return (Rgam-3.22)/0.45
    # delrgam = np.sqrt(0.15**2 + 0.16**2)
    # return ((Rgam-3.22)/delrgam)**2 -((3.35-3.22)/delrgam)**2
    delbsg = np.sqrt(0.15**2 + 0.17**2)
    return ((Brbsgam-3.32)/delbsg)**2 #-((3.4-3.32)/delbsg)**2

    # print("Rgam:", Rgam)
    # print("Brbsgam:", Brbsgam)

# %%
# import matplotlib.pyplot as plt
# fig, ax = plt.subplots(figsize=(8, 6))

# ly= np.linspace(0.1, 10, 100)
# lx = np.linspace(400, 1000, 100)
# X, Y = np.meshgrid(lx, ly)
# Z = np.vectorize(cal_bsgam)(X, Y)

# ax.contourf(X, Y, Z, levels=[1,3.841,1000], cmap='viridis')
# ax.hlines(1, 400, 1000, colors='red', linestyles='dashed')
# ax.vlines(800, 0.1, 10, colors='red', linestyles='dashed')
# ax.set_yscale('log')
# %%
