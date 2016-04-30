set -o nounset

export PGPASSWORD=mysecretpassword
export pcmd=/home/postgres/shared/$1

docker run -it -v `pwd`/shared:/home/postgres/shared --link some-postgres:postgres -e pcmd -e PGPASSWORD --rm postgres sh -c 'exec psql -h "$POSTGRES_PORT_5432_TCP_ADDR" -p "$POSTGRES_PORT_5432_TCP_PORT" -U postgres -f $pcmd'
