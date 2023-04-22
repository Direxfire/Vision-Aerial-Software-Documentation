#!/bin/bash
#Created 04/22/23 
#Created for internal use at VisionAerial
#Author: Drew Currie
#Last Editted: 04/22/23 -DC
#Designed for Ubuntu 22.04 only rn
version=$(lsb_release -r)
echo "$version"
date
echo "Vision Aerial software installer Revision 1.0"
echo -e "This will install:\n\t1.Mission Planner\n\t2.DPC-11\n\t3.Dronecan GUI\n\t4.Gremsy GTune Desktop."


#Prepare for Wine Install
sudo apt update
sudo apt upgrade
sudo dpkg --add-architecture i386
#Adding WINE repository
sudo mkdir -pm755 /etc/apt/keyrings  
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
#Insall WINE
bash sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources 
sudo apt install --install-recommends winehq-stable
mkdir /usr/share/applications/MissionPlanner #&& cd /usr/share/applications/MissionPlanner
sudo wget https://firmware.ardupilot.org/Tools/MissionPlanner/MissionPlanner-stable.zip -P /usr/share/applications/MissionPlanner
sudo unzip /usr/share/applications/MissionPlanner/MissionPlanner.zip
#Install and make Mission Planner Searchable

wget https://raw.githubusercontent.com/Direxfire/Mission-Planner-and-DPC-11-/main/MissionPlanner/MissionPlanner.desktop -P ~/.local/share/applications/

#Add user to dial out
sudo usermod -a -G dialout $USER