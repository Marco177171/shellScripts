docker volume create yacht
echo yacht volume created
docker run -d -p 8000:8000 -v /var/run/docker.sock:/var/run/docker.sock -v yacht:/config --name yacht selfhostedpro/yacht
echo yacht started. Available on http://localhost:8000
