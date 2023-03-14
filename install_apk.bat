@echo off

set apk=%~1
set apkName=%~nx1

adb push %apk% /data/local/tmp
adb shell pm install /data/local/tmp/%apkName%
adb shell rm /data/local/tmp/%apkName%
