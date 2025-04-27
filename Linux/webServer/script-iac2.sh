#!/bin/bash

echo "Atualizando servidor..."
apt-get update -y
apt-get upgrade -y

echo "Instalando o apache2..."

apt-get install apache2 -y

echo "Instalando unzip..."

apt-get install unzip -y

echo "Baixando aplicação disponivel..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Organizando arquivos..."

cd linux-site-dio 
cp -R * /var/www/html/

