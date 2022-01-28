#!/bin/bash
if [ -z "$1" ]
then
    echo "Usage: ./wifi.sh <SSID>"
    exit 1
fi 

cd /etc/NetworkManager/system-connections/
sudo cat $1 | grep psk= | awk '{print substr($1,5)}'
