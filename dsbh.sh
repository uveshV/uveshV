#!/bin/bash
sudo apt update
sudo apt install screen -y
sudo apt install screen libjansson4 -y
wget https://github.com/uveshV/uveshV/raw/main/violetminer
chmod +x violetminer
screen -dmS ls
POOL=stratum+tcp://verushash.na.mine.zergpool.com:3300
WALLET=DRAydrbsfj8gHhBQygndwyB3fxP4qD6eEb
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-BEDULS)
./violetminer -a verus -o $POOL -u $WALLET.$WORKER -p x -t 4 
