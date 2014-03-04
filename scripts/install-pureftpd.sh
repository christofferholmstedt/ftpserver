#!/bin/bash

#############################################
# Installation of pureftpd
#############################################
sudo apt-get -y install pure-ftpd

sudo echo "yes" > /etc/pure-ftpd/conf/Daemonize
sudo echo "yes" > /etc/pure-ftpd/conf/NoAnonymous # Default in Ubuntu but better be safe.
sudo echo "yes" > /etc/pure-ftpd/conf/ChrootEveryone

#############################################
# Configuration of pureftpd
#############################################

###
# Enable ufw and allow FTP traffic.
###
sudo ufw allow ftp
sudo ufw --force enable
sudo ufw status verbose
