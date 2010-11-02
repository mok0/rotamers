# Form O dictionary file from individual entries
# mok 20101102

SHELL=/bin/sh

amino_acids = ALA ARG ASN ASP CYH CYS GLN GLU GLY HIS ILE LEU LYS MET MSE	\
	PEP PHE PRO SER THR TRP TYR VAL
tRNA = A G C U 2MG 5MC GNP H2U M2G OMC OMG PSU YG 7MG 5MU 1MA



all: stereochem_protein+tRNA.odb stereochem_protein.odb

clean:
	@ rm -f stereochem_protein+tRNA.odb stereochem_protein.odb
	@ rm -f *~

stereochem_protein+tRNA.odb: macros.m4 protein+tRNA.m4 $(amino_acids) $(tRNA)
	@ m4 protein+tRNA.m4 > $@
	@ len=`cat $@|wc -l`; dblen=$$(($$len - 7)); sed -i "s/XXXXXXX/$$dblen/" $@
	@ echo created $@

stereochem_protein.odb: macros.m4 protein.m4 $(amino_acids) 
	@ m4 protein.m4 > $@
	@ len=`cat $@|wc -l`; dblen=$$(($$len - 6)); sed -i "s/XXXXXXX/$$dblen/" $@
	@ echo created $@
####



