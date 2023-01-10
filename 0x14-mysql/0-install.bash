#!/usr/bin/env bash
# Installs MySQL server version 5.7.x
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.12-1_all.deb
sudo apt-get update
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 467B942D3A79BD29
cat <<- EOF > /etc/apt/sources.list.d/mysql.list
deb http://repo.mysql.com/apt/ubuntu/ bionic mysql-5.7
EOF
sudo apt-get update
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*
# password: ubuntu_user_pwd
