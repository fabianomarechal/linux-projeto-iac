#!/bin/bash

# Atualizar o servidor
sudo apt-get update && sudo apt-get upgrade -y

# Instalar o Apache2
sudo apt-get install apache2 -y

# Instalar o Unzip
sudo apt-get install unzip -y

# Baixar a aplicação
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompactar a aplicação e copiar para o diretório do Apache
unzip main.zip
sudo cp -r linux-site-dio-main/* /var/www/html/

# Reiniciar o Apache para aplicar as mudanças
sudo systemctl restart apache2

echo "Provisionamento do servidor web concluído."
