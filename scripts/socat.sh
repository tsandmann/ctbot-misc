#!/bin/sh
socat -b1 TCP-LISTEN:10002,fork,reuseaddr /dev/ttyAMA0,raw,echo=0,ospeed=500000,ispeed=500000

