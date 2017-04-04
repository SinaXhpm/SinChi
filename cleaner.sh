#!/bin/bash
while true ; do
  for entr in sinchi-*.sh ; do
    entry="${entr/.sh/}"
    ./off.sh
    rm -rf ~/.telegram-cli/$entry/data/*
    ./on.sh
  done
  echo All SinChi is Running!
  sleep 1800
done
