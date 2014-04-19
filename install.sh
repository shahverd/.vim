#!/bin/bash 
# Notice: Installing Node.js must be using tar.gz, and not Ubuntu's repo
# You need to have pear and nodejs installed

#Change .desktop file to open in tabs

#To install Youcompleteme
sudo apt-get install vim-youcompleteme
vam install youcompleteme

cp ~/.vim/gvim.desktop /usr/share/applications/
chmod +x /usr/share/applications/gvim.desktop

#install Node.js from its binaries
cd /tmp/ 
wget http://nodejs.org/dist/v0.10.26/node-v0.10.26-linux-x86.tar.gz 
tar --strip-components 1 -xzf node-v0.10.26-linux-x86.tar.gz -C /usr/local
cd ~/.vim/

#install Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

#install command line tool for Vim named Conque
cd /tmp/ 
wget https://conque.googlecode.com/files/conque_2.3.vmb 
vim -c 'so %' -c 'q' conque_2.3.vmb
cd ~/.vim/

#install CodeSniffer which is a tool for php format checking/correction
apt-get install php-pear
pear install PHP_CodeSniffer-2.0.0a1

#This is a tool for Python format checking/correction
apt-get install autopep8

#A tool for HTML/CSS/Javascript format checking/correction
npm install -g js-beautify

#A tool for XML format checking/correction
apt-get install tidy 

#apt-get install php-codesniffer
#wget http://get.sensiolabs.org/php-cs-fixer.phar
#chmod +x php-cs-fixer.phar 

#Ctag for tag generations. Its other than the one in Ubuntu's repo
cd /tmp/ 
wget http://tenet.dl.sourceforge.net/project/ctags/ctags/5.8/ctags-5.8.tar.gz 
tar xvfz /tmp/ctags-5.8.tar.gz 
cd ctags-5.8/ 
./configure 
make
make install 
cd ~/.vim/
