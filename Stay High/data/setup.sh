#!/bin/bash


# ===== System Updates and Installing Resources ======

# update the system
sudo apt-get update

# Install ftp service
sudo apt-get -y install vsftpd

# Change the default script to anon access grant script
sudo cp high_vsftpd.conf /etc/vsftpd.conf
sudo systemctl restart vsftpd


#install curl
sudo apt-get install -y curl

# install apache2 
sudo apt-get install -y apache2

# === Firewall Setup ===

# allow FTP connectivity
sudo ufw allow 9193/tcp

# allow HTTP connectivity
sudo ufw allow 80/tcp

# deny ssh
sudo ufw deny 22/tcp


# ===== END Firewall Setup ======


# Create Directory for our FTP Anonymous
sudo mkdir -p /var/ftp/pub
sudo cp ./baseffff1 /var/ftp/pub/baseffff1


# ==== Add Ulbricht Setup ===
sudo useradd -m -p $(perl -e 'print crypt($ARGV[0], "password")' 'RedOctober17') Ulbricht


# === Start apache2 Webserver ===
sudo rm /etc/apache2/ports.conf
sudo cp ports.conf /etc/apache2/ports.conf
sudo service apache2 start


# === Setting up the Website ===
cd /data/website && sudo cp -r * /var/www/html  
