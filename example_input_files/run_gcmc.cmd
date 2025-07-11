parfile $PROTOMSHOME/parameter/amber14SB.ff
parfile $PROTOMSHOME/parameter/solvents.ff
parfile $PROTOMSHOME/parameter/amber14SB-residues.ff
parfile $PROTOMSHOME/parameter/gaff16.ff
parfile 7oke-cmpd_1.tem
protein1 7oke-protein-pms_scoop.pdb
solute1 7oke-cmpd_1.pdb
solvent1 water_clr.pdb
outfolder out_gcmc1
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
ranseed 492825
boundary solvent
pdbparams on
#  GCMC specific parameters
gcmc 0
parfile $PROTOMSHOME/data/gcmc_tip4p.tem
grand1 gcmc_wat.pdb
multigcmc 100000 -7.500 -8.000 -8.500 -9.000 -9.500 -10.000 -10.500 -11.000 -11.500 -12.000 -12.500 -13.000 -13.500 -14.000 -14.500 -15.000 -15.500 -16.000 -16.500 -17.000 -17.500 -18.000 -18.500 -19.000 
originx -80.570
originy 39.597
originz 14.340
x 5.000
y 6.500
z 8.000
#  End of GCMC specific parameters
dump 100000 results write results
dump 100000 pdb all solvent=all file=all.pdb standard
dump 100000 restart write restart
dump 100000 averages reset
chunk equilibrate 5000000 solvent=0 protein=0 solute=0 insertion=333 deletion=333 gcsolute=333
chunk equilibrate 5000000 solvent=390 protein=104 solute=7 insertion=167 deletion=167 gcsolute=167
chunk simulate 40000000 solvent=390 protein=104 solute=7 insertion=167 deletion=167 gcsolute=167
