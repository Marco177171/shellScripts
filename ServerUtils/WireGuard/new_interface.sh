echo "give this machine a wireguard name:"
read NAME

echo "creating interface..."
ip link add dev wg0 type wireguard
echo "interface present: wg0"

echo "writing the private key with name = $NAME"
wg genkey > $NAME

echo "insert this machine's ip on the new interface:"
read IP

ip address add dev wg0 $IP
echo "ip set to $IP on wg0"

# echo "insert desired port:"
# read PORT

ip link set wg0 up