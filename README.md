# Webmin 與 Virtualmin 安裝指南

這個專案提供在 Ubuntu 24.04.1 上安裝和配置 Webmin、Virtualmin 以及多版本 PHP 的完整指南。

## 功能特點

- Webmin 安裝與配置
- Virtualmin 安裝與配置
- PHP 5.6 與 7.4 多版本支援
- 繁體中文介面設定
- 完整的防火牆配置

## 安裝步驟

# 1. Webmin 安裝：

## 更新系統
```bash
sudo apt update && sudo apt upgrade -y
```
## 安裝依賴
```bash
sudo apt install wget gnupg software-properties-common -y
```
## 安裝 Webmin
```bash
wget -qO - https://www.webmin.com/jcameron-key.asc | sudo tee /etc/apt/trusted.gpg.d/webmin.asc
echo "deb http://download.webmin.com/download/repository sarge contrib" | sudo tee /etc/apt/sources.list.d/webmin.list
sudo apt update
sudo apt install webmin -y
```
## 安裝繁體中文支援
```bash
sudo apt install language-pack-zh-hant -y
```

# 2. Virtualmin 安裝：
## 下載並執行 Virtualmin 安裝腳本
```bash
wget http://software.virtualmin.com/gpl/scripts/install.sh
sudo bash install.sh
```
## 配置防火牆
```bash
sudo apt install ufw -y
sudo ufw allow 22
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
sudo ufw enable
```
## 啟動服務
```bash
sudo systemctl start webmin
sudo systemctl enable webmin
```

## 安裝完成！請訪問 https://您的伺服器IP:10000 來訪問 Webmin"
```瀏覽器
https://0.0.0.0:10000 
```

# 3. PHP向下兼容安裝(非必要)：
## 添加 PHP PPA
```bash
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
```
## 安裝 PHP 5.6
```bash
sudo apt install -y php5.6 php5.6-cli php5.6-fpm php5.6-mysql php5.6-gd php5.6-curl php5.6-mbstring
```
## 安裝 PHP 7.4
```bash
sudo apt install -y php7.4 php7.4-cli php7.4-fpm php7.4-mysql php7.4-gd php7.4-curl php7.4-mbstring
```
## PHP 5.6 和 7.4 安裝完成！
使用以下指令來切換預設 PHP 版本(非必要)
```bash
sudo update-alternatives --config php
```



## 聲明
本專案為 Webmin 與 Virtualmin 的安裝配置工具，與官方倉庫 [Webmin](https://github.com/webmin/webmin) 無直接關聯。
