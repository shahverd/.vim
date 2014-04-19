#!/bin/bash 

# This script probably shouldn't be here, 
# But as I install Vim on a fresh install
# I can use this script to easily configure my machine


# Install packages. Read them first!
# I use apt-get for each individual 
# package to make it easy to comment out each one
apt-get install nautilus-open-terminal
apt-get install vlc
apt-get install php-pear
apt-get install python-pip
apt-get install python-dev
apt-get install indicator-multiload
apt-get install tor
apt-get install vim-gnome
apt-get install vim-youcompleteme
apt-get install mysql-workbench
apt-get install wireshark
apt-get install git
apt-get install gimp
apt-get install bind9
apt-get install flex
apt-get install bison
apt-get install g++
apt-get install autoconf
apt-get install nethogs
apt-get install openjdk-7-jdk
apt-get install wmctrl
apt-get install cmake
apt-get install libreadline-dev

# To hide desktop icons
gsettings set org.gnome.desktop.background show-desktop-icons false
