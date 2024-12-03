echo insert address:
read ADDRESS
# run certbot and follow instructions
sudo certbot certonly --manual --preferred-challenges dns -d $ADDRESS
