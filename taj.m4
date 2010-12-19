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
include(GLC)dnl
include(GAL)dnl
include(XYL)dnl
include(PEP)dnl
include(DIP)dnl
include(ALA)dnl
include(ARG)dnl
include(ASN)dnl
include(ASP)dnl
include(CYH)dnl
include(CYS)dnl
include(GLN)dnl
include(GLU)dnl
include(GLY)dnl
include(HIS)dnl
include(ILE)dnl
include(LEU)dnl
include(LYS)dnl
include(MET)dnl
include(MSE)dnl
include(PHE)dnl
include(PRO)dnl
include(SER)dnl
include(THR)dnl
include(TRP)dnl
include(TYR)dnl
------------------- Phosphorylated tyrosine ----------------------------
include(PHY)dnl
------------------- Phosphorylated serine ----------------------------
include(PHS)dnl
------------------- Phosphorylated threonine ---------------------------
include(PHT)dnl
include(VAL)dnl
---- A, C, G, U are RNA bases
---- DA, DC, DG, DT are DNA bases
---- IUPAC stereochemistry at phosphates, 071016
include(A)dnl
include(G)dnl
include(C)dnl
include(U)dnl
include(DA)dnl
include(DG)dnl
include(DC)dnl
include(DT)dnl
---- Now come nucleotide varients AMP, ADP, ATP, SAM, NDP (NADPH)
---- IUPAC phosphate impropers, 071016
include(AMP)dnl
include(ADP)dnl
include(ATP)dnl
include(SAM)dnl
include(OXT)dnl
------ NADPH built using 'ideal' coords from EBI
------ N ring is not flat. PDB naming
------ IUPAC impropers at phosphates
include(NDP)dnl
include(HOH)dnl
include(SOL)dnl
include(MG)dnl
include(CL)dnl
include(SO4)dnl
include(PO4)dnl
include(DXP)dnl
include(MEP)dnl
------ MetSox
include(MSP)dnl
! read OK
m4exit(0)
