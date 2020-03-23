#!/usr/bin/env bash

# MCP to run RGB LED Matrix.  This should be ran at startup, and checked from CRON

while true ; do 
  while read line; do 
    ./scrolling-text-example --led-cols=64 --led-chain=3 --led-slowdown-gpio=3 -y 17 -f ../fonts/9x15.bdf -C 255,0,255 -l 1 $line
  done < test.txt 
done
