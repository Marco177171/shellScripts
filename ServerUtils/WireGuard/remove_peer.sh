echo "call 'sudo wg and copy the key', then paste it here:"
read KEY
wg set wg0 peer $KEY remove