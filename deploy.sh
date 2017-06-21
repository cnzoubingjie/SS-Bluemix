#!/bin/bash

# 修正 Coding 的 DNS 错误
echo nameserver 114.114.114.114 | sudo tee /etc/resolv.conf

# 修正 Coding 的 Ubuntu 源错误
sudo apt-get update

# 安装依赖
sudo apt-get install docker.io wget fortune cowsay -y 

wget -O cf.deb 'https://coding.net/u/tprss/p/bluemix-source/git/raw/master/cf-cli-installer_6.16.0_x86-64.deb' 
sudo dpkg -i cf.deb 

cf install-plugin -f https://static-ice.ng.bluemix.net/ibm-containers-linux_x64 
wget 'https://coding.net/u/tprss/p/bluemix-source/git/raw/master/Bluemix_CLI_0.4.3_amd64.tar.gz'
tar -zxf Bluemix_CLI_0.4.3_amd64.tar.gz
cd Bluemix_CLI
sudo ./install_bluemix_cli
