#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
while [ command -v crond &> /dev/null ]; do
  sleep 3
done

while [[ ! -d "/storage/emulated/0/crontab" ]] || [[ ! -d "/sdcard" ]]; do
  sleep 3
done

crond -b -c /storage/emulated/0/crontab
