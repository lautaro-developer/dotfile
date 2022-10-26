#!/bin/sh
# creditos - https://github.com/msaitz/polybar-bluetooth

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#66000000} bluetooth"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo " bluetooth"
  fi
  echo "%{F#2193ff} bluetooth"
fi

