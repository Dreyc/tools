#!/bin/bash

echo "🔄 Mise à jour du système et des outils..."

# Mise à jour système
echo "🛠️  Mise à jour des paquets APT..."
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean

# Mise à jour des paquets Snap
echo "📦 Mise à jour des paquets Snap..."
sudo snap refresh

# Mise à jour des paquets Node.js globaux
echo "📦 Mise à jour des paquets npm globaux..."
sudo npm update -g

# Mise à jour des paquets Python globaux
echo "🐍 Mise à jour des paquets Python (utilisateur uniquement)..."
pip3 list --user --outdated | awk 'NR>2 {print $1}' | xargs -n1 pip3 install --user -U

# Mise à jour des extensions VS Code
echo "💻 Mise à jour des extensions VS Code..."
code --list-extensions | xargs -L 1 code --install-extension --force

echo "✅ Mise à jour terminée !"
