echo "launch 'sudo wg' on the machine you want to add. Insert:"

echo "the public key..."
read PEER_PUBLIC_KEY

echo "the machine's ip on the wg0 interface..."
read PEER_WIREGUARD_IP

echo "the machine's physical ip..."
read PEER_PHYSICAL_IP

echo "the port..."
read PEER_PORT

wg set wg0 peer $PEER_PUBLIC_KEY allowed-ips $PEER_WIREGUARD_IP endpoint $PEER_PHYSICAL_IP:$PEER_PORT