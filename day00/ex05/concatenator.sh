cat 2022*.csv > hh.csv 
sed -i /created_at/d hh.csv
sed -i -e '1 s/^/"id","created_at","name","has_test","alternate_url"\n/' hh.csv