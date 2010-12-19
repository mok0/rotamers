# Form O dictionary file from individual entries
# mok 20101102

SHELL=/bin/sh
M4 = m4 -I data
VPATH = data

amino_acids = ALA ARG ASN ASP CYH CYS GLN GLU GLY HIS ILE LEU \
	LYS MET MSE PHE PRO SER THR TRP TYR VAL
tRNA = A G C U 2MG 5MC GNP H2U M2G OMC OMG PSU YG 7MG 5MU \
	1MA

extra = HOH DIP PEP OXT

ODBFILES = protein+tRNA.odb protein.odb stereo_chem_taj.odb

all: $(ODBFILES)

clean:
	@ rm -f $(ODBFILES)
	@ rm -f *~

protein+tRNA.odb: macros.m4 protein+tRNA.m4 $(amino_acids) $(tRNA) $(extra)
	@ $(M4) protein+tRNA.m4 > $@
	@ len=`cat $@|wc -l`; dblen=$$(($$len - 7)); sed -i "s/XXXXXXX/$$dblen/" $@
	@ echo created $@

protein.odb: protein.m4 $(amino_acids) $(extra)
	@ $(M4) protein.m4 > $@
	@ len=`cat $@|wc -l`; dblen=$$(($$len - 6)); sed -i "s/XXXXXXX/$$dblen/" $@
	@ echo created $@

stereo_chem_taj.odb: taj.m4 $(amino_acids) $(extra)
	@ $(M4) taj.m4 > $@
	@ len=`cat $@|wc -l`; dblen=$$(($$len - 11)); sed -i "s/XXXXXXX/$$dblen/" $@
	@ echo created $@
####

