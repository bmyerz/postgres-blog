# Requirements
docker

# Setup postgres and ingest tpch
First run TPC-H dbgen and copy the tpch *.tbl files to ./shared.
If you don't have TPC-H dbgen, then use this https://github.com/gregrahn/tpch-kit/tree/master/dbgen.

Then,

```
make
```

# Run explain on query 15
```
make explain-q15
```
