FROM mariadb:10.5
COPY ./provision.sh ./docker-entrypoint-initdb.d
