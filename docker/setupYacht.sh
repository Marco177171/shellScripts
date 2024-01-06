docker volume create yacht
echo yacht volume crated
docker run -d -p 8000:8000 -v /var/run/docker.sock:/var/run/docker.sock -v yacht:/config selfhostedpro/yacht
echo yacht started. Available on http://localhost:8000
