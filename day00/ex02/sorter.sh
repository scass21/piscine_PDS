#!/bin/sh
head -n 1 ../ex01/hh.csv > hh_sorted.csv
tail -n +2 ../ex01/hh.csv | sort -t ',' -k 2.7,2.24 -n -k 1 >> hh_sorted.csv
