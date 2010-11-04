# Form O dictionary file from individual entries
# mok 20101102

SHELL=/bin/sh

amino_acids = _ALA _ARG _ASN _ASP _CYH _CYS _GLN _GLU _GLY _HIS _ILE _LEU \
	_LYS _MET _MSE _PEP _PHE _PRO _SER _THR _TRP _TYR _VAL
tRNA = _A _G _C _U _2MG _5MC _GNP _H2U _M2G _OMC _OMG _PSU _YG _7MG _5MU \
	_1MA

extra = _HOH

all: stereochem_protein+tRNA.odb stereochem_protein.odb stereochem_taj.odb

clean:
	@ rm -f stereochem_protein+tRNA.odb stereochem_protein.odb stereochem_taj.odb
	@ rm -f *~

stereochem_protein+tRNA.odb: macros.m4 protein+tRNA.m4 $(amino_acids) $(tRNA) $(extra)
	@ m4 protein+tRNA.m4 > $@
	@ len=`cat $@|wc -l`; dblen=$$(($$len - 7)); sed -i "s/XXXXXXX/$$dblen/" $@
	@ echo created $@

stereochem_protein.odb: macros.m4 protein.m4 $(amino_acids) $(extra)
	@ m4 protein.m4 > $@
	@ len=`cat $@|wc -l`; dblen=$$(($$len - 6)); sed -i "s/XXXXXXX/$$dblen/" $@
	@ echo created $@

stereochem_taj.odb: macros.m4 taj.m4 $(amino_acids)
	@ m4 taj.m4 > $@
	@ len=`cat $@|wc -l`; dblen=$$(($$len - 11)); sed -i "s/XXXXXXX/$$dblen/" $@
	@ echo created $@
####

