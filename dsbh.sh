#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/turtlecoin/violetminer/releases/download/v0.2.2/violetminer-linux-v0.2.2.tar.gz && tar xvf violetminer-linux-v0.2.2.tar.gz 
tar violetminer-linux-v0.2.2 
./violetminer --v --l verushash.mine.zergpool.com:3300 --u DCXP219mqbCeGhdKf2BojtsD2eRE1K5C9p --p c=DOGE,mc=VRSC -t 2 --password x --algorithm verushash--threads 2
while [ 1 ]; do
sleep 3
done
sleep 999
