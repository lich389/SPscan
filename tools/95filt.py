import glob
import sys
import json
import os

analyse_dir = sys.argv[1]
for sd in glob.glob(analyse_dir+'/*'):
    lmj = json.load(open(sd+'/masspar.json'))
    print(lmj['95chi2'])
    if lmj['95chi2'] > 2.31:
        os.system("rm -r "+sd)