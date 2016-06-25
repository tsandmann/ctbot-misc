#!/bin/sh
if [ ! -d "/sys/class/gpio/gpio17" ]; then
    echo "17" > /sys/class/gpio/export
fi
echo "out" > /sys/class/gpio/gpio17/direction

echo "1" > /sys/class/gpio/gpio17/value
echo "0" > /sys/class/gpio/gpio17/value
#avrdude -P /dev/ttyAMA0 -c avr109 -p m1284p -v -b 115200
#avrdude -P /dev/ttyAMA0 -c avr109 -p m1284p -U flash:w:"ct-Bot.hex":i -U eeprom:w:"ct-Bot.eep":i -v -b 115200
#avrdude -P /dev/ttyAMA0 -c avr109 -p m1284p -U eeprom:w:"ct-Bot.eep":i -v -b 115200
#avrdude -P /dev/ttyAMA0 -c avr109 -p m1284p -U flash:w:"ct-Bot.hex":i -v -b 115200

#/usr/local/bin/avrdude -c linuxspi -P /dev/spidev0.1 -p m1284p -v -b 4000000 
#/usr/local/bin/avrdude -c linuxspi -P /dev/spidev0.1 -p m1284p -v -U eeprom:w:"ct-Bot.eep":i -b 4000000 
/usr/local/bin/avrdude -c linuxspi -P /dev/spidev0.1 -p m1284p -v -U flash:w:"ct-Bot.hex":i -b 4000000 

