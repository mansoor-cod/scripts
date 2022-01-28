#!/bin/bash
echo "enter ssid:"
read
cd /etc/NetworkManager/system-connections/
sudo cat $REPLY | grep psk= | awk '{print substr($1,5)}'
