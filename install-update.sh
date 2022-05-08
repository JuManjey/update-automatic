#!/bin/bash
apt install unattended-upgrades cron -y
systemctl enable cron
systemctl start cron
echo "50 19 * * 3 root /usr/bin/apt update -q -y" | tee -a /etc/crontab
echo "0 20 * * 3 root /usr/bin/apt upgrade -q -y" | tee -a /etc/crontab
systemctl restart cron
