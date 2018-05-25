#!/bin/bash
rm -R Ordinario_Jenkins

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
wait

docker rmi ordinario
