#!/bin/sh

if [ \! -d /sys/class/gpio/gpio26 ]; then
  echo 26 > /sys/class/gpio/export
  sleep 0.5
  echo out > /sys/class/gpio/gpio26/direction
fi

VALUE=`cat /sys/class/gpio/gpio26/value`

if [ $VALUE -eq 1 ]; then
  echo 30
else
  echo 31
fi
