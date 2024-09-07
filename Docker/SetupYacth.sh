echo YACHT - DOCKER MANAGEMENT DASHBOARD
echo choose port for YACHT service:
read PORT

docker volume create yacht
echo yacht volume created

docker run -d -p $PORT:8000 -v /var/run/docker.sock:/var/run/docker.sock -v yacht:/config --name yacht selfhostedpro/yacht

echo YACHT STARTED - http://localhost:$PORT
