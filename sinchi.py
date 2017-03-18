#!/usr/bin/env python
# -*- coding: utf-8 -*-
import redis
import os
redis = redis.Redis('localhost')
id = input("Enter SinChi Number (1,2,3,4,5,...) : ")
source = os.popen("cat ./bot.lua").read()
launcher = """while true; do
  ./tg -p sinchi-{} -s bot.lua
done""".format(id,id)
newlauncher = open("sinchi-{}.sh".format(id),"w")
newlauncher.write(launcher)
newlauncher.close()
os.popen("chmod 777 sinchi-{}.sh".format(id))
print("Done!\nNew SinChi Created...\n SinChi ID : {}\nRun : ./sinchi-{}.sh".format(id,id))