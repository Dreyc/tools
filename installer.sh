#!/bin/bash

# Creation du dossier contenant les outils
mkdir Tools
cd Tools

##############################
#           OSINT            #
##############################
mkdir OSINT
cd OSINT

# Holehe
git clone https://github.com/megadose/holehe.git
cd holehe/
python3 setup.py install
cd ..
# sagemode
git clone https://github.com/senran101604/sagemode.git
cd sagemode
python3 -m pip install -r requirements.txt
cd ..
# geogramint
git clone https://github.com/Alb-310/Geogramint.git
cd Geogramint/
pip3 install -r requirements.txt
cd ..
# domE
git clone https://github.com/v4d1/Dome.git
cd Dome
pip install -r requirements.txt
cd ..

cd ..
##############################
#           Network          #
##############################
mkdir Network
cd Network
# -- Wireless --
mkdir Wireless
cd Wireless

# airgeddon
git clone --depth=1 https://github.com/v1s1t0r1sh3r3/airgeddon.git
# wifiphisher
sudo apt install wifiphisher

cd ..
# -- Wireless --
# -- Scanning --
mkdir Scanning
cd Scanning

cd ..
# -- Scanning --
# -- DoS --
mkdir DoS
cd DoS

# slowloris
sudo pip3 install slowloris

cd ..
# -- DoS --

cd ..
##############################
#      Password Cracking     #
##############################
mkdir Password Cracking
cd Password Cracking

cd ..
##############################
#           Forensic         #
##############################
mkdir Forensic
cd Forensic

# Volatility3
git clone https://github.com/volatilityfoundation/volatility3.git
cd volatility3
pip3 install -r requirements.txt
cd ..

cd ..
##############################
#           Exploit          #
##############################
mkdir Exploit
cd Exploit

# bettercap
sudo apt install bettercap

cd ..
##############################
#           Windows          #
##############################
mkdir Windows
cd Windows

# -- AD --
mkdir AD
cd AD

# certipy
pip3 install certipy-ad

cd ..
# -- AD --

# crackmapexec
sudo apt install crackmapexec
# evil-winrm
sudo apt install evil-winrm
# pypykatz
sudo pip3 install pypykatz

cd ..
##############################
#           Lists            #
##############################
mkdir Lists
cd Lists

# SecList
git clone https://github.com/danielmiessler/SecLists.git
# wifi_pass
git clone https://github.com/vladimircicovic/wifi_pass.git
cd wifi_pass
chmod +x con.sh
./con.sh
rm -rf *.7z
rm -rf *.md
rm -rf *.sh
cd ..

cd ..
##############################
#           Dictionnary      #
##############################
mkdir Dictionnary
cd Dictionnary

# CUPP
sudo apt install cupp
# Crunch
sudo apt install crunch
# Pydictor
git clone --depth=1 --branch=master https://www.github.com/landgrey/pydictor.git
cd pydictor/
chmod +x pydictor.py
cd ..

cd ..
##############################
#           Others           #
##############################
mkdir Others
cd Others

# submap
sudo apt install smbmap
# responder 
sudo apt install responder

cd ..
##############################
cd ..
echo "INSTALLATION DONE !"
