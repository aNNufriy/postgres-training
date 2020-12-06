[ $# -eq 1 ] || { echo No arguments supplied; exit 1; }
docker-compose exec postgresql su - postgres -c "cat /exercises/$1/*.sql | psql test"
