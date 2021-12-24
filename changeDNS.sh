#!/bin/bash

oldIp=$1
newIp=$2

sed -i "s/$oldIp/$newIp/g" /home/*/conf/dns/*.db
sed -i "s/$oldIp/$newIp/g" /usr/local/vesta/data/users/*/dns/*.conf
/usr/local/vesta/bin/v-restart-dns
echo "Everything done :) all DNS has been replaced from $oldIp to $newIp"
