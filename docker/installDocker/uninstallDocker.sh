#!/bin/bash

sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
echo DOCKER UNINSTALLED
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
echo DOCKER SYSTEM REPOS REMOVED
