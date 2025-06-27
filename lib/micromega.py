#%%
import os
import glob
import pandas as pd
import lib.utilities as uti
# import utilities as uti
import numpy as np

class channel:
    ww = ['Wm', 'Wp', 'anxs_ww']
    zz = ['Z', 'Z', 'anxs_zz']
    hh = ['h2', 'h2', 'anxs_h2h2']
    bb = ['d3', 'D3', 'anxs_bb']


##%%
def micromega_run(omg_dir, spc_dir):
    os.chdir(spc_dir)
    spc = glob.glob('SPheno.spc.*')[0]
    # print(spc)
    os.system(omg_dir+"CalcOmega_with_DDetection_MOv52 "+spc+" > omg.data")
 
    return 0

def omg_read(spc_dir):
    if os.path.isfile(spc_dir+'/omg.out'):
        os.system('rm '+spc_dir+'/omg.out')
    os.system('grep "Omega" '+spc_dir+'/omg.data >> '+spc_dir+'/omg.out')
    os.system('grep "proton  SI" '+spc_dir+'/omg.data >> '+spc_dir+'/omg.out')
    os.system('grep "neutron SI" '+spc_dir+'/omg.data >> '+spc_dir+'/omg.out')
    os.system('grep "annihilation" '+spc_dir+'/omg.data >> '+spc_dir+'/omg.out')
    os.system('grep "Ma " '+spc_dir+'/omg.data >> '+spc_dir+'/omg.out')
    os.system('grep " Wm Wp " '+spc_dir+'/omg.data >> '+spc_dir+'/omg.out')
    os.system('grep " h2 h2 " '+spc_dir+'/omg.data >> '+spc_dir+'/omg.out')
    os.system('grep " Z Z " '+spc_dir+'/omg.data >> '+spc_dir+'/omg.out')
    os.system('grep " u3 U3 " '+spc_dir+'/omg.data >> '+spc_dir+'/omg.out')
    os.system('grep " d3 D3 " '+spc_dir+'/omg.data >> '+spc_dir+'/omg.out')
    domg = {'file':spc_dir,}
    try:
        lst_omg = uti.readfield(spc_dir+'/omg.out')
        for l in range(len(lst_omg)):
            if 'Omega' in lst_omg[l]:
                domg.update({'dm_Omgh2': float(lst_omg[l][2].replace('h^2=','').replace('\n',''))})
            if 'proton' in lst_omg[l]:
                domg.update({'dm_xs_proton': float(lst_omg[l][2])})
            if 'neutron' in lst_omg[l]:
                domg.update({'dm_xs_neutron': float(lst_omg[l][2])})
                # xs_n = float(lst_omg[l][2])
            if 'annihilation' in lst_omg[l]:
                domg.update({'dm_ann_xs': float(lst_omg[l][3])})
                # xs_ann = float(lst_omg[l][3])
            if 'Ma' in lst_omg[l]:
                domg.update({'m_dm': float(lst_omg[l][4])})
                # m_dm = float(lst_omg[l][4])
            # if 'Wm' in lst_omg[l]:
            #     domg.update({'dmdmww': float(lst_omg[l][4])})
            #     # aaww = float(lst_omg[l][4])
            # if 'Z' in lst_omg[l]:
            #     domg.update({'dmdmZZ': float(lst_omg[l][4])})
            #     # aazz = float(lst_omg[l][4])
            # if 'h2' in lst_omg[l] and 'h1' not in lst_omg[l] and 'h3' not in lst_omg[l]:
            #     domg.update({'dmdmh2h2': float(lst_omg[l][4])})
            # if 'd3' in lst_omg[l]:
            #     domg.update({'dmdmbb': float(lst_omg[l][4])})
            #     # aah2h2 = float(lst_omg[l][4])
            # # else:
            # #     aah2h2 = 0
            # # if 'd3' in lst_omg[l]:
            # #     aabb = float(lst_omg[l][4])
            # # else:
            # #     aabb = np.nan
    except Exception as e:
        print(e)
    return [domg,lst_omg]

def anbr(lst_omg, channel):
    # lst_omg = uti.readfield(spc+'/omg.out')
    # if any(channel[0] in l for l in lst_omg):
    linech = ([l for l in lst_omg if channel[0] in l])
    if len(linech) != 0:
        for il in range(len(linech)):
            if linech[il][2] == channel[0] and linech[il][3] == channel[1]:
                anbr = float(linech[il][4])
            else:
                anbr = 0
    else:
        anbr = 0

    # return linech
    
    return anbr
            # return {(channel[2]): }
        # else:
        #     print(lst_omg[2])
        #     return {(channel[2]): 0}
            #     # aaww = float(lst_omg[l][4])
            # if 'Z' in lst_omg[l]:
            #     domg.update({'dmdmZZ': float(lst_omg[l][4])})
            #     # aazz = float(lst_omg[l][4])
            # if 'h2' in lst_omg[l] and 'h1' not in lst_omg[l] and 'h3' not in lst_omg[l]:
            #     domg.update({'dmdmh2h2': float(lst_omg[l][4])})
            # if 'd3' in lst_omg[l]:
            #     domg.update({'dmdmbb': float(lst_omg[l][4])})


def dxs_check(m_dm, xs):
    df = pd.read_csv('/data2/licheng/micromegas_5.2.13/SpinIndependentLimitandSensitivity.csv',sep='\s+')
    for i in range(len(df['mass'])):
        if i-1 < 0:
            k = 0
        else:
            k = i-1
        ub_m = df['mass'][i]
        lb_m = df['mass'][k]
        if m_dm <= ub_m and m_dm > lb_m:
            dm = (ub_m - lb_m)/2
            if m_dm <= lb_m + dm:
                xsb = df['+2sigma'][i]/(10.e-36)
            else:
                xsb = df['+2sigma'][k]/(10.e-36)
            # print(xs,xsb)
            if xs <= xsb:
                return True
            else:
                return False

def xs_check(m, xs, dfm, dfxsb):
    for i in range(len(dfm)):
        if i-1 < 0:
            k = 0
        else:
            k = i-1
        ub_m = dfm[i]
        lb_m = dfm[k]
        if m <= ub_m and m > lb_m:
            dm = (ub_m - lb_m)/2
            if m <= lb_m + dm:
                xsb = dfxsb[i]
            else:
                xsb = dfxsb[k]
            # print(xs,xsb)
            if xs <= xsb:
                return True
            else:
                return False


def axs_check(m_dm, axs_ww,axs_zz,axs_hh):
    dfww = pd.read_csv('/data2/licheng/micromegas_5.2.13/FermiLAT_limits_fromMadDM/MadDM_Fermi_Limit_WW.dat',sep='\s+',skiprows=[0],header=None)
    dfZZ = pd.read_csv('/data2/licheng/micromegas_5.2.13/FermiLAT_limits_fromMadDM/MadDM_Fermi_Limit_ZZ.dat',sep='\s+',skiprows=[0],header=None)
    dfhh = pd.read_csv('/data2/licheng/micromegas_5.2.13/FermiLAT_limits_fromMadDM/MadDM_Fermi_Limit_hh.dat',sep='\s+',skiprows=[0],header=None)
    for i in range(len(dfww[0])):
        if i-1 < 0:
            k = 0
        else:
            k = i-1
        ub_m = dfww[0][i]
        lb_m = dfww[0][k]
        if m_dm <= ub_m and m_dm > lb_m:
            dm = (ub_m - lb_m)/2
            if m_dm <= lb_m + dm:
                axsb_ww = dfww[1][i]
                axsb_zz = dfZZ[1][i]
                axsb_hh = dfhh[1][i]
            else:
                axsb_ww = dfww[1][k]
                axsb_zz = dfZZ[1][k]
                axsb_hh = dfhh[1][k]
            #print(axsb_ww,axsb_zz,axsb_hh)
            #print(axs_ww,axs_zz,axs_hh)
            if axs_hh <= axsb_hh and axs_ww <= axsb_ww and axs_zz <= axsb_zz:
                return True
            else:
                return False

def omg_check(omgresult):
    re_omg = omgresult[0]
    lst_o = omgresult[1]
    # micromega_run(omg_dir, spc_dir)
    # re_omg = {}
    # re_omg.update(omg_read(spc_dir))
    #print(re_omg)
    if re_omg['dm_Omgh2']>0.13:
        re_omg.update({'allow':False})
    elif not dxs_check(re_omg['m_dm'], re_omg['dm_xs_proton']):
        re_omg.update({'allow':False})
    else:
        dfww = pd.read_csv('/data2/licheng/micromegas_5.2.13/FermiLAT_limits_fromMadDM/MadDM_Fermi_Limit_WW.dat',sep='\s+',skiprows=[0],header=None)
        # lst_o = uti.readfield(spc+'/omg.out')
        anxsww = re_omg['dm_ann_xs']*anbr(lst_o, channel.ww)
        if not xs_check(re_omg['m_dm'], anxsww, dfww[0], dfww[1]):
            re_omg.update({'dmdmww':anxsww,
                'allow':False})
        else:
            dfZZ = pd.read_csv('/data2/licheng/micromegas_5.2.13/FermiLAT_limits_fromMadDM/MadDM_Fermi_Limit_ZZ.dat',sep='\s+',skiprows=[0],header=None)
            anxszz = re_omg['dm_ann_xs']*anbr(lst_o, channel.zz)
            if not xs_check(re_omg['m_dm'], anxszz, dfZZ[0], dfZZ[1]):
                re_omg.update({'dmdmzz':anxszz,
                    'allow':False})
            else:
                dfhh = pd.read_csv('/data2/licheng/micromegas_5.2.13/FermiLAT_limits_fromMadDM/MadDM_Fermi_Limit_hh.dat',sep='\s+',skiprows=[0],header=None)
                anxshh = re_omg['dm_ann_xs']*anbr(lst_o, channel.hh)
                if not xs_check(re_omg['m_dm'], anxshh, dfhh[0], dfhh[1]):
                    re_omg.update({'dmdmhh':anxshh,
                         'allow':False})
                else:
                    dfbb = pd.read_csv('/data2/licheng/micromegas_5.2.13/FermiLAT_limits_fromMadDM/MadDM_Fermi_Limit_bb.dat',sep='\s+',skiprows=[0],header=None)
                    anxsbb = re_omg['dm_ann_xs']*anbr(lst_o, channel.bb)
                    if not xs_check(re_omg['m_dm'], anxsbb, dfbb[0], dfbb[1]):
                        re_omg.update({'dmdmbb':anxsbb,
                            'allow':False})
                    else:
                        re_omg.update({
                            'dmdmww':anxsww,
                            'dmdmzz':anxszz,
                            'dmdmhh':anxshh,
                            'dmdmbb':anxsbb,
                            'allow':True})
    return re_omg
    # elif not axs_check(re_omg['m_dm'],re_omg['dm_ann_xs']*re_omg['dmdmww'], re_omg['dm_ann_xs']*re_omg['dmdmZZ'], re_omg['dm_ann_xs']*re_omg['dmdmh2h2']):
    #     re_omg.update({'allow':False})
    # else:
    #     re_omg.update({'allow':True})
    # return re_omg
# %%
# test
# omg_check('/data2/licheng/micromegas_5.2.13/complexZ2bDM/', '/data2/licheng/scan_dm/results/9002/7970')

# omg_read('../results/9002/1128')


# print(channel.bb)

# axs_check(500)
# %%
