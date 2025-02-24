#!/bin/bash

# 更新系統
sudo apt update && sudo apt upgrade -y

# 安裝依賴
sudo apt install wget gnupg software-properties-common -y

# 安裝 Webmin
wget -qO - https://www.webmin.com/jcameron-key.asc | sudo tee /etc/apt/trusted.gpg.d/webmin.asc
echo "deb http://download.webmin.com/download/repository sarge contrib" | sudo tee /etc/apt/sources.list.d/webmin.list
sudo apt update
sudo apt install webmin -y

# 安裝繁體中文支援
sudo apt install language-pack-zh-hant -y

# 下載並執行 Virtualmin 安裝腳本
wget http://software.virtualmin.com/gpl/scripts/install.sh
sudo bash install.sh

# 配置防火牆
sudo ufw allow 10000
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 53
sudo ufw allow 25
sudo ufw allow 587
sudo ufw allow 465
sudo ufw allow 110
sudo ufw allow 143
sudo ufw allow 993
sudo ufw allow 995

# 啟動服務
sudo systemctl start webmin
sudo systemctl enable webmin

echo "安裝完成！請訪問 https://您的伺服器IP:10000 來訪問 Webmin"