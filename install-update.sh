#!/bin/bash
apt install unattended-upgrades cron -y
systemctl enable cron
systemctl start cron
echo "45 21 * * * root apt-get update && apt-get -y -d upgrade" | tee -a /etc/crontab
systemctl status cron
cat /etc/crontab
