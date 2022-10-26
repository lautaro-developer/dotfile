#!/bin/sh
# creditos - https://github.com/msaitz/polybar-bluetooth

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  bluetoothctl power on
else
  bluetoothctl power off
fi
