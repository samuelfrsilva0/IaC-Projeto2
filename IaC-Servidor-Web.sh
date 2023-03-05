#!/bin/bash

echo "Atualizando servidor...."

apt-get update && apt-get upgrade -y

echo "Instalando o apache...."

apt-get install apache2 -y

echo "Instalando o unzip...."

apt-get install unzip -y

echo "Excluindo arquivo index...."

rm /var/www/html/index.html

echo "Baixando aplicação web e copiando arquivos para o apache...."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cp -Rf linux-site-dio-main/* /var/www/html/

echo "Fim...."
