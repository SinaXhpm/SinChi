#!/usr/bin/env bash
prtred() {
  printf '\e[1;31m%s\n\e[0;39;49m' "$@"
}
  name=bot
  if [[ -e $name.lua ]] ; then
      i=1
      while [[ -e $name-$i.lua ]] ; do
          let i++
      done
      name=$name-$i
  fi
  cat bot.lua >> "$name".lua
  sed -i 's/SID/'$i'/g' "$name".lua
  echo "#!/bin/bash 
COUNTER=0
while [  \$COUNTER -lt 5 ]; do
kill \$(pgrep telegram-cli)
  ./tg -p sinchi-"$i" -s bot-"$i".lua
 sleep 0.1
done" >> "sinchi-"$i".sh"
    prtred "ربات با موفقیت ساخته شد برای اجرا از دستور زیر استفاده کنید :                                                          "
prtred "./sinchi-"$i".sh"
chmod +x sinchi-"$i".sh
