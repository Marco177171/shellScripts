*easily set up an openVPN container*

you can later use this docker container as a gateway for all the machines in your network

run the makefile, then:
docker exec -it openvpn-as sh

once in the shell, create your user and password:
sacli --user "openvpn" --new_pass "WhateverPasswordYouWant" SetLocalPassword

Now, on your local machine. Direct your DNS connections to the openvpn machine:
sudo ip route add 8.8.8.8 via 172.17.0.2
# 8.8.8.8 or whatever nameaddress your netplan uses