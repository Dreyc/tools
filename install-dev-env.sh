#!/bin/bash

echo "🚀 Mise à jour du système..."
sudo apt update && sudo apt upgrade -y

echo "🔧 Installation des outils de base..."
sudo apt install -y build-essential git curl wget snapd apt-transport-https ca-certificates software-properties-common

echo "🐍 Installation de Python..."
sudo apt install -y python3 python3-pip python3-venv

echo "🐹 Installation de Go..."
sudo apt install -y golang

echo "🟢 Installation de Node.js & npm..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

echo "🐳 Installation de Docker..."
sudo apt install -y docker.io docker-compose
sudo systemctl enable docker
sudo usermod -aG docker "$USER"

echo "📦 Installation de Visual Studio Code..."
sudo snap install code --classic

echo "🧩 Installation des extensions VS Code..."
code --install-extension ms-python.python
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.go
code --install-extension esbenp.prettier-vscode
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension ms-azuretools.vscode-docker
code --install-extension formulahendry.code-runner

echo "⚙️ Configuration de VS Code (settings.json)..."
mkdir -p "$HOME/.config/Code/User"
cat > "$HOME/.config/Code/User/settings.json" <<EOF
{
  "editor.tabSize": 4,
  "editor.insertSpaces": true,
  "files.trimTrailingWhitespace": true,
  "files.insertFinalNewline": true,
  "editor.formatOnSave": true,
  "terminal.integrated.defaultProfile.linux": "bash",
  "eslint.alwaysShowStatus": true
}
EOF

echo "✅ Installation terminée ! Déconnecte-toi ou fais un reboot pour que Docker fonctionne sans sudo."

