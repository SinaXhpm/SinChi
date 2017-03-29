#!/bin/bash 
COUNTER=0
while [  $COUNTER -lt 5 ]; do
kill $(pgrep telegram-cli)
  ./tg -p sinchi-8 -s bot.lua
sleep 0.1
done
