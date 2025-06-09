#!/bin/bash
set -e

echo "🔁 Odstraňuji předchozí instalaci MongoDB 7.0 (pokud existuje)..."

# Zastavit službu
sudo systemctl stop mongod || true
sudo systemctl disable mongod || true

# Odinstalovat balíčky
sudo apt purge -y mongodb-org || true
sudo apt autoremove -y

# Smazat repozitář MongoDB 7.0
sudo rm -f /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo rm -f /usr/share/keyrings/mongodb-org-7.0.gpg

echo "✅ MongoDB 7.0 odstraněna."

echo "➡️ Přidávám MongoDB 5.0 GPG klíč..."
curl -fsSL https://pgp.mongodb.com/server-5.0.asc | \
  sudo gpg --dearmor -o /usr/share/keyrings/mongodb-org-5.0.gpg

echo "➡️ Nastavuji repozitář MongoDB 5.0 pro Debian 11 (bullseye)..."
echo "deb [ signed-by=/usr/share/keyrings/mongodb-org-5.0.gpg ] https://repo.mongodb.org/apt/debian bullseye/mongodb-org/5.0 main" | \
  sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

echo "➡️ Aktualizuji balíčky..."
sudo apt update

echo "➡️ Instaluji MongoDB 5.0..."
sudo apt install -y mongodb-org

echo "➡️ Spouštím a povoluji MongoDB službu..."
sudo systemctl start mongod
sudo systemctl enable mongod

echo "✅ MongoDB 5.0 je nainstalovaná a běží!"
sudo systemctl status mongod --no-pager
