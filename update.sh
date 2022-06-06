#! /bin/bash

docker stop linode-docker
docker rm linode-docker

docker rmi  kydiep/linode-docker:master
docker pull kydiep/linode-docker:master

docker run -t -d -p 80:8080 --name linode-docker kydiep/linode-docker:master
