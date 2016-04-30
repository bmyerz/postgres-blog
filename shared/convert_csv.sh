# converts pipe delimited .tbl files from dbgen into csv's that postgres likes
# https://github.com/tvondra/pg_tpch
for i in `ls *.tbl`; do sed 's/|$//' $i > ${i/tbl/csv}; echo $i; done;
