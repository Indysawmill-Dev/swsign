#!/usr/bin/env bash
while true ; do 
  while read line; do 
    ./scrolling-text-example --led-cols=64 --led-chain=3 --led-slowdown-gpio=3 -y 17 -f ../fonts/9x15.bdf -C 255,0,255 -l 1 $line
  done < test.txt 
done
