#!/bin/sh
head -n 1 ../ex02/hh_sorted.csv > hh_positions.csv
awk -F "," '{OFS=FS}{ if($3 ~/[Ss]enior/) $3 = "Senior"; else if( $3 ~/[Mm]iddle/) $3 = "Middle"; else if( $3 ~/[Jj]unior/) $3 = "Junior"; else $3 = "-"; print }'   ../ex02/hh_sorted.csv | tail -n +2 >> hh_positions.csv

