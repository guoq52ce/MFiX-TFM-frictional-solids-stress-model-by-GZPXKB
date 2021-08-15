#!/bin/bash

module load anaconda/3-2020.11
module load openmpi/gcc/64
source activate mfix-21.2
build_mfixsolver --batch --dmp
mpirun --oversubscribe -np 4 ./mfixsolver -f strb_vib.mfx NODESI=2 NODESJ=2 NODESK=1
