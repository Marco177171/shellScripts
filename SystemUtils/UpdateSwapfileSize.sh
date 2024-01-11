#!/bin/bash

echo /// Update /swapfile size.
echo /// Insert desired new file size in GB:

read NEW_SIZE
echo $NEW_SIZE GB selected

sudo swapoff /swapfile
echo swap switched off

sudo rm  /swapfile
echo old swapfile removed

sudo fallocate -l "$NEW_SIZE"G /swapfile
echo new /swapfile reallocated

sudo chmod 600 /swapfile
echo /swapfile permissions updated

sudo mkswap /swapfile
sudo swapon /swapfile
echo /// new swap area started
