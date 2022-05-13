#!/bin/bash
apt install unattended-upgrades cron -y
systemctl enable cron
systemctl start cron
echo "0 */4 * * * root /usr/bin/apt update -q -y" | tee -a /etc/crontab
echo "0 */4 * * * root /usr/bin/apt upgrade -q -y" | tee -a /etc/crontab
echo "0 0 * * * root systemctl reboot -i" | tee -a /etc/crontab
systemctl restart cron
