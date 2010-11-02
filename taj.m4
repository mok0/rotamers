! stereochemistry dictionary, PDB remediated names, IUPAC phosphates
! Recent changes:
! 100401 PRO Phi -63 -> -60
! 100226 more PRO flattening
! 100118 OXT residue
! 081009 ALA rsr definitions
! 080912 single letter codes for protein and nucleic acid
! 0808020 ATP,NDP
! 080807 flat PRO & PO4
.bonds_angles t XXXXXXX 72
link connections between 2 linked atoms, must be < than this value
connect_all 2.0
connect_mc 2.0
connect_sc 4.8
include(macros.m4)dnl
include(_GLC)dnl
include(_GAL)dnl
include(_XYL)dnl
include(_PEP)dnl
include(_DIP)dnl
include(_ALA)dnl
include(_ARG)dnl
include(_ASN)dnl
include(_ASP)dnl
include(_CYH)dnl
include(_CYS)dnl
include(_GLN)dnl
include(_GLU)dnl
include(_GLY)dnl
include(_HIS)dnl
include(_ILE)dnl
include(_LEU)dnl
include(_LYS)dnl
include(_MET)dnl
include(_MSE)dnl
include(_PHE)dnl
include(_PRO)dnl
include(_SER)dnl
include(_THR)dnl
include(_TRP)dnl
include(_TYR)dnl
------------------- Phosphorylated tyrosine ----------------------------
include(_PHY)dnl
------------------- Phosphorylated serine ----------------------------
include(_PHS)dnl
------------------- Phosphorylated threonine ---------------------------
include(_PHT)dnl
include(_VAL)dnl
---- A, C, G, U are RNA bases
---- DA, DC, DG, DT are DNA bases
---- IUPAC stereochemistry at phosphates, 071016
include(_A)dnl
include(_G)dnl
include(_C)dnl
include(_U)dnl
include(_DA)dnl
include(_DG)dnl
include(_DC)dnl
include(_DT)dnl
---- Now come nucleotide varients AMP, ADP, ATP, SAM, NDP (_NADPH)
---- IUPAC phosphate impropers, 071016
include(_AMP)dnl
include(_ADP)dnl
include(_ATP)dnl
include(_SAM)dnl
include(_OXT)dnl
------ NADPH built using 'ideal' coords from EBI
------ N ring is not flat. PDB naming
------ IUPAC impropers at phosphates
include(_NDP)dnl
include(_HOH)dnl
include(_SOL)dnl
include(_MG)dnl
include(_CL)dnl
include(_SO4)dnl
include(_PO4)dnl
include(_DXP)dnl
include(_MEP)dnl
------ MetSox
include(_MSP)dnl
! read OK
m4exit(0)
