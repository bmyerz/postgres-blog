tbls=shared/customer.tbl shared/nation.tbl shared/part.tbl shared/region.tbl shared/lineitem.tbl shared/orders.tbl shared/partsupp.tbl shared/supplier.tbl

shared/%.csv: shared/%.tbl
	cd shared; ./convert_csv.sh $<; cd ..

shared/%.tbl: 
	echo "please copy missing file to $@"

setup-tpch: ${tbls}
	./setup.sh	
	touch __setup__

explain-q14: __setup__	
	# explain 
	./pcmd.sh explain_q14.sql
	cat shared/explain_q14.log
	echo "-- stored in shared/explain_q14.log"
	#stats
	#./pcmd.sh compute_stats.sql
	#./pcmd.sh explain_q14.sql
