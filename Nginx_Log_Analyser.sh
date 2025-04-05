#!/bin/bash
cd /var/log/nginx
echo '#################################################################################################################'
tput setaf 1; echo 'Top 5 IP addresses with the most requests'
awk '{print $1}' access.log | sort | uniq -c | sort -nr | awk '{print $2," - ",$1, " requests"}' | head -n 5


echo '#################################################################################################################'
tput setaf 2; echo 'Top 5 most requested paths'
awk '{print $7}' access.log | sort | uniq -c | sort -nr | awk '{print $2," - ",$1, " requests"}' | head -n 5


echo '#################################################################################################################'
tput setaf 3; echo 'Top 5 response status codes'
awk '{print $9}' access.log | sort | uniq -c | sort -nr | awk '{print $2," - ",$1, " requests"}' | head -n 5


echo '#################################################################################################################'
tput setaf 5; echo 'Top 5 user agents'
awk '{print $20}' access.log | sort | uniq -c | sort -nr | awk '{print $2," - ",$1, " requests"}' | head -n 5




