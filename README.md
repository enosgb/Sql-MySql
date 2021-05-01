"Workbench no Debian 10 "Buster". 

sudo apt update

sudo apt upgrade

wget http://repo.mysql.com/mysql-apt-confi...​

sudo dpkg -i mysql-apt-config_0.8.13-1_all.deb

sudo apt update

sudo apt install mysql-server

sudo apt-get build-dep mysql-server

wget https://downloads.mysql.com/archives/...​

sudo dpkg -i mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb

sudo apt install -f

sudo dpkg -i mysql-workbench-community_8.0.16-1ubuntu18.04_amd64.deb


