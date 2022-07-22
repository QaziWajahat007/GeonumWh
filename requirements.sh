#!/bin/bash

clear
apt update && apt upgrade -y
apt install git wget curl zip -y
cd $HOME
pkg install python
apt install figlet toilet python curl ruby -y
apt install python3-pip
gem install lolcat
pkg install neofetch
bash GeonumWh.sh
