echo "launch 'sudo wg' on the machine you want to add. Insert:"

echo "the public key..."
read PEER_PUBLIC_KEY

echo "set allowed physical ip..."
read ALLOWED_IP

echo "set the endpoint ip..."
read ENDPOINT

echo "the port..."
read PEER_PORT

wg set wg0 peer $PEER_PUBLIC_KEY allowed-ips $ALLOWED_IP endpoint $ENDPOINT:$PEER_PORT