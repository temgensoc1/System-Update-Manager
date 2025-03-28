#!/bin/sh

LOG_FILE="update_log.txt"

echo "Checking for updates..."
apk update | tee -a $LOG_FILE

echo "Do you want to upgrade all packages? (yes/no)"
read choice

if [ "$choice" = "yes" ]; then
    echo "Upgrading packages..."
    apk upgrade -y | tee -a $LOG_FILE
    echo "Upgrade completed!"
else
    echo "Upgrade skipped."
fi

echo "Update check completed. Log saved in $LOG_FILE."