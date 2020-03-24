#!/usr/bin/env bash

# MCP to run RGB LED Matrix.  This should be ran at startup, and checked from CRON

# Starts the persistent clock
  ./projects/rpi-rgb-led-matrix/examples-api-use/clock --led-cols=64 -C 38,72,63 -f ../fonts/8x13B.bdf -d '%a %b%d %l:%M:%S%p' --led-slowdown-gpio=3 -y 2 --led-chain=3 -x 16

# Main loop to run regular programming
while true ; do 
  while read line; do 
    ./projects/rpi-rgb-led-matrix/examples-api-use/scrolling-text-example --cols=64 --led-chain=3 --led-slowdown-gpio=3 -y 17 -f ../fonts/9x15.bdf -C 255,0,255 -l 1 $line
  done < test.txt 
done
