#!/bin/bash

module load anaconda/3-2019.03
source activate mfix-19.3.1
build_mfixsolver --batch --smp
env OMP_NUM_THREADS=8 ./mfixsolver -f rb_1.mfx
