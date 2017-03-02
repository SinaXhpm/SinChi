#!/bin/bash 
 COUNTER=0
while [  $COUNTER -lt 5 ]; do
kill $(pgrep telegram-cli)
   ./tg -s ./bot.lua
sleep 1 # Relaunch Time
done
