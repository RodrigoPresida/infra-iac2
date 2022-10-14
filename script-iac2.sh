#!/bin/bash

echo "Atualizando servidor!"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando so arquivos"

cd /tmp
wget https://github.com/denilsonbonatti/linux-projeto2-iac/archive/refs/heads/main.zip
unzip main.zip
cd linux-projeto2-iac-main
cp -R * /var/www/html/

echo "Fim!"

