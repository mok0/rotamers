#! /bin/bash

residues="7MG 5MU 1MA"

for r in $residues ; do
    lower=$(echo $r|tr '[A-Z]' '[a-z]')
    echo Getting $r
    curl http://alpha2.bmc.uu.se/hicup/$r/${lower}_O_refi_dict.txt|sed '/^!/d' > $r
done
