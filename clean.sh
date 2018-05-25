if [ -d "Ordinario_Jenkins" ]; then
rm -R Ordinario_Jenkins
fi

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
wait

docker rmi ordinario
