awk -F '\",\"|T' 'NR==1 {line=$0; next} {file=$2".csv"} !($2 in tmp) {tmp[$2]; print line > file} {print >> file}' ../ex03/hh_positions.csv
