#!/bin/bash
echo "enter ssid:"
read
cd /etc/NetworkManager/system-connections/
sudo cat $REPLY | grep 'psk='
