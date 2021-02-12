#!/bin/sh

# Developed by George Gonzalez
# Version 1.0
# 2020.08.28
#Add to crontab and run at intervals
#Checks public IP and emails if it has changed from file
#requires mailutils and ssmtp to be installed and configured

EMAIL="email@domain.com"

ip1=""
ip2=""

read ip1 < ip.txt
ip2=$(wget -qO- ifconfig.me/ip)

if [ "$ip1" = "$ip2" ]
then
  exit
else
  echo "$ip2" > ip.txt
  echo "Your Raspberry Pi's Public IP has changed to: $ip2 \nAdjust your VPN and DNS as needed" | mail $
  exit
fi
