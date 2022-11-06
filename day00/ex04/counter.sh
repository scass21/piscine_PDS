
echo "\"name\", \"count\"" > hh_uniq_positions.csv 
tail -n +2 ../ex03/hh_positions.csv |  cut -d ',' -f3 | sort | uniq -c | sort -r | awk '{print $2 " , " $1}' | sed -E 's/([^[:blank:]]*[[:alpha:]][^[:blank:]]*)/"\1"/g' >> hh_uniq_positions.csv