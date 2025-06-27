# %%
# import utilities as al
from lib import scanf as al
from numpy import sqrt

class oup:
    bsg = 0.0
    bsgunc = 0.0
    bsmumu = 0.0
    delmbs = 0.0
    delc7 = 0.0
    delc8 = 0.0
    flavor = {}
    bsgcheck = 0.0
    bsmmcheck = 0.0
    mbscheck = 0.0

def read_wc(block, pdg):
    db = block['values']
    for i in range(len(db)):
        if int(db[i][0]) == int(pdg[0]) and int(db[i][1]) == int(pdg[1]) and int(db[i][2]) == int(pdg[2]) and int(db[i][3]) == int(pdg[3]):
            return float(db[i][4])

def inp(spc):
    fl_bl = al.read_spc(spc)['BLOCK']['FlavorKitQFV']
    wc_bl = al.read_spc(spc)['BLOCK']['FWCOEF']
    # c7sm = (read_wc(wc_bl, [305, 4422, 0, 0]))
    # c7 = (read_wc(wc_bl, [305, 4422, 0, 2]))
    oup.delc7 = (read_wc(wc_bl, [305, 4422, 0, 1]))/1.0801e-8
    oup.delc7p = (read_wc(wc_bl, [305, 4322, 0, 1]))/1.0801e-8
    oup.delc8 = (read_wc(wc_bl, [305, 6421, 0, 1]))/4.1901e-8
    oup.delc8p = (read_wc(wc_bl, [305, 6321, 0, 1]))/4.1901e-8
    # wilson coefficient matching [hep-ph/9904413]
    oup.bsg = al.read_data(fl_bl, 200)
    oup.bsmumu = al.read_data(fl_bl, 4006)
    oup.delmbs = al.read_data(fl_bl, 1900)
    oup.bsgunc = oup.bsg*0.07

def bsgnnlo():
    # nnlo b->sgamma [2002.01548]
    bsg = (3.4 - oup.delc7*8.25 - oup.delc8*2.1)*1e-4
    bsgunc = (0.17 - oup.delc7p*8.25 - oup.delc8p*2.1)*1e-4
    rgam = (3.35-8.08*oup.delc7 - 2.06*oup.delc8)
    rgamunc = (0.16-8.08*oup.delc7p - 2.06*oup.delc8p)
    # return (rgam - 3.22)/abs(0.15+rgamunc)
    # return (bsg -3.32*1e-4)**2/((0.15*1e-4)**2+bsgunc**2) / 3.84
    return (bsg -3.32*1e-4)/abs(0.15*1e-4+bsgunc)

def naivecheck():
    oup.bsgcheck = bsgnnlo()
    # oup.bsgcheck=(oup.bsg -3.32*1e-4)/abs((0.15*1e-4)+(oup.bsgunc))
    # oup.bsgcheck=(oup.bsg -3.32*1e-4)/sqrt((0.15*1e-4)**2+(oup.bsgunc)**2)

    oup.bsmmcheck = (oup.bsmumu- 3.0*1e-9)/(sqrt((0.6)**2+(0.2)**2)*1e-9)

    oup.mbscheck = (oup.delmbs - 17.757)/sqrt(0.021**2+2.7**2)


    return max([oup.bsgcheck, oup.bsmmcheck**2/3.84, oup.mbscheck**2/3.84])


def flavor_check(spc):
    inp(spc)
    # 1803.01853
    # chi2 = (bsg-3.32*1e-4)**2 / (0.15*1e-4 + bsg*0.07)**2 
    # chi2 = chi2+ (bsmumu - 3.0*1e-9)**2/((0.6+0.2)*1e-9)**2
    # chi2 = chi2+ (delmbs - 17.757)**2/(0.021+2.7)**2 # SM likelihood
    chk = naivecheck()
    oup.flavor.update(
        {
            'b->sgamma': oup.bsg*1e4,
            'bs->mumu': oup.bsmumu*1e9,
            'delmbs': oup.delmbs,
            # 'flavorfit': (chi2/7.81)
            'bsgcheck':oup.bsgcheck,
            'bsmmcheck':oup.bsmmcheck,
            'mbscheck':oup.mbscheck,
            'flavorcheck':chk
        }
    )
    # print(chi2)
    return chk<3.84
    # if chi2 < 7.81:
    #     return True
    # else:
    #     return False




# %%
# inp('/home/licheng/Code/myscripts/sphenoscan/test/1199/SPheno.spc.THDMSZ3')
# bsgnnlo()
# %%
