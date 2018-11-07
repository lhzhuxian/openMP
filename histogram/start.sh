#!/bin/bash

for loop in 2 4 8
do
    echo "Thread number $loop"
    OMP_NUM_THREADS=$loop ./histo_locks uiuc-large.pgm > ans.txt
    diff validation-large.out ans.txt
    OMP_NUM_THREADS=$loop ./histo_atomic uiuc-large.pgm > ans.txt
    diff validation-large.out ans.txt
    OMP_NUM_THREADS=$loop ./histo_creative uiuc-large.pgm > ans.txt
    diff validation-large.out ans.txt
done

