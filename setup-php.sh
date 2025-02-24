#!/bin/bash

# 添加 PHP PPA
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update

# 安裝 PHP 5.6
sudo apt install -y php5.6 php5.6-cli php5.6-fpm php5.6-mysql php5.6-gd php5.6-curl php5.6-mbstring

# 安裝 PHP 7.4
sudo apt install -y php7.4 php7.4-cli php7.4-fpm php7.4-mysql php7.4-gd php7.4-curl php7.4-mbstring

echo "PHP 5.6 和 7.4 安裝完成！"
echo "使用 'sudo update-alternatives --config php' 來切換預設 PHP 版本"