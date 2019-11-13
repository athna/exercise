#!/bin/sh

NUM=21

if [ \! -d /sys/class/gpio/gpio${NUM} ]; then
  echo ${NUM} > /sys/class/gpio/export
  sleep 0.5
  echo out > /sys/class/gpio/gpio${NUM}/direction
fi

echo 1 > /sys/class/gpio/gpio${NUM}/value
