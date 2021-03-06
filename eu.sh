#!/bin/bash

green=`tput setaf 2`
nc=`tput sgr0`

echo "${green}"
echo "   _____  ____ ________     _____ /\       ___________ ____ ___ ";
echo "  /  |  |/_   |\_____  \   /  |  |)/______ \_   _____/|    |   \";
echo " /   |  |_|   | /  ____/  /   |  |_/  ___/  |    __)_ |    |   /";
echo "/    ^   /|   |/       \ /    ^   /\___ \   |        \|    |  / ";
echo "\____   | |___|\_______ \\____   |/____  > /_______  /|______/  ";
echo "     |__|              \/     |__|     \/          \/           ";
echo " ${nc}"
echo " The script will install all the essentials for ubuntu in 5 sec. "

sudo apt update

sleep 2

## discord
sudo snap install discord --classic
sleep 3
clear
echo "Discord Installed!"


## steam
sudo add-apt-repository multiverse
sleep 1
sudo apt install steam
sleep 3
sudo "Steam Installed!"
clear

## spotify
sudo snap install spotify
sleep 1
echo "spotify Installed!"
sleep 3
clear

## wine & lutris (for spilling)
dpkg --add-architecture i386 
sleep 1
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sleep 1
sudo apt-key add winehq.key
sleep 1
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sleep 1
sudo apt update
sudo apt install --install-recommends winehq-stable
echo "Wine installed!"
sleep 3
clear
sudo add-apt-repository ppa:lutris-team/lutris
sleep 1
sudo apt update
sudo apt install lutris
echo "Lutris installed!"
sleep 3
clear
exit
