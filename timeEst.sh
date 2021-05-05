#!/bin/bash
echo "############################"
date
curl ipinfo.io
dig $1 +short
curl -o /dev/null -s -w 'Establish Connection: %{time_connect}s\nTTFB: %{time_starttransfer}s\nTotal: %{time_total}s\n'  https://$1
echo "#############################"


