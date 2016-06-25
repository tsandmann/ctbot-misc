#!/bin/sh
if [ ! -d "/sys/class/gpio/gpio17" ]; then
	echo "17" > /sys/class/gpio/export
fi
echo "out" > /sys/class/gpio/gpio17/direction

echo "1" > /sys/class/gpio/gpio17/value
echo "0" > /sys/class/gpio/gpio17/value
