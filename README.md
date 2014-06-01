Rotamers for O
==============

The traditional way of creating the stereochemistry file for O is to
edit an existing formatted datablock file, typically the one Alwyn
Jones supplies with the program. This is tedious and error prone.

This is a set of M4 macro files that enables you to systematically
generate stereochemistry files that include exactly the residue types
you are interested in.

In the data directory, files for the individual residue types are
stored. In the amino acid entries, the rotamer values are the Duke
University rotamers for amino acids [1] (see
http://kinemage.biochem.duke.edu/)

Running the Makefile will generate 3 sets of datablock files for O:

    $ make
    created protein+tRNA.odb
    created protein.odb
    created stereo_chem_taj.odb

The generated files contain:

 * protein.odb -- The standard amino acids with Duke rotamers
 * protein+tRNA.odb -- Like above, but includes some tRNA bases
 * stereo_chem_taj.odb -- Using Alwyn Jones' rotamer values

Morten Kjeldgaard <mok@bioxray.dk>
Jan 2010.

[1] Lovell, Word, Richardson and Richardson (2000), The Penultimate
Rotamer Library. Proteins 40:389-408.

