# Crontab Autostart on Android

This magisk module will help start crontab on boot. **Busybox required.**
- Magisk Compatibilty : 20.3+

### Instructions
* __Install__ the Crontab Autostart on Android Magisk Module
* __Create__ a new directory with the name `crontab` under `/storage/emulated/0/` or `/sdcard`.
* __Copy__ or __create__ crontab files into/in the new directory.

### Note
* **Busybox is needed** to run crond service. It is recommended to install "Busybox for Android NDK" module from Magisk Manager.
* If you need to run a shell script using crontab, you need to put the script file under /data/local/tmp and grant execute permission. (`chmod +x xx.sh`)
* In my case, the time inside the crontab files is in my local timezone. However, it is recommend to do a troubleshooting if your script is not triggered.