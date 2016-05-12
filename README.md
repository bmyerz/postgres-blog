# Requirements
docker

# Setup postgres and ingest tpch
First copy the tpch *.tbl files to ./shared.
Then,

```
make
```

# Run exaplain on query 15
```
make explain-q15
```


# Notes
The way we use docker postgres is one instance of 'postgres' image for the server and one instance of 'postgres' image each time we make a client request.
