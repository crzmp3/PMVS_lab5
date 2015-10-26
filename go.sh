#!/bin/bash
sudo insmod hello.ko

sudo chmod a+w+r /sys/timer/interval

echo "#1"
echo "3" > /sys/timer/interval

sleep 6
echo 0 > /sys/timer/interval

sudo rmmod hello
