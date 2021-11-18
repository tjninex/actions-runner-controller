#!/usr/bin/env bash

# move current docker to docker.bin
# mv /path/to/bin/docker /path/to/bin/docker.bin
# place this script in /path/to/bin/docker

MTU=1450

if [[ $1 = "network" ]] && [[ $2 = "create" ]]
then
    shift; shift #pop 2 first parameters
    /usr/local/bin/docker.bin network create --opt com.docker.network.driver.mtu=$MTU "${@}"
else
    #just call docker as normal if not network create
    /usr/local/bin/docker.bin "${@}"
fi
