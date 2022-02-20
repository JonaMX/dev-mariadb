#!/usr/bin/env bash

docker run -it                           \
           -p 3306:3306                  \
           --name dev_mariadb            \
           --env-file ./.env.dev         \
           -v "$PWD"/db:/var/lib/mariadb \
           --rm seancannon/dev_mariadb
