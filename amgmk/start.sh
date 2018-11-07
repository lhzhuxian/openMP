#!/bin/bash

OMP_NUM_THREADS=1 ./AMGMk > ans1.txt
OMP_NUM_THREADS=2 ./AMGMk > ans2.txt
OMP_NUM_THREADS=4 ./AMGMk > ans4.txt
OMP_NUM_THREADS=8 ./AMGMk > ans8.txt

