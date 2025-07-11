parfile $PROTOMSHOME/parameter/amber14SB.ff
parfile $PROTOMSHOME/parameter/solvents.ff
parfile $PROTOMSHOME/parameter/amber14SB-residues.ff
parfile $PROTOMSHOME/parameter/gaff16.ff
parfile vhk-vhq.tem
protein1 7okh-protein-pms_scoop.pdb
solute1 7okh-cmpd_2.pdb
solute2 7oke-cmpd_1.pdb
solvent1 water_clr.pdb
outfolder out_bnd1
streamheader off
streamdetail off
streamwarning warning
streaminfo info
streamfatal fatal
streamresults results
streamaccept accept
cutoff 10.0
feather 0.5
temperature 25.0
ranseed 1345829
boundary solvent
pdbparams on
printfe mbar
dualtopology1 1 2 synctrans syncrot
softcore1 solute 1
softcore2 solute 2
softcoreparams coul 1 delta 0.2 deltacoul 2.5 power 6 soft66
dlambda 0.001
lambdare 100000 0.000 0.067 0.133 0.200 0.267 0.333 0.400 0.467 0.533 0.600 0.667 0.733 0.800 0.867 0.933 1.000
dump 100000 results write results
dump 100000 results writeinst results_inst
dump 100000 pdb all solvent=all file=all.pdb standard
dump 100000 restart write restart
dump 100000 averages reset
chunk equilibrate 10000000 solvent=776 protein=217 solute=7 volume=0
chunk simulate 80000000 solvent=776 protein=217 solute=7 volume=0
