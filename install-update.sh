#!/bin/bash
apt install unattended-upgrades -y
echo "45 21 * * * root apt-get update && apt-get -y -d upgrade" | tee -a /etc/crontab
cat /etc/crontab
