#!/bin/bash

# Define the Node.js version
NODE_VERSION="v20.11.0"

# Define the download URL
NODE_URL="https://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.xz"

# Define installation directory
INSTALL_DIR="/usr/bin"

# Download Node.js
wget $NODE_URL

# Extract the downloaded archive
tar -xJf "node-$NODE_VERSION-linux-x64.tar.xz"

# Move the extracted folder to the installation directory
sudo mv "node-$NODE_VERSION-linux-x64" "$INSTALL_DIR/"

# Update ~/.profile and PATH
echo "export PATH=$INSTALL_DIR/node-$NODE_VERSION-linux-x64/bin:$PATH" >> ~/.profile

# Clean up downloaded files
rm "node-$NODE_VERSION-linux-x64.tar.xz"

. ~/.profile

echo "Node.js $NODE_VERSION has been installed successfully."
echo "Binaries are in /usr/bin"
