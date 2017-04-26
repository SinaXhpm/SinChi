#!/usr/bin/env bash
cd $HOME/SinChi
red() {
  printf '\e[1;31m%s\n\e[0;39;49m' "$@"
}
green() {
  printf '\e[1;32m%s\n\e[0;39;49m' "$@"
}
white() {
  printf '\e[1;37m%s\n\e[0;39;49m' "$@"
}
aa() {
 sudo apt-get install
}
function logo1_SinChi() {
green "     >>>>               Welcome to SinChi bot                         <<<<      "
white "     >>>>             I wanna install it for you                      <<<<      "
}
function logo2_SinChi() {
green "     >>>>            SinChi successfully installed                    <<<<      "
white "     >>>>            Run this command for launch bot                  <<<<      "
red   "     >>>>                   ./sinchi-0.sh                             <<<<      "
green   "                      ****************************                                  "
green   "                      ****************************                                   "
white   "                      ****************************                                   "
white   "                      ****************************                                   "
red     "                      ****************************                                   "
red     "                      ****************************                                   "
}
function install_Sinchi() {
 sudo apt-get update -y 
 sudo apt-get upgrade -y
 sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev -y
sudo apt-get install lua-lgi -y
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get install libstdc++6 -y
 sudo apt-get install libstdc++6 -y
 sudo apt-get update -y
 sudo apt-get upgrade -y
 sudo apt-get dist-upgrade -y
}
function luarocks_SinChi() {
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
 tar zxpf luarocks-2.2.2.tar.gz
 cd luarocks-2.2.2
 ./configure; sudo make bootstrap
 sudo luarocks install luasocket
 sudo luarocks install luasec
 sudo luarocks install redis-lua
 sudo luarocks install lua-term
 sudo luarocks install serpent
 sudo luarocks install dkjson
 sudo luarocks install lanes
 sudo luarocks install Lua-cURL
 cd ..
}
function chmod_SinChi() {
 chmod +x sinchi.sh
 chmod +x tg
 chmod +x sinchi-0.sh
 chmod +x on.sh
 chmod +x off.sh
 chmod +x auto.sh
 chmod +x update.sh
}
function python_SinChi() {
 sudo apt-get install python-setuptools python-dev build-essential -y 
 sudo easy_install pip 
 sudo pip install redis 
}
logo1_SinChi
install_Sinchi
luarocks_SinChi
python_SinChi
chmod_SinChi
clear
logo2_SinChi
