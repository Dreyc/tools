#!/bin/bash

echo "🔧 Début de l'installation des outils de développement de bots..."

# Mise à jour des paquets
sudo apt update && sudo apt upgrade -y

# Outils de base
sudo apt install -y git curl wget gnupg lsb-release jq build-essential software-properties-common

# Python & pip
sudo apt install -y python3 python3-pip python3-venv

# Node.js + npm (depuis NodeSource pour avoir une version à jour)
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

# Bibliothèques Python pour bots
pip3 install --user discord.py nextcord py-cord telethon aiogram requests

# Bibliothèques Node utiles (globale)
sudo npm install -g axios node-fetch

# Visual Studio Code (via Snap)
sudo snap install code --classic

# ngrok (version stable depuis le site officiel)
if ! command -v ngrok &> /dev/null; then
    echo "📦 Installation de ngrok..."
    wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-amd64.zip -O /tmp/ngrok.zip
    unzip /tmp/ngrok.zip -d /tmp
    sudo mv /tmp/ngrok /usr/local/bin/
    rm /tmp/ngrok.zip
fi

echo "✅ Installation terminée. Pense à configurer ngrok avec :"
echo "   ngrok config add-authtoken <ton_token>"
