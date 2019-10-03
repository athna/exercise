#!/bin/sh

if [ \! -d /sys/class/gpio/gpio26 ]; then
  echo 26 > /sys/class/gpio/export
  sleep 0.5
  echo out > /sys/class/gpio/gpio26/direction
fi

DATA="$3"

if [ ${DATA} = '30' ]; then
  echo 1 > /sys/class/gpio/gpio26/value
elif [ ${DATA} = '31' ]; then
  echo 0 > /sys/class/gpio/gpio26/value
fi
