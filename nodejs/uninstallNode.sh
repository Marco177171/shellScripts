#!/bin/bash

# Define the Node.js version
NODE_VERSION="v20.11.0"

# Define installation directory
INSTALL_DIR="/usr/bin"

# Remove Node.js binaries and installation directory
sudo rm -rf "$INSTALL_DIR/node-$NODE_VERSION-linux-x64"

# Remove the PATH update from ~/.profile
sed -i '/node-'$NODE_VERSION'-linux-x64\/bin/d' ~/.profile

echo "Node.js $NODE_VERSION has been uninstalled and the system is clean."

