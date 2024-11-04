echo "Give this machine a wireguard name:"
read NAME

echo "Creating interface..."
ip link add dev wg0 type wireguard
echo "Interface present: wg0"

echo "Writing the private key with name = $NAME"
wg genkey > $NAME

echo "Insert this machine's ip on the new interface:"
read IP

ip address add dev wg0 $IP
echo "ip set to $IP on wg0"

wg set wg0 private-key ./$NAME
rm -rf $NAME

echo "Key file removed. Setting up interface..."
ip link set wg0 up

echo "Wireguard setup complete. Use 'sudo wg' to check you configuration"