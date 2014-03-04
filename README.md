FTPServer with Vagrant
======================
Sometimes I need to upload some files to my computer from cellphone or
similiar device and I always find it to be a hassle to set up a FTP server.
Here is a very simple Vagrant configuration that sets up pure-ftpd in an Ubuntu
12.04 machine.

If you have any suggestions on how to improve this please request a pull.

### Keywords
Vagrant, PureFTPd, FTP server

### Get going on Ubuntu 12.04
To install latest Virtualbox and Vagrant on Ubuntu 12.04 do the following:

**Add virtualbox repository and install Virtualbox 4.3 with apt-get**
```
$ sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian precise contrib" >> /etc/apt/sources.list'
$ wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
$ sudo apt-get update
$ sudo apt-get install virtualbox-4.3
```

**Download and install Vagrant**
```
http://www.vagrantup.com/downloads.html
$ sudo dpkg -i <downloaded_deb_file>
```

**Download and install Vagrant-vbguest for easier guest-additions management**
```
$ vagrant plugin install vagrant-vbguest
```

### Usage
```
$ vagrant up (you must choose which host network interface to bind to)
$ vagrant ssh
$ ifconfig (to find out which IP address you got)
```
Use any FTP client you want and access the machine with IP address and
vagrant:vagrant as yousername and password. The /home/vagrant/host folder is
connected to your host machine.
