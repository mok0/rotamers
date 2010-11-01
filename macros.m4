dnl
dnl
define(RNA_MAIN_CHAIN,`main-chain P O1P O2P O5' C5' C4' C3' O3'')dnl
dnl
dnl
define(COMMON_G_LINES,`
RNA_MAIN_CHAIN
alpha   O3'- P    O5'  C5'
beta    P    O5'  C5'  C4'
gamma   O5'  C5'  C4'  C3'
delta   C5'  C4'  C3'  O3'
epsilon C4'  C3'  O3'  P+
zeta    C3'  O3'  P+   O5'+
chi     O4'  C1'  N9   C4
nu0     C4'  O4'  C1'  C2'
nu1     O4'  C1'  C2'  C3'
nu2     C1'  C2'  C3'  C4'
nu3     C2'  C3'  C4'  O4'
nu4     C3'  C4'  O4'  C1'
rotamer 1 chi -152. nu2  37. nu3 -36 nu4 26.
rotamer 2 chi   28. nu2  37. nu3 -36 nu4 26.
rotamer 1 chi   28. nu2 -34. nu3  24 nu4 -3.
rotamer 2 chi -152. nu2 -34. nu3  24 nu4 -3.
conformer helix alpha -68.
connect_all - P O5' C5' C4' C3' O3' +
connect_all C4' O4' C1' C2' C3'
connect_all C2' O2'')dnl
dnl
dnl
define(SUGAR_PHOSPHATE_BONDS,`
! sugar-phosphate bonds
bond_distance P    O3'-    1.590 0.02
bond_distance O1P  P       1.480 0.02
bond_distance O2P  P       1.480 0.02
bond_distance O5'  P       1.600 0.02
bond_distance C5'  O5'     1.440 0.02
bond_distance C4'  C5'     1.510 0.02
bond_distance O4'  C4'     1.450 0.02
bond_distance C1'  O4'     1.410 0.02
bond_distance C2'  C1'     1.530 0.02
bond_distance C3'  C4'     1.520 0.02
bond_distance C2'  C3'     1.530 0.02
bond_distance O2'  C2'     1.420 0.02
bond_distance O3'  C3'     1.420 0.02')dnl
