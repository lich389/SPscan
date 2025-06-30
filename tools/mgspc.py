#%%
import lib.scanf as scf
scf.pref_init()
scf.init.out_add = '/home/licheng/Code/myscripts/sphenoscan2/results'
import src.src_2hdmscpv as fcpv
fcpv.ran_inp('/home/licheng/Code/myscripts/sphenoscan2/results/tcpv1/bptp1/input_2HDMScpv.json')

scf.spset = 'SPhenoInput_MG'
scf.init.out_add = '/home/licheng/Code/myscripts/sphenoscan2/results'
scf.SP_run(fcpv, 2)
# %%
