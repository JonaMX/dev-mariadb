# Local dev MariaDB Docker Container

Projects which depend on this should have a `docker-compose.yml` which will run this. The following is for service development
and troubleshooting only:

```bash
docker build -t jonamx/dev_mariadb .

docker run -it                              \
           -p 3306:3306                     \
           --name dev_mariadb               \
           --env-file ./.env.dev            \
           -v "$PWD"/db:/var/lib/mariadb    \
           --rm seancannon/dev_mariadb
```

Or use the helper scripts which do that for you :

```bash
bash ./build.sh
bash ./run.sh
```

### Convenient docker commands during dev

##### Remove all images

```bash
docker rmi $(docker images -a -q)
```

##### Remove all containers

```bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```
