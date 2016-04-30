# get postgres docker image
docker pull postgres

# start postgres
export PGPASSWORD=mysecretpassword
docker run --name some-postgres -e POSTGRES_PASSWORD=$PGPASSWORD -d postgres

# create the tables in postgres
./pcmd.sh tpch-create.sql

# load the tables
./pcmd.sh tpch-load.sql

# test 
echo "test...this count should be nonzero (it is 25 for scale 1)"
./pcmd.sh tpch-test.sql

