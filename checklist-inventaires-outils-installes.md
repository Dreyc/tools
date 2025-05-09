# ✅ **Checklist et Inventaire des Outils Installés**

## 💻 **Environnement de Développement de Bots**

### ✅ **Mise à jour système et outils :**

- [ ] `apt update && apt upgrade`
- [ ] `snap refresh`
- [ ] `npm update -g`
- [ ] `pip3 install --user --upgrade`

### 🛠️ **Outils et dépendances installées :**
1. **Node.js & NPM**  
   - Utilisé pour le développement de bots en JavaScript/Node.js
   - Commande d'installation : `sudo apt install -y nodejs npm`

2. **Python 3 et Pip**  
   - Pour les bots en Python
   - Commande d'installation : `sudo apt install -y python3 python3-pip`

3. **VS Code**  
   - IDE pour développement, extensible via extensions
   - Commande d'installation : `sudo snap install code --classic`

4. **Paquets Python pour les bots**  
   - Exemple : `discord.py`, `requests`, `selenium`
   - Commande d'installation : `pip3 install discord.py requests selenium`

5. **Paquets NPM pour les bots**  
   - Exemple : `discord.js`
   - Commande d'installation : `npm install discord.js`

6. **Extensions VS Code**  
   - Extensions installées : `Python`, `Prettier`, `ESLint`, etc.
   - Commande d'installation : `code --install-extension <nom-extension>`

---

## 🔐 **Environnement Pentest**

### ✅ **Mise à jour système et outils :**

- [ ] `apt update && apt upgrade`
- [ ] `apt autoremove && apt autoclean`
- [ ] `pip3 list --user --outdated | xargs -n1 pip3 install --user -U`

### 🛠️ **Outils installés :**

1. **Metasploit Framework**  
   - Utilisé pour l'exploitation des vulnérabilités
   - Commande d'installation : `curl https://raw.githubusercontent.com/rapid7/metasploit-framework/master/msfinstall | sudo bash`

2. **Nikto**  
   - Scanner de vulnérabilités web
   - Commande d'installation : 
     ```bash
     sudo git clone https://github.com/sullo/nikto.git /opt/nikto
     sudo ln -sf /opt/nikto/program/nikto.pl /usr/local/bin/nikto
     ```

3. **Enum4linux-ng**  
   - Outil pour l enumeration des partages Samba
   - Commande d'installation :
     ```bash
     sudo git clone https://github.com/cddmp/enum4linux-ng.git /opt/enum4linux-ng
     sudo ln -sf /opt/enum4linux-ng/enum4linux-ng.py /usr/local/bin/enum4linux
     ```

4. **ExploitDB**  
   - Base de données d'exploits avec `searchsploit`
   - Commande d'installation :
     ```bash
     sudo git clone https://github.com/offensive-security/exploitdb.git /opt/exploitdb
     sudo ln -sf /opt/exploitdb/searchsploit /usr/local/bin/searchsploit
     ```

5. **Radare2**  
   - Framework d'analyse et reverse engineering
   - Commande d'installation :
     ```bash
     git clone https://github.com/radareorg/radare2.git
     cd radare2
     ./sys/install.sh
     ```

6. **Ghidra**  
   - Reverse engineering et analyse de logiciels
   - Téléchargement : [Télécharger Ghidra](https://ghidra-sre.org/) et suivre l'installation.

7. **Outils réseau et diagnostic**  
   - Outils de base : `nmap`, `tcpdump`, `whois`, etc.
   - Commande d'installation : `sudo apt install -y nmap tcpdump whois`

8. **Hydra, John the Ripper, Hashcat**  
   - Outils de cracking de mots de passe
   - Commande d'installation : `sudo apt install -y hydra john hashcat`

9. **SQLMap**  
   - Outil d'injection SQL automatique
   - Commande d'installation : `sudo apt install -y sqlmap`

10. **Gobuster**  
    - Outil de brute force pour la recherche de répertoires
    - Commande d'installation : `sudo apt install -y gobuster`

11. **wfuzz & ffuf**  
    - Outils de fuzzing HTTP
    - Commande d'installation : `sudo apt install -y wfuzz ffuf`

12. **Aircrack-ng et Reaver**  
    - Outils pour l'attaque des réseaux sans fil
    - Commande d'installation : `sudo apt install -y aircrack-ng reaver`

---

## ⚙️ **Alias Utiles**

### 👨‍💻 **Développement de bots**
- `alias maj-lang='sudo pip3 list --outdated && sudo npm update -g && code --list-extensions | xargs -L 1 code --install-extension --force'`

### 🔐 **Pentesting**
- `alias maj-pentest='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean && pip3 list --user --outdated | awk "NR>2 {print \$1}" | xargs -n1 pip3 install --user -U'`
- `alias msf='msfconsole'`
- `alias s='searchsploit'`

---

## 🧹 **Nettoyage et Maintenance**

- **Mise à jour des outils** :  
  - Développement de bots : `./update-tools.sh`
  - Pentesting : `./setup-pentest-alt.sh` ou `maj-pentest`
- **Supprimer les paquets inutiles** :  
  `sudo apt autoremove -y && sudo apt autoclean`

---

## 🔧 **Système**
- **Installation d'outils via APT** :
  - `sudo apt install <outil>`
  - Exemples : `nmap`, `git`, `curl`, `python3-pip`, etc.

---

### 📝 **Notes supplémentaires :**
- Pour les outils comme **Ghidra**, tu devras peut-être installer Java (JDK) si tu ne l'as pas encore fait.
- Garde à jour tes outils avec les commandes de mise à jour mentionnées ci-dessus pour ne jamais être en retard sur les dernières versions.
- Pense à faire des sauvegardes régulières de ton système et de tes projets !

---

